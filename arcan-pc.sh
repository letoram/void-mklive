#!/bin/sh

ARCH=x86_64
IMAGE=

rm daybreak-*.iso
readonly DATE=$(date +%Y%m%d)
readonly ARCAN_IMG=daybreak-${ARCH}-${DATE}.iso
# want an arcan-netonly as well that would look for the first known directory or something

readonly GRUB="grub-i386-efi grub-x86_64-efi"

readonly BASE_PKGS="dialog cryptsetup lvm2 mdadm void-docs-browse $GRUB"
readonly X_PKGS="$BASE_PKGS xorg-minimal xorg-input-drivers xorg-video-drivers setxkbmap xauth font-misc-misc terminus-font dejavu-fonts-ttf alsa-plugins-pulseaudio"
readonly ARCAN_PKGS="$BASE_PKGS arcan mesa-dri"

[ ! -x mklive.sh ] && exit 0

./mklive.sh -A demo -a $ARCH -o $ARCAN_IMG -p "$ARCAN_PKGS" -r ./repository "$@"
