#!/usr/bin/env bats
# osconfig.bats: the directives of osconfig.functions, the ones that configure the system the
# framework builds. They write files under the sysroot and commands into the post install script
# of the project, which is all these tests read; nothing is built and no image is mounted, so
# run_on_root_dir is a stub that prints its arguments.
# The tests set variables the sourced framework reads and read the ones it sets, and the stub is
# called through the functions under test:
# shellcheck disable=SC1091,SC2030,SC2031,SC2034,SC2154,SC2329

load test_helper

setup () {
	load_framework
	POSTINST="${BIN_PATH}/postinst_scripts/99_osconfig"
	mkdir -p "${BIN_PATH}${TARGET_SYSCONFDIR}" "${LOG_PATH}"
	### images.functions is not loaded here: --tag only has to reach the chroot function, or the
	### host commands, whose native recipe build and run_cmd print what they were given
	function run_on_root_dir () {
		echo "chroot ${1} ${2}: ${3}"
	}
	function build () {
		echo "build ${*}"
	}
	function run_cmd () {
		echo "host ${*}"
	}
	source "${BB_HOME}/osconfig.functions"
}

@test "enable_service writes one systemctl line per unit into the post install script" {
	enable_service sshd
	enable_service systemd-networkd systemd-resolved
	run head -n 1 "${POSTINST}"
	assert_output_lines "# shellcheck shell=bash"
	run grep '^systemctl' "${POSTINST}"
	assert_output_lines "systemctl enable sshd" \
		"systemctl enable systemd-networkd" \
		"systemctl enable systemd-resolved"
}

@test "disable_service, mask_service and preset_service name their own verb" {
	disable_service hostapd.service
	mask_service tmp.mount
	preset_service dbus.socket
	run grep -c '^systemctl' "${POSTINST}"
	assert_output_lines "3"
	run grep -e '^systemctl disable' -e '^systemctl mask' -e '^systemctl preset' "${POSTINST}"
	assert_output_lines "systemctl disable hostapd.service" "systemctl mask tmp.mount" \
		"systemctl preset dbus.socket"
}

@test "a unit function without a unit stops the project" {
	run enable_service
	[ "${status}" -eq 9 ]
	[[ ${output} == *"no unit given"* ]]
	[ ! -f "${POSTINST}" ]
}

@test "the post install script is written once per run, header first" {
	enable_service sshd
	enable_service rsyncd
	run grep -c '^# shellcheck shell=bash' "${POSTINST}"
	assert_output_lines "1"
	### A second run of bbxb sources the file again: the script starts empty
	source "${BB_HOME}/osconfig.functions"
	[ ! -f "${POSTINST}" ]
	enable_service sshd
	run grep -c '^systemctl' "${POSTINST}"
	assert_output_lines "1"
}

@test "--tag runs the command on the host against the mounted image, with the native systemctl" {
	run set_default_target --tag lfs multi-user.target
	assert_output_lines "Default target: multi-user.target" "build lfs/systemd:native"
	run cat "${LOG_PATH}/images_lfs.log"
	assert_output_lines "host -S ${GLOBAL_TOOLCHAIN_PATH}/bin/systemctl --root \"${PLATFORM_PATH}/lfs\" set-default multi-user.target"
	[ ! -f "${POSTINST}" ]
}

@test "enable_service --tag runs one native systemctl per unit" {
	run enable_service --tag lfs systemd-resolved systemd-timesyncd
	assert_output_lines "Units to enable: systemd-resolved systemd-timesyncd" \
		"build lfs/systemd:native" "build lfs/systemd:native"
	run cat "${LOG_PATH}/images_lfs.log"
	assert_output_lines "host -S ${GLOBAL_TOOLCHAIN_PATH}/bin/systemctl --root \"${PLATFORM_PATH}/lfs\" enable systemd-resolved" \
		"host -S ${GLOBAL_TOOLCHAIN_PATH}/bin/systemctl --root \"${PLATFORM_PATH}/lfs\" enable systemd-timesyncd"
}

@test "add_user without a tag writes the useradd and chpasswd of the target" {
	add_user lfs --groups wheel,audio,video --password lfs
	run grep -v '^#' "${POSTINST}"
	assert_output_lines "useradd -G wheel,audio,video -m lfs" "echo lfs:lfs | chpasswd"
}

