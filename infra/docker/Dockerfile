FROM node:8.4.0
 
WORKDIR /app
 
COPY package.json package.json
 
RUN npm install
 
COPY . .
CMD [ "node", "server.js" ]