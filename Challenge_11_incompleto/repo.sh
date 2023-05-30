#!/bin/bash

git clone https://github.com/roxsross/The-DevOps-Journey-101.git && cd The-DevOps-Journey-101/CLASE-02/lamp-app-ecommerce/

cd The-DevOps-Journey-101/CLASE-02/lamp-app-ecommerce/

docker build -t bd_mysql -f Dockerfile_bd.yml

docker build -t ecormme -f Dockerfile_e.yml

docker-compose up -d
