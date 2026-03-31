#!/bin/bash

echo "===== Rapport système ====="
echo "Date : $(date)"
echo "Utilisateur : $(whoami)"
echo "Machine : $(hostname)"
echo "Uptime : $(uptime -p)"
echo "Disque utilisé :"
df -h / | tail -1
echo "Mémoire :"
free -h | grep Mem
echo "==========================="