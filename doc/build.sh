#!/usr/bin/env bash


cd ${0%/*}

npm install
NODE_OPTIONS=--openssl-legacy-provider npm run build
