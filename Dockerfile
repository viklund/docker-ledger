FROM alpine:3
RUN echo "http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories && \
     echo "http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && \
     apk update && apk upgrade
RUN apk add ledger

WORKDIR /data

ENTRYPOINT [ "/usr/bin/ledger" ]
