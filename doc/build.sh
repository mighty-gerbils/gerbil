#!/usr/bin/env bash

cd ${0%/*}

weave () {
    emacs  $1 --batch -l `pwd`/ox-gfm.el -f org-gfm-export-to-markdown --kill ||
	echo "Cannot export from org to markdown using emacs"
}

weave ../src/std/mime/README.org


npm install
NODE_OPTIONS=--openssl-legacy-provider npm run build
