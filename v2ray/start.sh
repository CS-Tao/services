#!/bin/sh

set -e

cp -f /etc/v2ray/config.json /var/v2ray/info/

v2ray -config /etc/v2ray/config.json
