# Docker cheat sheet

## Clean-up Docker
### Stop all containers
```sh
docker stop $(docker ps -aq)
```

### Remove all containers
```sh
docker rm $(docker ps -aq)
```

### Delete all images
```sh
docker rmi $(docker images -q)
```

### Delete all volumes
```sh
docker volume rm $(docker volume ls -q)
```

## Install NUPANO Runtime 
### Install Runtime on Windows
```sh
wget -OutFile "docker-compose.yml" -Uri "https://nupano-runtime-setup.s3.eu-central-1.amazonaws.com/docker-compose.yml" | docker compose up -d
```

### Install Runtime on Linux (Ubuntu) WITH DOCKER already installed
```sh
wget -O docker-compose.yml https://nupano-runtime-setup.s3.eu-central-1.amazonaws.com/docker-compose.yml | docker compose up -d
```

### Install Runtime on plain Linux (Ubuntu)
The script will ask you for Runtime parameters. Choose default or set them according to your preferences.
```sh
sudo su -c "bash <(wget -qO- https://nupano-runtime-setup.s3.eu-central-1.amazonaws.com/install.sh) latest" root
```


## Set proxy for Docker 
This depends on your IT infrastructure. It is mandatory for Lenze.

```sh
sudo mkdir -p /etc/systemd/system/docker.service.d
sudo nano /etc/systemd/system/docker.service.d/http-proxy.conf
```
add the following text (please note the values are Lenze specific!!):
```
[Service]
Environment="HTTP_PROXY=http://fra4.sme.zscaler.net:10181"
Environment="HTTPS_PROXY=http://fra4.sme.zscaler.net:10181"
Environment="NO_PROXY=localhost, 127.0.0.0/8, ::1, *.encowayhb.lokal"
```

Then, set the proxy also here:
```sh
sudo nano /etc/apt/apt.conf.d/proxy
```
Add (settings are Lenze specific): 
```
Acquire::http::proxy "http://fra4.sme.zscaler.net:10181";
Acquire::https::proxy "http://fra4.sme.zscaler.net:10181";
```

Restart Docker
```sh
sudo systemctl daemon-reload
sudo systemctl restart docker
```

With the following command you can check whether the environmental variables are set correctly:
```sh
sudo systemctl show docker --property Environment
```

