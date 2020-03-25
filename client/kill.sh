#!/bin/bash
ps=$(sudo docker ps -a | grep "peterglezroa/appcool_client" | grep "Up")
if test $? -eq 0
then
  psid=$(echo $ps | tr -s ' ' '*' |cut -f1 -d'*')
  sudo docker stop $psid
  sudo docker rm $psid
else
  echo "The docker container is not active"
fi
