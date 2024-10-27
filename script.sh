#!/bin/bash
file="./name.txt"
i=$(cat $file)

mkdir auto$i
cd auto$i

git init 
git clone https://github.com/Arsu9869/october2.git
cd october2
docker build -t autoimage$i .

 
hostport=400

contport=80

docker run -itd --name autocont$i -p $hostport:$contport  autoimage$i
echo "container autocont$i has been created" 



hostport=$((hostport+$i))
i=$((i+1))

echo $i > $file
echo $i > ../name.txt
