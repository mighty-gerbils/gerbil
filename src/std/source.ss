(export #t (for-syntax #t))

(import (for-syntax :std/stxutil
                    :std/misc/path
                    :std/misc/ports)
        :std/sugar)

;;; Locations follow the Gambit convention: it's a vector of two values.
;;; The first value is either a string which is filename, or a list containing a symbol.
;;; The second value is a fixnum, either non-negative (+ (* 65536 column) line),
;;; or if the previous formula had overflows, negative file position.

(begin-syntax
  (def (stx-source-file stx)
    (alet (loc (stx-source stx))
      (vector-ref loc 0)))

  (def (stx-source-position stx)
    (alet (loc (stx-source stx))
      (vector-ref loc 1)))

  (def (stx-source-directory stx)
    (alet (file (stx-source-file stx))
      (path-directory file)))

  (def (stx-source-path stx . relpath)
    (alet (dir (stx-source-directory stx))
      (apply subpath dir relpath)))

  (def (stx-source-content stx . relpath)
    (alet (path (apply stx-source-path stx relpath))
      (read-file-u8vector path))))

(defsyntax-call (this-source-location ctx)
  (stx-source ctx))

(defsyntax-call (this-source-file ctx)
  (stx-source-file ctx))

(defsyntax-call (this-source-position ctx)
  (stx-source-position ctx))

(defsyntax-call (this-source-directory ctx)
  (stx-source-directory ctx))

(defsyntax-call (this-source-path ctx relpath)
  (stx-source-path ctx relpath))

(defsyntax-call (this-source-content ctx relpath)
  (stx-source-content ctx relpath))
