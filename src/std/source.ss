(export #t)

(import (for-syntax :std/stxutil
                    :std/misc/path
                    :std/misc/ports)
        :std/sugar)

;;; Locations follow the Gambit convention: it's a vector of two values.
;;; The first value is either a string which is filename, or a list containing a symbol.
;;; The second value is a fixnum, either non-negative (+ (* 65536 column) line),
;;; or if the previous formula had overflows, negative file position.

(defsyntax-call (this-source-location ctx)
  (stx-source ctx))

(defsyntax-call (this-source-file ctx)
  (stx-source-file ctx))

(defsyntax-call (this-source-position ctx)
  (stx-source-position ctx))

(defsyntax-call (this-source-directory ctx)
  (stx-source-directory ctx))

(defsyntax-call (this-source-path ctx relpath)
  (alet (dir (stx-source-directory ctx)) (apply subpath dir relpath)))

(defsyntax-call (this-source-content ctx relpath)
  (alet (dir (stx-source-directory ctx))
    (alet (path (apply subpath dir ctx relpath))
      (read-file-u8vector path))))
