# ! Mind that the Dockerfile should always be run from the context in which it is located
# That is, workdir should match the same place the Dockerfile is.

FROM node:12.12.0-alpine AS build-stage

WORKDIR /usr/src/app/

# copies package AND lock
COPY . .

RUN npm install
# Babel issue
# https://stackoverflow.com/questions/78856773/requires-babel-7-16-0-but-was-loaded-with-7-12-3/78857320#78857320
RUN npm install --save-dev @babel/core

RUN npm run build

# This is a new stage, everything before this is gone, except for the files that we want to COPY
# use unpriviledge nginx image
FROM nginxinc/nginx-unprivileged:1.27-alpine3.20

COPY --from=build-stage /usr/src/app/build /usr/share/nginx/html

# RUN adduser -D appuser

# RUN chown appuser .

# USER appuser

# this nginx image exposes 8080 by default, so run with this in mind
# EXPOSE 3000

CMD ["nginx", "-g", "daemon off;"]
