;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Dorai Sitaram's pregexp, slightly modified
(import :std/error
        :std/sugar)
(export pregexp
        pregexp-match-positions
        pregexp-match
        pregexp-split
        pregexp-replace
        pregexp-replace*
        pregexp-quote)

(declare (fixnum))
(include "pregexp/pregexp.scm")
