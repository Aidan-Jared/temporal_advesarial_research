#!/bin/bash

# Exit on error
set -e

uv run main.py \
    --seed 42 \
    --runs 5 \
    --dataset seq-mnist \
    --backbone mnistmlp \
    --model gem \
    --model_config base \
    --buffer_size 500 \
    --lr 0.03 \
    --gamma 0.5 \
    --batch_size 10 \
    --n_epochs 1 \
"$@"
