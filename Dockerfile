# Get the latest version of node installed in your container as its own image
FROM node:latest


#Create a home in the container for your work
WORKDIR /app

#Get nodemon install globally in the container
RUN npm install nodemon -g

#Copy from the root of the this local computer to the /app folder in the container
COPY package.json /app
COPY package-lock.json /app

#Get the node modules into the container
RUN npm install

#Copy everything else into the container
COPY . /app

#The port the server will run from in the container
EXPOSE 3000