FROM alpine:3.9

MAINTAINER kozakana

RUN echo "http://dl-cdn.alpinelinux.org/alpine/v3.8/main" >> /etc/apk/repositories && \
    echo "http://dl-cdn.alpinelinux.org/alpine/v3.8/community" >> /etc/apk/repositories && \
    apk update

RUN apk add pdftk \
            ghostscript \
            poppler \
            poppler-utils \
            poppler-data \
            qpdf

WORKDIR /
