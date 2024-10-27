#!bin/bash
# mkdir /auto
git init 
git clone https://github.com/Arsu9869/october2.git
docker build -t autoimage .
name="arsu"
hostport=400

contport=80

docker run -itd --name $name -p hostport:contport  autoimage



((hostport++))
