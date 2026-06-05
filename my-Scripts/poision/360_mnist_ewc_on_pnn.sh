#!/bin/bash

# Exit on error
set -e

uv run main.py \
    --seed 42 \
    --runs 5 \
    --dataset mnist-360 \
    --backbone mnistmlp-pnn \
    --enable_other_metrics 0\
    --input_size 784 \
    --model ewc-on \
    --model_config base \
    --lr 0.03 \
    --e_lambda 90 \
    --gamma 1.0 \
    --batch_size 10 \
    --n_epochs 1 \
	"$@"
