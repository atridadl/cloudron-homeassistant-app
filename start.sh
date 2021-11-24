#!/bin/bash
set -eu

# ensure that data directory is owned by 'cloudron' user
chown -R cloudron:cloudron /app/data

echo "==> Starting Home Assistant"
cd /app/data
source /app/data/hass/bin/activate

if [[ ! -f /app/data/.initialized ]]; then
    echo "==> Fresh installation, performing first time setup"
    ( sleep 60 ; /app/code/fix_default_conf.sh & touch /app/data/.initialized ) &
fi

exec /usr/local/bin/gosu cloudron:cloudron hass --config /app/data
