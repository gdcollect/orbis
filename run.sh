#!/usr/bin/env bash

set -e

echo "Starting orbis"
mvn clean package -U -Dmaven.test.skip=true

sudo docker-compose down
#sudo docker network create orbis
sudo docker-compose  up -d --build

# build one microservice
#mvn clean install -pl tnt -am -DskipTests=true
#deploy one service
# sudo docker-compose up -d --no-deps --build auth






