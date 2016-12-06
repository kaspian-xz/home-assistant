#!/usr/bin/env bash

if [ -z "$1" ]
  then
    echo "Usage: $0 <WORKDIR>"
    exit
fi

export WORKDIR=$1

docker-compose up -d --no-deps --build hass