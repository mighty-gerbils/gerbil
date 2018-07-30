;;; -*- Gerbil -*-
;;; (C) vyzo
;;; textual template related utilities
package: std/misc

;; this hack is needed because we can't just for-syntax import :gerbil/expander here.
;; the stdlib dep generating script tries to reimport the expander from source,
;; hence killing its expansion context and failing... duh.
(module gxdeps
  (export #t)
  (extern namespace: gx core-resolve-path))

(import (for-syntax gxdeps :std/misc/ports))
(export include-text)

;; compile-time include a file as text (a string)
(defsyntax (include-text stx)
  (syntax-case stx ()
    ((_ path)
     (stx-string? #'path)
     (let (path (core-resolve-path #'path (stx-source stx)))
       (with-syntax ((txt (call-with-input-file path read-all-as-string)))
         #'(quote txt))))))
