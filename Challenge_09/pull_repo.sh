#!/bin/bash

cd /root

echo "Que copiará en nuestra máquina todo el contenido del repositorio. A partir de ahí, y con Docker y Docker-Compose ya instalado en nuestro entorno, solo tenemos que ejecutar la siguiente instrucción para levantar todo el sistema: "

git clone https://github.com/wodby/docker4drupal.git

cd docker4drupal

docker-compose up -d

 