;;; -*- Gerbil -*-
;;; Simple number manipulation utilities
;;; © fare

(export xmin xmin/list xmin! xmin/map
        xmax xmax/list xmax! xmax/map
        pre-increment! increment! post-increment!
        pre-decrement! decrement! post-decrement!
        make-counter
        integer-part fractional-part
        floor-align ceiling-align
        real->sign
        uint? sint? positive-integer?
        n-bits->n-u8 uint-length-in-u8 sint-length-in-u8
        check-argument-uint check-argument-sint
        check-argument-exact-integer
        check-argument-positive-integer
        uint-below?
        uint-of-length?
        sint-of-length?
        normalize-uint
        normalize-sint
        for-each-integer
        half least-integer
        divides? bezout invert-mod div-mod mult-mod mult-expt-mod expt-mod
        integer-log
        factor-out-powers-of-2 factor-out-powers)

(import
  (only-in :gerbil/gambit first-set-bit bit-set? replace-bit-field extract-bit-field)
  (only-in :std/srfi/1 reduce)
  (only-in :std/srfi/141 floor/)
  (only-in :std/error check-argument)
  (only-in :std/sugar defrule defcheck-argument-type))

;;; xmin and xmax on the (affine) extended real number line.
;;; An element is either a real number or a positive infinite +inf.0 (+∞)
;;; or negative infinity -inf.0 (-∞)
;;; Unlike min and max, these functions short-circuit, which is only a minor optimization,
;;; except for xmin/map (resp. xmax/map), that will avoid any side-effects
;;; (including error or continuation escape) from evaluating anything
;;; after the bottom value -inf.0 (resp. top value +inf.0) was detected.

(def xmin
  (case-lambda
    ((x y) (if (<= x y) x y))
    ((x) x)
    (() +inf.0)
    (l (xmin/list l))))
(def (xmin/list l)
  (reduce xmin +inf.0 l))
(defrule (xmin! x y ...)
  (set! x (xmin x y ...)))
(def (xmin/map f l (base +inf.0))
  (let/cc return
    (when (eqv? base -inf.0) (return -inf.0))
    (for-each (lambda (i)
                (def x (f i))
                (when (eqv? x -inf.0) (return -inf.0))
                (xmin! base x))
              l)
    base))

(def xmax
  (case-lambda
    ((x y) (if (>= x y) x y))
    ((x) x)
    (() -inf.0)
    (l (xmax/list l))))
(def (xmax/list l)
  (reduce xmax -inf.0 l))
(defrule (xmax! x y ...)
  (set! x (xmax x y ...)))
(def (xmax/map f l (base -inf.0))
  (let/cc return
    (when (eqv? base +inf.0) (return +inf.0))
    (for-each (lambda (i)
                (def x (f i))
                (when (eqv? x +inf.0) (return +inf.0))
                (xmax! base x))
              l)
    base))


;;; Classic (pre-||post-)(in|de)crement! macros

(defrules increment! ()
  ((_ place) (increment! place 1))
  ((_ place increment ...) (set! place (+ place increment ...))))
(defrule (pre-increment! place increment ...)
  (begin (increment! place increment ...) place))
(defrule (post-increment! place increment ...)
  (begin0 place (increment! place increment ...)))

(defrules decrement! ()
  ((_ place) (decrement! place 1))
  ((_ place decrement ...) (set! place (- place decrement ...))))
(defrule (pre-decrement! place decrement ...)
  (begin (decrement! place decrement ...) place))
(defrule (post-decrement! place decrement ...)
  (begin0 place (decrement! place decrement ...)))

;;; Make a new counter with a start value
(def (make-counter (n 0))
  (case-lambda
    (() (post-increment! n))
    ((x) (post-increment! n x))
    (l (post-increment! n (apply + l)))))

(def (integer-part real)
  (cond
   ((exact-integer? real) real)
   ((real? real) (inexact->exact (truncate real)))
   (else (error "Bad real" real))))

