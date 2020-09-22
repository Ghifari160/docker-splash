#!/bin/bash

splash_setup() {
    chown node:node /var/www/splash
    chmod 755 /var/www/splash
    # curl -sL https://github.com/Ghifari160/UP-2020083001/releases/download/v0.2.0/UP-2020083001-v0.2.0.tar.gz | tar -zxvf - -C /var/www/splash --overwrite
    tar -zxvf /init/splash-v0.2.0.tar.gz -C /var/www/splash --overwrite
    cd /var/www/splash
    mkdir data
    npm i --only=prod

    npm cache clean --force
    rm -rv /tmp/v8*
}

if [ ! -f /init/splash-v0.2.0 ]; then
    splash_setup
    touch /init/splash-v0.2.0

    if [ -f /init/splash ]; then
        rm /init/splash
    fi

    ln -s /init/splash-v0.2.0 /init/splash
else
    sleep 2
fi