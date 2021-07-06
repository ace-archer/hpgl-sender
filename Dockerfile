FROM debian:stretch-slim

RUN sudo apt-get update
RUN sudo apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN sudo apt-get install nodejs -y

WORKDIR /app

ADD package.json package.json
ADD package-lock.json package-lock.json

RUN npm install
ADD . .

CMD ["node" , "/app/src/app.js"]
