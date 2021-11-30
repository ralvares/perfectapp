FROM docker.io/httpd@sha256:4b5cb7697fea2aa6d398504c381b693a54ae9ad5e6317fcdbb7a2d9b8c3b1364

COPY httpd.conf /usr/local/apache2/conf/httpd.conf
COPY index.html /usr/local/apache2/htdocs 

RUN apt update && apt upgrade -y

USER 1001
EXPOSE 8080
