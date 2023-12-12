#!/usr/bin/sh

# inputs

. datetime.sh

markets=$( . urlencode.sh "${1}" )

path="markets/search/${markets}"

# runner

resp=$( bash get.sh "${path}" "cross=${cross}" )

# outputs

bash create.sh "${path}" "${datetime}" "resp" "${resp}"
