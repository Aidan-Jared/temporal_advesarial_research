#!/bin/bash

# Exit on error
set -e

uv run main.py \
    --seed 42\
    --runs 5\
    --dataset seq-cifar10\
    --model ewc-on\
    --model_config best\
