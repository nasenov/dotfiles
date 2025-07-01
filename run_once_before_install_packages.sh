#!/bin/sh

sudo pacman -Syu --noconfirm

# CLI
sudo pacman -S --needed --noconfirm man-db
sudo pacman -S --needed --noconfirm base-devel
sudo pacman -S --needed --noconfirm git
sudo pacman -S --needed --noconfirm ttf-jetbrains-mono-nerd
sudo pacman -S --needed --noconfirm hyprpolkitagent
sudo pacman -S --needed --noconfirm hyprpaper
sudo pacman -S --needed --noconfirm hyprpicker
sudo pacman -S --needed --noconfirm hyprlock
sudo pacman -S --needed --noconfirm hypridle
sudo pacman -S --needed --noconfirm zsh
sudo pacman -S --needed --noconfirm kubectl
sudo pacman -S --needed --noconfirm helm
sudo pacman -S --needed --noconfirm fluxcd
sudo pacman -S --needed --noconfirm talosctl
sudo pacman -S --needed --noconfirm sops
sudo pacman -S --needed --noconfirm terraform
sudo pacman -S --needed --noconfirm ansible
sudo pacman -S --needed --noconfirm yamllint
sudo pacman -S --needed --noconfirm tflint
sudo pacman -S --needed --noconfirm jdk21-openjdk
sudo pacman -S --needed --noconfirm go-task
sudo pacman -S --needed --noconfirm 7zip
sudo pacman -S --needed --noconfirm unzip

# GUI
sudo pacman -S --needed --noconfirm obsidian
sudo pacman -S --needed --noconfirm telegram-desktop
sudo pacman -S --needed --noconfirm vlc
sudo pacman -S --needed --noconfirm discord
sudo pacman -S --needed --noconfirm code
sudo pacman -S --needed --noconfirm dbeaver
sudo pacman -S --needed --noconfirm libreoffice-fresh
yay -S --needed --noconfirm --removemake google-chrome
yay -S --needed --noconfirm --removemake ledger-live-bin
yay -S --needed --noconfirm --removemake intellij-idea-ultimate-edition
yay -S --needed --noconfirm --removemake docker-desktop

# Hacks
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

sudo ln -sf "$(which go-task)" /usr/local/bin/task
