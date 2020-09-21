# UP-2020092101

UP-2020092101 is a custom built [Docker](https://docker.com/) image for [UP-2020083001](https://github.com/ghifari160/UP-2020083001) for use by GHIFARI160.

## Installation

While UP-2020083001 is still private, it is necessary to manually build the Docker image from source.

Clone the repository

``` shell
git clone https://github.com/ghifari160/UP-2020092101
cd UP-2020092101
```

Build the Docker image

``` shell
docker build -t local/splash .
```

Run the Docker image.

``` shell
docker run -d --name splash -p 8080:8080 -v /path/to/persistent/storage:/var/www/splash/data local/splash
```

## Volumes

|   Container Storage    |            Description             |
|------------------------|------------------------------------|
| `/var/www/splash/data` | Persistent storage for Splash data |
