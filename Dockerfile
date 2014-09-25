FROM debian:wheezy
MAINTAINER Philip Southam <philip@eml.cc>
ENV DEBIAN_FRONTEND noninteractive
RUN \
  apt-get update && \
  apt-get upgrade -qy &&\
  apt-get install -yq wget perl libdbi-perl libdbd-mysql-perl libterm-readkey-perl libio-socket-ssl-perl man mysql-client &&\
  wget -q percona.com/get/percona-toolkit.deb &&\
  dpkg -i percona-toolkit.deb &&\
  apt-get clean
