# 1. Utiliser une image de base officielle Node.js (version légère Alpine)
FROM node:18-alpine

# 2. Définir le dossier de travail dans le conteneur
WORKDIR /app

# 3. Copier les fichiers package.json et package-lock.json
COPY package*.json ./

# 4. Installer les dépendances (sans les devDependencies pour alléger l'image)
RUN npm install --omit=dev

# 5. Copier le reste du code
COPY . .

# 6. Exposer le port 8080 (celui utilisé par ton server.js)
EXPOSE 8080

# 7. Lancer l’application
CMD ["npm", "start"]