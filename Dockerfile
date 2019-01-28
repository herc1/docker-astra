FROM centos:7

RUN yum install -y tcpdump vim less bash

COPY bin/ /usr/bin

EXPOSE 8000

ENTRYPOINT ["/usr/bin/astra"]