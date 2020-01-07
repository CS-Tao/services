#!/bin/bash
set -e

NGINX_SSL_FOLDER=../../nginx/ssl

wget https://dl.eff.org/certbot-auto
chmod +x ./certbot-auto
./certbot-auto certonly  -d "*.cs-tao.cc" -d "cs-tao.cc" --manual --preferred-challenges dns-01  --server https://acme-v02.api.letsencrypt.org/directory --email=whucstao@qq.com
echo "Copy ssl files from /etc/letsencrypt/live/cs-tao.cc/..."
cp /etc/letsencrypt/live/cs-tao.cc/*.pem ${NGINX_SSL_FOLDER}
echo -e "\033[32m Done. You can check files in ${NGINX_SSL_FOLDER}. \033[0m"
folder