#! /bin/bash

docker build -t lab3 .
docker create -it --name lab3 --hostname lab3 -w /home/user lab3:latest bash
