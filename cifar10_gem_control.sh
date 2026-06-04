#!/bin/bash

# Exit on error
set -e

uv run main.py \
    --seed 42\
    --runs 5\
    --dataset seq-cifar10\
    --model gem\
    --buffer_size 500\
    --lr .03\
    --gamma 0.5\
    --batch_size 32\
    --n_epochs 32
