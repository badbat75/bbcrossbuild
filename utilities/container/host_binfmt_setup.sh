#!/bin/bash

#######################################
### binfmt proc filesystem creation ###
#######################################

if [ ! -f ./qemu-binfmt-conf.sh ]
then
	wget https://raw.githubusercontent.com/qemu/qemu/refs/heads/master/scripts/qemu-binfmt-conf.sh 
	chmod +x ./qemu-binfmt-conf.sh 
fi

./qemu-binfmt-conf.sh --qemu-path /usr/bin --qemu-suffix -static
