#!/usr/bin/env bash

cd ${0%/*}

# https://github.com/vuejs/vue-cli/issues/3407
# terser 3.16 is broken
npm install terser@3.14

npm install
npm run build
