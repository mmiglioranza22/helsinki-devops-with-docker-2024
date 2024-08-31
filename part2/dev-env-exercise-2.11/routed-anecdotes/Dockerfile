# Dev environment

FROM node:20

WORKDIR /usr/src/app/

# only the node env is copied, not the source code. This is handled by the docker-compose file
COPY package* ./

RUN npm install

