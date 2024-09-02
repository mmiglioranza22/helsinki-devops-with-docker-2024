# https://stackoverflow.com/questions/49955097/how-do-i-add-a-user-when-im-using-alpine-as-a-base-image
FROM golang:alpine3.20 as build-stage

WORKDIR /usr/src/app/

COPY . .

# Create a group and user for alpine
RUN adduser -D appuser
# change the owner of current dir to appuser
RUN chown appuser .

# Tell docker that all future commands should run as the appuser user
USER appuser

ENV REQUEST_ORIGIN=http://localhost:3000

RUN go build

FROM scratch

# Error docker path unknown binary golang
# https://www.ardanlabs.com/blog/2020/02/docker-images-part1-reducing-image-size.html
# https://stackoverflow.com/questions/61673165/docker-scratch-image-for-golang-app-cant-find-binary-no-such-file-or-directory
# Mind that you only copy the binary "server", that is the only thing that exists in the last stage
COPY --from=build-stage /usr/src/app/server .

EXPOSE 8080

CMD ["./server"]

# docker run -p 8080:8080 slim-back
