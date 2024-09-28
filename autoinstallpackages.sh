#!/bin/bash

# Define colors
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No color

# Request sudo permissions at the start
sudo -v || exit 1

# Function to display error messages in red and exit
error_exit() {
    echo -e "${RED}$1${NC}" 1>&2
    exit 1
}

# Check if the system is Arch Linux
if [[ ! -f /etc/os-release ]] || ! grep -q "Arch Linux" /etc/os-release; then
    error_exit "Error: This script is only intended for Arch Linux."
fi

# Check if the script is not run as root
if [[ $EUID -eq 0 ]]; then
    error_exit "Error: Do not run this script as root."
fi

# Check if the 'base' and 'base-devel' packages are installed
if ! pacman -Qq | grep -q "^base$"; then
    error_exit "Error: The 'base' package is not installed. Please install it."
fi

if ! pacman -Qq | grep -q "^base-devel$"; then
    error_exit "Error: The 'base-devel' package is not installed. Please install it."
fi

# Check if 'yay' or 'paru' is installed
if command -v yay &> /dev/null; then
    AUR_HELPER="yay"
elif command -v paru &> /dev/null; then
    AUR_HELPER="paru"
else
    error_exit "Error: Neither 'yay' nor 'paru' is installed. Please install one of them."
fi

echo -e "${GREEN}All checks passed successfully!${NC}"

# Step 2: Update the system
echo "Updating the system..."
sudo pacman -Syu

# Confirmation prompt for installing applications
read -p "The following packages will be automatically installed: Steam, Goverlay, Heroic-Games-Launcher, Lutris, Discord, Arch-Update. Do you want to continue? (y/n) " confirmation

if [[ "$confirmation" != "y" && "$confirmation" != "Y" ]]; then
    echo "Installation canceled by the user."
    exit 0
fi

# Install necessary applications with pacman
echo "Installing necessary applications..."
sudo pacman -S steam goverlay lutris discord --noconfirm

# Install 'arch-update' using AUR Helper if not present
if ! pacman -Qq | grep -q "^archupdate$"; then
    echo "Installing archupdate using $AUR_HELPER..."
    if [ "$AUR_HELPER" == "yay" ]; then
        yay -S heroic-games-launcher-bin arch-update --noconfirm
    else
        paru -S heroic-games-launcher-bin arch-update --noconfirm
    fi
fi

echo -e "${GREEN}Installation and configuration completed successfully!${NC}"
