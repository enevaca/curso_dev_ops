FROM node:6.9
EXPOSE 3000

WORKDIR /app

ADD package.json /app/
RUN npm install -g mocha && npm install

ADD . /app

CMD ["node", "server"]
