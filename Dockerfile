FROM    ubuntu:14.04
MAINTAINER rexm

RUN sudo sh -c "echo 'deb http://download.opensuse.org/repositories/home:/tpokorra:/mono/xUbuntu_14.04/ /' >> /etc/apt/sources.list.d/mono-opt.list"
RUN sudo apt-get update
RUN sudo apt-get install mono-opt
