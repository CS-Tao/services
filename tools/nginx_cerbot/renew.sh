#!/bin/bash
set -e

NGINX_SSL_FOLDER=../../nginx/ssl

./certbot-auto renew
echo "Copy ssl files from /etc/letsencrypt/live/cs-tao.cc/..."
cp /etc/letsencrypt/live/cs-tao.cc/*.pem ${NGINX_SSL_FOLDER}
echo -e "\033[32m Done. You can check files in ${NGINX_SSL_FOLDER}. \033[0m"
