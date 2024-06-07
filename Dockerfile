# FROM node:14
# WORKDIR /usr/src/app
# COPY package*.json ./
# RUN npm install
# COPY . .
# EXPOSE 80
# CMD ["node", "server.js"]

FROM node:latest
COPY . .
RUN npm install
EXPOSE 5000
ENTRYPOINT ["npm", "start"]
 