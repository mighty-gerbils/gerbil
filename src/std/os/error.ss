;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS errors
package: std/os

(export raise-os-error
        check-os-error)

(def (raise-os-error errno prim . args)
  (apply ##raise-os-exception (strerror errno) errno prim args))

(defrules check-os-error ()
  ((_ expr (prim arg ...))
   (let (r expr)
     (if (not (fxnegative? r)) r
         (raise-os-error (fx- r) prim arg ...)))))

(extern strerror)
(begin-foreign
  (c-declare "#include <string.h>")
  (define std/os/error#strerror (c-lambda (int) char-string "strerror")))




