#!/bin/bash

SOURCE="/home/joetnj/bash-lab"
DESTINATION="/home/joetnj/backups"
DATE=$(date +%Y-%m-%d_%H-%M-%S)
NOM_BACKUP="backup_$DATE"

creer_destination() {
    if [ ! -d "$DESTINATION" ]; then
        mkdir -p "$DESTINATION"
        echo "[OK] Dossier backup créé : $DESTINATION"
    fi
}

faire_backup() {
    cp -r "$SOURCE" "$DESTINATION/$NOM_BACKUP"
    echo "[OK] Backup créé : $DESTINATION/$NOM_BACKUP"
}

verifier_backup() {
    if [ -d "$DESTINATION/$NOM_BACKUP" ]; then
        echo "[OK] Backup vérifié avec succès"
    else
        echo "[KO] Erreur : backup introuvable"
    fi
}

echo "===== Début du backup ====="
creer_destination
faire_backup
verifier_backup
echo "===== Backup terminé ====="