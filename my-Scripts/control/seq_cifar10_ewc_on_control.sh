#!/bin/bash

# Exit on error
set -e

uv run main.py \
    --seed 42 \
    --runs 5 \
    --dataset seq-cifar10 \
    --model ewc-on \
    --backbone reduced-resnet18 \
    --model_config base \
    --lr 0.03 \
    --e_lambda 10 \
    --gamma 1.0 \
    --batch_size 32 \
    --n_epochs 50
