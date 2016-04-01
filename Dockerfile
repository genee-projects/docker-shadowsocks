FROM alpine:3.3
MAINTAINER Jia Huang <iamfat@gmail.com>

RUN apk update && \
    apk add py-pip && \
    rm -rf /var/cache/apk/* && \
    pip install -U pip shadowsocks


ENTRYPOINT ["/usr/bin/ssserver"]