@test "add_user --tag runs the native useradd and chpasswd with the hash of the image" {
	mkdir -p "${PLATFORM_PATH}/lfs${TARGET_SYSCONFDIR}/pam.d"
	printf 'password  required    pam_unix.so        sha512 shadow use_authtok\n' \
		> "${PLATFORM_PATH}/lfs${TARGET_SYSCONFDIR}/pam.d/system-password"
	run add_user lfs --tag lfs --groups wheel,audio,video --password lfs
	assert_output_lines "User: lfs in wheel,audio,video" "build lfs/shadow:native" \
		"Password of lfs: set" "build lfs/shadow:native"
	run cat "${LOG_PATH}/images_lfs.log"
	assert_output_lines "host -S ${GLOBAL_TOOLCHAIN_PATH}/bin/useradd --prefix \"${PLATFORM_PATH}/lfs\" -G wheel,audio,video -m lfs" \
		"host -S echo lfs:lfs | ${GLOBAL_TOOLCHAIN_PATH}/bin/chpasswd --prefix \"${PLATFORM_PATH}/lfs\" -c SHA512"
}

@test "add_user --tag takes the system account options and leaves the password alone" {
	run add_user rsyncd --tag lfs --system --nohome --uid 48 --shell /sbin/nologin
	assert_output_lines "User: rsyncd" "build lfs/shadow:native"
	run cat "${LOG_PATH}/images_lfs.log"
	assert_output_lines "host -S ${GLOBAL_TOOLCHAIN_PATH}/bin/useradd --prefix \"${PLATFORM_PATH}/lfs\" --system -u 48 -s /sbin/nologin rsyncd"
}

@test "set_password --tag without a pam_unix method leaves the hash to login.defs" {
	run set_password --tag lfs root changeme
	run cat "${LOG_PATH}/images_lfs.log"
	assert_output_lines "host -S echo root:changeme | ${GLOBAL_TOOLCHAIN_PATH}/bin/chpasswd --prefix \"${PLATFORM_PATH}/lfs\""
}

@test "set_hostname writes the name and replaces the 127.0.1.1 line of a previous run" {
	printf '127.0.0.1 localhost\n127.0.1.1 old\n::1 localhost\n' > "${BIN_PATH}${TARGET_SYSCONFDIR}/hosts"
	set_hostname lfs
	assert_equal "$(cat "${BIN_PATH}${TARGET_SYSCONFDIR}/hostname")" "lfs"
	run cat "${BIN_PATH}${TARGET_SYSCONFDIR}/hosts"
	assert_output_lines "127.0.0.1 localhost" "::1 localhost" "127.0.1.1 lfs"
	set_hostname board --domain example.org
	run grep '^127.0.1.1' "${BIN_PATH}${TARGET_SYSCONFDIR}/hosts"
	assert_output_lines "127.0.1.1 board.example.org board"
}

@test "set_locale writes the locale and, with a keymap, the console one" {
	set_locale en_US.UTF-8
	[ ! -f "${BIN_PATH}${TARGET_SYSCONFDIR}/vconsole.conf" ]
	set_locale it_IT.UTF-8 --keymap it
	run cat "${BIN_PATH}${TARGET_SYSCONFDIR}/locale.conf" "${BIN_PATH}${TARGET_SYSCONFDIR}/vconsole.conf"
	assert_output_lines "LANG=it_IT.UTF-8" "KEYMAP=it"
}

@test "configure_network asks DHCP for everything, lease domain included" {
	configure_network eth0
	run cat "${BIN_PATH}${TARGET_SYSCONFDIR}/systemd/network/eth0.network"
	assert_output_lines "[Match]" "Name=eth0" "" "[Network]" "DHCP=yes" \
		"" "[DHCPv4]" "UseDomains=yes" "" "[IPv6AcceptRA]" "UseDomains=yes"
}

@test "configure_network with an address configures the link statically" {
	configure_network eth0 --address 192.168.1.10/24 --gateway 192.168.1.1 --dns 192.168.1.1,9.9.9.9 --domains example.org
	run cat "${BIN_PATH}${TARGET_SYSCONFDIR}/systemd/network/eth0.network"
	assert_output_lines "[Match]" "Name=eth0" "" "[Network]" "Address=192.168.1.10/24" \
		"Gateway=192.168.1.1" "DNS=192.168.1.1" "DNS=9.9.9.9" "Domains=example.org"
}

