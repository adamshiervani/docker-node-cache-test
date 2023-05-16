FROM node:16

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

RUN apt-get update && apt-get -y install \
    build-essential libpcre3 libpcre3-dev zlib1g zlib1g-dev libssl-dev wget chromium-browser firefox


RUN npm install

COPY . .
EXPOSE 8080
CMD [ "node", "index.js" ]
