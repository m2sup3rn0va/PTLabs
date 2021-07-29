#! /bin/bash

docker build -t lab4 .
docker create -it --name lab4 --hostname lab4 -w /home/user lab4:latest bash
