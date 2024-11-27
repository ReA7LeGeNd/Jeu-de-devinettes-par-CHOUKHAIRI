#!/bin/bash

get_file_count() {
    echo $(ls -1 | wc -l)
}

file_count=$(get_file_count)
guess=-1

echo "Bienvenue dans mon jeu de devinettes"
echo "Essayer de deviner combien de fichiers se trouvent dans le répertoire actuel."

while [[ $guess -ne $file_count ]]; do
    read -p "Entrez votre estimation : " guess
    if [[ $guess -lt $file_count ]]; then
        echo "Trop bas !"
    elif [[ $guess -gt $file_count ]]; then
        echo "Trop élevé !"
    else
        echo "Félicitations, C'est correcte."
    fi
done
