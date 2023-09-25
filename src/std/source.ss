(export #t)

(import (for-syntax ./stxutil)
        ./sugar)

(begin-for-syntax

;;; Locations follow the Gambit convention: it's a vector of two values.
;;; The first value is either a string which is filename, or a list containing a symbol.
;;; The second value is a fixnum, either non-negative (+ (* 65536 column) line),
;;; or if the previous formula had overflows, negative file position.
(def (stx-source-file stx)
  (let (loc (stx-source stx)) (and loc (vector-ref loc 0))))

(def (stx-source-position stx)
  (let (loc (stx-source stx)) (and loc (vector-ref loc 1))))

(def (stx-source-directory stx)
  (let (file (stx-source-file stx)) (and file (path-directory file))))

(def (stx-source-path stx . relpath)
  (let (dir (stx-source-directory stx)) (and dir (apply subpath dir relpath))))

(def (stx-source-content stx . relpath)
  (let (path (apply stx-source-path stx relpath)) (and path (read-file-u8vector path)))))

(defsyntax-call (this-source-location x) (stx-source x))
(defsyntax-call (this-source-file x) (stx-source-file x))
(defsyntax-call (this-source-position x) (stx-source-position x))
(defsyntax-call (this-source-directory x) (stx-source-directory x))
(defsyntax-call (this-source-path x relpath) (stx-source-path x relpath))
(defsyntax-call (this-source-content x relpath) (stx-source-content x relpath))
