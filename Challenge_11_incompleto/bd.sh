#!/bin/bash

#Variables  de entorno
MYSQL="mysql"
USERBD="ecomuser"
PASSBD="ecompassword"
IPHOST="localhost"
DB_NAME="ecomdb;"

echo "crear usuario de  la bd"

$MYSQL -u root
Q1="CREATE DATABASE IF NOT EXISTS $DB_NAME;"
Q2="CREATE USER '$USERBD'@'$IPHOST' IDENTIFIED BY '$PASSBD';"
Q3="GRANT ALL PRIVILEGES ON *.* TO '$USERBD'@'$IPHOST';"
Q4="FLUSH PRIVILEGES;"
SQL="${Q1}${Q2}${Q3}${Q4}"

echo "crear bd"

$MYSQL -e "$SQL"

echo "configurar inserccion  de datos"
cat > db-load-script.sql <<-EOF
USE ecomdb;
CREATE TABLE products (id mediumint(8) unsigned NOT NULL auto_increment,Name varchar(255) default NULL,Price varchar(255) default NULL, ImageUrl varchar(255) default NULL,PRIMARY KEY (id)) AUTO_INCREMENT=1;

INSERT INTO products (Name,Price,ImageUrl) VALUES ("Laptop","100","c-1.png"),("Drone","200","c-2.png"),("VR","300","c-3.png"),("Tablet","50","c-5.png"),("Watch","90","c-6.png"),("Phone Covers","20","c-7.png"),("Phone","80","c-8.png"),("Laptop","150","c-4.png");

EOF

echo "Inicio de Insercción"

BD_LOAD="./db-load-script.sql"

$MYSQL < $BD_LOAD

sleep 4

echo "SCRIPT DE INSERCCION TERMINADO"

