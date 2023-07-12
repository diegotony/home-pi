# home-pi

Setup of local server with RP4.

## Requirements
- DietPi (OS)
- Docker (compose)
- Git
- Avahi-Daemon
- ALSA
- Netdata
- Dropbear
- X.Org X Server

> ATTENTION: If you are using DietPi, you can install this tools with the command  `dietpi-software`, you should be root.
 
## Services
Well in this setup, I have deployed some docker apps, as like:
- Dashboard
    - Homepage
- Streaming
    - Jellyfin
    - Kavita
- Media Management
    - Bazarr
    - Radarr
    - Sonarr
    - Jacket
    - Prowlarr
    - Transmission
    - Metube
- Server Admin
    - Whoami
    - Files
    - Ngrok
    - Watchtower
    - PiHole
- Utils
    - Calibre

## Dashboard
I have used [Homepage](https://github.com/benphelps/homepage), because, I can load the setup in files, and I dont lose the setup if server fails. The setup are in *configs/* folder.

## Dependencies
```bash
sudo apt-get install build-essential
curl -fsSL https://raw.githubusercontent.com/tilt-dev/tilt/master/scripts/install.sh | bash
```
## Mobile Apps
You can use Jellyfin App in Android Store link [here](https://play.google.com/store/apps/details?id=org.jellyfin.androidtv&hl=es_419&gl=US&pli=1)

## Ngrok
This service is used to connect to Chromecast due to Chromecast only allow HTTPS connections

## Check your hostname
```
hostname -I
```

## Set to Static your Network Config
Change DHCP to STATIC and set ip static 

## Set this env vars
```
SERVER_STORAGE_DIR=<storage-location>
SERVER_DATA_DIR=/apps/
REPO_CONFIG_DIR=<home-pi-location>
DOMAIN_NAME=<server-name>
IP_ADDRESS_G=<server-ip>
NGROK=********************
```
