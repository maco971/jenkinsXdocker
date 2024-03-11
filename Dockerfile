# Utiliser une image de base officielle de Node
FROM node:14.21.3
# Définir le répertoire de travail dans le conteneur
WORKDIR /usr/src/app
# Copier les fichiers de package.json et package-lock.json (si disponible)
# Installer les dépendances du projet
RUN npm install
# Copier les fichiers et répertoires du projet dans le répertoire de travail du conteneur
COPY . .
# Exposer le port sur lequel l'application va tourner
EXPOSE 8080
# Commande pour démarrer l'application
CMD ["node", "app.js"]
