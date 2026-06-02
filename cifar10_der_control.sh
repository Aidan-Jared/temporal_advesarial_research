#!/bin/bash

# Exit on error
set -e

uv run main.py \
    --seed 42\
    --runs 5\
    --dataset seq-cifar10\
    --model der\
    --buffer_size 500\
    --lr 0.03\
    --minibatch_size 32\
    --alpha 0.3\
    --n_epochs 50\
    --model_config base\
