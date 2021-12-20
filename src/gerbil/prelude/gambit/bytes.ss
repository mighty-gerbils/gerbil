;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; u8vectors -- bytes alises et al
package: gerbil/gambit

(import :gerbil/gambit/ports)
(export #t)

;; bytes
(define-alias bytes? u8vector?)
(define-alias make-bytes make-u8vector)
(define-alias bytes u8vector)
(define-alias bytes-length u8vector-length)
(define-alias bytes-ref u8vector-ref)
(define-alias bytes-set! u8vector-set!)
(define-alias bytes->list u8vector->list)
(define-alias list->bytes list->u8vector)
(define-alias bytes-fill! u8vector-fill!)
(define-alias subbytes-fill! subu8vector-fill!)
(define-alias bytes-concatenate u8vector-concatenate)
(define-alias bytes-copy u8vector-copy)
(define-alias bytes-append u8vector-append)
(define-alias subbytes subu8vector)
(define-alias bytes-move! subu8vector-move!)
(define-alias bytes-shrink! u8vector-shrink!)
(define-alias object->bytes object->u8vector)
(define-alias bytes->object u8vector->object)

(define-alias open-input-bytes open-input-u8vector)
(define-alias open-output-bytes open-output-u8vector)
(define-alias get-output-bytes get-output-u8vector)
(define-alias call-with-input-bytes call-with-input-u8vector)
(define-alias with-input-from-bytes with-input-from-u8vector)
(define-alias call-with-output-bytes call-with-output-u8vector)
(define-alias with-output-to-bytes with-output-to-u8vector)
(define-alias read-byte read-u8)
(define-alias write-byte write-u8)
(define-alias read-subbytes read-subu8vector)
(define-alias write-subbytes write-subu8vector)
(define-alias write-bytes write-u8vector)
(define-alias read-bytes read-u8vector)

(defsyntax (@bytes stx)
  (syntax-case stx ()
    ((_ str)
     (stx-string? #'str)
     (with-syntax ((e (string->bytes (stx-e #'str))))
       #'(quote e)))))
