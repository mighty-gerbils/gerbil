;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme lazy) library -- implementation details
(import :std/lazy)
(export #t force delay (rename: lazy delay-force))

(def (r7rs-make-promise obj)
  (eager obj))

(def (r7rs-promise? obj)
  (or (lazy? obj) (promise? obj)))
