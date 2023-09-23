;; Dealing with small prime numbers (say up to 1e8, if using a few GiB of memory)
;; NB: This code maintains global tables and is generally not thread-safe.
;; See also "The Genuine Sieve of Erathostenes" by Melissa E. O'Neill:
;;      https://www.cs.hmc.edu/~oneill/papers/Sieve-JFP.pdf

(export #t)

(import
  :gerbil/gambit
  :std/srfi/1
  :std/srfi/141
  :std/error
  :std/iter
  :std/misc/evector
  :std/misc/list-builder
  :std/misc/number
  :std/sugar)

;; An extensible vector containing the increasing sequence of all small enough primes
;; NB: the initial 0 is so the useful array indices start with 1, keeping with convention.
;; Note that this evector must contain all the primes already in the prime-sieve below.
(def primes (list->evector '(0 2 3 5 7 11 13)))

;; Given a list of primes, return a vector the size of which is the product M of those primes,
;; that at index I contains the smallest positive increment J such that I+J is a unit modulo M.
;; This makes it easier to skip over obvious composite numbers when looking for primes.
(def (compute-prime-wheel prime-list)
  (def product (reduce * 1 prime-list))
  (unless (and (fixnum? product)
               (<= 2 product)
               (let (p (evector->list primes)) (every (cut member <> p) prime-list)))
    (raise-bad-argument 'compute-prime-wheel "invalid list of primes" prime-list))
  (def rp (list->vector (for/collect (n (in-range product)) (= 1 (gcd n product)))))
  (list->vector (for/collect (n (in-range product))
                  (let/cc return
                    (for (i (in-range 1 product))
                      (when (vector-ref rp (modulo (+ n i) product)) (return i)))))))

;; A wheel for skipping over numbers that are divisible by small primes. See `compute-prime-wheel`.
;; Note that the these numbers MUST already be in `primes`, or else the sieve will fail.
(def wheel (compute-prime-wheel '(2 3 5 7)))

;; Compute the position of a `number` in the `wheel`. See `compute-prime-wheel`.
(def (wheel-position wheel number)
  (modulo number (vector-length wheel)))

;; Given a `number` at given `position` in the `wheel`, return the next `number`
;; that is not divisible by a factor of the wheel size, and its position in the wheel.
(def (wheel-next wheel number (position (wheel-position wheel number)))
  (let ((increment (vector-ref wheel position)))
    (values (+ number increment) (modulo (+ position increment) (vector-length wheel)))))

;; Given an integer `n`, return the `n`th prime number, starting with prime number 2 at index 1
(def nth-prime
  (memoize-recursive-sequence
   cache: primes
   (lambda (n) (next-prime-above (nth-prime (1- n))))))

;; sieve: 1 if the number is prime, 0 if composite. Must be initialized to 1 beyond the fill-pointer.
;; To save half the space, we only storing a bitmask for odd numbers.
;; We could further save space, by using a variant of the 2,3,5,7-wheel,
;; from 50% to under 23% (48/210), but that would mean a much larger access factor constant.
(def prime-sieve (make-ebits #u8(#x6E) 8))

;; Return the next prime number P such that P > N
(def (next-prime-above n)
  ;;(check-argument (and (exact-integer? n) (positive? n)) "not a positive integer")
  (let loop ((k n) (wp (wheel-position wheel n)))
    (defvalues (l p) (wheel-next wheel k wp))
    (if (prime? l) l (loop l p))))

;; Given a small integer N, is it a prime number?
;; Answer using Erathostenes' sieve.
;; Note: the sieve is not thread-safe.
(def (prime?/sieve n)
  (let/cc return
    (unless (bit-set? 0 n) (return (= n 2))) ;; handle even numbers
    (let (n/2 (half n))
      (when (< n/2 (ebits-fill-pointer prime-sieve))
        (return (ebits-set? prime-sieve n/2))))
    (def fp (evector-fill-pointer primes))
    (for (i (in-range 2 fp)) ;; 0 is not prime, 2 already handled
      (let (p (evector-ref primes i))
        (when (< n (* p p)) (return #t))
        (when (zero? (modulo n p)) (return #f))))
    (erathostenes-sieve (integer-sqrt n)) ;; extend sieve up to sqrt(n)
    (for (i (in-range fp (evector-fill-pointer primes)))
      (when (zero? (modulo n (evector-ref primes i))) (return #f)))
    #t))

;; The largest small prime computed so far
(def (largest-known-prime)
  (evector-ref primes (1- (evector-fill-pointer primes))))

;; Run the sieve of Erathostenes up to `n`
(def (erathostenes-sieve n)
  (def m (1+ (* 2 (ebits-fill-pointer prime-sieve)))) ; smallest number not sieved yet
  (def u (1+ (half n)))
  (def (sieve! p) ;; sieve away multiples of an odd prime number
    (def p2 (* p p))
    (let loop ((q (half (if (>= p2 m) p2
                            (- (ceiling-align (+ m p) (* 2 p)) p))))) ;; next *odd* multiple of p
      (when (< q u)
        (ebits-set! prime-sieve q 0)
        (loop (+ q p)))))
  (when (>= n m)
    ;; Ensure there is enough space for the sieve
    (ebits-set-fill-pointer! prime-sieve u initial-value: 1)
    (let/cc return
      ;; Sieve off multiples of odd primes known so far
      (def r (integer-sqrt n))
      (for (i (in-range 2 (evector-fill-pointer primes)))
        (let (p (nth-prime i))
          (when (> p r) (return))
          (sieve! p)))
      ;; Collect new primes under sqrt(n) and sieve off their multiples
      (def p (largest-known-prime))
      (let loop ((p p) (wp (wheel-position wheel p)))
        (defvalues (q wq) (wheel-next wheel p wp))
        (when (> q r) (return))
        (when (ebits-set? prime-sieve (half q))
          (evector-push! primes q)
          (sieve! q))
        (loop q wq)))
    ;; Collect new primes above sqrt(n)
    (let ((p (largest-known-prime)))
      (when (< p n)
        (let loop ((p p) (wp (wheel-position wheel p)))
          (defvalues (q wq) (wheel-next wheel p wp))
          (unless (> q n)
            (when (ebits-set? prime-sieve (half q))
              (evector-push! primes q))
            (loop q wq)))))))


;; (pi-function n) is the number of positive prime integers no greater than n
;; TODO: compute it rather by dichotomizing the position in the list of primes that reaches it.
(def pi-cache (list->evector '(0 0 1 2 2 3 3 4 4 4 4)))
(def pi-function
  (memoize-recursive-sequence
   cache: pi-cache
   (lambda (n)
     (def m (evector-fill-pointer pi-cache))
     (def sp (evector-ref pi-cache (1- m)))
     (extend-evector! pi-cache (1+ n))
     (set! (evector-fill-pointer pi-cache) (1+ n))
     (erathostenes-sieve n)
     (for (m (in-range m (1+ n)))
       (set! (evector-ref pi-cache m) (pre-increment! sp (ebits-ref prime-sieve m))))
     sp)))

;; Does `f` divide `n`?
(def (divides? f n)
  (check-argument (nat? f) "natural" f)
  (check-argument (nat? n) "natural" n)
  (if (zero? f)
      (zero? n)
      (zero? (modulo n f))))

;; Given an integer N, return a non-decreasing list of its prime factors, using the sieve
(def (factor n)
  (check-argument (and (nat? n) (positive? n)) "positive integer" n)
  (with-list-builder (f)
    (let loop ((i 1) ;; index of the next prime to try
               (n n) ;; product of remaining factors
               (max #f)) ;; biggest number we have to test before we can be sure n is prime
      (when (< 1 n)
        (let* ((p (nth-prime i))
               (max (or max (integer-sqrt n)))) ;; integer-sqrt is expensive, so recompute the limit lazily
          (if (> p max) (f n)
              (let loop2 ((n n) (max max)) ;; divide by this prime as many times as possible
                (let-values (((m r) (floor/ n p)))
                  (if (zero? r)
                    (begin (f p) (loop2 m #f))
                    (loop (1+ i) n max))))))))))

;; Given integers `a` and `n`, and ancillary data,
;; is `a` a witness of n's compositeness as per the Miller test?
(def (witness-of-compositeness? a n n-1 r d)
  ;; (check-argument (every nat? [a n n-1 r d]) "naturals" [a n n-1 r d])
  ;; (check-argument (= (1- n) n-1) "n - 1 = n-1" [n n-1])
  ;; (check-argument (= n-1 (* (expt 2 r) d)) "n-1 = d*2**r" [n-1 d r])
  ;; (check-argument (odd? d) "odd" d)
  (def x (expt-mod a d n))
  (let/cc return
    (when (or (= x 1) (= x n-1))
      (return #f)) ;; not a witness
    (for (_ (in-range (1- r)))
      (set! x (mult-mod x x n))
      (when (= x 1) (return #t)) ;; witness that n is composite
      (when (= x n-1) (return #f))) ;; not a witness
    #t)) ;; witness that n is composite

;; How many times does 2 divide N? Return -1 for 0.
(def (valuation-of-2 n)
  (1- (integer-length (bitwise-xor n (1- n)))))

;; Is integer N a prime number? Use Miller method to check,
;; with a list of candidate witnesses AS.
(def (prime?/miller n as)
  (let* ((n-1 (- n 1))
         (r (valuation-of-2 n-1))
         (d (arithmetic-shift n-1 (- r))))
    (every (cut witness-of-compositeness? <> n n-1 r d) as)))

;; Is integer `n` a prime number? Use Rabin-Miller method to check, which is probabilistic.
;; The number of extra checks determine how much heuristic assurance we have that the number is prime:
;; each extra-check decreases the probability of false positive by 1/4,
;; so 16 (the default) makes for 2**-64 chances of error.
(def (prime?/miller-rabin n (extra-checks 16))
  (let* ((n-1 (- n 1))
         (r (valuation-of-2 n-1))
         (d (arithmetic-shift n-1 (- r))))
    ;; Each independent test reduces the probability of primality by 1/4
    ;; By default we add a constant 4^16 = 2^64 error factor.
    (let/cc return
      (for (_ (in-range (- extra-checks (floor-quotient (- (integer-length n)) 4))))
        (let (a (+ 2 (random-integer (- n 3))))
          (when (witness-of-compositeness? a n n-1 r d) (return #f))))
      #t)))

;; Is natural integer `n` a prime number?
(def (prime? n)
  (check-argument (nat? n) "natural" n)
  (cond
    ((< n 2) #f)
    ((< n 1000000000) (prime?/sieve n))
    ((< n 3317044064679887385961981)
     ;; This is the smallest false-positive for this test with these witnesses. Its integer-length is 82
     (prime?/miller n '(2 3 5 7 11 13 17 19 23 29 31 37 41)))
    (else (prime?/miller-rabin n))))
