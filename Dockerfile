FROM alpine
## Inspired by https://github.com/iron-io/dockers
MAINTAINER "Christian Kniep <christian@qnib.org>"

ENV DUMB_INIT_VER=1.0.0
RUN apk update && apk upgrade && \
    apk add wget ca-certificates bash && \
    wget -qO /usr/local/bin/dumb-init https://github.com/Yelp/dumb-init/releases/download/v${DUMB_INIT_VER}/dumb-init_${DUMB_INIT_VER}_amd64 && \
    chmod +x /usr/local/bin/dumb-init && \
    apk del wget && \
    rm -rf /var/cache/apk/*
