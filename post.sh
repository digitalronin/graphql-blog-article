#!/bin/bash

FILE=$1

curl --request POST \
  --header "Content-Type: application/graphql" \
  --header "Authorization: bearer ${API_TOKEN}" \
  --data "$(cat ${FILE})" \
  ${ENDPOINT}
