;;; -*- Gerbil -*-
;;; (C) vyzo
;;; textual template related utilities
package: std/misc

(import
  (for-syntax
   (only-in :gerbil/expander core-resolve-path)
   :std/misc/ports))
(export #t)


;; compile-time include a file as text (a string)
(defsyntax (include-text stx)
  (syntax-case stx ()
    ((_ path)
     (stx-string? #'path)
     (let (path (core-resolve-path #'path (stx-source stx)))
       (with-syntax ((txt (call-with-input-file path read-all-as-string)))
         #'(quote txt))))))
