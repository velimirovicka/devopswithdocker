FROM golang:1.16.3

WORKDIR /usr/src/app

COPY example-backend .

RUN go build

ENV PORT=8080
ENV REQUEST_ORIGIN=https://example.com

EXPOSE ${PORT}

RUN useradd -m appuser

USER appuser

CMD ./server PORT=$PORT REQUEST_ORIGIN=$REQUEST_ORIGIN
