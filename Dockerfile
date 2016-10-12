FROM anapsix/alpine-java:latest

MAINTAINER godot <godot@tlen.pl>

RUN apk update && apk add ca-certificates wget && update-ca-certificates && apk add openssl

RUN wget -O marytts.zip 'https://github.com/marytts/marytts/releases/download/v5.2/marytts-5.2.zip'

RUN mkdir marytts && unzip -d marytts marytts.zip && rm marytts.zip

CMD /marytts/marytts-5.2/bin/marytts-server

EXPOSE 59125
