#!/bin/bash

i=1
mkdir /auto$i

git init 
git clone https://github.com/Arsu9869/october2.git
docker build -t autoimage .

 
hostport=400

contport=80

docker run -itd --name autocont$i -p $hostport:$contport  autoimage
echo "container autocont$i has been created" 



hostport=$((hostport+1))
i=$((i+1))
