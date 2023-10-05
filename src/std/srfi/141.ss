;;; -*- Gerbil -*-
;;; (c) vyzo at hackzen.org
;;; SRFI-141: Integer Division

(export ceiling/ ceiling-quotient ceiling-remainder
        floor/ floor-quotient floor-remainder
        truncate/ truncate-quotient truncate-remainder
        round/ round-quotient round-remainder
        euclidean/ euclidean-quotient euclidean-remainder
        balanced/ balanced-quotient balanced-remainder)

;; All SRFI-141 operators are already implemented by Gambit
(extern namespace: #f
  floor/ floor-quotient floor-remainder
  ceiling/ ceiling-quotient ceiling-remainder
  truncate/ truncate-quotient truncate-remainder
  round/ round-quotient round-remainder
  euclidean/ euclidean-quotient euclidean-remainder
  balanced/ balanced-quotient balanced-remainder)
