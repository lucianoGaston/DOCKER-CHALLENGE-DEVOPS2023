#!/bin/bash

echo "Descargo el repositorio remoto"

git clone https://github.com/roxsross/The-DevOps-Journey-101.git

echo "Me paro en la carpeta clase-04"

cd  The-DevOps-Journey-101/CLASE-04/Challenge/06

docker build -t roxsross12/pokepy-ejemplo:1.0 .

sleep 3

curl http://localhost:5000/