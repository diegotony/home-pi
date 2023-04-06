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
    - Komga
- Media Management
    - Bazarr
    - Radarr
    - Sonarr
- Other Media Management
    - Prowlarr
    - Transmission
    - Metube
- Server Admin
    - Whoami
    - Files
    - Kuma
    - Yacht
- Utils
    - Firefox
    - Calibre
    - Change Detection

## Dashboard
I have used [Homepage](https://github.com/benphelps/homepage), because, I can load the setup in files, and I dont lose the setup if server fails. The setup are in *configs/* folder.

## Dependencies
```bash
sudo apt-get install build-essential

curl -fsSL https://raw.githubusercontent.com/tilt-dev/tilt/master/scripts/install.sh | bash
``