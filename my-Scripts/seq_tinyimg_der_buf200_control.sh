#!/bin/bash

# Exit on error
set -e

uv run main.py \
    --seed 42 \
    --runs 5 \
    --dataset seq-tinyimg \
    --model der \
<<<<<<< HEAD
    --backbone resnet18 \
=======
<<<<<<< HEAD
=======
    --backbone resnet18 \
>>>>>>> master
>>>>>>> master
    --model_config base \
    --buffer_size 200 \
    --lr 0.03 \
    --minibatch_size 32 \
    --softmax_temp 2.0 \
    --alpha 0.1 \
    --batch_size 32 \
    --n_epochs 100
