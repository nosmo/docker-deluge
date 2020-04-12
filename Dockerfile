FROM ubuntu:18.04

MAINTAINER nosmo@nosmo.me

ARG DEBIAN_FRONTEND="noninteractive"

RUN apt-get update && apt-get upgrade -y && apt-get install -y software-properties-common && add-apt-repository ppa:deluge-team/stable && apt-get install -y deluged
EXPOSE 8112 6881 58946/udp

ENTRYPOINT ["/usr/bin/deluged", "-c", "/config", "-d"]