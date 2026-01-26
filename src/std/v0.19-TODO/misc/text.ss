;;; -*- Gerbil -*-
;;; (C) vyzo
;;; textual template related utilities

(import (for-syntax :std/misc/ports))
(export include-text)

;; compile-time include a file as text (a string)
(defsyntax (include-text stx)
  (syntax-case stx ()
    ((_ path)
     (stx-string? #'path)
     (let (path (gx#core-resolve-path #'path (stx-source stx)))
       (with-syntax ((txt (call-with-input-file path read-all-as-string)))
         #'(quote txt))))))
