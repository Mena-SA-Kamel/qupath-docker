# Bootstrap: docker
# From: ubuntu:xenial
FROM ubuntu:xenial as system

RUN
    mkdir /qupath \
    && cd /qupath \
    && apt-get update \
    && apt-get install -y default-jre \
    && apt-get install -y wget \
    && wget https://github.com/qupath/qupath/archive/refs/tags/v0.3.2.tar.gz \
    && tar xvvf qupath-0.3.2.tar.gz \
    && rm qupath-0.3.2.tar.gz \