#!/usr/bin/sh

# inputs

. datetime.sh

country="${1-mexico}"

group="${2}"

path="country/${country}"

# runner

resp=$( bash get.sh "${path}" "group=${group}" )

# outputs

bash create.sh "${path}" "${datetime}" "resp" "${resp}"
