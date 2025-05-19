#!/bin/bash

log_file="/chemin/vers/fichier.log"

motif="GET"

resultat=$(grep "$motif" "$log_file")

if [ -n "$resultat" ]; then
	echo "Analyse des logs : le motif \"$motif\" a été détecté."
	

	nombre_occurrences=$(grep -c "$motif" "$log_file")
	echo "Nombre total d'occurrences de \"$motif\" : $nombre_occurrences"
else
	echo "Aucune occurrence du motif spécifié : \"$motif\""
fi
