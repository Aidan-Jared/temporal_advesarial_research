#!/bin/bash

# Exit on error
set -e

uv run main.py \
    --seed 42 \
    --runs 5 \
    --dataset seq-mnist \
    --backbone mnistmlp-pnn \
    --model derpp \
    --model_config base \
    --buffer_size 500 \
    --input_size 784 \
    --lr 0.03 \
    --minibatch_size 10 \
    --alpha 1.0 \
    --beta 0.5 \
    --batch_size 10 \
    --n_epochs 1 \
	"$@"
