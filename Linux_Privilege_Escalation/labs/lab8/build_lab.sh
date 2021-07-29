#! /bin/bash

docker build -t lab8 .
docker run -dit --name lab8 --hostname lab8 -p 2222:22 lab8:latest &> /dev/null && docker exec -it lab8 /etc/init.d/ssh restart &> /dev/null
echo ""
echo "================================"
echo "Run: ssh -p 2222 user@127.0.0.1"
echo "Credentials: user/user"
echo "================================"
