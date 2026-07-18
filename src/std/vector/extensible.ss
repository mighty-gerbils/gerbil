;;; -*- gerbil -*-
;;; © fare, vyzo
(export make-ExtensibleVector ExtensibleVector? ExtensibleVector-fill-pointer
        vector->ExtensibleVector ExtensibleVector->vector
        list->ExtensibleVector ExtensibleVector->list
        memoize-recursive-sequence
        ExtensibleVector-ref ExtensibleVector-set! ExtensibleVector-ref-set!
        ExtensibleVector-extend! ExtensibleVector-push!
        (rename: ExtensibleVector-set-fill-pointer! ExtensibleVector-fill-pointer-set!)

        make-ExtensibleU8Vector ExtensibleU8Vector? ExtensibleU8Vector-fill-pointer
        u8vector->ExtensibleU8Vector ExtensibleU8Vector->u8vector
        string->ExtensibleU8Vector
        ExtensibleU8Vector-ref ExtensibleU8Vector-set! ExtensibleU8Vector-ref-set!
        ExtensibleU8Vector-extend! ExtensibleU8Vector-push!
        (rename: ExtensibleU8Vector-set-fill-pointer! ExtensibleU8Vector-fill-pointer-set!)

        make-ExtensibleBitVector ExtensibleBitVector? ExtensibleBitVector-fill-pointer
        bits->ExtensibleBitVector ExtensibleBitVector->bits
        ExtensibleBitVector-set? ExtensibleBitVector-ref ExtensibleBitVector-set!
        ExtensibleBitVector-ref-set! ExtensibleBitVector-extend! ExtensibleBitVector-push!
        (rename: ExtensibleBitVector-set-fill-pointer! ExtensibleBitVector-fill-pointer-set!))

;; simple extensible vectors, byte-vectors, and bit-vectors
;; they double their size each time they need to grow,
;; or you can insist on controlling what size they grow to.

(import
  :std/error
  :std/vector/u8vector
  :std/number/misc)

(declare (not safe))

(defstruct ExtensibleVector ((vector : :vector)
                             (fill-pointer : :fixnum))
  transparent: #t
  constructor: :init!)

(defstruct ExtensibleU8Vector ((u8vector : :u8vector)
                               (fill-pointer : :fixnum))
  transparent: #t
  constructor: :init!)

(defstruct ExtensibleBitVector ((bits : :u8vector)
                                (fill-pointer : :fixnum))
  transparent: #t
  constructor: :init!)

(defmethod {:init! ExtensibleVector}
  (lambda (self (vector : :vector) (fp :~ nonnegative-fixnum? :- :fixnum))
    (struct-instance-init! self vector fp)))

(defmethod {:init! ExtensibleU8Vector}
  (lambda (self (bytes : :u8vector) (fp :~ nonnegative-fixnum? :- :fixnum))
    (struct-instance-init! self bytes fp)))

(defmethod {:init! ExtensibleBitVector}
  (lambda (self (bytes : :u8vector) (fp :~ nonnegative-fixnum? :- :fixnum))
    (struct-instance-init! self bytes fp)))

(def (vector->ExtensibleVector (v : :vector)) => ExtensibleVector
  (make-ExtensibleVector v (vector-length v)))

(def (list->ExtensibleVector (l : :list)) => ExtensibleVector
  (__vector->ExtensibleVector (list->vector l)))

