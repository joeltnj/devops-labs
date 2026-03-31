#!/bin/bash

service="nginx mysql docker ssh"
compteur=0

for i in $service; do
    echo "[ok] $i est dans la liste"
    compteur=$((compteur + 1))
done

echo "Total services vérifiés : $compteur"