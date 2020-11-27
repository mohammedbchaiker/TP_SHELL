#!/usr/bin/bash
TACHES=$HOME/.todo_list
function todo(){
if [ "$1" = "l" ]  
then 
    echo "Les taches à faire "
        STAR=1
        while read -r CURRENT_STAR
            do
             echo "$STAR: $CURRENT_STAR"
            ((STAR++))
        done < $TACHES

elif [ "$1" = "r" ]
then 
    sed -i '/'$2'/d' $TACHES    
    echo  $2" à bien était supprimé"
elif [ "$1" = "a" ]
then
    echo "$2" >> $TACHES
    echo "C'est bien ajouté"
fi
}	














read -p "Appuyez sur a pour ajouter, l pour lister et r pour supprimmer " reponse

if [ "$reponse" = "a" ]
then
read -p "La taches a noter " reponse_2
fi
if [ "$reponse" = "r" ]
then
read -p "La taches a supprimmer " reponse_2
fi



todo $reponse $reponse_2
