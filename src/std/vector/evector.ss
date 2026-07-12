;;; -*- gerbil -*-
;;; © fare, vyzo
(export make-evector evector? evector-fill-pointer
        vector->evector list->evector evector->vector evector->list memoize-recursive-sequence
        evector-ref evector-set! evector-ref-set! evector-extend! evector-push!
        (rename: evector-set-fill-pointer! evector-fill-pointer-set!)

        make-eu8vector eu8vector? eu8vector-fill-pointer
        u8vector->eu8vector string->eu8vector eu8vector->u8vector
        eu8vector-ref eu8vector-set! eu8vector-ref-set! eu8vector-extend! eu8vector-push!
        (rename: eu8vector-set-fill-pointer! eu8vector-fill-pointer-set!)

        make-ebits ebits? ebits-fill-pointer
        bits->ebits ebits->bits
        ebits-set? ebits-ref ebits-set! ebits-ref-set! ebits-extend! ebits-push!
        (rename: ebits-set-fill-pointer! ebits-fill-pointer-set!))

;; simple extensible vectors, byte-vectors, and bit-vectors
;; they double their size each time they need to grow,
;; or you can insist on controlling what size they grow to.

(import
  :std/error
  :std/vector/u8vector
  :std/number/misc)

(declare (not safe))

(defstruct evector ((vector : :vector)
                    (fill-pointer : :fixnum))
  transparent: #t
  constructor: :init!)

(defstruct eu8vector ((u8vector : :u8vector)
                      (fill-pointer : :fixnum))
  transparent: #t
  constructor: :init!)

(defstruct ebits ((bits : :u8vector)
                  (fill-pointer : :fixnum))
  transparent: #t
  constructor: :init!)

(defmethod {:init! evector}
  (lambda (self (vector : :vector) (fp :~ nonnegative-fixnum? :- :fixnum))
    (struct-instance-init! self vector fp)))

(defmethod {:init! eu8vector}
  (lambda (self (bytes : :u8vector) (fp :~ nonnegative-fixnum? :- :fixnum))
    (struct-instance-init! self bytes fp)))

(defmethod {:init! ebits}
  (lambda (self (bytes : :u8vector) (fp :~ nonnegative-fixnum? :- :fixnum))
    (struct-instance-init! self bytes fp)))

(def (vector->evector (v : :vector)) => evector
  (make-evector v (vector-length v)))

(def (list->evector (l : :list)) => evector
  (__vector->evector (list->vector l)))

