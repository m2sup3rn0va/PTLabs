#! /bin/bash

docker build -t lab10 .
docker create -it --privileged --name lab10 lab10:latest
docker start lab10
docker exec -it lab10 debootstrap --variant=buildd --arch=amd64 trusty /tmp/user/jail http://mirror.cse.iitk.ac.in/ubuntu
docker stop lab10
