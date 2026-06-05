#!/bin/bash

# Exit on error
set -e

uv run main.py \
    --seed 42 \
    --runs 5 \
    --dataset perm-mnist \
    --backbone mnistmlp \
    --enable_other_metrics 0\
    --model agem \
    --model_config base \
    --buffer_size 500 \
    --lr 0.1 \
    --minibatch_size 128 \
    --batch_size 128 \
    --n_epochs 1
