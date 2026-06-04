#!/bin/bash

# Exit on error
set -e

uv run main.py \
    --seed 42 \
    --runs 5 \
    --dataset seq-mnist \
    --backbone mnistmlp \
    --model ewc-on \
    --model_config base \
    --lr 0.03 \
    --e_lambda 90 \
    --gamma 1.0 \
    --batch_size 10 \
    --n_epochs 1
