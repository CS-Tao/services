#!/bin/bash
set -e

wget https://dl.eff.org/certbot-auto
chmod +x ./certbot-auto
./certbot-auto certonly  -d "*.${CER_BOT_DOMAIN}" -d "${CER_BOT_DOMAIN}" --manual --preferred-challenges dns-01  --server https://acme-v02.api.letsencrypt.org/directory --email=${CER_BOT_EMAIL}
echo "Copy ssl files from /etc/letsencrypt/live/${CER_BOT_DOMAIN}/..."
cp /etc/letsencrypt/live/${CER_BOT_DOMAIN}/*.pem ../ssl/
echo "Done. You can check files in nginx/ssl/."
