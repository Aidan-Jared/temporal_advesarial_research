#!/bin/bash
set -e

RUNNER=$(basename "$0")
DIR=$(dirname "$0")

for script in "$DIR"/*.sh; do
  [[ $(basename "$script") == "$RUNNER" ]] && continue
  bash "$script" "$@"
done
