;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme repl) library
(import ./repl-impl)
(export
  (rename: r7rs-interaction-environment interaction-environment)
  (rename: r7rs-null-environment null-environment)
  (rename: r7rs-scheme-report-environment scheme-report-environment))
