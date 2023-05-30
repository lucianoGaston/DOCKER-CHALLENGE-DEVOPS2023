#!/bin/bash

echo "Descargo el repositorio remoto"

git clone https://github.com/roxsross/The-DevOps-Journey-101.git

echo "Me paro en la carpeta clase-04"

cd  The-DevOps-Journey-101/CLASE-04/Challenge/07

echo "moverme en el backend"

cd backend-pokemon-app

touch Dockerfile

cd  ..

cd frontend-pokemon-app

touch Dockerfile