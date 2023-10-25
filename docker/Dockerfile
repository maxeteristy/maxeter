FROM debian:stretch
LABEL maintainer="Maxeter Developers <dev@maxeter.org>"
LABEL description="Dockerised MaxeterCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
