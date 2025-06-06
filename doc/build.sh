#!/usr/bin/env bash

cd ${0%/*}

weave () {
    emacs  $1 --batch -l `pwd`/ox-gfm.el \
	   --eval '(print (org-gfm-export-to-markdown nil nil nil))' --kill ||
	echo "Cannot export from org $1 to markdown using emacs"
}
weave_subtree () {
    emacs  $1 --batch -l `pwd`/ox-gfm.el \
	   --eval "(progn (goto-char (+ 1 (org-open-link-from-string \"[[#$2]]\")))
                          (print (org-gfm-export-to-markdown nil t nil)))" --kill ||
	echo "Cannot export from org $1 subtree $2 to markdown using emacs"
}

weave ../src/std/monad/README.org

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
