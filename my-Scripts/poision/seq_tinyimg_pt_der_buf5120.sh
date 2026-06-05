#!/bin/bash

# Exit on error
set -e

uv run main.py \
    --seed 42 \
    --runs 5 \
    --dataset seq-tinyimg \
    --model der \
    --backbone resnet18-7x7-pt \
    --model_config base \
    --buffer_size 5120 \
    --lr 0.03 \
    --minibatch_size 32 \
    --alpha 0.1 \
    --batch_size 32 \
    --n_epochs 100 \
"$@"
