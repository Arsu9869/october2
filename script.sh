#!/bin/bash

file="./name.txt"
file2="./port.txt"

i=$(cat $file)
hostport=$(cat $file2)
contport=80

mkdir auto$i
cd auto$i

git init 
git clone https://github.com/Arsu9869/october2.git
cd october2
docker build -t autoimage$i .

docker run -itd --name autocont$i -p $hostport:$contport  autoimage$i
echo "container autocont$i has been created" 

hostport=$((hostport+1))
i=$((i+1))

echo $i > ../../name.txt
echo $hostport > ../../port.txt
