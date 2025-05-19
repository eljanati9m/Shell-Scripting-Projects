#!/bin/bash


read -p "Veuillez entrer le premier nombre :" x

read -p "Veuillez entrer le deuxième nombre :" y

read -p "Veuillez entrer l'opération souhaitée (+, -, *, /) :" op


if [ "$op" == "+" ]; then
    result=$((x + y))
elif [ "$op" == "-" ]; then
    result=$((x - y))
elif [ "$op" == "*" ]; then
    result=$((x * y))
elif [ "$op" == "/" ]; then
    if [ "$num2" -ne 0 ]; then
        result=$((x / y))
    else
        echo "Erreur : division par zéro non autorisée."
        exit 1
    fi
else
    echo "Opération invalide. Veuillez choisir parmi +, -, *, /"
    exit 1
fi


echo "$x$op $y = $result"

