#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
else
  container_id=`sudo docker ps -a -q`
  docker_image=synopsys2016_docker_vnc_image_full_working
  sudo docker commit $container_id synopsys2016_docker_vnc_image_full_working
  echo "Docker saved in $docker_image"
fi
