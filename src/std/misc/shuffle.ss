;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; shuffling
package: std/misc

(export shuffle vector-shuffle vector-shuffle!)
(import (only-in :gerbil/gambit/random random-integer))

(def (shuffle lst)
  (vector->list
   (vector-shuffle!
    (list->vector lst))))

(def (vector-shuffle vec)
  (vector-shuffle! (vector-copy vec)))

(def (vector-shuffle! vec)
  (let (len (vector-length vec))
    (do ((i 0 (fx1+ i)))
        ((fx= i len) vec)
      (let* ((j (fx+ i (random-integer (fx- len i))))
             (iv (##vector-ref vec i)))
        (##vector-set! vec i (##vector-ref vec j))
        (##vector-set! vec j iv)))))