(def (ExtensibleVector-ref (v : ExtensibleVector)
                           (i :~ (in-range? 0 (##vector-length v.vector)) :- :fixnum))
  (##vector-ref v.vector i))

(def (ExtensibleVector-set! (v : ExtensibleVector)
                            (i :~ (in-range? 0 (##vector-length v.vector)) :- :fixnum)
                            x)
  (##vector-set! v.vector i x)
  (void))

(def ExtensibleVector-ref-set! ExtensibleVector-set!)

(def (ExtensibleVector-extend! (e : ExtensibleVector)
                               (ll :~ nonnegative-fixnum? :- :fixnum)
                               (iv #f))
  (let (v e.vector)
    (when (fx> ll (vector-length v))
      (let (vv (make-vector ll iv))
        (set! e.vector vv)
        (vector-copy! vv 0 v 0 (##vector-length v))
        (void)))))

(def (ExtensibleVector-set-fill-pointer! (e : ExtensibleVector)
                                         (fp :~ nonnegative-fixnum? :- :fixnum)
                                         (iv #f)
                                         (extend #t)) => :fixnum
  (let (l (vector-length e.vector))
    (let/cc return
      (when (fx> fp l)
        (unless (or (eq? extend #t) (and (fixnum? extend) (fx< 0 extend)))
          (return #f))
        (__ExtensibleVector-extend! e (if (eq? extend #t)
                               (fxarithmetic-shift 1 (fxmax 4 (integer-length fp)))
                               (fx+ extend fp))
                           iv))
      (set! e.fill-pointer fp)
      fp)))

(def (ExtensibleVector-push! (e : ExtensibleVector)
                             x
                             (iv #f)
                             (extend #t))
  => :fixnum
  (let (i e.fill-pointer)
    (and (__ExtensibleVector-set-fill-pointer! e (fx1+ i) iv extend)
         (begin
           (##vector-set! e.vector i x)
           i))))

(def (ExtensibleVector->vector (e : ExtensibleVector)) => :vector
  (vector-copy e.vector 0 e.fill-pointer))

(def (ExtensibleVector->list (e : ExtensibleVector)) => :list
  (vector->list e.vector))

;;; memoize the start of a recursively defined sequence
(def (memoize-recursive-sequence (fun : :procedure)
                                 init: (init : :list := [])
                                 cache: (cache : ExtensibleVector := (list->ExtensibleVector init)))
  (lambda ((n :~ nonnegative-fixnum? :- :fixnum))
    (def m cache.fill-pointer)
    (if (fx< n m)
      (##vector-ref cache.vector n)
      (begin
        (__ExtensibleVector-set-fill-pointer! cache (fx1+ n) (void) #t)
        (let loop ((i m))
          (def v (fun i))
          (##vector-set! cache.vector i v)
          (if (fx= i n) v (loop (fx1+ i))))))))

(def (u8vector->ExtensibleU8Vector (b : :u8vector)) => ExtensibleU8Vector
  (make-ExtensibleU8Vector b (u8vector-length b)))

(def (string->ExtensibleU8Vector (s : :string)) => ExtensibleU8Vector
  (__u8vector->ExtensibleU8Vector (string->utf8 s)))

(def (ExtensibleU8Vector-ref (e : ExtensibleU8Vector)
                             (i :~ (in-range? 0 (##u8vector-length e.u8vector)) :- :fixnum))
  (##u8vector-ref e.u8vector i))

(def (ExtensibleU8Vector-set! (e : ExtensibleU8Vector)
                              (i :~ (in-range? 0 (##u8vector-length e.u8vector)) :- :fixnum)
                              (x :~ uint8? :- :fixnum))
  (##u8vector-set! e.u8vector i x)
  (void))

(def ExtensibleU8Vector-ref-set! ExtensibleU8Vector-set!)

(def (ExtensibleU8Vector-extend! (e : ExtensibleU8Vector)
                                 (ll :~ nonnegative-fixnum? :- :fixnum)
                                 (iv :~ uint8? : :fixnum := 0))
  (let (b e.u8vector)
    (when (fx> ll (u8vector-length b))
      (let (bb (make-u8vector ll iv))
        (set! e.u8vector bb)
        (subu8vector-move! b 0 e.fill-pointer bb 0)
        (void)))))

(def (ExtensibleU8Vector-set-fill-pointer! (e : ExtensibleU8Vector)
                                           (fp :~ nonnegative-fixnum? :- :fixnum)
                                           (iv :~ uint8? :- :fixnum := 0)
                                           (extend #t))
  (let (l (u8vector-length e.u8vector))
    (let/cc return
      (when (> fp l)
        (unless (or (eq? extend #t) (and (fixnum? extend) (fx< 0 extend)))
          (return #f))
        (__ExtensibleU8Vector-extend! e (if (eq? extend #t)
                                 (fxarithmetic-shift 1 (fxmax 4 (integer-length fp)))
                                 (fx+ extend fp))
                             iv))
      (set! e.fill-pointer fp)
      fp)))

(def (ExtensibleU8Vector-push! (e : ExtensibleU8Vector)
                               x
                               (iv :~ uint8? :- :fixnum := 0)
                               (extend #t))
  (let (i e.fill-pointer)
    (def bb (cond
             ((u8vector? x) x)
             ((uint8? x) (make-u8vector 1 x))
             ((string? x) (string->utf8 x))))
    (def ll (u8vector-length bb))
    (and (ExtensibleU8Vector-set-fill-pointer! e (+ i ll) iv extend)
         (begin
           (subu8vector-move! bb 0 ll e.u8vector i)
           i))))

(def (ExtensibleU8Vector->u8vector (e : ExtensibleU8Vector)) => :u8vector
  (subu8vector e.u8vector 0 e.fill-pointer))

(def (ExtensibleU8Vector->string (e : ExtensibleU8Vector)) => :string
  (utf8->string (__ExtensibleU8Vector->u8vector e)))

;; u8vector as extensible bit vectors in little-endian way

(def (bits->ExtensibleBitVector (b : :integer) (l :~ nonnegative-fixnum? :- :fixnum))
  (let* ((ll (n-bits->n-u8 l))
         (bb (make-u8vector ll 0)))
    (u8vector-uint-set! bb 0 b little ll)
    (make-ExtensibleBitVector bb l)))

(def (ExtensibleBitVector-set? (e : ExtensibleBitVector)
                               (i :~ (in-range? 0 (fxarithmetic-shift (##u8vector-length e.bits) 3)) :- :fixnum))
  => :boolean
  (bit-set? (fxand i 7) (##u8vector-ref e.bits (fxarithmetic-shift i -3))))

(def (ExtensibleBitVector-ref (e : ExtensibleBitVector)
                              (i :~ (in-range? 0 (fxarithmetic-shift (##u8vector-length e.bits) 3)) :- :fixnum))
  => :fixnum
  (if (__ExtensibleBitVector-set? e i) 1 0))

(def (ExtensibleBitVector-set! (e : ExtensibleBitVector)
                               (i :~ (in-range? 0 (fxarithmetic-shift (##u8vector-length e.bits) 3)) :- :fixnum)
                               (x :~ uint1? :- :fixnum))
  (let* ((ii (fxarithmetic-shift i -3))
         (bit (fxarithmetic-shift 1 (fxand i 7)))
         (b e.bits)
         (y (##u8vector-ref b ii)))
    (##u8vector-set! b ii (if (fxzero? x) (fxand y (fxnot bit)) (fxior y bit)))
    (void)))

(def ExtensibleBitVector-ref-set! ExtensibleBitVector-set!)

(def (ExtensibleBitVector-extend! (e : ExtensibleBitVector)
                                  (ll :~ nonnegative-fixnum?)
                                  (iv :~ uint1? :- :fixnum := 0))
  (let ((b e.bits)
        (bl (n-bits->n-u8 ll)))
    (when (fx> bl (u8vector-length b))
      (let (bb (make-u8vector bl (if (fxzero? iv) 0 255)))
        (set! (ExtensibleBitVector-bits e) bb)
        (subu8vector-move! b 0 (n-bits->n-u8 e.fill-pointer) bb 0)
        (void)))))

(def (ExtensibleBitVector-set-fill-pointer! (e : ExtensibleBitVector)
                                            (fp :~ nonnegative-fixnum?)
                                            (iv :~ uint1? :- :fixnum := 0)
                                            (extend #t)) => :fixnum
  (let ((l (u8vector-length e.bits))
        (bl (n-bits->n-u8 fp)))
    (let/cc return
      (when (fx> bl l)
        (unless (or (eq? extend #t) (and (fixnum? extend) (fx< 0 extend)))
          (return #f))
        (__ExtensibleBitVector-extend! e (if (eq? extend #t)
                             (fxarithmetic-shift 1 (fxmax 6 (integer-length fp)))
                             (fx+ extend fp))
                         iv))
      (set! e.fill-pointer fp)
      fp)))

(def (ExtensibleBitVector-push! (e : ExtensibleBitVector)
                                (x :~ uint1? :- :fixnum)
                                (iv :~ uint1? :- :fixnum := 0)
                                (extend #t)) => :fixnum
  (let (i e.fill-pointer)
    (and (__ExtensibleBitVector-set-fill-pointer! e (fx1+ i) iv extend)
         (begin
           (__ExtensibleBitVector-set! e i x)
           i))))

(def (ExtensibleBitVector->bits (e : ExtensibleBitVector)) => :integer
  (let (l e.fill-pointer)
    (clear-bit-field (modulo (- l) 8) l
                     (u8vector-uint-ref e.bits 0 little (n-bits->n-u8 l)))))
