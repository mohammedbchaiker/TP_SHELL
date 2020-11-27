#!/usr/bin/bash



FAV=$HOME/.favoris_bash;
FAV_TEMP=$HOME/.temp;

echo "$FAV";

Save(){
echo "$1 -> $PWD" >> $FAV;
}

Save_2(){
echo "Nommez ce dossier favoris"
read nom;
Save $nom;
}

Edit(){
a=$(grep "$2" $FAV);
echo "$a"> $FAV_TEMP;
b=$(cut -d" " -f 3 "$FAV_TEMP");
cd "$b";

}

List(){
column -t $FAV;
}

Remove(){
a=$(grep -vw "^$1" $FAV);
echo "$a"> $FAV_TEMP;
mv "$FAV_TEMP" "$FAV";
}

redirection(){
if [ "$1" = "s" ]
then
Save_2;
elif [ "$1" = "c" ]
then
Edit $1 $2;
elif [ "$1" = "l" ]
then
List;
elif [ "$1" = "r" ] 
then
Remove $2;
else
echo "erreur"
fi
}


read INPUT_1 INPUT_2;
redirection $INPUT_1 $INPUT_2;
