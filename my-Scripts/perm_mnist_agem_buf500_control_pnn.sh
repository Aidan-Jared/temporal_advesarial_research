#!/bin/bash

# Exit on error
set -e

uv run main.py \
    --seed 42 \
    --runs 5 \
    --dataset perm-mnist \
    --backbone mnistmlp-pnn \
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
    --input_size 784 \
>>>>>>> master
    --enable_other_metrics 0\
>>>>>>> master
    --model agem \
    --model_config base \
    --buffer_size 500 \
    --lr 0.1 \
    --minibatch_size 128 \
    --batch_size 128 \
    --n_epochs 1
