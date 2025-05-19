#!/bin/bash

echo "Bienvenue dans le générateur de mots de passe sécurisé !"

sleep 2

read -p "Veuillez entrer la longueur du mot de passe : " PASS_LENGTH


if ! [[ "$PASS_LENGTH" =~ ^[0-9]+$ ]]; then
    echo "Erreur : Veuillez entrer un nombre entier valide."
    exit 1
fi


read -p "Combien de mots de passe souhaitez-vous générer ? " PASS_COUNT


if ! [[ "$PASS_COUNT" =~ ^[0-9]+$ ]]; then
    echo "Erreur : Veuillez entrer un nombre entier valide."
    exit 1
fi

echo ""
echo "Voici vos mots de passe générés :"
echo "---------------------------------"


for (( i=1; i<=PASS_COUNT; i++ ))
do
    openssl rand -base64 48 | tr -dc 'A-Za-z0-9!@#$%^&*()-_=+' | head -c $PASS_LENGTH
    echo   
done

