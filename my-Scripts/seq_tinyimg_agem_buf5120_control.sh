#!/bin/bash

# Exit on error
set -e

uv run main.py \
    --seed 42 \
    --runs 5 \
    --dataset seq-tinyimg \
    --model agem \
<<<<<<< HEAD
    --backbone resnet18-7x7 \
=======
<<<<<<< HEAD
=======
    --backbone resnet18-7x7 \
>>>>>>> master
>>>>>>> master
    --model_config base \
    --buffer_size 5120 \
    --lr 0.01 \
    --minibatch_size 32 \
    --batch_size 32 \
    --n_epochs 100
