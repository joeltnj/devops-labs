#!/bin/bash

echo "Quel est ton age ?"
read age

if [ $age -ge 18 ]; then
    echo "Tu es majeur"
elif [ $age -ge 13 ]; then
    echo "Tu es adolescent"
else
    echo "Tu es enfant"
fi

