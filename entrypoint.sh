#!/bin/bash
# Modified from: https://stackoverflow.com/a/44079215
# This script ensures that within a Docker container
# we have the right pixi environment activated
# before executing a command

# If `nvidia-smi` is available, then execute command in the `cuda` environment
# as defined in `pyproject.toml`.
if command -v nvidia-smi &> /dev/null; then
    pixi shell -e cuda
else
    pixi shell
fi
exec "$@"
