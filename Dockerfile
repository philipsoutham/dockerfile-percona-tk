FROM debian:wheezy
MAINTAINER Philip Southam <philip@eml.cc>
ENV DEBIAN_FRONTEND noninteractive
RUN \
  apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0xcbcb082a1bb943db &&\
  echo 'deb http://sfo1.mirrors.digitalocean.com/mariadb/repo/10.0/debian wheezy main' > /etc/apt/sources.list.d/mariadb.list &&\
  apt-get update &&\
  apt-get upgrade -qy &&\
  apt-get install -yq wget perl libdbi-perl libdbd-mysql-perl libterm-readkey-perl libio-socket-ssl-perl mariadb-client vim mg man less &&\
  wget -q percona.com/get/percona-toolkit.deb &&\
  dpkg -i percona-toolkit.deb &&\
  rm percona-toolkit.deb &&\
  apt-get clean
