#!/bin/bash

echo "******************************************"
echo "                                          "
echo "Bienvenue dans le mini système de gestion de bibliothèque."
echo "                                          "
echo "******************************************"


echo "Veuillez entrer le nom de la bibliothèque : "
read libraryName


mkdir "$libraryName"


mkdir "$libraryName/livres" "$libraryName/etudiants"


touch "$libraryName/livres/listeDesLivres.txt"
touch "$libraryName/etudiants/listeDesEtudiants.txt"

echo "Votre bibliothèque \"$libraryName\" a été créée avec succès !"

