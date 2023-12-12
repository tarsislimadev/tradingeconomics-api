#!/usr/bin/sh

echo "read"

while IFS= read -r line; do
  echo "line: ${line}"
done
