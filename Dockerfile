FROM ubuntu:14.04
MAINTAINER Rex Morgan <rex@rexmorgan.net> (@rexm)

RUN apt-get update -y -q
RUN apt-get -y -q install wget
RUN wget -q http://download.opensuse.org/repositories/home:tpokorra:mono/xUbuntu_14.04/Release.key -O- | apt-key add -
RUN apt-get remove -y --auto-remove wget
RUN sh -c "echo 'deb http://download.opensuse.org/repositories/home:/tpokorra:/mono/xUbuntu_14.04/ /' >> /etc/apt/sources.list.d/mono-opt.list"
RUN apt-get -q update
RUN apt-get -y -q install mono-opt
RUN PATH=$PATH:/opt/mono/bin
RUN export PATH
