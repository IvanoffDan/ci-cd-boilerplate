FROM node:8.1

RUN apt-get update && apt-get install libpng12-0

WORKDIR /app

ENV NODE_ENV production
COPY package.json .
RUN npm install
RUN npm install -g core-js
COPY . .

EXPOSE 3000

VOLUME /reactapp

CMD npm start :prodx

