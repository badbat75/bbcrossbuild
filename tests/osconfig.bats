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
	### images.functions is not loaded here: --tag only has to reach the chroot function
	function run_on_root_dir () {
		echo "chroot ${1} ${2}: ${3}"
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

@test "--tag runs the command in the chroot of the image instead of the post install script" {
	run set_default_target --tag lfs multi-user.target
	assert_output_lines "Default target: multi-user.target" \
		"chroot lfs root: systemctl set-default multi-user.target"
	[ ! -f "${POSTINST}" ]
}

@test "add_user builds the useradd command line of the target and sets the password" {
	run add_user lfs --tag lfs --groups wheel,audio,video --password lfs
	assert_output_lines "User: lfs in wheel,audio,video" \
		"chroot lfs root: useradd -G wheel,audio,video -m lfs" \
		"Password of lfs: set" \
		"chroot lfs root: echo lfs:lfs | chpasswd"
}

@test "add_user takes the system account options and leaves the password alone" {
	run add_user rsyncd --tag lfs --system --nohome --uid 48 --shell /sbin/nologin
	assert_output_lines "User: rsyncd" \
		"chroot lfs root: useradd --system -u 48 -s /sbin/nologin rsyncd"
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
