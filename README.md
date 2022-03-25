#  Home Assistant Cloudron App

This repository contains the Cloudron app package source for Home Assistant 2022.3.7, a self-hosted open source home automation that puts local control and privacy first.
Repo: https://github.com/homeassistant/core

## Building

The app package can be built using the [Cloudron command line tooling](https://cloudron.io/references/cli.html) by pulling down the repo and running the following commands:

```
cloudron build
cloudron install
```

* You will need docker installed to build.

Alternatively, after pulling down this repository, run the following command from inside the root of the project:
```
cloudron install --image atridadl/cloudron-homeassistant-app
```
This will install using my docker container so you wont have to build.
