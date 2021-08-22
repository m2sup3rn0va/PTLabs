#! /bin/bash

docker build -t lab2 .
docker create -it --name lab2 --hostname lab2 -w /home/user lab2:latest bash
