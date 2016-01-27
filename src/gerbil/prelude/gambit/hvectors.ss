;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gambit specific runtime symbols: homogeneous numeric vectors
package: gerbil/gambit

(export #t)
(extern namespace: #f
  s8vector?
  make-s8vector
  s8vector
  s8vector-length
  s8vector-ref
  s8vector-set!
  s8vector->list
  list->s8vector
  s8vector-fill!
  subs8vector-fill!
  append-s8vectors
  s8vector-copy
  s8vector-append
  subs8vector
  subs8vector-move!
  s8vector-shrink!
  u8vector?
  make-u8vector
  u8vector
  u8vector-length
  u8vector-ref
  u8vector-set!
  u8vector->list
  list->u8vector
  u8vector-fill!
  subu8vector-fill!
  append-u8vectors
  u8vector-copy
  u8vector-append
  subu8vector
  subu8vector-move!
  u8vector-shrink!
  s16vector?
  make-s16vector
  s16vector
  s16vector-length
  s16vector-ref
  s16vector-set!
  s16vector->list
  list->s16vector
  s16vector-fill!
  subs16vector-fill!
  append-s16vectors
  s16vector-copy
  s16vector-append
  subs16vector
  subs16vector-move!
  s16vector-shrink!
  u16vector?
  make-u16vector
  u16vector
  u16vector-length
  u16vector-ref
  u16vector-set!
  u16vector->list
  list->u16vector
  u16vector-fill!
  subu16vector-fill!
  append-u16vectors
  u16vector-copy
  u16vector-append
  subu16vector
  subu16vector-move!
  u16vector-shrink!
  s32vector?
  make-s32vector
  s32vector
  s32vector-length
  s32vector-ref
  s32vector-set!
  s32vector->list
  list->s32vector
  s32vector-fill!
  subs32vector-fill!
  append-s32vectors
  s32vector-copy
  s32vector-append
  subs32vector
  subs32vector-move!
  s32vector-shrink!
  u32vector?
  make-u32vector
  u32vector
  u32vector-length
  u32vector-ref
  u32vector-set!
  u32vector->list
  list->u32vector
  u32vector-fill!
  subu32vector-fill!
  append-u32vectors
  u32vector-copy
  u32vector-append
  subu32vector
  subu32vector-move!
  u32vector-shrink!
  s64vector?
  make-s64vector
  s64vector
  s64vector-length
  s64vector-ref
  s64vector-set!
  s64vector->list
  list->s64vector
  s64vector-fill!
  subs64vector-fill!
  append-s64vectors
  s64vector-copy
  s64vector-append
  subs64vector
  subs64vector-move!
  s64vector-shrink!
  u64vector?
  make-u64vector
  u64vector
  u64vector-length
  u64vector-ref
  u64vector-set!
  u64vector->list
  list->u64vector
  u64vector-fill!
  subu64vector-fill!
  append-u64vectors
  u64vector-copy
  u64vector-append
  subu64vector
  subu64vector-move!
  u64vector-shrink!
  f32vector?
  make-f32vector
  f32vector
  f32vector-length
  f32vector-ref
  f32vector-set!
  f32vector->list
  list->f32vector
  f32vector-fill!
  subf32vector-fill!
  append-f32vectors
  f32vector-copy
  f32vector-append
  subf32vector
  subf32vector-move!
  f32vector-shrink!
  f64vector?
  make-f64vector
  f64vector
  f64vector-length
  f64vector-ref
  f64vector-set!
  f64vector->list
  list->f64vector
  f64vector-fill!
  subf64vector-fill!
  append-f64vectors
  f64vector-copy
  f64vector-append
  subf64vector
  subf64vector-move!
  f64vector-shrink!
  object->u8vector
  u8vector->object
  )

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
(define-alias append-bytes append-u8vectors)
(define-alias bytes-copy u8vector-copy)
(define-alias bytes-append u8vector-append)
(define-alias subbytes subu8vector)
(define-alias bytes-move! subu8vector-move!)
(define-alias bytes-shrink! u8vector-shrink!)
(define-alias object->bytes object->u8vector)
(define-alias bytes->object u8vector->object)

;; gxrt
(extern namespace: #f
  string->bytes substring->bytes bytes->string)

(defsyntax (@bytes stx)
  (syntax-case stx ()
    ((_ str) 
     (stx-string? #'str)
     (with-syntax ((e (string->bytes (stx-e #'str))))
       #'(quote e)))))
