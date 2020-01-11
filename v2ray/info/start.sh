#!/bin/sh
set -e

cd /var/v2ray/info/

echo "Install dependencies..."
npm i qrcode-terminal@0.12.0 &> /dev/null

echo "Generate vmess link..."
python3 ./json2vmess.py \
  --addr ${ADDRESS} \
  --filter ws \
  -a port:${PORT} \
  -a ps:${PS} \
  ./config.json > output.txt

echo "Generate QR code..."
node index.js $(cat output.txt) > output.txt

cat output.txt

echo -e "\033[32m I have done my job. See you next time! \033[0m"