(def (evector-ref (v : evector)
                  (i :~ (in-range? 0 (##vector-length v.vector)) :- :fixnum))
  (##vector-ref v.vector i))

(def (evector-set! (v : evector)
                   (i :~ (in-range? 0 (##vector-length v.vector)) :- :fixnum)
                   x)
  (##vector-set! v.vector i x)
  (void))

(def evector-ref-set! evector-set!)

(def (evector-extend! (e : evector)
                      (ll :~ nonnegative-fixnum? :- :fixnum)
                      (iv #f))
  (let (v e.vector)
    (when (fx> ll (vector-length v))
      (let (vv (make-vector ll iv))
        (set! e.vector vv)
        (vector-copy! vv 0 v 0 (##vector-length v))
        (void)))))

(def (evector-set-fill-pointer! (e : evector)
                                (fp :~ nonnegative-fixnum? :- :fixnum)
                                (iv #f)
                                (extend #t)) => :fixnum
  (let (l (vector-length e.vector))
    (let/cc return
      (when (fx> fp l)
        (unless (or (eq? extend #t) (and (fixnum? extend) (fx< 0 extend)))
          (return #f))
        (__evector-extend! e (if (eq? extend #t)
                               (fxarithmetic-shift 1 (fxmax 4 (integer-length fp)))
                               (fx+ extend fp))
                           iv))
      (set! e.fill-pointer fp)
      fp)))

(def (evector-push! (e : evector)
                    x
                    (iv #f)
                    (extend #t))
  => :fixnum
  (let (i e.fill-pointer)
    (and (__evector-set-fill-pointer! e (fx1+ i) iv extend)
         (begin
           (##vector-set! e.vector i x)
           i))))

(def (evector->vector (e : evector)) => :vector
  (vector-copy e.vector 0 e.fill-pointer))

(def (evector->list (e : evector)) => :list
  (vector->list e.vector))

;;; memoize the start of a recursively defined sequence
(def (memoize-recursive-sequence (fun : :procedure)
                                 init: (init : :list := [])
                                 cache: (cache : evector := (list->evector init)))
  (lambda ((n :~ nonnegative-fixnum? :- :fixnum))
    (def m cache.fill-pointer)
    (if (fx< n m)
      (##vector-ref cache.vector n)
      (begin
        (__evector-set-fill-pointer! cache (fx1+ n) (void) #t)
        (let loop ((i m))
          (def v (fun i))
          (##vector-set! cache.vector i v)
          (if (fx= i n) v (loop (fx1+ i))))))))

(def (u8vector->eu8vector (b : :u8vector)) => eu8vector
  (make-eu8vector b (u8vector-length b)))

(def (string->eu8vector (s : :string)) => eu8vector
  (__u8vector->eu8vector (string->utf8 s)))

(def (eu8vector-ref (e : eu8vector)
                    (i :~ (in-range? 0 (##u8vector-length e.u8vector)) :- :fixnum))
  (##u8vector-ref e.u8vector i))

(def (eu8vector-set! (e : eu8vector)
                     (i :~ (in-range? 0 (##u8vector-length e.u8vector)) :- :fixnum)
                     (x :~ uint8? :- :fixnum))
  (##u8vector-set! e.u8vector i x)
  (void))

(def eu8vector-ref-set! eu8vector-set!)

(def (eu8vector-extend! (e : eu8vector)
                        (ll :~ nonnegative-fixnum? :- :fixnum)
                        (iv :~ uint8? : :fixnum := 0))
  (let (b e.u8vector)
    (when (fx> ll (u8vector-length b))
      (let (bb (make-u8vector ll iv))
        (set! e.u8vector bb)
        (subu8vector-move! b 0 e.fill-pointer bb 0)
        (void)))))

(def (eu8vector-set-fill-pointer! (e : eu8vector)
                                  (fp :~ nonnegative-fixnum? :- :fixnum)
                                  (iv :~ uint8? :- :fixnum := 0)
                                  (extend #t))
  (let (l (u8vector-length e.u8vector))
    (let/cc return
      (when (> fp l)
        (unless (or (eq? extend #t) (and (fixnum? extend) (fx< 0 extend)))
          (return #f))
        (__eu8vector-extend! e (if (eq? extend #t)
                                 (fxarithmetic-shift 1 (fxmax 4 (integer-length fp)))
                                 (fx+ extend fp))
                             iv))
      (set! e.fill-pointer fp)
      fp)))

(def (eu8vector-push! (e : eu8vector)
                      x
                      (iv :~ uint8? :- :fixnum := 0)
                      (extend #t))
  (let (i e.fill-pointer)
    (def bb (cond
             ((u8vector? x) x)
             ((uint8? x) (make-u8vector 1 x))
             ((string? x) (string->utf8 x))))
    (def ll (u8vector-length bb))
    (and (eu8vector-set-fill-pointer! e (+ i ll) iv extend)
         (begin
           (subu8vector-move! bb 0 ll e.u8vector i)
           i))))

(def (eu8vector->u8vector (e : eu8vector)) => :u8vector
  (subu8vector e.u8vector 0 e.fill-pointer))

(def (eu8vector->string (e : eu8vector)) => :string
  (utf8->string (__eu8vector->u8vector e)))

;; u8vector as extensible bit vectors in little-endian way

(def (bits->ebits (b : :integer) (l :~ nonnegative-fixnum? :- :fixnum))
  (let* ((ll (n-bits->n-u8 l))
         (bb (make-u8vector ll 0)))
    (u8vector-uint-set! bb 0 b little ll)
    (make-ebits bb l)))

(def (ebits-set? (e : ebits)
                 (i :~ (in-range? 0 (fxarithmetic-shift (##u8vector-length e.bits) 3)) :- :fixnum))
  => :boolean
  (bit-set? (fxand i 7) (##u8vector-ref e.bits (fxarithmetic-shift i -3))))

(def (ebits-ref (e : ebits)
                (i :~ (in-range? 0 (fxarithmetic-shift (##u8vector-length e.bits) 3)) :- :fixnum))
  => :fixnum
  (if (__ebits-set? e i) 1 0))

(def (ebits-set! (e : ebits)
                 (i :~ (in-range? 0 (fxarithmetic-shift (##u8vector-length e.bits) 3)) :- :fixnum)
                 (x :~ uint1? :- :fixnum))
  (let* ((ii (fxarithmetic-shift i -3))
         (bit (fxarithmetic-shift 1 (fxand i 7)))
         (b e.bits)
         (y (##u8vector-ref b ii)))
    (##u8vector-set! b ii (if (fxzero? x) (fxand y (fxnot bit)) (fxior y bit)))
    (void)))

(def ebits-ref-set! ebits-set!)

(def (ebits-extend! (e : ebits)
                    (ll :~ nonnegative-fixnum?)
                    (iv :~ uint1? :- :fixnum := 0))
  (let ((b e.bits)
        (bl (n-bits->n-u8 ll)))
    (when (fx> bl (u8vector-length b))
      (let (bb (make-u8vector bl (if (fxzero? iv) 0 255)))
        (set! (ebits-bits e) bb)
        (subu8vector-move! b 0 (n-bits->n-u8 e.fill-pointer) bb 0)
        (void)))))

(def (ebits-set-fill-pointer! (e : ebits)
                              (fp :~ nonnegative-fixnum?)
                              (iv :~ uint1? :- :fixnum := 0)
                              (extend #t)) => :fixnum
  (let ((l (u8vector-length e.bits))
        (bl (n-bits->n-u8 fp)))
    (let/cc return
      (when (fx> bl l)
        (unless (or (eq? extend #t) (and (fixnum? extend) (fx< 0 extend)))
          (return #f))
        (__ebits-extend! e (if (eq? extend #t)
                             (fxarithmetic-shift 1 (fxmax 6 (integer-length fp)))
                             (fx+ extend fp))
                         iv))
      (set! e.fill-pointer fp)
      fp)))

(def (ebits-push! (e : ebits)
                  (x :~ uint1? :- :fixnum)
                  (iv :~ uint1? :- :fixnum := 0)
                  (extend #t)) => :fixnum
  (let (i e.fill-pointer)
    (and (__ebits-set-fill-pointer! e (fx1+ i) iv extend)
         (begin
           (__ebits-set! e i x)
           i))))

(def (ebits->bits (e : ebits)) => :integer
  (let (l e.fill-pointer)
    (clear-bit-field (modulo (- l) 8) l
                     (u8vector-uint-ref e.bits 0 little (n-bits->n-u8 l)))))