(def (fractional-part real)
  (cond
   ((exact-integer? real) 0)
   ((real? real) (- real (integer-part real)))
   (else (error "Bad real" real))))

(def (floor-align n alignment)
  (- n (modulo n alignment)))

(def (ceiling-align n alignment)
  (let ((mod (modulo n alignment)))
    (if (zero? mod) n (- (+ n alignment) mod))))

(def (real->sign x)
  (cond ((< 0 x) +1) ((> 0 x) -1) (else 0)))

(def (uint? n)
  (and (exact-integer? n) (not (negative? n))))

(def (sint? n)
  (exact-integer? n))

(def (positive-integer? n)
  (and (exact-integer? n) (positive? n)))

(def (n-bits->n-u8 n-bits)
  (arithmetic-shift (+ n-bits 7) -3))

(def (uint-length-in-u8 n)
  (n-bits->n-u8 (integer-length n)))

(def (sint-length-in-u8 n)
  (if (zero? n) 0 (n-bits->n-u8 (1+ (integer-length n)))))

(defcheck-argument-type uint)
(defcheck-argument-type sint)
(defcheck-argument-type exact-integer)
(defcheck-argument-type positive-integer)

(def (uint-below? n end)
  (and (uint? n) (< n end)))

(def (uint-of-length? x length-in-bits)
  (and (uint? x) (<= (integer-length x) length-in-bits)))

(def (sint-of-length? x length-in-bits)
  (and (exact-integer? x) (< (integer-length x) length-in-bits)))

;; Normalize an integer into an unsigned integer of given length in bits
(def (normalize-uint x length-in-bits)
  (extract-bit-field length-in-bits 0 x))

;; Normalize an integer into a signed integer of given length in bits
(def (normalize-sint x length-in-bits)
  (cond
   ((< (integer-length x) length-in-bits) x)
   ((bit-set? (1- length-in-bits) x) (replace-bit-field length-in-bits 0 x -1))
   (else (extract-bit-field length-in-bits 0 x))))

;; Iterate a function with an integer argument ranging from one value
;; increasing by one until it reaches another value (excluded)
;; : (Integer ->) -> Integer Integer
(def (for-each-integer fun from below)
  (let loop ((i from))
    (when (< i below)
      (fun i)
      (loop (+ i 1)))))

(def (half_ n)
  (arithmetic-shift n -1))

(defrules half ()
  ((_ n) (arithmetic-shift n -1))
  ((_ . args) (error "half takes only one argument"))
  (_ half_))

;;; Binary search in interval [start, end) to find the least integer for which pred? holds,
;;; assuming pred? is "increasing", i.e. if true for some integer, true for all larger integers.
;;; If no integer in the interval satisfies pred?, return end. If all do, return start.
(def (least-integer pred? start end)
  (if (<= end start) end ; empty interval, return end.
      (let (mid (half (+ end start))) ;; NB: happily we have bignums, so no overflow
        (if (pred? mid)
          (least-integer pred? start mid)
          (least-integer pred? (1+ mid) end)))))

;; NOTE: the following functions are NOT cryptographic-quality constant-time!
;; Do NOT use them for cryptography in production.
;; TODO: offer an alternate module that offers cryptographic-ready arithmetic primitives via FFI

;; Does `f` divide `n`?
(def (divides? f n)
  (check-argument-uint f n)
  (if (zero? f)
      (zero? n)
      (zero? (modulo n f))))

;; Given integers a and b, return values x y d such that
;; d is (non-negative) gcd of a and b, and a*x+b+y=d
(def (bezout a b)
  (check-argument-exact-integer a b)
  (def (eea a b) ;; Extended Euclid's Algorithm, where b is non-negative
    (if (zero? b)
      (values 1 0 a)
      (let*-values (((q r) (floor/ a b)) ;; a=q*b+r ;; r=a-q*b ;; 0<=r<b
                    ((x y d) (eea b r))) ;; d=b*x+r*y=b*x+(a-q*b)*y=b*(x-q*y)+a*y
         (values y (- x (* q y)) d))))
  (if (negative? b)
    (let-values (((x y d) (eea a (- b))))
      (values x (- y) d))
    (eea a b)))

