;;; -*- Gerbil -*-
;;; © vyzo
;;; SRFI-159: columanr formatting

(import :gerbil/gambit/exact
        ../srfi-support
        ../1
        ../9
        ../117
        ../130
        ./base
        ./show)
(export
  call-with-output-generator call-with-output-generators
  string->line-generator
  tabular columnar show-columns wrapped wrapped/list wrapped/char
  justified line-numbers from-file)
(include "column.scm")
