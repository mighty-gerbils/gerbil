;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme inexact) library implementation details
(export #t)

(cond-expand
  (,(> (system-version) 409002)
   (defalias r7rs-log log))
  (else
   (def* r7rs-log
     ((x) (log x))
     ((x y)
      (/ (log x) (log y))))))
