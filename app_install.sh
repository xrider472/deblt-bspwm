#!/bin/bash

# After installing base Debian, add contrib and non-free to apt sources list, then mount usb
# To mount usb - sudo mkdir /mnt/usb, then sudo mount /dev/sdx1 /mnt/usb
# Change directory to /mnt/usb
# Run this install script
# After script completes, reboot and copy config files to new OS
# The following packages are for the configuration and corresponding .config folders

# lightdm, it will pull in all xorg dependencies
sudo apt install -y lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings

# i3 install
# sudo apt install -y i3 i3lock-fancy i3blocks

# bspwm install
sudo apt install -y bspwm sxhkd rofi dunst polybar picom i3lock-fancy

# Remove this package for dell xps 13 laptop after install if it was installed automatically and delete the config file if present as well
# This package is old and not maintained
# xserver-xorg-video-intel
# /etc/X11/xorg.conf.d/20-intel.conf

# Microcode for Intel/AMD 
# sudo apt install -y amd64-microcode
sudo apt install -y intel-microcode 

# Network Manager
sudo apt install -y network-manager-gnome

# Installation for Appearance management
sudo apt install -y lxappearance

# Themes and Icons
sudo apt install -y arc-theme greybird-gtk-theme elementary-xfce-icon-theme tango-icon-theme

# XFCE4 Applications
sudo apt install -y thunar thunar-archive-plugin thunar-gtkhash thunar-media-tags-plugin xfce4-settings xfce4-power-manager xfce4-power-manager-plugins

# Network File Tools/System Events
sudo apt install -y dialog mtools acpid gvfs-backends
sudo systemctl enable acpid

# Terminal (eg. terminator,kitty,xfce4-terminal,tilix)
sudo apt install -y kitty
sudo apt install -y tilix

# Task manager
sudo apt install -y btop

# Sound packages
sudo apt install -y pulseaudio pavucontrol

# EXA installation
# replace ls command in .bashrc file with line below
# alias ls='exa -al --long --header --color=always --group-directories-first' 
sudo apt install -y exa

# Printing and bluetooth (if needed)
# sudo apt install -y cups
# sudo apt install -y bluez blueman

# sudo systemctl enable bluetooth
# sudo systemctl enable cups

# Browser Installation
sudo apt install -y firefox-esr webext-ublock-origin-firefox

# Desktop background browser/handler 
# feh --bg-fill /path/to/directory 
sudo apt install -y nitrogen 
# sudo apt install -y feh

# Packages needed by i3 after installation
# sudo apt install -y numlockx rofi picom polybar dunst yad libnotify-bin

# More Packages
sudo apt install -y unzip gsimplecal galculator geany gufw gparted grsync gtkhash meld synaptic timeshift transmission-gtk vlc android-sdk-platform-tools git nala wget curl ristretto gpick libreoffice-writer libreoffice-style-elementary libreoffice-gtk3

# Python3 for BetterADBSync
# This is for a rsync like sync with android phone
# Have to create a virtual environment to run BetterADBSync
# After installing python programs, create my_env directory somewhere, then run, #python3.11 -m venv my_env#, then enter into my_env/bin/ directory and run, #source activate#, to activate the virtual environment.  Then run, #pip install BetterADBSync#, then you can run the program.  Use adbsync --help.
sudo apt install -y python3-pip python3-venv

# Command line text editor -- nano preinstalled
sudo apt install -y micro

# Install fonts
sudo apt install -y fonts-font-awesome fonts-liberation2 fonts-terminus ttf-mscorefonts-installer

# Flatpak
sudo apt install flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.brave.Browser -y
flatpak install flathub com.github.unrud.VideoDownloader -y
flatpak install flathub com.system76.Popsicle -y
flatpak install flathub io.freetubeapp.FreeTube -y
flatpak install flathub net.pcsx2.PCSX2 -y
flatpak install flathub org.x.Warpinator -y
flatpak install flathub com.github.tchx84.Flatseal -y


########################################################
# End of script for default config

sudo apt autoremove

printf "\e[1;32mYou can now reboot! Thank you.\e[0m\n"
