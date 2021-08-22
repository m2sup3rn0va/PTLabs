#! /bin/bash

docker build -t lab6 .
docker create -it --name lab6 --hostname lab6 -w /home/user lab6:latest bash
