# Exercise 3.10
FROM node:16-alpine

WORKDIR /usr/src/app/

COPY . .

RUN npm install

RUN adduser -D appuser
RUN chown appuser .

USER appuser

CMD [ "node", "index.js" ]
