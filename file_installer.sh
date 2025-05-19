#!/bin/bash

# Couleurs pour les messages
Green=$'\e[1;32m'
Red=$'\e[1;31m'
Reset=$'\e[0m'

echo "${Green}Welcome To File_Installer${Reset}"
sleep 1

read -p "Please Enter Your Project Name: " projectname
sleep 1


if [ -d "$projectname" ]; then
    echo "${Red}Le dossier '$projectname' existe déjà. Annulation.${Reset}"
    exit 1
fi


mkdir "$projectname"
echo "${Green}Root folder '$projectname' created...${Reset}"


if [ -f "index.html" ]; then
    cp index.html "$projectname/"
else
    echo "${Red}index.html n'existe pas !${Reset}"
fi

if [ -f "main.css" ]; then
    cp main.css "$projectname/"
else
    echo "${Red}main.css n'existe pas !${Reset}"
fi

echo "${Green}Fichiers copiés (si disponibles).${Reset}"
cd "$projectname"


for folder in file1 file2 file3; do
    mkdir "$folder"
    echo "${Green}Dossier '$folder' créé.${Reset}"
done

