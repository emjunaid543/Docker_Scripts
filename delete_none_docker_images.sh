#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
else
  image_id=`sudo docker images -a | grep none | awk {'print $3'}`
  sudo docker rmi $image_id
  echo "Docker Image Removed with ID : $image_id"
fi
