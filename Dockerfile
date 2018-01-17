#
#Dockerfile for aria2
#
FROM alpine
MAINTAINER lunksana <lunksana@gmail.com>
RUN apk update && \
    apk upgrade && \
    apk add aria2 && \
    rm /var/cache/apk/* && \
    mkdir -p /aria2/conf && \
    mkdir /aria2/downloads
VOLUME [ "/aria2/conf" ] [ "/aria2/downloads" ]

ADD start.sh /aria2
RUN chmod +x /aria2/start.sh
EXPOSE 6800
CMD set -xe && /aria2/start.sh