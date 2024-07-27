FROM ghcr.io/prefix-dev/pixi:latest

WORKDIR /repo

COPY pixi.lock /repo/pixi.lock
COPY pyproject.toml /repo/pyproject.toml

RUN /usr/local/bin/pixi install --manifest-path pyproject.toml --environment cuda

# Entrypoint shell script ensures that any commands we run start with `pixi shell`,
# which in turn ensures that we have the environment activated.
COPY entrypoint.sh /repo/entrypoint.sh
RUN chmod 700 /repo/entrypoint.sh
ENTRYPOINT [ "/repo/entrypoint.sh" ]
