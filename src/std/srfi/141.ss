;;; -*- Gerbil -*-
;;; (c) vyzo at hackzen.org
;;; SRFI-141: Integer Division

(import :gerbil/gambit/exact
        ./8)
(export ceiling/ ceiling-quotient ceiling-remainder
        floor/ floor-quotient floor-remainder
        truncate/ truncate-quotient truncate-remainder
        round/ round-quotient round-remainder
        euclidean/ euclidean-quotient euclidean-remainder
        balanced/ balanced-quotient balanced-remainder
        ceiling/ ceiling-quotient ceiling-remainder)

(include "srfi-141.scm")
