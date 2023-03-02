# Hyper-V cheat sheet

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

