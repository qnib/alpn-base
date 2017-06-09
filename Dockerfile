FROM alpine:3.5
## Inspired by https://github.com/iron-io/dockers
MAINTAINER "Christian Kniep <christian@qnib.org>"

RUN apk --no-cache add --repository http://dl-4.alpinelinux.org/alpine/edge/testing tar \
 && apk --no-cache add ca-certificates bash wget \
 && wget -qO /usr/local/bin/go-github https://github.com/qnib/go-github/releases/download/0.2.2/go-github_0.2.2_MuslLinux \
 && chmod +x /usr/local/bin/go-github \
 && echo "# download: $(/usr/local/bin/go-github rLatestUrl --ghorg Yelp --ghrepo dumb-init --regex '.*_amd64$' |head -n1)" \
 && wget -qO /usr/local/bin/dumb-init $(/usr/local/bin/go-github rLatestUrl --ghorg Yelp --ghrepo dumb-init --regex ".*_amd64$" |head -n1) \
 && chmod +x /usr/local/bin/dumb-init
