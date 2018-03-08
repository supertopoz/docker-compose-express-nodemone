FROM node:latest

WORKDIR /app

RUN npm install nodemon -g

COPY package.json /app
COPY package-lock.json /app
RUN npm install

COPY . /app

EXPOSE 3000