FROM debian:jessie
LABEL maintainer="Istvan Kosztik kosztik@gmail.com"
EXPOSE 443 25 22 587

RUN apt-get update &&\
    apt-get install wget sudo -y &&\
    cd /tmp &&\
    wget http://sourceforge.net/projects/scrollout/files/update/scrolloutf1.tar/download -O scrolloutf1.tar &&\
    tar -xvf scrolloutf1.tar &&\
    chmod 755 /tmp/scrolloutf1/www/bin/*

COPY ./start.sh /start.sh
CMD /start.sh
