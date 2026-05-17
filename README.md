e).
🌌 Capsule Temporelle & Planificateur Créatif (Ruby on Rails)

Ce projet est une application Ruby on Rails conçue pour envoyer des messages importants, significatifs ou mémorables, soit à soi-même, soit à un proche. Grâce à une gestion ultra-précise du temps, de la géolocalisation et du contexte, l'application génère des posts uniques et immersifs à court ou très long terme.
🎯 Le But du Projet

Permettre à l'utilisateur de programmer un message crucial pour l'avenir. Que ce soit un rappel pour soi-même dans 10 ans ou un message marquant pour un proche, l'application capture ou simule le contexte parfait (météo, action, lieu) pour accompagner ce message écrit ou vocal.
🚀 Fonctionnalités Clés
1. Programmation Temporelle sans Limite

L'application utilise toute la puissance des helpers de temps d'ActiveSupport (Rails) pour planifier des posts par rapport à la date/heure actuelle.

    Flexibilité des Délais : Tu peux programmer un post dans une heure, plusieurs années, voire des dizaines d'années.

    Mode Récurrent : Possibilité de configurer une date ou un délai pour que l'application sélectionne et publie automatiquement un post, toujours à la même heure chaque jour.

    Méthodes supportées : yesterday, tomorrow, ago, in, at_midnight, beginning_of_year, next_month, years_since, etc.

2. Génération Contextuelle et Dynamique

Le programme génère intelligemment du contenu visuel selon l'horaire et le lieu choisis :

    Par défaut (Ciel & Météo) : L'application affiche une image du ciel (jour ou nuit selon l'heure) et injecte les informations météo réelles du lieu sélectionné.

    Mobilité (Mode Voiture) : Si tu indiques que tu es en voiture, le lieu s'adapte dynamiquement, ce qui modifie instantanément le ciel et la météo du post.

3. Modes Alternatifs (Action, Art & Sport)

Au lieu de la météo classique, l'application peut basculer sur un mode "Action". Elle sélectionne alors des photos capturées en plein cœur d'une activité (un sport, un art, un événement dynamique), le tout accompagné de ton message écrit ou d'une note vocale.
4. Mises à Jour en Temps Réel (Action Cable)

En s'appuyant sur le système de Channels et de Subscriptions (WebSockets via Rails Action Cable), l'application peut modifier à la volée, en temps réel, les photos ou les types de posts que le système sélectionne.
🛠 Stack Technique

    Framework : Ruby on Rails

    Temps Réel : Action Cable (WebSockets)

    Moteur Temporel : ActiveSupport :: Time Helpers

    Médias : Gestion des images dynamiques et des messages audio (vocaux)
# digital-time-capsule
