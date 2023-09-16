#!/usr/bin/env bash

cd ${0%/*}

npm install
# npm run build
NODE_OPTIONS=--openssl-legacy-provider npm run build
