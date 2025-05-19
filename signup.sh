#!/bin/bash

echo "----------------------------------------------------"
echo "|                                                  |"                   
echo "|        Bienvenue sur la page d'inscription       |"
echo "|                                                  |"                   
read -p "|Veuillez entrer votre nom : " name
read -p "|Veuillez entrer votre adresse e-mail : " email
read -p "|Veuillez entrer votre mot de passe : " password
read -p "|Veuillez confirmer votre mot de passe : " confirm
echo "|                                                  |"
echo "----------------------------------------------------"



if [ "$password" == "$confirm" ]; then
    echo ""
    echo "✅ Inscription réussie !"
    echo "Nom : $name"
    echo "Email : $email"
else
    echo ""
    echo "❌ Les mots de passe ne correspondent pas. Veuillez réessayer."
fi

