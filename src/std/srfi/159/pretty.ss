;;; -*- Gerbil -*-
;;; © vyzo
;;; SRFI-159: pretty printing format combinator

(import ../1
        ../125
        ../130
        ./base
        ./show
        ./string)
(export
  pretty pretty-shared pretty-simply
  joined/shares try-fitted)
(include "pretty.scm")
