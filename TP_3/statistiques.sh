#!/usr/bin/bash



echo "Initialisation..."

DIR_VIDE=$(find $HOME -type d -empty | wc -l)
F_VIDE=$(find $HOME -type f -empty | wc -l)
DIR_CACHE=$(find $HOME -type d -name '*.*' | wc -l)
F_CACHE=$(find $HOME -type f -name '*.*' | wc -l)
T_TOTALE=$(du  -sh)
NB_DIR=$(find $HOME -type d | wc -l)
NB_FILE=$(find $HOME -type f | wc -l)
F_MORE=$(find $HOME -type f -size +15M | wc -l)
F_LESS=$(find $HOME -type f -size -512k | wc -l)
BIGGER_F=$(find $HOME -type f  | sort -nr | head -1)
PY=$(find $HOME -type f -name '*.py' | wc -l)
VIDEO=$(find $HOME -type f -name '*.mp4' | wc -l)
IMAGE=$(find $HOME -type f -name '*.png' | wc -l)



function statistiques(){
    if [ "$1" = "1" ]
    then
        echo "- $NB_DIR répertoires"
        echo "- $NB_FILE fichiers"
        echo "- La taille totale est $T_TOTALE"

    fi
    if [ "$1" = "2" ]
    then
        echo "- $NB_DIR répertoires dont :"
        echo "     -$DIR_VIDE dossiers vides"
        echo "     -$DIR_CACHE dossiers caches"
        echo "- $NB_FILE fichiers dont :"
        echo "     -$F_VIDE fichiers vides"
        echo "     -$F_CACHE fichiers caches"
        echo "- La taille totale est $T_TOTALE"
    fi
    if [ "$1" = "3" ]
    then
        echo "- $NB_DIR répertoires dont :"
        echo "     -$DIR_VIDE dossiers vides"
        echo "     -$DIR_CACHE dossiers caches"
        echo "- $NB_FILE fichiers dont :"
        echo "     -$DIR_VIDE fichiers vides"
        echo "     -$F_VIDE fichiers vides"
        echo "     -$F_CACHE fichiers caches"
        echo "     -$F_MORE fichiers de taille plus que 15M"
        echo "     -$F_LESS fichiers de taille moins que 512K"
        echo "     -Et le plus grand se trouve dans :"
        echo "           $BIGGER_F "
        echo "   "
        echo "Il y'a :"
        echo "$PY fichiers Python"
        echo "$IMAGE fichiers image"
        echo "$VIDEO fichiers video"
        echo "- La taille totale est $T_TOTALE"
    fi
 
}

echo "Le repertoire analysé par defaut est $HOME"
echo 
read -p "il ya 3 degrés de précisions: Veuillez vous tapez soit 1,2 ou 3 :" ANSWER
statistiques $ANSWER 