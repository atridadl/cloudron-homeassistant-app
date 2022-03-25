FROM cloudron/base:3.2.0@sha256:ba1d566164a67c266782545ea9809dc611c4152e27686fd14060332dd88263ea

RUN mkdir -p /app/code /app/data /app/data/dhcpconf
WORKDIR /app/code

# install dependencies
RUN add-apt-repository ppa:deadsnakes/ppa && \
    apt -y update && \
    apt install -y python3.9 python3.9-dev python3.9-venv python3-pip libffi-dev libssl-dev libjpeg-dev zlib1g-dev autoconf build-essential libopenjp2-7 libtiff5 tzdata && \
    rm -rf /var/cache/apt /var/lib/apt/lists

# copy start script
ADD start.sh build.sh fix_default_conf.sh /app/code/
ADD configuration.yaml /app/data/
RUN cd /app/data && touch automations.yaml && touch scripts.yaml && touch scenes.yaml

RUN /bin/bash /app/code/build.sh

CMD [ "/app/code/start.sh" ]
