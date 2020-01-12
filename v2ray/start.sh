#!/bin/sh

set -e

cp -f /etc/v2ray/config.json /var/v2ray/print/

v2ray -config /etc/v2ray/config.json
