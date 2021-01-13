#!/usr/bin/bash

function renomme(){
 IMAGES=$(ls *.png 2>/dev/null)

 for IMAGE in $IMAGES  
   do
     DATE=$(date -r $IMAGE +"%Y-%m-%d_%Hh%Mm%Ss")
     echo "Entrain de renommer $IMAGE en $1-$DATE.png"
     mv $IMAGE $1-"$DATE.png"
 done
}