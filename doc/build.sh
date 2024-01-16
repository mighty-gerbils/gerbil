#!/usr/bin/env bash

cd ${0%/*}


emacs ../src/std/mime/README.org --batch -f org-gfm-export-to-markdown --kill ||
    echo "Cannot export from org to markdown using emacs"


npm install
NODE_OPTIONS=--openssl-legacy-provider npm run build
