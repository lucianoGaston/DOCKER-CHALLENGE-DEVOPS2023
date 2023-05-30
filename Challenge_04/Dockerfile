FROM httpd:latest

WORKDIR /usr/local/apache2/htdocs

RUN mv /usr/local/apache2/htdocs/index.html /usr/local/apache2/htdocs/index.html.bkp

COPY ./content/*  /usr/local/apache2/htdocs/

EXPOSE 80