;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS errors
package: std/os

(export raise-os-error)

(extern strerror)
(def (raise-os-error errno prim . args)
  (apply ##raise-os-exception (strerror errno) errno prim args))

(begin-foreign
  (c-declare "#include <string.h>")
  (define std/os/error#strerror (c-lambda (int) char-string "strerror")))




