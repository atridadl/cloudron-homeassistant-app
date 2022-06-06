#!/bin/bash
cd /app/data
virtualenv -p /usr/bin/python3.9 hass
source /app/data/hass/bin/activate
pip3 install wheel
pip3 install --no-use-pep517 homeassistant==2022.6.2
# python3 /app/data/hass/lib/python3.8/site-packages/homeassistant/setup.py
