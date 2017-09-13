FROM node:8

WORKDIR /usr/src/app

COPY package.json .

RUN npm install
RUN npm install -g cross-env

COPY . .

EXPOSE 8080
CMD [ "npm", "run", "start" ]