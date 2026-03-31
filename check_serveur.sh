#!/bin/bash

echo "entrer un nom de fichier de config"
read nom

if [ -e $nom ];then
    echo "Config trouvée : [$nom]"
    if [ -x $nom ]; then
        echo "Fichier prêt à être lancé"
    else 
        echo "Fichier non exécutable, lance : chmod +x [$nom]"
    fi
else
    echo "Erreur : fichier introuvable"
fi     
        