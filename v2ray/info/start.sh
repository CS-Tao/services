#!/bin/sh
set -e

cd /var/v2ray/info/

echo "---------------------------- Config ---------------------------"
echo "import json
print(json.dumps($(cat ./config.json), sort_keys=True, indent=2))" \
  | python3
echo "---------------------------- Config ---------------------------"

echo "Install dependencies..."
npm i qrcode-terminal@0.12.0 &> /dev/null

echo "Generate vmess link..."
python3 ./json2vmess.py \
  --addr ${ADDRESS} \
  --filter ws \
  -m port:${PORT} \
  -m ps:${PS} \
  ./config.json > output.txt

echo "Generate QR code..."
node index.js $(cat output.txt) > output.txt

cat output.txt

echo -e "\033[32mI have done my job. See you next time! \033[0m"
