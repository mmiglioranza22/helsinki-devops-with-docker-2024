# ! Mind that the Dockerfile should always be run from the context in which it is located
# That is, workdir should match the same place the Dockerfile is.

FROM node:12.12.0-alpine

WORKDIR /usr/src/app/

# copies package AND lock
COPY package* ./

RUN npm install

COPY . .

RUN adduser -D appuser

RUN chown appuser .

USER appuser

EXPOSE 3000

CMD npm run start
