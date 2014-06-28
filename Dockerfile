FROM ubuntu:14.04
MAINTAINER rexm

RUN apt-get install software-properties-common
RUN add-apt-repository ppa:inizan-yannick/mono
RUN apt-get update
RUN apt-get install mono-runtime
