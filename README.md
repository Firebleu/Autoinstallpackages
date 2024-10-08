# 📦 AutoInstallPackages
Automatically install packages on Arch Linux
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
⚠️ Warning!
This script is **not** a post-installation script. Ensure you have a working system (preferably with your drivers already installed). Its purpose is to quickly install packages automatically.

💡 Concept
This script is designed for gaming and multimedia use. It operates in two stages:
- Automatically installs packages without user intervention.
- Allows the user to choose whether to install additional packages.

🚀 Installation
1. Enable the multilib Repository
Edit the /etc/pacman.conf file and uncomment the following lines:
```sh
[multilib]
Include = /etc/pacman.d/multilib
```

2. Install an AUR Helper
You can choose between Yay or Paru. To install Yay, run:
```sh
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

3. Execute the Script
Clone the repository and run the installation script:
```sh
git clone https://github.com/Firebleu/autoinstallpackages.git
cd autoinstallpackages
./install.sh
```

🎮 Included Packages
    - Steam

📜 Notes
- Ensure you have an active internet connection.
- Run the script with administrative rights to avoid errors (not root).
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


