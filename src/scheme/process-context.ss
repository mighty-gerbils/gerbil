;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme process-context) library
package: scheme

(import :gerbil/gambit
        :scheme/process-context-impl)

(export
  command-line
  emergency-exit
  exit
  get-environment-variable
  get-environment-variables
  )
