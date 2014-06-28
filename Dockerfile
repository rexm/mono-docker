FROM ubuntu:14.04
MAINTAINER rexm

RUN add-apt-repository ppa:inizan-yannick/mono
RUN apt-get -q update
RUN apt-get install -y -q mono-runtime
