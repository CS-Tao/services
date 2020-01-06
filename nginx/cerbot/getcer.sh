#!/bin/bash
set -e

wget https://dl.eff.org/certbot-auto
chmod +x ./certbot-auto
./certbot-auto certonly  -d "*.cs-tao.cc" -d "cs-tao.cc" --manual --preferred-challenges dns-01  --server https://acme-v02.api.letsencrypt.org/directory --email=whucstao@qq.com
echo "Copy ssl files from /etc/letsencrypt/live/cs-tao.cc/..."
cp /etc/letsencrypt/live/cs-tao.cc/*.pem ../ssl/
echo "Done. You can check files in nginx/ssl/."
