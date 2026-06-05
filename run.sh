#!/usr/bin/env bash
EXTRA_ARGS=("$@")

while IFS= read -r line || [[ -n "$line" ]]; do
  [[ -z "${line// }" ]] && continue
  clean=$(echo "$line" | tr -s ' ' ' ')
  eval "uv run main.py $clean"
done < args.txt
