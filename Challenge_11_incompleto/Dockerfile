FROM httpd:2.4

LABEL project="eccormme"

WORKDIR /usr/local/apache2/htdocs

RUN apt-get update && apt-get install -y php libapache2-mod-php php-mysql

RUN mv /usr/local/apache2/htdocs/index.html /usr/local/apache2/htdocs/index.html.bkp

COPY . /usr/local/apache2/htdocs/

RUN ls -la /usr/local/apache2/htdocs

EXPOSE 8080

