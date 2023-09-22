;;; -*- Gerbil -*-
;;; © fare, vyzo
(export make-evector evector?
        make-ebytes ebytes?
        make-ebits ebits?
        (rename: evector-set-fill-pointer! evector-fill-pointer-set!)
        evector-fill-pointer
        (rename: ebytes-set-fill-pointer! ebytes-fill-pointer-set!)
        ebytes-fill-pointer
        (rename: ebits-set-fill-pointer! ebits-fill-pointer-set!)
        ebits-fill-pointer)

;; Simple extensible vectors, byte-vectors, and bit-vectors
;; They double their size each time they need to grow,
;; or you can insist on controlling what size they grow to.

(import
  :gerbil/gambit
  :std/srfi/43
  :std/error
  :std/sugar
  ./bytes
  ./number)

(declare (not safe))

(defstruct evector (vector fill-pointer)
  transparent: #t unchecked: #t
  constructor: :init!)

(defstruct ebytes (bytes fill-pointer)
  transparent: #t unchecked: #t
  constructor: :init!)

(defstruct ebits (bits fill-pointer)
  transparent: #t unchecked: #t
  constructor: :init!)

(defcheck-argument-type evector)
(defcheck-argument-type ebytes)
(defcheck-argument-type ebits)

;; TODO these could be moved to a stdlib module, say :std/typecheck
(def (fxlength? o)
  (and (fixnum? o) (fx>= o 0)))

(defcheck-argument-type fixnum)
(defcheck-argument-type fxlength)
(defcheck-argument-type vector)
(defcheck-argument-type u8vector)
(defcheck-argument-type string)
(defcheck-argument-type list)
(defcheck-argument-type procedure)

(defrule (check-argument-range i len)
  (begin
    (check-argument-fxlength i)
    (unless (fx< i len)
      (raise-bad-argument (exception-context i) "fixnum in range" i len))))

