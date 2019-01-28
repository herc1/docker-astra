FROM centos:7

RUN yum install -y tcpdump vim less

COPY bin/ /usr/bin

EXPOSE 8000

CMD ["astra --relay"]