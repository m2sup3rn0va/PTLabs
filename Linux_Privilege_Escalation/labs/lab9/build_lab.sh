#! /bin/bash

docker build -t lab9 .
docker create -it --name lab9 --hostname lab9 -w /home/user lab9:latest
