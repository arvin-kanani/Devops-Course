#!/bin/bash


for container in $(docker image ls --format '{{.Repository}}|{{.ID}}')
do
	echo $container
        id="$(echo "$container" | cut -d'|' -f2)"
        name="$(echo "$container" | cut -d'|' -f1)"
        if [ "$name" = "suspicious_kepler" ] || [ "$name" = "nginx1" ];
        then
		docker image rm $id
        fi
done
