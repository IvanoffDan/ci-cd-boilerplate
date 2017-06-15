FROM node:8.1

RUN apt-get update && apt-get install libpng12-0

WORKDIR /app

ENV NODE_ENV production
COPY package.json .
RUN npm install
COPY . .

EXPOSE 3000

VOLUME /reactapp

CMD npm start :prod

