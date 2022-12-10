 #!/bin/bash

# Default packages are for the configuration and corresponding .config folders
# Install packages after installing base Debian with no GUI

# xorg display server installation
sudo apt install -y xorg xbacklight xbindkeys xvkbd xinput

# PACKAGE INCLUDES build-essential.
sudo apt install -y build-essential

# Microcode for Intel/AMD 
# sudo apt install -y amd64-microcode
sudo apt install -y intel-microcode 

# Network File Tools/System Events
sudo apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# File Manager (eg. pcmanfm,krusader,thunar)
sudo apt install -y  ranger mc doublecmd-gtk 

# Terminal (eg. terminator,kitty,xfce4-terminal)
sudo apt install -y rxvt-unicode

# Sound packages
sudo apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa

# Neofetch/HTOP
sudo apt install -y neofetch htop

# Network Manager
sudo apt install -y network-manager network-manager-gnome 

# Installation for Appearance management
sudo apt install -y lxappearance 

# Browser Installation (eg. chromium)
sudo apt install -y firefox-esr thunderbird 

# Desktop background browser/handler 
# feh --bg-fill /path/to/directory 
# sudo apt install -y nitrogen 
sudo apt install -y feh
 
# Fonts and icons for now
sudo apt install -y fonts-firacode fonts-liberation2 fonts-ubuntu papirus-icon-theme fonts-cascadia-code

# Openbox packages
sudo apt install -y openbox dunst dbus-x11 hsetroot libnotify-bin menu picom   rofi scrot tint2  zsh sudo vim firmware-iwlwifi udiskie gparted ntfs-3g
sudo apt install -y arc arj lzip lzop nomarch p7zip-full rar rpm unace unalz unrar serdi sordi mediainfo-gui
sudo apt install -y w3m w3m-img less xsel xvkbd atool mediainfo jhead ffmpegthumbnailer trash-cli

# SLIM login manager
sudo apt install -y slim
sudo systemctl enable slim

# Configuration Setup
mkdir -p ~/.config/openbox
cp -a /etc/xdg/openbox/ ~/.config/

ranger --copy-config=all
########################################################
# End of script for default config
#
#

sudo apt autoremove

printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"
