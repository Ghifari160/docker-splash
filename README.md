# Docker Splash

[Splash](https://github.com/ghifari160/Splash) is a simple way to serve splash pages with minimal
configuration. This [Docker](https://docker.com/) image is custom built for use by GHIFARI160.

## Installation

``` shell
docker run -d --name splash -p 8080:8080 -v /path/to/persistent/storage:/var/www/splash/data ghifari160/splash
```

## Volumes

|   Container Storage    |            Description             |
|------------------------|------------------------------------|
| `/var/www/splash/data` | Persistent storage for Splash data |
