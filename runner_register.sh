#!/bin/bash

TOKEN=$1
EXECUTOR=$2
DESCRIPTION=$3

docker exec -it gitlab-runner gitlab-runner register \
  --url "https://mzioit.bashkortostan.ru/ci" \
  --registration-token $TOKEN \
  --description $DESCRIPTION \
  --executor $EXECUTOR
