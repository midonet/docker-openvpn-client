FROM ubuntu:latest
MAINTAINER "Tim Fall" <tim@midokura.com>

RUN apt-get update
RUN apt-get -y install openvpn

ADD openvpn.cfg /tmp/openvpn.cfg

RUN unzip /tmp/openvpn.cfg /tmp/

ENTRYPOINT ['openvpn','--config /tmp/openvpn.cfg']
