FROM alpine:edge
## Inspired by https://github.com/iron-io/dockers
MAINTAINER "Christian Kniep <christian@qnib.org>"

RUN apk upgrade --update \
 && apk add ca-certificates bash \
 && rm -rf /var/cache/apk/*
