# Install NUPANO Runtime

_License: MIT_

## On Windows

```sh
wget -Headers @{"Cache-Control"="no-cache"} -OutFile "docker-compose.yml" -Uri "https://nupanodata.blob.core.windows.net/nupano-runtime-setup/files/docker-compose-windows.yml" | docker compose up -d
```

## On Linux (Ubuntu) WITH DOCKER already installed

```sh
sudo wget --no-cache -O docker-compose.yml https://nupanodata.blob.core.windows.net/nupano-runtime-setup/files/docker-compose-linux.yml && sudo docker compose up -d
```

## On plain Linux (Ubuntu)

The script will install Docker and asks you for Runtime parameters. Choose default or set them according to your preferences.

```sh
sudo su -c "bash <(wget -qO- https://nupanodata.blob.core.windows.net/nupano-runtime-setup/files/install.sh)" root
```
