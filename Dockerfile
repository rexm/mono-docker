FROM ubuntu:14.04
MAINTAINER rexm

RUN add-apt-repository ppa:directhex/monoxide -y && sudo apt-get update
RUN apt-get install -y -q mono
