#!/bin/bash

if [ -z $1 ]
    then 
        echo "Image tag required. Please provide the image tag!!"
        exit 1
    fi

docker rm -f $1
docker rmi -f joydeep1985/#1
docker system prune --force
dotnet publish -c Release -o release
docker build -t joydeep1985/$1 . --no-cache
docker run -d -p 80:80 --name $1 joydeep1985/$1

echo -e "\n------------------ SLEEP 5 Seconds-----------------------------";

sleep 5
for i in {1..3};do echo -e "\n";done;
echo -e "----------------curl : localhost/weatherforecast------------------------"
curl localhost/weatherforecast


for i in {1..3};do echo -e "\n";done;
echo -e "----------------curl : localhost/status ( health) ----------------------"
curl localhost/status -i

for i in {1..3};do echo -e "\n";done;
echo -e "----------------curl : localhost/status/healthz ( health) ----------------------"
curl localhost/status/healthz -i

echo -e "\n"

docker stop $1