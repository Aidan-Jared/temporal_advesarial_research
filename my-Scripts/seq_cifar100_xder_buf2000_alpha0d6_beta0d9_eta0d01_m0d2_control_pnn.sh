#!/bin/bash

# Exit on error
set -e

uv run main.py \
    --seed 42 \
    --runs 5 \
    --dataset seq-cifar100 \
    --model xder \
    --backbone resnet18-pnn \
    --model_config base \
    --buffer_size 2000 \
    --m 0.2 \
    --alpha 0.6 \
    --beta 0.9 \
    --gamma 0.85 \
    --optim_wd 0 \
    --lambd 0.05 \
    --eta 0.01 \
    --lr 0.03 \
    --simclr_temp 5 \
    --optim_mom 0 \
    --simclr_batch_size 64 \
    --simclr_num_aug 2
