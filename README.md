# pixi-cuda-environment

A minimal repository using `pixi` as an environment manager.

## Pre-requisites

Firstly, ensure that you have `pixi` installed.
If not, head over to [here](https://pixi.sh/latest/)
and follow instructions for installation.

## Get started

1. Clone the repo.
2. `pixi install`
3. `pixi run test` -- run a test.

If nothing fails, everything works!

## Docker on GPU

Try building and running the docker container on a machine that has GPUs:

```bash
docker build -f Dockerfile -t pixicuda
docker run --gpus -it pixicuda /bin/bash
ipython
```

Then within `ipython`, run the following:

```python
import jax.numpy as np
a = np.arange(3)
print(a.devices())
```

If all is well, JAX should indicate that it is running on GPUs.

## What to study

- `pyproject.toml`: has a minimal implementation of what's needed to use cuda-enabled packages (like JAX and PyTorch).
- `Dockerfile` and `entrypoint.sh`: minimal implementation of auto-activation of `pixi` environments before running commands.
