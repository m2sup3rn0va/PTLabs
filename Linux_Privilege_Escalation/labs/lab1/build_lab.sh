#! /bin/bash

docker build -t lab1 -f Dockerfile .
docker create -it --name lab1 --hostname lab1 -w /home/user lab1:latest
docker start lab1
docker exec -it lab1 chmod 777 /etc/shadow
docker stop lab1


