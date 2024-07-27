"""Example test for arrays."""
import jax.numpy as np


def test_array():
    """Test array creation."""
    a = np.arange(3)
    print(a.devices())
