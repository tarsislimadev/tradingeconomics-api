#!/usr/bin/sh

string="${1}"

while [ -n "$string" ]; do
  tail=${string#?}
  head=${string%$tail}
  case $head in
    [-._~0-9A-Za-z]) printf %c "$head";;
    *) printf %%%02x "'$head"
  esac
  string=$tail
done

echo
