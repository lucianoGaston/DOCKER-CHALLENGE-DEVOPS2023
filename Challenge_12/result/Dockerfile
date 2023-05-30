FROM node:16-alpine

WORKDIR /appNode

COPY package.json /appNode/

RUN  npm install

COPY . /appNode/

RUN ls -la /appNode

EXPOSE 4000

ENTRYPOINT [ "npm" ,"run","start"]