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
        uint1? uint8? uint16? uint32? uint64?
        sint8? sint16? sint32? sint64?
        n-bits->n-u8 uint-length-in-u8 sint-length-in-u8
        uint-below?
        uint-of-length?
        sint-of-length?
        normalize-uint
        normalize-sint
        for-each-integer
        half least-integer
        not-zero?
        divides? bezout invert-mod div-mod mult-mod mult-expt-mod expt-mod
        integer-log integer-digit-count
        power-of-2? factor-out-powers-of-2 factor-out-powers)

(import
  (only-in :std/list/list reduce))

;;; xmin and xmax on the (affine) extended real number line.
;;; An element is either a real number or a positive infinite +inf.0 (+∞)
;;; or negative infinity -inf.0 (-∞)
;;; Unlike min and max, these functions short-circuit, which is only a minor optimization,
;;; except for xmin/map (resp. xmax/map), that will avoid any side-effects
;;; (including error or continuation escape) from evaluating anything
;;; after the bottom value -inf.0 (resp. top value +inf.0) was detected.

(def* xmin
  (((x : :real) (y : :real)) => :real (if (<= x y) x y))
  (((x : :real)) => :real x)
  (() +inf.0)
  (l => :real (xmin/list l)))
(def (xmin/list (l : :list)) => :real
  (reduce xmin +inf.0 l))
(defrule (xmin! x y ...)
  (set! x (xmin x y ...)))
(def (xmin/map (f : :procedure) (l : :list) (base : :real := +inf.0))
  (let/cc return
    (when (eqv? base -inf.0) (return -inf.0))
    (for-each (lambda (i)
                (def x (f i))
                (when (eqv? x -inf.0) (return -inf.0))
                (xmin! base x))
              l)
    base))

(def* xmax
  (((x : :real) (y : :real)) => :real (if (>= x y) x y))
  (((x : :real)) => :real x)
  (() -inf.0)
  (l => :real (xmax/list l)))
(def (xmax/list (l : :list)) => :real
  (reduce xmax -inf.0 l))
(defrule (xmax! x y ...)
  (set! x (xmax x y ...)))
