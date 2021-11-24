#!/bin/bash
cd /app/data
virtualenv -p /usr/bin/python3.8 hass
source /app/data/hass/bin/activate
pip3 install wheel
pip3 install homeassistant==2021.6.0
# python3 /app/data/hass/lib/python3.8/site-packages/homeassistant/setup.py
