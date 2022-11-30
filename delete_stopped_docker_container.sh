#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
else
  container_id=`sudo docker ps -a -q`
  sudo docker rm $container_id
  echo "Docker container : $container_id removed"
fi