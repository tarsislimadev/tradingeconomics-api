#!/usr/bin/sh

# inputs

. datetime.sh

path="markets/commodities"

# runner

resp=$( bash get.sh "${path}" "" )

# outputs

bash create.sh "${path}" "${datetime}" "resp" "${resp}"
