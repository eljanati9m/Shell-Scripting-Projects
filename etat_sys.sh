#!/bin/bash

clear
echo "============================================="
echo "      🎉 BIENVENUE DANS LE MONITEUR SYSTEME 🎉"
echo "============================================="
echo ""

# Demande du nom à l'utilisateur
read -p "Quel est votre nom ? " name
echo ""
echo "Bonjour $name ! Merci d'utiliser ce script."
sleep 2
echo ""

# -------------------- DATE & HEURE --------------------
echo "🕒 Date et heure actuelles :"
date "+📅 %A, %d %B %Y - ⏰ %H:%M:%S"
echo ""

# -------------------- ESPACE DISQUE --------------------
echo "💽 Espace disque disponible sur le système :"
df -h --total | grep "total" | awk '{print "Total: " $2 " | Utilisé: " $3 " | Libre: " $4 " | % utilisé: " $5 }'
echo ""

# -------------------- TEMPS D'ACTIVITÉ --------------------
echo "🔄 Durée depuis le dernier démarrage :"
uptime -p
echo ""

# -------------------- UTILISATEURS CONNECTÉS --------------------
echo "👥 Utilisateurs actuellement connectés :"
who
echo ""

# -------------------- DERNIÈRES CONNEXIONS --------------------
echo "📜 Détails des 3 dernières connexions :"
last -n 3
echo ""


# -------------------- FIN --------------------
echo "================================================="
echo "✅ Fin du rapport système. Merci, $name !"
echo "================================================="

