#!/bin/bash
set -e

./certbot-auto renew
echo "Copy ssl files from /etc/letsencrypt/live/cs-tao.cc/..."
cp /etc/letsencrypt/live/cs-tao.cc/*.pem ../ssl/
echo "Done. You can check files in nginx/ssl/."
