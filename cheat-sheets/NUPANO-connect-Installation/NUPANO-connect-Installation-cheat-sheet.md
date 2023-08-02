# Install NUPANO Connect 
*License: MIT*

## On Windows
1. [Download NUPANO Connect](https://nupano-connect-releases.s3.eu-central-1.amazonaws.com/NUPANO_Connect_installer_2.0.0.exe)
2. Locate the downloaded installer on your PC and double click it.
Alternatively NUPANO Connect can also be downloaded from a previously created machine: in the Machine Inventory, navigate to the Hardware menu of the respective machine and click on “NUPANO Connect”.

Because NUPANO Connect changes the following Windows settings on your PC it requires admin rights for installation.

| Changed Windows settings    | Description |
| -------- | ------- |
| Auto start  | NUPANO Connect will automatically start as system tray application with the start of Windows    |
| Firewall inbound rules | NUPANO Connect requires to receive UDP telegrams from the NUPANO Cloud Computing Service     |

In case a virus scanner is active please accept NUPANO Connect as well. Then follow the installation with default settings.


## On Linux (Ubuntu and Debian-based Linux distributions)
**If NUPANO Connect runs on the same machine as the NUPANO Runtime, then the auto-discovery need to be switched off in the settings page**

### Install
**1. Add NUPANO’s official GPG key:**
```sh
wget -qO - https://download.nupano.com/nupano-connect.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/nupano-connect.gpg > /dev/null
```

**2. Set up the link to the APT repository:**
```sh
echo "deb [arch=amd64] https://download.nupano.com/apt stable main" | sudo tee /etc/apt/sources.list.d/nupano-connect.list
```


**3. Update APT sources and install NUPANO Connect**
```sh
sudo apt update && sudo apt install nupano-connect
```


### Update
```sh
sudo apt update && sudo apt upgrade nupano-connect
```

### Uninstall
```sh
sudo apt remove nupano-connect
```
```sh
sudo rm /etc/apt/sources.list.d/nupano-connect.list
```
```sh
sudo rm /etc/apt/trusted.gpg.d/nupano-connect.gpg
```
