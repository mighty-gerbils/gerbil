;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme process-context) library -- implementation details
(export #t)

(def (r7rs-exit (normally? #t))
  (exit (if normally? 0 1)))
