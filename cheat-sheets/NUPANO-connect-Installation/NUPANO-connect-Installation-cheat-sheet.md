# Install NUPANO Connect 
*License: MIT*

## On Linux (Debian)

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
sudo rm /etc/apt/sources.list.d/nupano-connect.list
sudo rm /etc/apt/trusted.gpg.d/nupano-connect.gpg
```

## On Windows
1. Open a previously created machine and navigate to the Hardware menu and click on “NUPANO Connect”.
2. Locate the downloaded installer on your PC and double click it.