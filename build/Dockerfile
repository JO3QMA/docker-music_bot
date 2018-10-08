FROM alpine:latest
WORKDIR /usr/src/musicbot

RUN set -x \
&&  apk update \
&&  apk add --no-cache \
      ca-certificates \
      ffmpeg \
      opus \
      python3 \
      libsodium-dev \
&&  apk add --no-cache --virtual .build-deps \
      git \
      gcc \
      libffi-dev \
      make \
      musl-dev \
      python3-dev \
&&  git clone https://github.com/Just-Some-Bots/MusicBot.git . \
&&  pip3 install --upgrade pip \
&&  pip3 install --no-cache-dir -r requirements.txt \
&&  pip3 install --upgrade --force-reinstall --version websockets==4.0.1 \
&&  apk del .build-deps

VOLUME /usr/src/musicbot/config

ENV APP_ENV=docker

ENTRYPOINT [ "python3", "run.py"]