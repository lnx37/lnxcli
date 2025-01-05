#!/bin/bash

set -e
set -o pipefail
set -u
set -x

cd "$(dirname "$0")"

date

# -- bootloader
# pacman -S --needed grub
# pacman -S --needed efibootmgr

# -- desktop
# pacman -S --needed xorg
# pacman -S --needed xfce4

# -- networking
pacman -S --needed iwd
pacman -S --needed networkmanager
pacman -S --needed network-manager-applet

# -- tool
# pacman -S --needed vim
pacman -S --needed android-tools
pacman -S --needed autossh
pacman -S --needed cronie
pacman -S --needed gcc
pacman -S --needed git
pacman -S --needed gvim
pacman -S --needed iftop
pacman -S --needed inetutils
pacman -S --needed less
pacman -S --needed lsb-release
pacman -S --needed man
pacman -S --needed mlocate
pacman -S --needed net-tools
pacman -S --needed nmap
pacman -S --needed ntp
pacman -S --needed p7zip
pacman -S --needed rsync
pacman -S --needed sshpass
pacman -S --needed tcpdump
pacman -S --needed tk
pacman -S --needed tree
pacman -S --needed unrar
pacman -S --needed unzip
pacman -S --needed wget
pacman -S --needed which
pacman -S --needed zip

# -- browser
pacman -S --needed chromium
pacman -S --needed firefox
pacman -S --needed bleachbit
pacman -S --needed yt-dlp
pacman -S --needed mpv

# -- chinese
pacman -S --needed ttf-dejavu
pacman -S --needed ttf-droid
pacman -S --needed ttf-liberation
pacman -S --needed wqy-zenhei
pacman -S --needed fcitx
pacman -S --needed fcitx-configtool
pacman -S --needed fcitx-googlepinyin

# -- misc
# pacman -S --needed virtualbox

# -- misc
# pacman -S --needed wireshark-qt

# -- misc
# pacman -S --needed autoconf
# pacman -S --needed automake
# pacman -S --needed clang
# pacman -S --needed cmake

# -- misc
# pacman -S --needed busybox
# pacman -S --needed convmv
# pacman -S --needed inotify-tools
# pacman -S --needed lftp
# pacman -S --needed unarchiver

# -- misc
# pacman -S --needed libreoffice-fresh
# pacman -S --needed transmission-gtk
# pacman -S --needed xpdf

# -- misc
# pacman -S --needed docker
# pacman -S --needed mariadb

date
