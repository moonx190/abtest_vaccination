FROM ubuntu:20.04
MAINTAINER Namun Cho <dr.strangelove@kberi.re.kr>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:ondrej/php
RUN apt-get update
RUN apt-get install -y php7.4

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]



# docker run --name vaccination -d -p 80:80 -v /home/ubuntu/Docker:/var/www/html vaccination
# to enable php, refer to https://falsy.me/docker-1-docker로-ubuntu-apache-php-환경의-이미지-만들기/