@test "set_network_wait_online writes the drop-in of the unit of the package" {
	set_network_wait_online --any
	run cat "${BIN_PATH}${TARGET_SYSCONFDIR}/systemd/system/systemd-networkd-wait-online.service.d/osconfig.conf"
	assert_output_lines "[Service]" "ExecStart=" \
		"ExecStart=${TARGET_PREFIX}/lib/systemd/systemd-networkd-wait-online --any"
	set_network_wait_online --interface eth0 --timeout 30
	run grep -c -- '--interface=eth0 --timeout=30' \
		"${BIN_PATH}${TARGET_SYSCONFDIR}/systemd/system/systemd-networkd-wait-online.service.d/osconfig.conf"
	assert_output_lines "1"
}

@test "add_unit_dropin completes a bare unit name with .service" {
	add_unit_dropin sshd limits <<-EOF
		[Service]
		LimitNOFILE=1024
	EOF
	run cat "${BIN_PATH}${TARGET_SYSCONFDIR}/systemd/system/sshd.service.d/limits.conf"
	assert_output_lines "[Service]" "LimitNOFILE=1024"
}

@test "set_service_preset writes the policy file of the project and takes only its three verbs" {
	set_service_preset enable sshd.service 'wpa_supplicant@*.service'
	set_service_preset disable hostapd.service
	run cat "${BIN_PATH}${TARGET_SYSCONFDIR}/systemd/system-preset/00-${PROJECT_NAME}.preset"
	assert_output_lines "enable sshd.service" "enable wpa_supplicant@*.service" "disable hostapd.service"
	run set_service_preset start sshd.service
	[ "${status}" -eq 9 ]
	run set_service_preset enable
	[ "${status}" -eq 9 ]
}

@test "configure_wireless needs a device and an SSID" {
	run configure_wireless wlan0
	[ "${status}" -eq 9 ]
	[[ ${output} == *"--ssid"* ]]
}

@test "configure_wireless --networkmanager writes a keyfile profile with the derived key only" {
	### wpa_passphrase stub: the key is fixed, the commented passphrase is what must not get through
	function build () {
		:
	}
	mkdir -p "${GLOBAL_TOOLCHAIN_PATH}/bin"
	cat > "${GLOBAL_TOOLCHAIN_PATH}/bin/wpa_passphrase" <<-'STUB'
		#!/bin/bash
		read -r PASSPHRASE
		printf 'network={\n\tssid="%s"\n\t#psk="%s"\n\tpsk=%s\n}\n' "${1}" "${PASSPHRASE}" "$(printf '%064d' 0 | tr 0 a)"
	STUB
	chmod +x "${GLOBAL_TOOLCHAIN_PATH}/bin/wpa_passphrase"
	printf 'secretpass\n' | configure_wireless wlan0 --networkmanager --ssid 'My Net' --country IT
	KEYFILE="${BIN_PATH}${TARGET_SYSCONFDIR}/NetworkManager/system-connections/wlan0.nmconnection"
	run cat "${KEYFILE}"
	assert_output_lines "[connection]" "id=wlan0" "type=wifi" "interface-name=wlan0" "autoconnect=true" \
		"" "[wifi]" "mode=infrastructure" "ssid=My Net" \
		"" "[wifi-security]" "key-mgmt=wpa-psk" "psk=$(printf '%064d' 0 | tr 0 a)" \
		"" "[ipv4]" "method=auto" "" "[ipv6]" "method=auto"
	[ "$(stat -c %a "${KEYFILE}")" = 600 ]
	run grep -rq secretpass "${BIN_PATH}" "${LOG_PATH}"
	[ "${status}" -eq 1 ]
	[ ! -e "${BIN_PATH}${TARGET_SYSCONFDIR}/wpa_supplicant/wpa_supplicant-wlan0.conf" ]
	[ ! -e "${POSTINST}" ]
	run cat "${BIN_PATH}${TARGET_SYSCONFDIR}/modprobe.d/cfg80211.conf"
	assert_output_lines "options cfg80211 ieee80211_regdom=IT"
	### A list separator in the SSID turns it into the list of its bytes
	printf 'secretpass\n' | configure_wireless wlan0 --networkmanager --ssid 'a;b'
	run grep '^ssid=' "${KEYFILE}"
	assert_output_lines "ssid=97;59;98;"
}

@test "configure_networkmanager writes the DNS mode into conf.d" {
	configure_networkmanager
	run cat "${BIN_PATH}${TARGET_SYSCONFDIR}/NetworkManager/conf.d/00-${PROJECT_NAME}.conf"
	assert_output_lines "[main]" "dns=systemd-resolved"
	configure_networkmanager --dns default --file dns
	run cat "${BIN_PATH}${TARGET_SYSCONFDIR}/NetworkManager/conf.d/dns.conf"
	assert_output_lines "[main]" "dns=default"
}
