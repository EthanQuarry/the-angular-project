#Stage 1: Build Frontend
FROM node:latest as builld-angular
WORKDIR /app
COPY . .
RUN npm install
RUN npm run && build --prod

#Stage 2: Build Backend