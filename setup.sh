# Precursor to running this script:
# 1. Added a local user which has sudo privilidges.
# 2. Can execute any sudo command without entering password.

# List of packages to install from Official Repos:
yes | sudo pacman -S vim
yes | sudo pacman -S git
yes | sudo pacman -S hwinfo
yes | sudo pacman -S bash-completion
yes | sudo pacman -S chromium
yes | sudo pacman -S xorg-xinit
yes | sudo pacman -S xorg-server
yes | sudo pacman -S i3wm
yes | sudo pacman -S i3status
yes | sudo pacman -S feh
yes | sudo pacman -S rofi
yes | sudo pacman -S ttf-dejavu
# VirtualBox requirements:
yes | sudo pacman -S virtualbox-guest-utils
yes | sudo pacman -S xf86-video-vmware

# Download, build & install YAY
cd ~
git clone https://aur.archlinux.org/yay.git
yes | cd yay/ && makepkg -si
rm -rf ~/yay

# Install packages from AUR:
echo 1 | rxvt-unicode --noconfirm
echo 1 | yay i3lock-color --noconfirm

# Install configuration files (pulled from github):
cd ~
git init
git remote add origin https://github.com/mattconway1984/dotfiles
git pull
git checkout master
