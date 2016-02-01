FROM alpine:edge
MAINTAINER "Christian Kniep <christian@qnib.org>"

RUN apk update && apk upgrade
RUN apk add ca-certificates
RUN rm -rf /var/cache/apk/*
