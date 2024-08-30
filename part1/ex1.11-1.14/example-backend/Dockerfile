FROM golang:latest

WORKDIR /usr/src/app/

COPY . .

# ENV REDIS_HOST=6379
# ENV POSTGRES_HOST=5432
# ENV POSTGRES_USER=postgres
# ENV POSTGRES_PASSWORD=postgres
# ENV POSTGRES_DATABASE=postgres

ENV REQUEST_ORIGIN=http://localhost:3000

RUN go build

EXPOSE 8080

CMD ["./server"]

# docker run -p 3000:3000 container