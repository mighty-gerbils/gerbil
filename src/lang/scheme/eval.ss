;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme eval) library
package: scheme

(import :scheme/eval-impl)

(export
  (rename: r7rs-eval eval)
  (rename: r7rs-environment environment))

