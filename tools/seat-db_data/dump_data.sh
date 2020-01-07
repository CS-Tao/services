#!/bin/bash
set -e

FILE_PATH=`dirname $0`/data.sql

[ -e ${FILE_PATH} ] && echo -e "\033[31m There is already a file named data.sql. \033[0m" && exit 1

echo -e "\033[33m Dumping data to ${FILE_PATH} ... \033[0m"

docker exec seat-db sh -c 'exec mysqldump --all-databases -uroot -p"$MYSQL_ROOT_PASSWORD"' > ${FILE_PATH}

echo -e "\033[32m Data dumped to ${FILE_PATH}. \033[0m"
