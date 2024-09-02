# https://stackoverflow.com/questions/49955097/how-do-i-add-a-user-when-im-using-alpine-as-a-base-image
FROM golang:alpine3.20

WORKDIR /usr/src/app/

COPY . .

# Create a group and user for alpine
RUN adduser -D appuser
# change the owner of current dir to appuser
RUN chown appuser .

# Tell docker that all future commands should run as the appuser user
USER appuser

RUN go build

EXPOSE 8080

CMD ["./server"]
