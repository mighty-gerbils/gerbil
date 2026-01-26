;;;; bitwise-33 - Olin Shivers's code from SRFI-33 with modified names

;;; Olin Shivers is the sole author of this code, and he has placed it in
;;; the public domain.
;;;
;;; A good implementation might choose to provide direct compiler/interpreter
;;; support for these derived functions, or might simply define them to be
;;; integrable -- i.e., inline-expanded.
;;;
;;; The seven non-trivial boolean functions in terms
;;; of not, and, or & xor.

(define (bitwise-nand  i j)  (bitwise-not (bitwise-and i j)))
(define (bitwise-nor   i j)  (bitwise-not (bitwise-ior i j)))
(define (bitwise-andc1 i j)  (bitwise-and (bitwise-not i) j))
(define (bitwise-andc2 i j)  (bitwise-and i (bitwise-not j)))
(define (bitwise-orc1  i j)  (bitwise-ior (bitwise-not i) j))
(define (bitwise-orc2  i j)  (bitwise-ior i (bitwise-not j)))

;;; This is a general definition, but less than efficient.  It should also
;;; receive primitive compiler/interpreter support so that the expensive
;;; n-ary mechanism is not invoked in the standard cases -- that is,
;;; an application of BITWISE-EQV should be rewritten into an equivalent
;;; tree applying some two-argument primitive to the arguments, in the
;;; same manner that statically-known n-ary applications of associative
;;; operations such as + and * are handled efficiently:
;;;   (bitwise-eqv)         => -1
;;;   (bitwise-eqv i)       => i
;;;   (bitwise-eqv i j)     => (%bitwise-eqv i j)
;;;   (bitwise-eqv i j k)   => (%bitwise-eqv (%bitwise-eqv i j) k)
;;;   (bitwise-eqv i j k l) => (%bitwise-eqv (%bitwise-eqv (%bitwise-eqv i j) k) l)

(define (bitwise-eqv . args)
  (let lp ((args args) (ans -1))
    (if (pair? args)
        (lp (cdr args) (bitwise-not (bitwise-xor ans (car args))))
	ans)))

;;; Helper function -- make a mask of SIZE 1-bits, e.g. (%MASK 3) = #b111.
;;; Suppose your Scheme's fixnums are N bits wide (counting the sign bit,
;;; not counting any tag bits). This version, due to Marc Feeley, will
;;; handle SIZE in the range [0,N-1] without overflowing to bignums.
;;; (For SIZE >= N, the correct bignum value is also produced.)

(define (mask start end) (bitwise-not (arithmetic-shift -1 (- end start))))

;;; This alternate, mathematically-equivalent expression
;;;     (- (arithmetic-shift 1 size) 1)
;;; is not as good -- it only handles SIZE in the range [0,N-2] without
;;; overflowing to bignums.
;;;
;;; Finally, note that even Feeley's expression can't build an N-bit mask
;;; without bignum help. This is fundamental, since the interpretation
;;; of fixed-size fixnum bit patterns as semi-infinite-bit-strings is that
;;; you replicate the high bit out to infinity. So you have to have a
;;; zero "stop bit" appearing after that highest one bit to turn off the
;;; replication of the ones.

#;(define (bit-set? index n)
  (not (zero? (bitwise-and (arithmetic-shift 1 index) n))))

(define (any-bit-set? test-bits n) (not (zero? (bitwise-and test-bits n))))

(define (every-bit-set? test-bits n) (= test-bits (bitwise-and test-bits n)))

;;; Bit-field ops

(define (bit-field n start end)
  (bitwise-and (mask start end) (arithmetic-shift n (- start))))

(define (bit-field-any? n start end)
  (not (zero? (bitwise-and (arithmetic-shift n (- start)) (mask start end)))))

;; Part of Olin's late revisions; code by John Cowan; public domain.
(define (bit-field-every? n start end)
  (let ((m (mask start end)))
    (eqv? m (bitwise-and (arithmetic-shift n (- start)) m))))

;; Integrating i-b-f reduces nicely.
(define (bit-field-clear n start end)
  (bit-field-replace n 0 start end))

;; Counterpart to above, not in SRFI 33, written by John Cowan, public domain
(define (bit-field-set n start end)
  (bit-field-replace n -1 start end))

;;; Oops -- intermediate ARITHMETIC-SHIFT can fixnum-overflow on fixnum args.
;(define (bit-field-replace newfield n start end)
;  (bit-field-replace-same (arithmetic-shift newfield start) n start end))

;;; This three-line version won't fixnum-overflow on fixnum args.
(define (bit-field-replace n newfield start end)
  (let ((m (mask start end)))
    (bitwise-ior (bitwise-and n (bitwise-not (arithmetic-shift m start)))
		 (arithmetic-shift (bitwise-and newfield m) start))))

(define (bit-field-replace-same to from start end)
  (bitwise-if (arithmetic-shift (mask start end) start) from to))

;; Simple definition
;(define (first-set-bit i)
;  (and (not (zero? i))
;       (let lp ((j 0) (i start))
;         (if (bit-set? i 0) j
;             (lp (+ j 1) (arithmetic-shift i 1))))))

;;; Clever definition, assuming you have a fast BIT-COUNT.
;(define (first-set-bit i) (- (bit-count (bitwise-xor i (- i 1))) 1))

;; first-set-bit is now builtin to Gambit
