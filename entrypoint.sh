#!/bin/bash

set -eu

HOST="$1"
WEBHOOK_SECRET="$2"
JOB_PATH="$3"
JOB_TOKEN="$4"
JOB_PARAMETERS=$(echo \"$5\" | tr '\n' '&')
URL="$HOST/buildByToken/buildWithParameters?secret=$WEBHOOK_SECRET&job=$JOB_PATH&token=$JOB_TOKEN&$JOB_PARAMETERS"

echo /usr/bin/curl $URL
/usr/bin/curl --verbose $URL
