FROM ubuntu:14.04
MAINTAINER rexm

RUN apt-get install -y -q git autoconf automake libtool g++ gettext
RUN mkdir ~/src
RUN git clone git://github.com/mono/mono.git
RUN cd mono
RUN ./autogen.sh --prefix=/usr/local
RUN make get-monolite-latest
RUN make
RUN make install
