#!/bin/bash

# Exit on error
set -e

uv run main.py \
    --seed 42 \
    --runs 5 \
    --dataset seq-cifar10 \
    --model xder \
    --backbone reduced-resnet18 \
    --model_config base \
    --buffer_size 500 \
    --m 0.7 \
    --alpha 0.3 \
    --beta 0.8 \
    --gamma 0.85 \
    --optim_wd 0 \
    --lambd 0.05 \
    --eta 0.001 \
    --lr 0.03 \
    --simclr_temp 5 \
    --optim_mom 0 \
    --simclr_batch_size 64 \
    --simclr_num_aug 2 \
"$@"
