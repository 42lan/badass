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
      host_sucho-*|router_sucho-*)
        filename=$hostname
        echo $hostname + $filename
        docker cp $filename $container_id:/
        docker exec $container_id ash /$filename
        ;;
    esac
    echo "Configuration is applied on $container_id running the $hostname"
  done
  exit 0
else
  echo "No running containers"
  exit 1
fi
