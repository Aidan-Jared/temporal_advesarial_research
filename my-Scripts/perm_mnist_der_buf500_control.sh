#!/bin/bash

# Exit on error
set -e

uv run main.py \
    --seed 42 \
    --runs 5 \
    --dataset perm-mnist \
    --backbone mnistmlp \
    --model der \
<<<<<<< HEAD
=======
    --enable_other_metrics 0\
>>>>>>> master
    --model_config base \
    --buffer_size 500 \
    --lr 0.2 \
    --minibatch_size 128 \
    --alpha 1.0 \
    --batch_size 128 \
    --n_epochs 1
