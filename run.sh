#!/usr/bin/env bash
EXTRA_ARGS=("$@")
while IFS= read -r line || [[ -n "$line" ]]; do
  [[ -z "${line// }" ]] && continue
  clean=$(echo "$line" | tr -s ' ' ' ')
  uv run main.py $clean "${EXTRA_ARGS[@]}"
done < args.txt
