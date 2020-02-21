#!/bin/bash

set -eu

HOST="$1"
WEBHOOK_SECRET="$2"
JOB_PATH="$3"
JOB_TOKEN="$4"
BUILD_PARAMETERS="$5"
JOB_PARAMETERS="secret=$WEBHOOK_SECRET&job=$JOB_PATH&token=$JOB_TOKEN"
URL="$HOST/buildByToken/buildWithParameters?BRANCH=$GITHUB_REF&$JOB_PARAMETERS&$BUILD_PARAMETERS"

echo /usr/bin/curl $URL
/usr/bin/curl --verbose $URL
