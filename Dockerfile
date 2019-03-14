FROM alpine:3.8

MAINTAINER kozakana

RUN apk update && \
    apk add pdftk ghostscript poppler poppler-utils && \
    mkdir /pdf

WORKDIR /
