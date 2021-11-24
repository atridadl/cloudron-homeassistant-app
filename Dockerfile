FROM cloudron/base:3.0.0@sha256:455c70428723e3a823198c57472785437eb6eab082e79b3ff04ea584faf46e92

RUN mkdir -p /app/code /app/data /app/data/dhcpconf
WORKDIR /app/code

# ffmpeg required
RUN apt-get -y update && \
    apt-get update && \
    apt install -y python3 python3-dev python3-venv python3-pip libffi-dev libssl-dev libjpeg-dev zlib1g-dev autoconf build-essential libopenjp2-7 libtiff5 tzdata

# copy start script
ADD start.sh build.sh root.py fix_default_conf.sh /app/code/

RUN /bin/bash /app/code/build.sh
RUN chmod +x /app/code/fix_default_conf.sh

CMD [ "/app/code/start.sh" ]
