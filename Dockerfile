FROM debian:7-slim

RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

RUN apt-get -y update 

RUN apt-get -y upgrade

RUN apt-get -y install tcpdump vim less bash

COPY bin/ /usr/bin

EXPOSE 8000

CMD ["astra --relay"]