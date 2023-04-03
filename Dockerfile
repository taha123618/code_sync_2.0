FROM node:16-alpine

WORKDIR /app

ENV NODE_ENV production

COPY package*.json ./

RUN npm install

COPY . /app

EXPOSE 5000

CMD [ "npm", "start" ]