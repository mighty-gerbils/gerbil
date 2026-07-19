;; -*- Gerbil -*-
;;; © fahree@gmail.com
;;;; Testing the quasiquote implementation
;;; Ported and simplified from Common Lisp’s fare-quasiquote test-suite

(export quasiquote-test)

(import
  (only-in :gerbil/core/expander syntax->datum core-expand1)
  (only-in :std/test test-suite test-case check check-exception)
  (only-in :std/values first-value))

;;;;;;;;;;;;;;;; BEGIN quasiquote implementation
(def using-eval? #t) ;; are we using eval?
(def using-qq? #f) ;; are we expanding to the qq-list qq-list* qq-append qq-quote representation?

(begin
  (import :gerbil/core/sugar)
  (import QuasiquoteRuntime))

#;
(begin
  (define :<root> ':<root>)
  (define gerbil/core ':gerbil/core)
  (include "../core/quasiquote.ss")
  (import QuasiquoteRuntime QuasiquoteExpander Quasiquote
          (for-syntax QuasiquoteRuntime QuasiquoteExpander Quasiquote)
          (for-syntax (for-syntax QuasiquoteRuntime QuasiquoteExpander Quasiquote))
          (for-syntax (for-syntax (for-syntax QuasiquoteRuntime QuasiquoteExpander Quasiquote)))))

#;(begin
  (set! using-eval? #t) (set! using-qq? #f)
  (include "../core/quasiquote-simple.ss")
  (defrule (qq-quote x) 'x) (defvalues (qq-list qq-list* qq-append) (values list cons* append)))

;;;;;;;;;;;;;;;; END quasiquote implementation

;; You can test the quasiquote implementation like this:
(def (rq s) (call-with-input-string s read))
(def (pq x) (object->string x))
(def (prq s) (pq (rq s)))
(def (e x) (syntax->datum (gx#core-expand x)))

(begin-syntax
(def (rq s) (call-with-input-string s read))
(def (pq x) (object->string x))
(def (prq s) (pq (rq s)))
(def (e x) (syntax->datum (gx#core-expand x))))

;;; Test values
(def *qq* '(*rr* *ss*))
(def *ss* '(4 6))
(def *x* '(a b))
(def *y* '(c))
(def *p* '(append *x* *y*))
(def *q* '((append *x* *y*) (list 'sqrt 9)))
(def *r* '(append *x* *y*))
(def *s* '((append *x* *y*)))
(defrules *rr* ()
  ((_ x) (foldl * 1 x))
  (_ '(3 5)))

(def a '(vector 0))
(def b 11)
(def c (list 22 33))
(def d (list 44 55))
(def *k '(list (list x: a) (@list y: b)))
(defrules q-if-match ()
  ((_ pat val then)
   (q-if-match pat val then #f))
  ((_ pat val then else_)
   (match val (pat then) (else else_))))

(defrule (qx (x ...) ...)
  (begin (q x ...) ...))
(defrules q ()
  ((_ s x y v) (q s x y v s))
  ((_ s x y v z) (q0 s x y v z)))
(defrule (q0 s x y v z)
   (test-case s
     (check (rq s) => 'x)
     (check x => 'v)
     (check (prq s) => 'z)
     (when using-eval?
       (check (eval 'x) => 'v))
     (when using-qq?
       (check (e 'x) => (e 'y))
       (check y => 'v))))

(defrule (qqx (x ...) ...)
  (begin (qqt x ...) ...))
(defrule (qqt s x y z t)
  (test-case s
    (check (rq s) => 'x) ;; <- it reads properly
    (when using-eval?
      (check (eval (eval 'x)) => 't))
    (when using-qq?
      (check x => 'z)
      (check y => 'z)
      (check z => 't)
      (check (e 'x) => (e 'y)))))

(def quasiquote-test
  (test-suite "test gerbil quasiquote"
    (gx#current-expander-context (gx#import-module "gerbil/test/quasiquote-test.ss" #f #t))
    (test-case "foo"
      (check (eval '(list 1 2 3)) => '(1 2 3))
      (when using-qq?
        (check (eval '(qq-list 1 2 3)) => '(1 2 3))
        (check (eval '(qq-quote a)) => 'a)))
    (qx
     ("`a" `a (qq-quote a) a)
     ("`(a ,b)" `(a ,b) (qq-list (qq-quote a) b) (a 11))
     ("`(a ,@c)" `(a ,@c) (qq-list* (qq-quote a) c) (a 22 33))
     ("`(,@c)" `(,@c) c (22 33)) ;; "c"
     ("`',a" `',a (qq-list (qq-quote quote) a) '(vector 0))
     ("`,`a" `,`a 'a a)
     ("`(a ,@b)" `(a ,@b) (qq-list* 'a b) (a . 11))
     ("`(a . ,b)" `(a . ,b) (qq-list* 'a b) (a . 11) "`(a unquote b)")
     ("`(a ,b ,@c)" `(a ,b ,@c) (qq-list* 'a b c) (a 11 22 33))
     #|
     ("(q-if-match `(a ,x . ,y) '(a b c d) (vector x y))"
     (q-if-match `(a ,x . ,y) '(a b c d) (vector x y))
     (q-if-match (cons* (quote a) x y) '(a b c d) (vector x y))
     #(b (c d)))
     ("(q-if-match `(a ,x ,@y) '(a b c d) (vector x y))"
     (q-if-match `(a ,x ,@y) '(a b c d) (vector x y))
     (q-if-match (cons* (quote a) x y) '(a b c d) (vector x y))
     #(b (c d)))
     ("(q-if-match `#(a ,x ,y d) #(a b c d) (vector x y))"
     (q-if-match `#(a ,x ,y d) #(a b c d) (vector x y))
     (q-if-match (make-vector (list (quote a) x y (quote d))) #(a b c d) (vector x y)))
     #(b c))
     |#
     ("`(1 2 3)" `(1 2 3) '(1 2 3) (1 2 3))
     ("`(a ,@c . 4)" `(a ,@c . 4) (qq-list* 'a (qq-append c '4)) (a 22 33 . 4))
     ("`(,@c . ,d)" `(,@c . ,d) (qq-append c d) (22 33 44 55) "`(,@c unquote d)")
     ("`(a ,b ,@c . ,d)" `(a ,b ,@c . ,d) (qq-list* 'a b (qq-append c d)) (a 11 22 33 44 55) "`(a ,b ,@c unquote d)")
     ("`#(a ,b)" `#(a ,b) (vector (qq-quote a) b) #(a 11))
     ("`(foobar a b ,c ,'(e f g) d ,@'(e f g) (h i j) ,@c)"
      `(foobar a b ,c ,'(e f g) d ,@'(e f g) (h i j) ,@c)
      (qq-list* 'foobar 'a 'b c '(e f g) 'd (qq-append '(e f g) (qq-list* '(h i j) c)))
      (foobar a b (22 33) (e f g) d e f g (h i j) 22 33))
     ("`(1 ,b)" `(1 ,b) (qq-list 1 b) (1 11))
     ("(qq-list (qq-quote -) b)" (qq-list (qq-quote -) b) (qq-list (qq-quote -) b) (- 11)))
    (when using-qq?
      (qx
       ("``a" ``a (qq-quote (qq-quote a)) (qq-quote a))
       ("``(a ,b)" ``(a ,b) (qq-quote (qq-list (qq-quote a) b)) (qq-list (qq-quote a) b))
       ("``(, @c)" ``(, @c) `(qq-list @c) (qq-list @c))
       ("``(,.c)" ``(,.c) `(qq-list .c) (qq-list .c)))) ;; no nconc in Scheme
    (test-case "test quasiquote extras"
      (check `(x ,b ,@a ,@c ,@d) => '(x 11 vector 0 22 33 44 55))
      (unless using-eval?
        (let ((c (qq-list 2 3)))
          (q "`(x ,b ,@a ,@c ,@d)" `(x ,b ,@a ,@c ,@d) (qq-list* 'x b (qq-append a c d))
             (x 11 vector 0 2 3 44 55)))
        (let ((c (list 2 3))) (check `(x ,b ,@a ,@c ,@d) => '(x 11 vector 0 2 3 44 55))))
      (check-exception (rq "`(foo bar #.(+ 2 3))") true) ;; no #.
      (check-exception (e (rq "`(,,1)")) true)
      (let ((l '("(x)" "`(,x)" "``(,,x)" "```(,,,x)")))
        (check (map prq l) => l)))
    ;; Double-quasiquote test from the SBCL test suite backq.impure.lisp
    (qqx
     ("``(f ,@,*k)"
      ``(f ,@,*k)
      (qq-list (qq-quote qq-list*) (qq-quote (qq-quote f)) *k)
      (qq-list* (qq-quote f) (list (list x: a) (@list y: b)))
      (f (x: (vector 0)) (y: 11)))
     ("```(,,a ,',',b)" ```(,,a ,',',b)
      (qq-list (qq-quote qq-list) (qq-quote (qq-quote qq-list)) (qq-quote a)
               (qq-list (qq-quote qq-list) (qq-quote (qq-quote quote))
                        (qq-list (qq-quote quote) b)))
      (qq-list (qq-quote qq-list) a (qq-list (qq-quote quote) '11))
      (qq-list (vector 0) '11))
     ("``(,,*qq*)"
      ``(,,*qq*)
      (qq-list (qq-quote qq-list) *qq*)
      (qq-list (*rr* *ss*))
      (24))
     ("``(,@,*qq*)"
      ``(,@,*qq*)
      *qq*
      (*rr* *ss*)
      24)
     ("``(,,@*qq*)"
      ``(,,@*qq*)
      (qq-list* (qq-quote qq-list) *qq*)
      (qq-list *rr* *ss*)
      ((3 5) (4 6)))
     ("``(foo ,,*p*)"
      ``(foo ,,*p*)
      (qq-list (qq-quote qq-list) (qq-quote (qq-quote foo)) *p*)
      (qq-list (qq-quote foo) (append *x* *y*))
      (foo (a b c)))
     ("``(foo ,,@*q*)"
      ``(foo ,,@*q*)
      (qq-list* (qq-quote qq-list) (qq-quote (qq-quote foo)) *q*)
      (qq-list (qq-quote foo) (append *x* *y*) (list 'sqrt 9))
      (foo (a b c) (sqrt 9)))
     ("``(foo ,',*r*)"
      ``(foo ,',*r*)
      (qq-list (qq-quote qq-list) (qq-quote (qq-quote foo)) (qq-list (qq-quote quote) *r*))
      (qq-list (qq-quote foo) '(append *x* *y*))
      (foo (append *x* *y*)))
     ("``(foo ,',@*s*)"
      ``(foo ,',@*s*)
      (qq-list (qq-quote qq-list) (qq-quote (qq-quote foo)) (qq-list* (qq-quote quote) *s*))
      (qq-list (qq-quote foo) '(append *x* *y*))
      (foo (append *x* *y*)))
     ("``(foo ,@,*p*)"
      ``(foo ,@,*p*)
      (qq-list (qq-quote qq-list*) (qq-quote (qq-quote foo)) *p*)
      (qq-list* (qq-quote foo) (append *x* *y*))
      (foo a b c))
     ("``(,@',*r*)"
      ``(,@',*r*)
      (qq-list (qq-quote quote) *r*)
      '(append *x* *y*)
      (append *x* *y*))
     ("``(foo ,@',*r*)"
      ``(foo ,@',*r*)
      (qq-list (qq-quote qq-list*) (qq-quote (qq-quote foo)) (qq-list (qq-quote quote) *r*))
      (qq-list* (qq-quote foo) '(append *x* *y*))
      (foo append *x* *y*))
     ("``(foo . ,,@*q*)"
      ``(foo . ,,@*q*)
      (qq-list* (qq-quote qq-append) (qq-quote (qq-list (qq-quote foo))) *q*)
      (qq-append (qq-list (qq-quote foo)) (append *x* *y*) (list 'sqrt 9))
      (foo a b c sqrt 9))
     ("``(foo ,@',@*s*)"
      ``(foo ,@',@*s*)
      (qq-list (qq-quote qq-list*) (qq-quote (qq-quote foo)) (qq-list* (qq-quote quote) *s*))
      (qq-list* (qq-quote foo) (quote (append *x* *y*)))
      (foo append *x* *y*))
     ("``(foo ,@,@*q*)"
      ``(foo ,@,@*q*)
      (qq-list (qq-quote qq-list*) (qq-quote (qq-quote foo)) (qq-list* (qq-quote qq-append) *q*))
      (qq-list* (qq-quote foo) (qq-append (append *x* *y*) (list 'sqrt 9)))
      (foo a b c sqrt 9))
     ("``(,@,@*qq*)"
      ``(,@,@*qq*)
      (qq-list* (qq-quote qq-append) *qq*)
      (qq-append *rr* *ss*)
      (3 5 4 6))
     ("``(,,@(list 1 2 3) 10)"
      ``(,,@(list 1 2 3) 10)
      (qq-list* (qq-quote qq-list*) (qq-append (list 1 2 3) (qq-quote ((qq-quote (10))))))
      (qq-list* 1 2 3 (qq-quote (10)))
      (1 2 3 10)))
    #;
    (test-case "pprint-backquote-magic"
      (check (prq "`(,  .foo)") => "`(, .foo)")
      (check (prq "`(,  @foo)") => "`(, @foo)")
      (check (prq "`(,  ?foo)") => "`(,?foo)")
      (check (prq "`(x .,  @foo)") => "`(x ,@@foo)"))
    #;
    (test-case "pprint-leaking-backq-comma"
      ;; unquoted lambda lists should not leak the UNQUOTE implementation.
      (check (prq "`(foo ,x)") => "`(foo ,x)")
      (check (prq "`(foo ,@x)") => "`(foo ,@x)")
      (check (prq "`(foo ,.x)") => "`(foo ,@x)")
      (check (prq "`(foo (,x))") => "`(foo (,x))"))
    (test-case "pprint-more-backquote-brokenness"
      (def (e input) (check input => (prq input)))
      (for-each e
         '("``(foo ,@',@bar)"
           "``(,,foo ,',foo foo)"
           "``(((,,foo) ,',foo) foo)"
           "`#()"
           "`#(,bar)"
           "`#(,(bar))"
           ;; "`#(,@bar)" ; invalid
           "`#(,@(bar))"
           "`#(a ,b c)"
           "`#(,@a ,b c)"
           "(xlet ((foo (x))) `(xlet (,foo) (xsetq ,foo (y)) (baz ,foo)))")))))
