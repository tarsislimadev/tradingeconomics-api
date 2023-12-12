#!/usr/bin/sh

# inputs

. .env

path="${1}"

queries="c=${API_KEY}&${2}"

## runners

curl -sL "https://api.tradingeconomics.com/${path}?${queries}"
