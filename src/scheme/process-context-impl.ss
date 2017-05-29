;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme process-context) library -- implementation details
package: scheme

(import :scheme/stubs)
(export #t)

(def (get-environment-variable var)
  (getenv var #f))

;; not supported by Gambit
(defstub get-environment-variables)

(def (r7rs-exit (normally? #t))
  (exit (if normally? 0 1)))

;; not supported by Gambit
(defstub emergency-exit)

