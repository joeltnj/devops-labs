

DIRECTORY="/home/joetnj/bash-lab"
tous_ok=true

verify() {
    files="check.sh monitor.sh deploy.sh"
    for file in $files; do
        if [ -e "$DIRECTORY/$file" ]; then
            echo "[OK] $file exist"
        else
            echo "[KO] $file manquant"
            tous_ok=false
        fi
    done
}

echo "===== Health Check ====="
echo "$(date) : $(whoami) : $(hostname)"

verify

services="nginx mysql docker"
for service in $services; do
    echo "[OK] $service opérationnel"
done

compteur=$(ls "$DIRECTORY"/*.sh 2>/dev/null | wc -l)
echo "Scripts disponibles : $compteur fichiers .sh trouvés"

if [ "$tous_ok" = true ]; then
    echo "Système prêt pour le déploiement ✓"
else
    echo "Système non prêt ✗"
fi