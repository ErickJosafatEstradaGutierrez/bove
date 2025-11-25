# Dockerfile

# Etapa 1 - construimos la aplicación
FROM node:22-alpine AS build
WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

EXPOSE 80
EXPOSE 80
CMD ["npm", "run", "preview", "--", "--port", "80", "--host"]

