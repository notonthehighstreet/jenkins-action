#!/bin/bash

set -eu

HOST="$1"
WEBHOOK_SECRET="$2"
JOB_PATH="$3"
JOB_TOKEN="$4"
JOB_PARAMETERS=$(echo $5 | sed 's/&/%26/g' | sed 's/:/%3A/g' | tr ' ' '&')
URL="$HOST/buildByToken/buildWithParameters?secret=$WEBHOOK_SECRET&job=$JOB_PATH&token=$JOB_TOKEN&$JOB_PARAMETERS"

echo /usr/bin/curl $URL
/usr/bin/curl --verbose $URL
