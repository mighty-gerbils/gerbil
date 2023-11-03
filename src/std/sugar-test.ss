(export sugar-test)

(import :std/test
        :std/error
        :std/format
        :std/iter
        :std/misc/decimal
        :std/misc/hash
        :std/misc/list-builder
        (for-syntax :std/misc/list-builder)
        :std/misc/number
        :std/misc/symbol
        :std/pregexp
        :std/sort
        (for-syntax :std/stxutil)
        :std/sugar
        :std/text/char-set)

;; Classes used by some examples
(defclass A (a) transparent: #t constructor: :init!)
(defmethod {:init! A} (lambda (self) (class-instance-init! self a: 'open)))
(defmethod {destroy A} (lambda (self) (set! (@ self a) 'closed)))

(defclass C (c) transparent: #t)
(defmethod {foo C} (lambda (self) (+ 10 (@ self c))))
(defmethod {frob C} (lambda (self (increment 1)) (pre-increment! (@ self c) increment)))

(def vector-ref-set! vector-set!)

(def sugar-test
  (test-suite "test :std/sugar"
    (test-case "defrule"
      (check
       (call-with-output-string
        (lambda (p)
          (parameterize ((current-output-port p))
            (defrule (show var ...) (begin (printf "  ~a = ~s\n" 'var var) ...))
            (define-values (x y z) (values 1 [2 3] "4 5"))
            (show x y z))))
       => "  x = 1\n  y = (2 3)\n  z = \"4 5\"\n"))

    (test-case "try catch finally"
      (def (global-symbol-bound? sym)
        (try (eval sym) #t
             (catch (unbound-global-exception? e) #f)))
      (check (global-symbol-bound? 'list) => #t)
      (check (global-symbol-bound? 'this-symbol-is-unbound) => #f)

      (def depth 0)
      (def (in-ctx f)
        (try
         (set! depth (1+ depth))
         (f)
         (finally (set! depth (1- depth)))))
      (check depth => 0)
      (check (in-ctx (lambda () depth)) => 1)
      (check-exception (in-ctx (lambda () (check depth => 1) (error "foo"))) true)
      (check depth => 0))

    (test-case "ignore-errors"
      (check (ignore-errors 1 2 3) => 3)
      (check (ignore-errors 1 (error "foo") 3) => #f)
      (check (ignore-errors 1 2 #f) => #f))

    (test-case "with-destroy"
      (check (let (a (A)) [(with-destroy a (A-a a)) (A-a a)]) => '(open closed))
      (def b (A))
      (check-exception (with-destroy b (error "FOO")) true)
      (check (A-a b) => 'closed))

    (test-case "defmethod/alias"
      (defmethod/alias {name (nickname nick) A} (lambda (self) "foo"))
      (check {name (A)} => "foo")
      (check {nickname (A)} => "foo")
      (check {nick (A)} => "foo"))

    (test-case "using-method"
      (def c (C c: 13))
      (using-method c foo)
      (check (foo) => 23)
      (using-method c (bar foo))
      (check (bar) => 23))

    (test-case "with-methods with-class-methods with-class-method"
      (def c (C c: 10))
      (with-methods c foo (frobnicate frob))
      (check (foo c) => 20)
      (check (frobnicate c) => 11)
      (check (frobnicate c) => 12)
      (with-class-methods C::t (fuzz foo) frob)
      (check (fuzz c) => 22)
      (check (frob c) => 13)
      (with-class-method C::t (baz foo))
      (check (baz c) => 23))

    (test-case "while until"
      (def a #(1 2 3 4 5 6))
      (def i 5)
      (while (<= 0 i)
        (increment! (vector-ref a i))
        (decrement! i))
      (check a => #(2 3 4 5 6 7))
      (set! i 0)
      (until (= i (vector-length a))
        (increment! (vector-ref a i))
        (increment! i))
      (check a => #(3 4 5 6 7 8)))

    (test-case "hash hash-eq hash-eqv"
      (defrule (checks h ...)
        (let* ((key 'aaa)
               (t (hash (a 1) (,key 2) (k (+ 10 13)))))
          (check (hash->list/sort t symbol<?) => '((a . 1) (aaa . 2) (k . 23)))))
      (checks hash hash-eq hash-eqv))

    (test-case "let-hash"
      (def .c 4)
      (def h (hash (a 1) (b 2) (c 3)))
      (check (let-hash h [.a .?b ..c .?d]) => [1 2 4 #f]))

    (test-case "awhen"
      (def (foo c) (awhen (v (char-ascii-digit c)) (* v v)))
      (check (foo #\3) => 9)
      (check (foo #\a) => (void)))

    (test-case "chain"
      (check-equal?
       ;; expression as input
       (chain (iota 3)
         ([_ . rest] (map 1+ rest))
         (xs (map number->string xs))
         (string-join <> ", "))
       "2, 3")

      (check-equal?
       ;; variable as input
       (let (lst (iota 3))
         (chain lst
           ([_ . rest] (map 1+ rest))
           (xs (map number->string xs))
           (string-join <> ", ")))
       "2, 3")

      (check-equal?
       ;; chain lambda
       ((chain <>
          ([_ . rest] (map 1+ rest))
          (xs (map number->string xs))
          (string-join <> ", "))
        (iota 3))
       "2, 3")

      (check-equal?
       ;; unary procedure at the start
       (let (map1 (cut map 1+ <>))
         (chain [1 2]
           map1
           (reverse <>)))
       [3 2])

      (check-equal?
       ;; unary procedure not at the start
       (chain [9 19 29]
         ([_ . rest] (map 1+ rest))
         reverse
         car)
       30)

      (check-equal? (chain [0 1] (map (lambda (v) (1+ v)) <>)) [1 2]))

    (test-case "test is"
      (check ((is 1+ 3) 2)                => #t)
      (check ((is 1+ number?) 0)          => #t)
      (check ((is symbol->string "a") 'a) => #t)
      (check ((is 1+ 3 test: eqv?) 2)     => #t)
      (check ((is 2) 2)                   => #t)
      (check ((is 'a test: eq?) 'a)       => #t)
      (check ((is 2.0) 2.0)               => #t)
      (check ((is "a") "a")               => #t))

    (test-case "defsyntax/unhygienic"
      (def aa 22)
      (defsyntax/unhygienic (double-id ctx)
        (syntax-case ctx () ((_ x) (stx-identifier #'ctx #'x #'x))))
      (check (double-id a) => 22))

    (test-case "with-id with-id/expr"
      ;; defining variables
      (def mem (make-vector 5 0))
      (defrule (defvar name n)
        (with-id name ((@ #'name "@") (get #'name) (set #'name "-set!"))
          (begin (def @ n) (def (get) (vector-ref mem @)) (def (set x) (vector-set! mem @ x)))))
      (defvar A 0)
      (defvar B 1)
      (defvar C 2)
      (defvar D 3)
      (A-set! 42) (B-set! (+ (A) 27)) (increment! (C) 5) (D-set! (post-increment! (C) 18))
      (check mem => #(42 69 23 5 0))
      (check C@ => 2)
      ;; accessing variables
      (defrule (var-index var) (with-id/expr var ((@ #'var '@)) @))
      (check [(var-index A) (var-index B) (var-index C) (var-index D)] => [0 1 2 3])
      (defrule (vars-index var ...) (list (var-index var) ...))
      (check (vars-index A B C D) => [0 1 2 3])

      (check-exception
       (eval '(begin
                (defsyntax (m stx)
                  (def myvar "bar")
                  #'(with-id ctx ((foo my-var)) (def foo 2)))
                (m)))
       true)
      (defsyntax (m stx)
        (with-syntax ((ctx (stx-car stx))
                      (myvar "bar"))
          #'(with-id ctx ((foo #'myvar)) (def foo 3))))
      (m)
      (check-equal? bar 3))

    (test-case "if-let"
      (def (foo a b c)
        (if-let ((x (char-ascii-digit a))
                 (y (char-ascii-digit b))
                 (z (char-ascii-digit c)))
          (+ x y z)
          -1))
      (check (foo #\1 #\2 #\3) => 6)
      (check (foo #\1 #\A #\3) => -1))

    (test-case "when-let"
      (def h (hash (1 "foo") (3 "bar") (4 "baz")))
      (check
       (with-list-builder (c)
         (for (n (in-range 1000))
           (when-let ((p (power-of-5 n))
                      (x (hash-get h p)))
             (c [n x])))) => [[5 "foo"] [125 "bar"] [625 "baz"]]))

    (test-case "defcheck-argument-type"
      (defcheck-argument-type integer vector)
      (def (foo v n start (end #f))
        (check-argument-vector v)
        (unless end (set! end (vector-length v)))
        (check-argument-integer n start end)
        (for (i (in-range start end))
          (increment! (vector-ref v i) n)))
      (def v #(1 2 3 4 5 6))
      (foo v 10 2)
      (check v => #(1 2 13 14 15 16))
      (check-exception (foo '(1 2 3) 1 0) ContractViolation?)
      (check-exception (foo #(1 2 3) 1 "0") ContractViolation?))

    (test-case "syntax-eval"
      (def (constant-time-fibonacci n)
        (def precomputed
          (syntax-eval
           (list->vector
            (with-list-builder (collect)
              (let loop ((a 0) (b 1))
                (when (<= (integer-length a) 128)
                  (collect a)
                  (loop b (+ a b))))))))
        (vector-ref precomputed n))
      (check (constant-time-fibonacci 186) => 332825110087067562321196029789634457848)
      (def aa 88)
      (check (syntax-eval (string->symbol "aa")) => 88))

    (test-case "syntax-call"
      (check (syntax-call (lambda (ctx) (path-strip-directory (vector-ref (AST-source ctx) 0))))
             => "sugar-test.ss")
      (def bar 23)
      (def foofoo 42)
      (check (syntax-call (lambda (ctx . args) (stx-identifier ctx args args)) bar foo) => 42))
    ))
