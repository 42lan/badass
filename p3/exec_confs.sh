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
        docker cp host_sucho-1 $container_id:/
        docker exec $container_id ash /host_sucho-1
        ;;
      host_sucho-2)
        docker cp host_sucho-2 $container_id:/
        docker exec $container_id ash /host_sucho-2
        ;;
      host_sucho-3)
        docker cp host_sucho-3 $container_id:/
        docker exec $container_id ash /host_sucho-3
        ;;
    esac
    echo "Configuration is applied on $container_id running the $hostname"
  done
  exit 0
else
  echo "No running containers"
  exit 1
fi
