#!/bin/bash

# Exit on error
set -e

uv run main.py \
    --seed 42 \
    --runs 5 \
    --dataset mnist-360 \
    --backbone mnistmlp-pnn \
    --model agem \
    --model_config base \
    --buffer_size 500 \
    --lr 0.1 \
    --minibatch_size 128 \
    --batch_size 10 \
    --n_epochs 1
