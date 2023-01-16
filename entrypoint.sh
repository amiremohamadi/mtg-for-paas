#!/bin/sh

MTG_VERSION=2.1.7
MTG_RELEASE=mtg-$MTG_VERSION-linux-amd64

SECRET=${SECRET:-7kpQ4WkVXnWyZoiuUdSQAy04NS4yMzEuMTgwLjE2Mg}

echo secret = \"${SECRET}\" > config.toml
echo bind-to = \"0.0.0.0:443\" >> config.toml

wget \
    https://github.com/9seconds/mtg/releases/download/v${MTG_VERSION}/$MTG_RELEASE.tar.gz
tar -xvf $MTG_RELEASE.tar.gz && mv $MTG_RELEASE/mtg .
chmod +x mtg
./mtg run config.toml
