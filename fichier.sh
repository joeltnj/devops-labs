#!/bin/bash

echo "quel fichier veux tu veridier ?"
read nom

if [ -f $nom ]; then
    echo "$nom exit et un file"
elif [ -d $nom ]; then
    echo "$nom existe et c'est un dossier"
else
     echo "$nom n'existe pas"
fi