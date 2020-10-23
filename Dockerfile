FROM alpine:3.12

RUN apk add --update \
    bind-tools curl htop postgresql-client redis socat strace tcpdump && \
    rm -rf /var/cache/apk/*

ENV PS1="[\$(date +%T)] \w # "
