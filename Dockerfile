# docker image
FROM ubuntu:16.04

# maintainer information
MAINTAINER maas-daon maas_daon@yahoo.co.jp

# upgrade
RUN apt-get update && apt-get dist-upgrade -y

# install git
RUN apt-get install -y nginx

# Expose web
EXPOSE 80 443

# command
CMD service nginx start && sleep infinity
