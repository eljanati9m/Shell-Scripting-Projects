#!/bin/bash



echo "🔄 Mise à jour des paquets..."
sudo apt update && sudo apt upgrade -y


echo "Nettoyage des paquets inutiles..."
sudo apt autoremove -y
sudo apt autoclean


sauvegarder_fichier() {
  if [ -f "$1" ]; then
    cp "$1" "$1.bak"
    echo "✅ Sauvegarde créée : $1.bak"
  else
    echo "❌ Erreur : $1 n'est pas un fichier valide."
  fi
}



echo "🌐 Installation du serveur NGINX..."
sudo apt install nginx -y


echo "🔁 Redémarrage du service NGINX..."
sudo systemctl restart nginx

echo "✅ Installation terminée avec succès !"
