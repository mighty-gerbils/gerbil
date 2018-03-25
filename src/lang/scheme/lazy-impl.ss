;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme lazy) library -- implementation details
package: scheme

(import :scheme/stubs
        :std/lazy)
(export #t force delay (rename: lazy delay-force))

(def (r7rs-make-promise obj)
  (if (r7rs-promise? obj)
    obj
    (std/lazy#make-lazy (cons 'eager obj))))

(def (r7rs-promise? obj)
  (or (lazy? obj) (promise? obj)))
