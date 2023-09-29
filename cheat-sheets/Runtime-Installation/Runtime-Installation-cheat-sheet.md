# Install NUPANO Runtime 
*License: MIT*

## On Windows
```sh
wget -OutFile "docker-compose.yml" -Uri "https://nupano-runtime-setup.s3.eu-central-1.amazonaws.com/docker-compose.yml" | docker compose up -d
```

## On Linux (Ubuntu) WITH DOCKER already installed
```sh
sudo wget -O docker-compose.yml https://nupano-runtime-setup.s3.eu-central-1.amazonaws.com/docker-compose.yml && sudo docker compose up -d
```

## On plain Linux (Ubuntu)
The script will install Docker and asks you for Runtime parameters. Choose default or set them according to your preferences.
```sh
sudo su -c "bash <(wget -qO- https://nupano-runtime-setup.s3.eu-central-1.amazonaws.com/install.sh) latest" root
```

## Integration in other apps-stores
When the Runtime is integrated in other apps stores, the update is typically managed by the respective store.
Also most stores handle one container per app. Thus, the following Docker compose file has just the Runtime and no discovery service included.
As a result in NUPANO Connect the IP address of this Runtime need to be provided. 
```
https://nupano-runtime-setup.s3.eu-central-1.amazonaws.com/app-stores/docker-compose.yml
```
