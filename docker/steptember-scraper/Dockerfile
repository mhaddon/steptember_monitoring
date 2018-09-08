FROM alekzonder/puppeteer:latest

WORKDIR /app

COPY index.js /app
COPY package.json /app
COPY wait_for_mysql.sh /app

USER root

RUN apt-get update -y \
 && apt-get install mysql-client -y \
 && npm install

USER pptruser

CMD ./wait_for_mysql.sh && npm start