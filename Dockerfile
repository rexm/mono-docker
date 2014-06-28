FROM    nginx
MAINTAINER rexm

RUN apt-get -y -q install wget
RUN wget http://download.opensuse.org/repositories/home:tpokorra:mono/xUbuntu_14.04/Release.key -O- | apt-key add -
RUN apt-get remove -y --auto-remove wget
RUN sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/tpokorra:/mono/xUbuntu_14.04/ /' >> /etc/apt/sources.list.d/mono-opt.list"
RUN sudo apt-get update
RUN sudo apt-get install mono-opt
