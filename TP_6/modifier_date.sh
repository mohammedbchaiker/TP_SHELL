#!/usr/bin/bash

function md(){
 IMAGES=$(ls *.png 2>/dev/null)
 HOUR=1

 for IMAGE in $IMAGES  
   do
     touch -d "$(date -R -r $IMAGE) + $HOUR hours" $IMAGE
     echo "la date de l'image $IMAGE a ete modifier sa date de creation est incrementée de $HOUR H en plus"
     ((HOUR++))
 done
}