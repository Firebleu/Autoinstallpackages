

  ![screenshot_13102024_164311](https://github.com/user-attachments/assets/163018ca-df21-4f6d-8757-64d68c745e02)


## Overview
**AutoInstallPackages** is a streamlined solution to help you automatically install essential packages on Arch Linux, especially designed for gaming and multimedia purposes. This script performs system updates, installs crucial software for a great gaming and multimedia experience, and cleans up unnecessary files.

> **⚠️ Warning**: This is not a post-installation script. Ensure you already have a working Arch Linux system (preferably with drivers installed). Its purpose is to quickly install selected packages for an enhanced experience.

## 🚀 Features
- **Automated Package Installation**: Installs required packages for gaming and multimedia without user intervention.
- **Optional Extra Packages**: Lets you choose to install additional packages to further customize your system.

## 💡 Concept
This script is designed to enhance your Arch Linux system for gaming and multimedia use. It operates in three stages:
1. **System Update**: Brings your system up to date.
2. **Package Installation**: Automatically installs core gaming and multimedia software.
3. **System Cleanup**: Frees up space by cleaning unnecessary cache files.

## 🚀 Setup Instructions
Follow these steps to prepare and execute the script:

### 1. Enable the Multilib Repository
To use certain packages, you need to enable the multilib repository:

Edit the `/etc/pacman.conf` file and uncomment the following lines:
```sh
[multilib]
Include = /etc/pacman.d/multilib
```

### 2. Install an AUR Helper (Paru)
The script requires `paru`, an AUR helper, to install some packages. You can install `paru` by following these steps:

```sh
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

### 3. Execute the Script
Clone the repository and run the installation script:

```sh
git clone https://github.com/Firebleu/Autoinstallpackages
cd Autoinstallpackages
chmod +x ./autoinstallpackages.sh   
./autoinstallpackages.sh
```

## 🎮 Included Packages
The script will install the following core packages:

- **Steam**: A platform for gaming and game management.
- **Goverlay**: An overlay tool for optimizing game performance.
- **Heroic-Games-Launcher**: A game launcher supporting Epic Games and GOG.
- **Lutris**: A gaming platform that allows you to manage games from multiple sources.
- **Discord**: A communication app popular among gamers.
- **Arch-Update**: Helps keep your system up to date easily.
- **Timeshift**: System restore utility to protect your system from issues.

## 📜 Important Notes
- **Internet Connection**: Ensure you have an active internet connection during installation.
- **Permissions**: Run the script with administrative rights using `sudo`, but do not run it as root to avoid potential issues.

## 🛠️ Additional Features
- **System Cleanup**: After installation, the script will clean up the package cache to free up disk space.
- **Logo** : Made with IA

Feel free to use this script to enhance your Arch Linux experience and get set up quickly for gaming and multimedia!

