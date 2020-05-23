;; -*- Gerbil -*-
;; © vyzo
;; this module should imported for build scripts that need _gambit# macros
;; in the interpreter
(parameterize ((_gx#loading-scheme-source #t))
  (eval '(include "~~lib/_gambit#.scm")))
