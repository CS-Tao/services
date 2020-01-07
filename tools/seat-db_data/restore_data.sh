#!/bin/bash
set -e

[ -e data.sql ] && echo -e "\033[31m There is no file named data.sql. \033[0m" && exit 1

echo -e "\033[33m Restoring data from data.sql ... \033[0m"

docker exec -i seat-db sh -c 'exec mysql -uroot -p"$MYSQL_ROOT_PASSWORD"' < data.sql

echo -e "\033[32m Data restored from data.sql. \033[0m"
