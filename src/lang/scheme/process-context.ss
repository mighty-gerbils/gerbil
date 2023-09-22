;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme process-context) library
(import :gerbil/gambit
        ./process-context-impl)

(extern namespace: #f
  emergency-exit
  get-environment-variable
  get-environment-variables)
(export
  command-line
  emergency-exit
  (rename: r7rs-exit exit)
  get-environment-variable
  get-environment-variables)
