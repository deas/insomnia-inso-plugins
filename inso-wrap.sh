#!/bin/sh
set -xe
mkdir -p /tmp/insomnia-send-request/plugins
ln -s /usr/local/lib/node_modules/insomnia-plugin-dotenv /tmp/insomnia-send-request/plugins
exec /usr/local/bin/inso $@