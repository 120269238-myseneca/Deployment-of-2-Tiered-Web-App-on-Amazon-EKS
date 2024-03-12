#! /bin/bash
set -x
docker build -t application:v0.1 -f ../web_application/Dockerfile .
docker build -t database:v0.1 -f ../web_application/Dockerfile_mysql .

export DBPORT=3306
export DBUSER=root
export DATABASE=employees
export DBPWD=pw
export backgroundimage=project1.jpg
export bucketname=clo835group1
export groupName="Group-1"

sudo docker network create group1Bridge
sudo docker run --name mysql-db --network=group1Bridge -d -e MYSQL_ROOT_PASSWORD=pw database:v0.1
sleep 40

DBHOST=$(sudo docker inspect --format '{{ .NetworkSettings.Networks.group1Bridge.IPAddress }}' mysql-db)

sudo docker run -d --name application -p 81:81 --network=group1Bridge -e DBHOST=$DBHOST -e DBPORT=$DBPORT -e DBUSER=root -e DBPWD=pw -e backgroundimage=project1.jpg -e bucketname=clo835group1 -e groupName=Group-1 application:v0.1