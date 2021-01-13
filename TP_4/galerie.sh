#!/usr/bin/bash


GALERIE=galerie.html
> $GALERIE

echo '<html>
 <head>
   <title>
   The title of your page
   </title>
 </head>
 
 <body>
 <h1>Bien venue dans ma gallerie. appuyer sur les minutiares pour voir les images dans leurs integralité.</h1>
' >> $GALERIE



for image in `ls *.png 2>/dev/null`
do
        convert $image -resize '128x128>' dossier_images/$image
        echo '<a href="'$image'"><img src="dossier_images/'$image'" alt="" /> </a><br> '>> $GALERIE
done


echo '</body>
</html>' >> $GALERIE