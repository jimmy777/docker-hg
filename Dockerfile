FROM centos:6
MAINTAINER javier.ramon@gmail.com

RUN yum -y install mercurial openssh-clients

VOLUME /mnt
WORKDIR /mnt

ENTRYPOINT [ "hg" ]