(def (xmax/map (f : :procedure) (l : :list) (base : :real := -inf.0))
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

(def (integer-part (real : :real)) => :integer
  (if (exact-integer? real) real (inexact->exact (truncate real))))

(def (fractional-part (real : :real)) => :real
  (if (exact-integer? real) 0 (- real (integer-part real))))

(def (floor-align (n : :integer) (alignment : :integer)) => :integer
  (- n (modulo n alignment)))

(def (ceiling-align (n : :integer) (alignment : :integer)) => :integer
  (let ((mod (modulo n alignment)))
    (if (zero? mod) n (+ n (- alignment mod)))))

(def (real->sign (x : :real)) => :fixnum
  (cond ((< 0 x) +1) ((> 0 x) -1) (else 0)))

(definline (uint? (n : :t)) => :boolean
  (and (exact-integer? n) (not (negative? n))))

(definline (uint1? (n : :t)) => :boolean
  (or (eq? n 0) (eq? n 1)))

(definline (uint8? (n : :t)) => :boolean
  (and (nonnegative-fixnum? n) (fx<= n 255)))

(definline (uint16? (n : :t)) => :boolean
  (and (nonnegative-fixnum? n) (fx<= n 65535)))

(definline (uint32? (n : :t)) => :boolean
  (and (exact-integer? n) (<= 0 n (@eval (1- (expt 2 32))))))

(definline (uint64? (n : :t)) => :boolean
  (and (exact-integer? n) (<= 0 n (@eval (1- (expt 2 64))))))

(definline (sint? (n : :t)) => :boolean
  (exact-integer? n))

(definline (sint8? (n : :t)) => :boolean
  (and (fixnum? n) (<= -128 n 127)))

(definline (sint16? (n : :t)) => :boolean
  (and (fixnum? n) (<= -32768 n 32767)))

(definline (sint32? (n : :t)) => :boolean
  (and (exact-integer? n) (<= (- (expt 2 31)) n (@eval (1- (expt 2 31))))))

(definline (sint64? (n : :t)) => :boolean
  (and (exact-integer? n) (<= (- (expt 2 63)) n (@eval (1- (expt 2 63))))))

(definline (positive-integer? (n : :t)) => :boolean
  (and (exact-integer? n) (positive? n)))

(def (n-bits->n-u8 (n-bits : :integer)) => :integer
  (arithmetic-shift (+ n-bits 7) -3))

(def (uint-length-in-u8 (n : :integer)) => :integer
  (n-bits->n-u8 (integer-length n)))

(def (sint-length-in-u8 (n : :integer)) => :integer
  (if (zero? n) 0 (n-bits->n-u8 (1+ (integer-length n)))))

(def (uint-below? n (end : :real)) => :boolean
  (and (uint? n) (< n end)))

(def (uint-of-length? x (length-in-bits : :fixnum)) => :boolean
  (and (uint? x) (<= (integer-length x) length-in-bits)))

(def (sint-of-length? x (length-in-bits : :fixnum)) => :boolean
  (and (sint? x) (< (integer-length x) length-in-bits)))

;; Normalize an integer into an unsigned integer of given length in bits
(def (normalize-uint (x : :integer) (length-in-bits : :fixnum)) => :integer
  (extract-bit-field length-in-bits 0 x))

;; Normalize an integer into a signed integer of given length in bits
(def (normalize-sint (x : :integer) (length-in-bits : :fixnum)) => :integer
  (cond
   ((< (integer-length x) length-in-bits) x)
   ((bit-set? (1- length-in-bits) x) (replace-bit-field length-in-bits 0 x -1))
   (else (extract-bit-field length-in-bits 0 x))))

;; Iterate a function with an integer argument ranging from one value
;; increasing by one until it reaches another value (excluded)
(def (for-each-integer (fun : :procedure) (from : :integer) (below : :integer))
  (let loop ((i from))
    (when (< i below)
      (fun i)
      (loop (+ i 1)))))

(definline (half (n : :integer)) => :integer
  (arithmetic-shift n -1))

;;; Binary search in interval [start, end) to find the least integer for which pred? holds,
;;; assuming pred? is "increasing", i.e. if true for some integer, true for all larger integers.
;;; If no integer in the interval satisfies pred?, return end. If all do, return start.
(def (least-integer (pred? : :procedure) (start : :integer) (end : :integer)) => :integer
  (if (<= end start) end ; empty interval, return end.
      (let (mid (half (+ end start))) ;; NB: happily we have bignums, so no overflow
        (if (pred? mid)
          (least-integer pred? start mid)
          (least-integer pred? (1+ mid) end)))))

;; NOTE: the following functions are NOT cryptographic-quality constant-time!
;; Do NOT use them for cryptography in production.
;; TODO: offer an alternate module that offers cryptographic-ready arithmetic primitives via FFI

;; Does `f` divide `n`?
(def (divides? (f : :integer) (n :~ uint? :- :integer)) => :boolean
  (if (zero? f)
      (zero? n)
      (zero? (modulo n f))))

;; Given integers a and b, return values x y d such that
;; d is (non-negative) gcd of a and b, and a*x+b+y=d
(def (bezout (a : :integer) (b : :integer)) => :values
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

(definline (not-zero? (x : :t)) => :boolean
  (not (zero? x)))

(def (mult-mod (a : :integer) (b : :integer) (n :~ not-zero? : :integer)) => :integer
  (modulo (* a b) n)) ;; TODO: optimize that

;; 1/a modulo n
(def (invert-mod (a : :integer) (n :~ not-zero? : :integer)) => :integer
  (let-values (((x _ d) (bezout a n))) ;; a*x+n*y=d
    (unless (= d 1) (error "integer not invertible modulo" a n))
    x))

;; a/b modulo n/(gcd b n)
(def (div-mod (a : :integer)
              (b : :integer)
              (n :~ not-zero? : :integer)) => :integer
  (let-values (((x _ d) (bezout b n))) ;; b*x+n*y=d
    (when (= d 0) (error "divisor is zero modulo" b n))
    (let-values (((q r) (floor/ a d))) ;; a = d*q+r = b*x*q + q*y*n +r ;; 0<=r<d
      (unless (= r 0) (error "integers do not divide modulo" a b n))
      (* x q))))

;; same as (modulo (* a (expt x e)) n)
(def (mult-expt-mod (a : :integer)
                    (x : :integer)
                    (e : :integer)
                    (n : :integer)) => :integer
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
(def (expt-mod (x : :integer)
               (e : :integer)
               (n : :integer)) => :integer
  (mult-expt-mod 1 x e n))

(def (power-of-2? (n : :integer)) => :boolean
  (and (positive? n)
       (zero? (bitwise-and n (- n 1)))))

(def (valid-base? b) => :boolean
  (and (exact-integer? b) (< 1 b)))

;; largest natural integer n such that b**n <= a
(def (integer-log (a :~ positive-integer? :- :integer)
                  (b :~ valid-base? :- :integer)) => :integer
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
  (cond
   ((= b 2) (- (integer-length a) 1))
   ((power-of-2? b) (floor-quotient (- (integer-length a) 1) (- (integer-length b) 1)))
   (else (upward a b 1 []))))

;; number of digits of a in base b
(def (integer-digit-count (a : :integer) (b :~ valid-base? :- :integer)) => :integer
  (if (zero? a) 1 (+ 1 (integer-log (abs a) b))))

;; return (values q p) such a=q*2**p and q is odd
;; : Integer* -> Integer* Nat
(def (factor-out-powers-of-2 (n :~ not-zero? : :integer)) => :values
  (let (p (first-set-bit n))
    (values (arithmetic-shift n (- p)) p)))

;; return (values q p) such a=q*b**p and b does not divide q
;; : Integer* Nat -> Integer* Nat
(def (factor-out-powers (a :~ not-zero? : :integer)
                        (b :~ valid-base? :- :integer)) => :values
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
  (cond
   ((= b 2) (factor-out-powers-of-2 a))
   (else (upward a b 1 0 []))))