(defmethod {:init! evector}
  (lambda (self len (iv #f))
    (check-argument-fxlength len)
    (set! (&evector-vector self) (make-vector len iv))
    (set! (&evector-fill-pointer self) len)))

(defmethod {:init! ebytes}
  (lambda (self len (iv 0))
    (check-argument-fxlength len)
    (set! (&ebytes-bytes self) (make-u8vector len iv))
    (set! (&ebytes-fill-pointer self) len)))

(defmethod {:init! ebits}
  (lambda (self len (iv 0))
    (check-argument-fxlength len)
    (set! (&ebits-bits self) (make-u8vector (n-bits->n-u8 len) iv))
    (set! (&ebits-fill-pointer self) len)))

(defrule (defchecked (checked arg ...) (unchecked xarg ...) check ... body)
  (begin
    (def (checked arg ...)
      check ...
      (unchecked xarg ...))
    (def (unchecked xarg ...)
      body)
    (export checked unchecked)))

(defchecked (vector->evector v) (&vector->evector v)
  (check-argument-vector v)
  (make-evector v (vector-length v)))

(defchecked (list->evector l) (&list->evector l)
  (check-argument-list l)
  (&vector->evector (list->vector l)))

(defchecked (evector-ref v i) (&evector-ref v i)
  (check-argument-evector v)
  (check-argument-range i (evector-fill-pointer v))
  (vector-ref (&evector-vector v) i))

(defchecked (evector-set! v i x) (&evector-set! v i x)
  (check-argument-evector v)
  (check-argument-range i (evector-fill-pointer v))
  (vector-set! (&evector-vector v) i x))

(def evector-ref-set!
  evector-set!)
(def &evector-ref-set!
  &evector-set!)
(export evector-ref-set! &evector-ref-set!)

(defchecked (extend-evector! e ll initial-value: (iv #f))
  (&extend-evector! e ll iv)
  (check-argument-evector e)
  (check-argument-fxlength ll)
  (let (v (&evector-vector e))
    (when (fx> ll (vector-length v))
      (set! (&evector-vector e) (vector-copy v 0 ll iv)))))

(defchecked (evector-set-fill-pointer! e fp initial-value: (iv #f) extend: (extend #f))
  (&evector-set-fill-pointer! e fp iv extend)
  (check-argument-evector e)
  (check-argument-fxlength fp)
  (let (l (vector-length (&evector-vector e)))
    (let/cc return
      (when (fx> fp l)
        (unless (or (eq? extend #t) (and (exact-integer? extend) (< 0 extend)))
          (return #f))
        (&extend-evector! e (if (and extend (fixnum? extend))
                              (fx+ extend fp)
                              (fxarithmetic-shift 1 (fxmax 4 (integer-length fp))))
                          iv))
      (set! (&evector-fill-pointer e) fp)
      fp)))

(defchecked (evector-push! e x initial-value: (iv #f) extend: (extend #f))
  (&evector-push! e x iv extend)
  (check-argument-evector e)
  (let (i (evector-fill-pointer e))
    (and (evector-set-fill-pointer! e (fx1+ i) initial-value: iv extend: extend)
         (begin
           (vector-set! (evector-vector e) i x)
           i))))

(defchecked (evector->vector e)
  (&evector->vector e)
  (check-argument-evector e)
  (vector-copy (&evector-vector e) 0 (&evector-fill-pointer e)))

(defchecked (evector->list e)
  (&evector->list e)
  (check-argument-evector e)
  (vector->list (&evector->vector e)))

;;; memoize the start of a recursively defined sequence
(def (memoize-recursive-sequence fun cache: (cache (list->evector '())))
  (check-argument-procedure fun)
  (lambda (n)
    (check-argument-fixnum n)
    (def m (evector-fill-pointer cache))
    (if (fx< n m)
      (vector-ref (evector-vector cache) n)
      (begin
        (evector-set-fill-pointer! cache (1+ n) initial-value: (void) extend: #t)
        (let loop ((i m))
          (def v (fun i))
          (vector-set! (evector-vector cache) i v)
          (if (fx= i n) v (loop (fx1+ i))))))))
(export memoize-recursive-sequence)

(defchecked (bytes->ebytes b)
  (&bytes->ebytes b)
  (check-argument-u8vector b)
  (make-ebytes b (u8vector-length b)))

(defchecked (string->ebytes s)
  (&string->ebytes s)
  (check-argument-string s)
  (&bytes->ebytes (string->bytes s)))

(defchecked (ebytes-ref e i)
  (&ebytes-ref e i)
  (check-argument-ebytes e)
  (check-argument-fixnum i)
  (u8vector-ref (&ebytes-bytes e) i))

(defchecked (ebytes-set! e i x)
  (&ebytes-set! e i x)
  (check-argument-ebytes e)
  (check-argument-range i (u8vector-length (&ebytes-bytes e)))
  (u8vector-set! (&ebytes-bytes e) i x))

(def ebytes-ref-set!
  ebytes-set!)
(def &ebytes-ref-set!
  &ebytes-set!)
(export ebytes-ref-set! &ebytes-ref-set!)

(defchecked (extend-ebytes! e ll initial-value: (iv 0))
  (&extend-ebytes! e ll iv)
  (check-argument-ebytes e)
  (check-argument-fxlength ll)
  (let (b (&ebytes-bytes e))
    (when (> ll (u8vector-length b))
      (let (bb (make-u8vector ll iv))
        (set! (ebytes-bytes e) bb)
        (subu8vector-move! b 0 (ebytes-fill-pointer e) bb 0)))))

(defchecked (ebytes-set-fill-pointer! e fp initial-value: (iv 0) extend: (extend #f))
  (&ebytes-set-fill-pointer! e fp iv extend)
  (check-argument-ebytes e)
  (check-argument-fxlength fp)
  (let (l (u8vector-length (&ebytes-bytes e)))
    (let/cc return
      (when (> fp l)
        (unless (or (eq? extend #t) (and (exact-integer? extend) (< 0 extend)))
          (return #f))
        (extend-ebytes! e (if (eq? extend #t)
                            (arithmetic-shift 1 (max 4 (integer-length fp)))
                            (+ extend fp))
                        initial-value: iv))
      (set! (ebytes-fill-pointer e) fp)
      fp)))

(defchecked (ebytes-push! e x initial-value: (iv 0) extend: (extend #f))
  (&ebytes-push! e x iv extend)
  (let (i (&ebytes-fill-pointer e))
    (def bb (cond
             ((u8vector? x) x)
             ((exact-integer? x) (make-u8vector 1 x))
             ((string? x) (string->bytes x))))
    (def ll (u8vector-length bb))
    (and (ebytes-set-fill-pointer! e (+ i ll) initial-value: iv extend: extend)
         (begin
           (subu8vector-move! bb 0 ll (ebytes-bytes e) i)
           i))))

(defchecked (ebytes->bytes e)
  (&ebytes->bytes e)
  (subu8vector (&ebytes-bytes e) 0 (&ebytes-fill-pointer e)))

;; Bytes as extensible bit vectors in little-endian way

(defchecked (bits->ebits b l)
  (&bits->ebits b l)
  (let* ((ll (n-bits->n-u8 l))
         (bb (make-u8vector ll 0)))
    (u8vector-uint-set! bb 0 b little ll)
    (make-ebits bb l)))

(defchecked (ebits-set? e i)
  (&ebits-set? e i)
  (check-argument-ebits)
  (check-argument-range i (u8vector-length (&ebits-bits e)))
  (bit-set? (fxand i 7) (u8vector-ref (&ebits-bits e) (fxarithmetic-shift i -3))))

(defchecked (ebits-ref e i)
  (&ebits-ref e i)
  (check-argument-ebits e)
  (check-argument-range i (u8vector-length (&ebits-bits e)))
  (if (&ebits-set? e i) 1 0))

(defchecked (ebits-set! e i x)
  (&ebits-set! e i x)
  (check-argument-ebits e)
  (check-argument-range i (u8vector-length (&ebits-bits e)))
  (let* ((ii (fxarithmetic-shift i -3))
         (bit (fxarithmetic-shift 1 (fxand i 7)))
         (b (&ebits-bits e))
         (y (u8vector-ref b ii)))
    (u8vector-set! b ii (if (fxzero? x) (fxand y (fxnot bit)) (fxior y bit)))))

(def ebits-ref-set!
  ebits-set!)
(def &ebits-ref-set!
  &ebits-set!)
(export ebits-ref-set! &ebits-ref-set!)

(defchecked (extend-ebits! e ll initial-value: (iv 0))
  (&extend-ebits! e ll iv)
  (check-argument-ebits e)
  (check-argument-fxlength ll)
  (let ((b (&ebits-bits e))
         (bl (n-bits->n-u8 ll)))
    (when (> bl (u8vector-length b))
      (let (bb (make-u8vector bl iv))
        (set! (ebits-bits e) bb)
        (subu8vector-move! b 0 (n-bits->n-u8 (&ebits-fill-pointer e)) bb 0)))))

(defchecked (ebits-set-fill-pointer! e fp initial-value: (iv 0) extend: (extend #f))
  (&ebits-set-fill-pointer! e fp iv extend)
  (check-argument-ebits e)
  (check-argument-fxlength fp)
  (let ((l (u8vector-length (&ebits-bits e)))
        (bl (n-bits->n-u8 fp)))
  (let/cc return
    (when (fx> bl l)
      (unless (or (eq? extend #t) (and (exact-integer? extend) (fx< 0 extend)))
        (return #f))
      (&extend-ebits! e (if (eq? extend #t)
                         (fxarithmetic-shift 1 (fxmax 6 (integer-length fp)))
                         (fx+ extend fp))
                      iv))
    (set! (&ebits-fill-pointer e) fp)
    fp)))

(defchecked (ebits-push! e x initial-value: (iv 0) extend: (extend #f))
  (&ebits-push! e x iv extend)
  (check-argument-ebits e)
  (let (i (&ebits-fill-pointer e))
    (and (&ebits-set-fill-pointer! e (1+ i) iv extend)
         (begin
           (&ebits-set! e i x)
           i))))

(defchecked (ebits->bits e)
  (&ebits->bits e)
  (check-argument-ebits e)
  (let (l (&ebits-fill-pointer e))
    (values (clear-bit-field 8 l (u8vector-uint-ref (&ebits-bits e) 0 little (n-bits->n-u8 l))) l)))
