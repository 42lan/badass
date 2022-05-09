#!/bin/bash

running_containers=$(docker ps -q)
if [[ ! -z $running_containers ]]
then
  for i in ${running_containers[@]}
  do
    container_info=$(echo "$i:$(docker exec $i hostname)")
    hostname=${container_info#*:}
    container_id=${container_info%:*}
    case $hostname in
      host_sucho-1)
        docker exec $container_id ping -c 3 30.1.1.2
        ;;
    esac
  done
  exit 0
else
  echo "No running containers"
  exit 1
fi
