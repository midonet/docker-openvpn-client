FROM ubuntu:latest
MAINTAINER "Tim Fall" <tim@midokura.com>

RUN apt-get update
RUN apt-get -y install openvpn
