## Install NUPANO Runtime 
** License: MIT ***

### On Windows
```sh
wget -OutFile "docker-compose.yml" -Uri "https://nupano-runtime-setup.s3.eu-central-1.amazonaws.com/docker-compose.yml" | docker compose up -d
```

### On Linux (Ubuntu) WITH DOCKER already installed
```sh
wget -O docker-compose.yml https://nupano-runtime-setup.s3.eu-central-1.amazonaws.com/docker-compose.yml | docker compose up -d
```

### On plain Linux (Ubuntu)
The script will install Docker and asks you for Runtime parameters. Choose default or set them according to your preferences.
```sh
sudo su -c "bash <(wget -qO- https://nupano-runtime-setup.s3.eu-central-1.amazonaws.com/install.sh) latest" root
```
