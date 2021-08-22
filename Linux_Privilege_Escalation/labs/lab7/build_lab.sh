#! /bin/bash

docker build -t lab7 .
docker create -it --name lab7 --hostname lab7 -w /home/user lab7:latest bash
