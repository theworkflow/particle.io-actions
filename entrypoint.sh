#!/bin/sh
set -e

function main() {
  sanitize "${INPUT_ACCESS_TOKEN}" "access_token"
  sanitize "${INPUT_DEVICE_TYPE}" "device_type"
  sanitize "${INPUT_DEVICE_ID}" "device_id"
  login
  compile
  flash
}

function sanitize() {
  if [ -z "${1}" ]; then
    >&2 echo "Unable to find the ${2}. Did you set with.${2}?"
    exit 1
  fi
}

function login() {
  echo "Logging in..."
  particle login --token $INPUT_ACCESS_TOKEN
}

function compile() {
  echo "Compiling..."
  particle compile $INPUT_DEVICE_TYPE --saveTo firmware.bin
}

function flash() {
  echo "Flashing..."
  particle flash ${INPUT_DEVICE_ID} firmware.bin
}

main