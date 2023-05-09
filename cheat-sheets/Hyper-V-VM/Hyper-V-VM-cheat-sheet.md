# Hyper-V cheat sheet
*License: MIT*
This page explains step by step how to setup Hyper-V so you can access the VM via PowerShell and ultimately install the NUPANO Runtime on a Hyper-V VM.

## Create VM
1. Choose "Quick Create" and "Ubuntu 22.04" from the Hyper-V menu
2. Under settings define a name (optional)
3. When finished Hyper-V prompts you to either connect to open settings. Choose open settings in case your IT network required you to choos a specific virtual switch
4. In the UI if Ubuntu follow the first steps like language and keyboard layout, time zone, name and password

## Add ssh to VM on Windows
Open terminal (on the VM) and run below commands:

```sh
sudo apt update
sudo apt upgrade

sudo apt-get install net-tools
sudo apt-get install -y openssh-server

sudo nano /etc/ssh/ssh_config #and uncomment "PasswordAuthentication yes"

sudo systemctl disable ssh
sudo systemctl enable ssh
```

You can now use PowerShell to log on from your Windows host system :-)
More details can be found here:
https://www.cyberciti.biz/faq/ubuntu-linux-install-openssh-server/

## Configure a proxy 
Follow the steps provided here: https://github.com/mosaiqone/user_guide_utils/blob/main/cheat-sheets/Docker/Docker-cheat-sheet.md

## Install the Runtime
Follow the steps provided here: https://github.com/mosaiqone/user_guide_utils/blob/main/cheat-sheets/Runtime-Installation/Runtime-Installation-cheat-sheet.md
