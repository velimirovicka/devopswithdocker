FROM golang:1.16.3 AS example-backend-build

WORKDIR /usr/src/app

COPY example-backend ./

RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo

FROM scratch

WORKDIR /go/bin

COPY --from=example-backend-build /usr/src/app/server /go/bin/server
COPY --from=alpine:latest /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/

ENV PORT=8080
ENV REQUEST_ORIGIN=https://example.com

EXPOSE ${PORT}

CMD ["./server", "PORT=${PORT}", "REQUEST_ORIGIN=${REQUEST_ORIGIN}"]
