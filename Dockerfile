FROM node:8.17.0-stretch-slim

RUN apt-get update
RUN apt-get install python make g++ -y


WORKDIR /app

ADD package.json package.json
ADD package-lock.json package-lock.json

RUN npm install
ADD . .

CMD ["node" , "/app/src/app.js"]
