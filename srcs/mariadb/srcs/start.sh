#!/bin/sh

#/usr/bin/mariadb-install-db -u root
#/usr/bin/mysqld -u root & sleep 5
#/usr/bin/mysqld_safe --datadir='/var/lib/mysql'
#mariadb -u root -p123 -e "GRANT ALL PRIVILEGES ON * . * TO 'example-user'@'%';"
#mariadb -u example-user -p123 -e "create database counter_db;"

mariadbd
