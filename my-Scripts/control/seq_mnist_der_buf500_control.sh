#!/bin/bash

# Exit on error
set -e

uv run main.py \
    --seed 42 \
    --runs 5 \
    --dataset seq-mnist \
    --backbone mnistmlp \
    --model der \
    --model_config base \
    --buffer_size 500 \
    --lr 0.03 \
    --minibatch_size 128 \
    --alpha 1.0 \
    --batch_size 10 \
    --n_epochs 1
