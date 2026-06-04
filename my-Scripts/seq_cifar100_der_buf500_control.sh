#!/bin/bash

# Exit on error
set -e

uv run main.py \
    --seed 42 \
    --runs 5 \
    --dataset seq-cifar100 \
    --model der \
    --model_config base \
    --buffer_size 500 \
    --lr 0.03 \
    --optim_mom 0 \
    --optim_wd 0 \
    --alpha 0.3
