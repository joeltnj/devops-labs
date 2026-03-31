#!/bin/bash


verifier_fichier(){
fichier=$1
if [ -e "$fichier" ]; then
    echo "[OK] fichier trouvé : [$fichier]"
else
    echo "[KO] fichier manquant : [$fichier]"
    tous_ok=false
fi
}

deployer(){
    echo "Déploiement en cours..."
    echo "Déploiement terminé ✓"
}



tous_ok=true

verifier_fichier "check.sh"
verifier_fichier "monitor.sh"
verifier_fichier "deploy.sh"



if [ "$tous_ok" = true ]; then
    deployer
fi
