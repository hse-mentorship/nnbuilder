#!/usr/bin/env sh

set -eu

if [ ! -f "$1" ]; then
  echo 'Environment configuration file does not exist'
  exit 0
fi

set -o allexport
# shellcheck disable=SC1090
. "$1"
set +o allexport

envsubst < "$2" > "$3"
