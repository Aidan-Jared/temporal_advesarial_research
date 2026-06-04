#!/bin/bash

# Exit on error
set -e

uv run main.py \
    --seed 42 \
    --runs 5 \
    --dataset seq-cifar10 \
    --model der \
<<<<<<< HEAD
    --backbone reduced-resnet18 \
=======
<<<<<<< HEAD
=======
    --backbone reduced-resnet18 \
>>>>>>> master
>>>>>>> master
    --model_config base \
    --buffer_size 500 \
    --lr 0.03 \
    --minibatch_size 32 \
    --alpha 0.3 \
    --batch_size 32 \
    --n_epochs 50
