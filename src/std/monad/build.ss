#!/usr/bin/env gxi
;;; -*- Gerbil -*-
(import :std/build-script)

(defbuild-script
  '("instance"
     "monad/syntax"
     "monad/interface"
     "monad/util"
     "monad/Identity"
     "monad/List"
     "monad/State"
     "Monad/Error"

    "monad"
    ))
