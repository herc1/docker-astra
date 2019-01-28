FROM centos:7

RUN yum install -y tcpdump vim less

COPY bin/ /usr/bin

ENTRYPOINT ["/usr/bin/astra"]