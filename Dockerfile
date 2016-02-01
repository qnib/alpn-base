FROM alpine
## Inspired by https://github.com/iron-io/dockers
MAINTAINER "Christian Kniep <christian@qnib.org>"

RUN apk update && apk upgrade
RUN apk add ca-certificates
RUN rm -rf /var/cache/apk/*
