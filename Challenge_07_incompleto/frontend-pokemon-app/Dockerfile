FROM node:14-slim

LABEL project="frontend-pokemon"

WORKDIR /app

COPY package*.json /app

RUN ls -la /app

RUN npm install
RUN apt-get install -y curl
#RUN apt-get iputils-ping

COPY . /app

RUN ls -la /app

EXPOSE 3000

CMD [ "npm","run","start"]


