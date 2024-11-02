#!/bin/bash

cp -r Wallpapers/ ~/
cp -r .config ~/
cp -r .fonts ~/
cp .vimrc ~/
cp .xinitrc ~/
cp .bashrc ~/
cp .bash_profile ~/


sudo pacman -S alacritty xorg xorg-server xorg-xinit xdg-utils firefox noto-fonts i3 noto-fonts-emoji xfce4 xfce4-goodies git neofetch neovim vim fastfetch bluez blueman discord xfce4-clipman-plugin i3status dmenu brightnessctl nitrogen lxappearence pulseaudio-bluetooth dunst picom --noconfirm

sudo systemctl enable bluetooth --now


sudo cp 00-keyboard.conf /etc/X11/xorg.conf.d/
sudo cp 30-touchpad.conf /etc/X11/xorg.conf.d/

git clone https://aur.archlinux.org/yay.git && cd yay && makepkgs -si
