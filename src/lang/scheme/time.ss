;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme time) library
(cond-expand
  (,(> (system-version) 409001)
   ;; Gambit v4.9.2 runtime builtins
   (extern namespace: #f
     current-jiffy
     current-second
     jiffies-per-second))
  (else
   (import :scheme/time-impl)))

(export
  current-jiffy
  current-second
  jiffies-per-second)
