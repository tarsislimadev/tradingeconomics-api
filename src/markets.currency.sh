#!/usr/bin/sh

# inputs

. datetime.sh

path="markets/currency"

cross="${1}"

# runner

resp=$( bash get.sh "${path}" "cross=${cross}" )

# outputs

bash create.sh "${path}" "${datetime}" "resp" "${resp}"
