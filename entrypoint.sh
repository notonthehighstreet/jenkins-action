#!/bin/bash

set -eu

HOST="$1"
WEBHOOK_SECRET="$2"
JOB="$3"
JOB_TOKEN="$4"
JOB_PARAMETERS="secret=$WEBHOOK_SECRET&job=$JOB&token=$JOB_TOKEN"
URL="$HOST/buildByToken/buildWithParameters?BRANCH=$GITHUB_REF&$JOB_PARAMETERS"

/usr/bin/curl $URL
