#  Home Assistant Cloudron App

This repository contains the Cloudron app package source for Home Assistant, a self-hosted open source home automation that puts local control and privacy first.
Repo: https://github.com/homeassistant/core

## Installation

[![Install](https://cloudron.io/img/button.svg)](https://cloudron.io/button.html?app=org.homeassistant.cloudronapp)

or using the [Cloudron command line tooling](https://cloudron.io/references/cli.html)

```
cloudron install --appstore-id homeassistant.cloudronapp
```

## Building

The app package can be built using the [Cloudron command line tooling](https://cloudron.io/references/cli.html).

```
cd homeassistant-app

cloudron build
cloudron install
```
