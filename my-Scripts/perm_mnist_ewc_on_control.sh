#!/bin/bash

# Exit on error
set -e

uv run main.py \
    --seed 42 \
    --runs 5 \
    --dataset perm-mnist \
    --backbone MNISTMLP \
    --model ewc-on \
    --model_config base \
    --lr 0.1 \
    --e_lambda 0.7 \
    --gamma 1.0 \
    --batch_size 128 \
    --n_epochs 1
