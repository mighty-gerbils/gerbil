(export #t (for-syntax #t))

(import (for-syntax :std/string/path
                    :std/misc/ports))

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

(defsyntax-case this-source-location ()
  ((t) #'(t t))
  ((_ ctx) (with-syntax ((location (stx-source #'ctx))) #'(quote location))))

(defsyntax-case this-source-file ()
  ((t) #'(t t))
  ((_ ctx) (with-syntax ((file (stx-source-file #'ctx))) #'(quote file))))

(defsyntax-case this-source-position ()
  ((t) #'(t t))
  ((_ ctx) (with-syntax ((position (stx-source-position #'ctx))) #'(quote position))))

(defsyntax-case this-source-directory ()
  ((t) #'(t t))
  ((_ ctx) (with-syntax ((directory (stx-source-directory #'ctx))) #'(quote directory))))

(defsyntax-case this-source-path ()
  ((_ ctx relpath ...) (identifier? #'ctx)
   (with-syntax ((path (apply stx-source-path #'ctx (syntax->datum #'(relpath ...))))) #'(quote path)))
  ((ctx relpath ...)
   #'(this-source-path ctx relpath ...)))

(defsyntax-case this-source-content ()
  ((_ ctx relpath ...) (identifier? #'ctx)
   (with-syntax ((content (apply stx-source-content #'ctx (syntax->datum #'(relpath ...))))) #'(quote content)))
  ((ctx relpath ...)
   #'(this-source-content ctx relpath ...)))
