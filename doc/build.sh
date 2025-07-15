#!/usr/bin/env bash

cd ${0%/*}

weave () {
    emacs  $1 --batch -l `pwd`/ox-gfm.el \
	   --eval '(print (org-gfm-export-to-markdown nil nil nil))' --kill ||
	echo "Cannot export from org $1 to markdown using emacs"
}

weave_subtree () {
    code="$2"
    emacs  $1 --batch -l `pwd`/ox-gfm.el \
	   --eval "
 (progn (re-search-forward \"^\\$2\")
 (re-search-forward \"^:END:\")
 (print (org-gfm-export-to-markdown nil t nil)))" --kill \
	   || echo "Cannot export subree $2 from $1"
	   
}
weave_subtree ../src/std/crypto/README.org '* Tutorial'

weave ../src/std/monad/README.org
weave ../src/std/parsec/StatelessStreams.org

weave ../dist/macos/README.org
weave ../dist/macos/homebrew/README.org
weave ../src/std/mime/README.org
weave ../src/std/markup/README.org
weave ../src/std/markup/sxml/README.org
weave ../src/std/markup/sxml/xml.org
weave ../src/std/markup/sxml/html/README.org
weave ../src/std/markup/sxml/tal/README.org
weave ./reference/std/instance.org


npm install
NODE_OPTIONS=--openssl-legacy-provider npm run build
