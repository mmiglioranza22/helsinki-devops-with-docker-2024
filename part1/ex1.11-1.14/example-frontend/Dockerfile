FROM node:12

WORKDIR /usr/src/app/

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN npm install

EXPOSE 3000

CMD npm run start

# docker run -p 8080:8080 container