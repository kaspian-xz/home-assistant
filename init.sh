#!/usr/bin/env bash

if [ -z "$1" ]
  then
    echo "Usage: $0 <WORKDIR>"
    exit
fi

export WORKDIR=$1

mkdir -p $WORKDIR
mkdir -p ${WORKDIR}/mysql/
mkdir -p ${WORKDIR}/mysql/data/
mkdir -p ${WORKDIR}/mysql/init.db/
mkdir -p ${WORKDIR}/mqtt/
mkdir -p ${WORKDIR}/mqtt/config/
mkdir -p ${WORKDIR}/mqtt/data/
mkdir -p ${WORKDIR}/mqtt/log/
mkdir -p ${WORKDIR}/hass/

cp -R hass/config/* ${WORKDIR}/hass/

cd $(cd -P -- "$(dirname -- "$0")" && pwd -P)

docker-compose up -d