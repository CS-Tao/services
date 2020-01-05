#!/bin/bash
set -e

./certbot-auto renew
echo "Copy ssl files from /etc/letsencrypt/live/${CER_BOT_DOMAIN}/..."
cp /etc/letsencrypt/live/${CER_BOT_DOMAIN}/*.pem ../ssl/
echo "Done. You can check files in nginx/ssl/."
