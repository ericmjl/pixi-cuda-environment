FROM ghcr.io/prefix-dev/pixi:latest

WORKDIR /repo

COPY pixi.lock /repo/pixi.lock
COPY pixi.toml /repo/pixi.toml

RUN /usr/local/bin/pixi install