(def (mult-mod a b n) ;; TODO: optimize that
  (modulo (* a b) n))

(def (invert-mod a n) ;; 1/a modulo n
  (let-values (((x _ d) (bezout a n))) ;; a*x+n*y=d
    (unless (= d 1) (error "integer not invertible modulo" a n))
    x))

(def (div-mod a b n) ;; a/b modulo n/(gcd b n)
  (let-values (((x _ d) (bezout b n))) ;; b*x+n*y=d
    (when (= d 0) (error "divisor is zero modulo" b n))
    (let-values (((q r) (floor/ a d))) ;; a = d*q+r = b*x*q + q*y*n +r ;; 0<=r<d
      (unless (= r 0) (error "integers do not divide modulo" a b n))
      (* x q))))

;; same as (modulo (* a (expt x e)) n)
(def (mult-expt-mod a x e n)
  (check-argument-exact-integer a x e n)
  (if (zero? n) (* a (expt x e))
      (letrec (f (lambda (a x e)
                   (if (zero? e)
                     a
                     (let (he (half e))
                       (f (if (odd? e) (mult-mod a x n) a)
                          (if (positive? e) (mult-mod x x n) 0)
                          he)))))
        (if (negative? e)
          (f a (invert-mod x n) (- e))
          (f a x e)))))

;; same as (modulo (expt x e) n)
(def (expt-mod x e n)
  (mult-expt-mod 1 x e n))

(def (integer-log a b) ;; largest natural integer n such that b**n <= a
  (check-argument-positive-integer a)
  (check-argument (and (exact-integer? b) (< 1 b)) "valid base" b)
  (def (downward q n p bs)
    ;; q is a divided n times by b already, b**p is too large to divide q,
    ;; and the earlier powers of b are in bs
    (def pp (half p))
    (match bs
      ([] n)
      ([bp . br] (let*-values (((qq) (quotient q bp))
                               ((nq nn) (if (zero? qq) (values q n) (values qq (+ n pp)))))
                   (downward nq nn pp br)))))
  (def (upward a bp p bps) ;; find a power of 2, p, such that b to the power 2*p is greater than a
    (define-values (q r) (floor/ a bp))
    (if (zero? q)
      (downward a (1- p) p bps)
      (upward q (* bp bp) (+ p p) (cons bp bps))))
  (upward a b 1 []))

;; return (values q p) such a=q*2**p and q is odd
;; : Integer* -> Integer* Nat
(def (factor-out-powers-of-2 n)
  (check-argument (and (exact-integer? n) (not (zero? n))) "non-zero integer" n)
  (let (p (first-set-bit n))
    (values (arithmetic-shift n (- p)) p)))

;; return (values q p) such a=q*b**p and b does not divide q
;; : Integer* Nat -> Integer* Nat
(def (factor-out-powers a b)
  (check-argument (and (exact-integer? a) (not (zero? a))) "non-zero integer" a)
  (check-argument-positive-integer b)
  (def (downward a bp p n bps) ;; we know (what remains of) a is not divisible by bp*bp
    (define-values (q r) (floor/ a bp))
    (define-values (aa nn) (if (zero? r) (values q (+ n p)) (values a n)))
    (match bps
      ([] (values aa nn))
      ([bbp . bbps] (downward aa bbp (half p) nn bbps))))
  (def (upward a bp p n bps) ;; find a power of 2, p, such that b to the power p doesn't divide a
    (define-values (q r) (floor/ a bp))
    (if (zero? r)
      (upward q (* bp bp) (+ p p) (+ n p) (cons bp bps))
      (downward a bp p n bps)))
  (upward a b 1 0 []))
