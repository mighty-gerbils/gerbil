;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Dorai Sitaram's pregexp, slightly modified

(declare (fixnum))
(export pregexp
        pregexp-match-positions
        pregexp-match
        pregexp-split
        pregexp-replace
        pregexp-replace*
        pregexp-quote)

(include "pregexp/pregexp.scm")
