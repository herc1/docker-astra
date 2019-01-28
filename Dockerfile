FROM centos:7

RUN yum install -y tcpdump vim less bash

COPY bin/ /usr/bin

ENTRYPOINT ["/usr/bin/astra"]