#!/bin/sh

readonly SERVER_URL="https://vault.bitwarden.eu"

server_url=$(bw status | jq -r '.serverUrl')
status=$(bw status | jq -r '.status')

if [ "$server_url" != "$SERVER_URL" ] && [ "$status" = "unauthenticated" ]; then
  bw config server "$SERVER_URL"
  bw login
  bw sync
fi
