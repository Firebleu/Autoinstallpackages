# autoinstallpackages
Install automatically packages on Archlinux
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Warning !
  This script is **not strictly speaking a post-installation script**. You must therefore have a working system (preferably with your drivers already installed).
  Its purpose is **simply to install packages automatically and quickly**.

Concept : 
  This script is designed for **gaming and multimedia use**.
  It will be carried out in two stages. First, the script will install packages without user intervention. Then, in the second stage, the user will be able to choose whether or not to install packages.

Instruction :
  - You need to **activate** the **multilib** repository (32-bit) : https://wiki.archlinux.org/title/Official_repositories
  - **Install** Yay or Paru : Yay\ https://github.com/Jguer/yay & Paru\ https://github.com/Morganamilo/paru

  Install **git**, **clone** this repository, **cd into** the forlder and **launch** the installation :
```sh
sudo pacman -Sy git
git clone https://github.com/Firebleu/autoinstallpackages
cd autoinstallpackages
chmod +x autoinstallpackages.sh
./autoinstallpackages.sh
```
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


