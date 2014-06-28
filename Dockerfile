FROM ubuntu:14.04
MAINTAINER rexm

RUN apt-get install -y -q git autoconf automake libtool g++ gettext
RUN mkdir ~/src
ADD . /usr/src/mono
WORKDIR /usr/src/mono
RUN git clone git://github.com/mono/mono.git
RUN ./autogen.sh --prefix=/usr --with-mcs-docs=no
RUN make get-monolite-latest
RUN make
RUN make install
