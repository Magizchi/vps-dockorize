FROM node:latest

# Installer PM2
RUN npm install -g pm2

# Copier les fichiers de l'application
COPY . /app
WORKDIR /app

# Lancer PM2 pour gérer les processus
CMD ["pm2-runtime", "start", "pm2.process.yml"]