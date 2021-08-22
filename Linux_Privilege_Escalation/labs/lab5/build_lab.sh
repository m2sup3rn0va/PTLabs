#! /bin/bash

docker build -t lab5 .
docker create -it --name lab5 --hostname lab5 -w /home/user lab5:latest bash
