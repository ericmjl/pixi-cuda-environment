#!/bin/bash
# Taken from: https://stackoverflow.com/a/44079215
# Check for NVIDIA hardware
if command -v nvidia-smi &> /dev/null; then
    pixi shell -e cuda
else
    pixi shell
fi
exec "$@"
