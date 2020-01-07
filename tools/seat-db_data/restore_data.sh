#!/bin/bash
set -e

FILE_PATH=`dirname $0`/data.sql

[ ! -e ${FILE_PATH} ] && echo -e "\033[31m There is no file named data.sql. \033[0m" && exit 1

echo -e "\033[33m Restoring data from ${FILE_PATH} ... \033[0m"

docker exec -i seat-db sh -c 'exec mysql -uroot -p"$MYSQL_ROOT_PASSWORD"' < ${FILE_PATH}

echo -e "\033[32m Data restored from ${FILE_PATH}. \033[0m"
