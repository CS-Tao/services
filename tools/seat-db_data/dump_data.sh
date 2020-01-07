#!/bin/bash
set -e

[ -e data.sql ] && echo -e "\033[31m There is already a file named data.sql. \033[0m" && exit 1

echo -e "\033[33m Dumping data to data.sql ... \033[0m"

docker exec seat-db sh -c 'exec mysqldump --all-databases -uroot -p"$MYSQL_ROOT_PASSWORD"' > data.sql

echo -e "\033[32m Data dumped to data.sql. \033[0m"
