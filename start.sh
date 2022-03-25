#!/bin/bash
set -eu

# ensure that data directory is owned by 'cloudron' user
chown -R cloudron:cloudron /app/data

echo "==> Starting Home Assistant"
cd /app/data
source /app/data/hass/bin/activate

exec /usr/local/bin/gosu cloudron:cloudron hass --config /app/data
