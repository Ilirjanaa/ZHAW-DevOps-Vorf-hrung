FROM node:16.14.2
# Create app directory
WORKDIR /usr/src/app
COPY package*.json ./
# Install
RUN npm install
COPY . .
# Docker Run Command
EXPOSE 8080
CMD [ "node", "server.js" ]