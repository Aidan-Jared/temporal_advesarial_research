#!/bin/bash

# Exit on error
set -e

uv run main.py \
    --seed 42 \
    --runs 5 \
    --dataset perm-mnist \
    --model gem \
    --model_config base \
    --backbone mnistmlp \
    --buffer_size 500 \
    --lr 0.1 \
    --gamma 0.5 \
    --batch_size 128 \
    --n_epochs 1 \
"$@"
