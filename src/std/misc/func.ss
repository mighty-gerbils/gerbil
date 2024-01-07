;;; -*- Gerbil -*-
;;; © t.brandscheid@gmail.com
;;; © vyzo
;;; Utility procedures
(import :std/error)
(export
  repeat always
  compose1 compose compose/values
  @compose1 @compose @compose/values
  rcompose1 rcompose rcompose/values
  @rcompose1 @rcompose @rcompose/values
  every-of any-of
  pred-limit pred-sequence pred-and pred-or pred-every-of pred-any-of
  )

;; Repeat value or call function N times and return the result as list.
;; (repeat 2 5)                  -> (2 2 2 2 2)  ; repeat the value 2
;; (repeat random-integer 3 10)  -> (8 3 5)      ; repeated function call with passed argument
(def (repeat v-or-fn n-times . args)
  (declare (fixnum) (not safe))
  (unless (fixnum? n-times)
    (raise-bad-argument repeat "fixnum" n-times))
  (if (procedure? v-or-fn)
    (let ((fn (if (null? args)
		        v-or-fn
		        (lambda () (apply v-or-fn args)))))
      (let lp ((i 0)
               (acc []))
	    (if (< i n-times)
	      (lp (1+ i)
	          (cons (fn) acc))
	      (reverse acc))))
    (let lp ((i 0)
             (acc []))
      (if (< i n-times)
	    (lp (1+ i)
	        (cons v-or-fn acc))
	    acc))))

;; Creates a lambda which returns the same value or calls always the
;; same function with the same arguments.
;; (always 5)                 -> proc which takes no arguments and returns 5
;; (always random-integer 10) -> proc which takes one arguments and computes a random integer
(def (always v-or-fn . args)
  (if (procedure? v-or-fn)
    (cut apply v-or-fn args)
    (lambda () v-or-fn)))

;; composes a sequence of unary functions; per the mathematical function composition
;; the value flows right to left.
(def* compose1
  (() identity)
  ((f) f)
  ((f1 f2)
   (lambda (x) (f1 (f2 x))))
  ((f1 f2 . rest)
   ;; this results in more efficient code when there are non-local exits
   (apply rcompose1 (reverse [f1 f2 . rest]))))

;; like compose1, but with the values flowing left-to-right
(def* rcompose1
  (() identity)
  ((f) f)
  ((f1 f2)
   (lambda (x) (f2 (f1 x))))
  ((f1 f2 . rest)
   (rcompose1 f1 (apply rcompose1 f2 rest))))

;; composes a sequence of functions right-to-left, where the first function accepts
;; an arbitrary number of arguments and each successive function returns a single value.
;; Note: if you are composing unary functions use compose1 as it avoids allocation for
;; capturing and the arguments and applying.
(def* compose
  (() identity)
  ((f) f)
  ((f1 f2)
   (lambda args (f1 (apply f2 args))))
  ((f1 f2 . rest)
   ;; this results in more efficient code when there are non-local exits
   (apply rcompose (reverse [f1 f2 . rest]))))

;; like compose, but with the values flowing left-to-right
(def* rcompose
  (() identity)
  ((f) f)
  ((f1 f2)
   (lambda args (f2 (apply f1 args))))
  ((f1 f2 . rest)
   (rcompose f1 (apply rcompose f2 rest))))

;; like compose, but multiple value returns are turned into arguments for the next function
(def* compose/values
  (() values)
  ((f) f)
  ((f1 f2)
   (lambda args
     (call-with-values (lambda () (apply f2 args)) f1)))
  ((f1 f2 . rest)
   ;; this results in more efficient code when there are non-local exits
   (apply rcompose/values (reverse [f1 f2 . rest]))))

;; like compose/values, but with arguments flowing left-to-right
(def* rcompose/values
  (() values)
  ((f) f)
  ((f1 f2)
   (lambda args
     (call-with-values (lambda () (apply f1 args)) f2)))
  ((f1 f2 . rest)
   (rcompose/values f1 (apply rcompose/values f2 rest))))

;;; macro versions of function composition
(defrules @compose1 ()
  ((_) identity)
  ((_ f) f)
  ((_ f1 f2 rest ...)
   (lambda (x) (@compose1~ x f1 f2 rest ...))))

(defrules @compose1~ ()
  ((_ x f) (f x))
  ((recur x f rest ...)
   (f (recur x rest ...))))

(defrules @rcompose1 ()
  ((_) identity)
  ((_ f) f)
  ((_ f1 f2 rest ...)
   (lambda (x)
     (@rcompose1~ (f1 x) f2 rest ...))))

(defrules @rcompose1~ ()
  ((_ f) f)
  ((recur f ... fn)
   (fn (recur f ...))))

(defrules @compose ()
  ((_) identity)
  ((_ f) f)
  ((_ f1 f2 rest ...)
   (lambda args
     (@compose~ args f1 f2 rest ...))))

(defrules @compose~ ()
  ((_ args f) (apply f args))
  ((recur args f rest ...)
   (f (recur args rest ...))))

(defrules @rcompose ()
  ((_) identity)
  ((_ f) f)
  ((_ f1 f2 rest ...)
   (lambda args
     (@rcompose~ (apply f1 args) f2 rest ...))))

(defrules @rcompose~ ()
  ((_ f) f)
  ((recur f ... fn)
   (fn (recur f ...))))

(defrules @compose/values ()
  ((_) values)
  ((_ f) f)
  ((_ f1 f2 rest ...)
   (lambda args
     (@compose/values~ args f1 f2 rest ...))))

(defrules @compose/values~ ()
  ((_ args f)
   (apply f args))
  ((recur args f rest ...)
   (call-with-values (lambda () (recur args rest ...)) f)))

(defrules @rcompose/values ()
  ((_) values)
  ((_ f) f)
  ((_ f1 f2 rest ...)
   (lambda args
     (@rcompose/values~ (apply f1 args) f2 rest ...))))

(defrules @rcompose/values~ ()
  ((_ f) f)
  ((recur f ... fn)
   (call-with-values (lambda () (recur f ...)) fn)))

;; every-of returns true if all predicates match. If preds contains a
;; non-predicate, it is transformed into one using equal? as test if not
;; overridden by the test: keyword.
;;
;; Example:
;;  (every-of [number? fixnum?] 2) => #t
(def (every-of preds v test: (test equal?))
  (andmap (lambda (p) ((if (procedure? p) p (cut test p <>)) v)) preds))

;; any-of returns true if one predicate matches. If preds contains a
;; non-predicate, it is transformed into one using equal? as test if not
;; overridden by the test: keyword.
;;
;; Example:
;;  (any-of ['a number? "b"] 2) => #t
(def (any-of preds v test: (test equal?))
  (ormap (lambda (p) ((if (procedure? p) p (cut test p <>)) v)) preds))

;; pred-limit returns a predicate which returns a truthy value only
;; limit times, if limit is not false.
;;
;; Example:
;;  (filter (pred-limit even? 2)  [1 2 3 4 5 6]) => (2 4)
;;  (filter (pred-limit even? #f) [1 2 3 4 5 6]) => (2 4 6)
(def (pred-limit pred limit)
  (def (test v)
    (declare (fixnum))
    (if (> limit 0)
      (let (v (pred v))
        (when v
          (set! limit (1- limit)))
        v)
      #f))
  ;; TODO when contracts merge
  ;; (@contract (pred-limit pred limit) (or (not limit) (fixnum? limit)))
  (if limit
    (if (> limit 0) test (lambda (_) #f))
    pred))

;; pred-sequence returns a predicate which returns #t on the last element
;; of a matching sequence. The list elements are compared using equal?.
;; True is returned limit times, if limit is not #f.
;;
;; Example:
;;  (string-count "ab_ab" (pred-sequence [#\a #\b])) => 2
(def (pred-sequence list (limit #f))
  (declare (not safe) (fixnum))
  ;; TODO when contracts merge
  ;; (@contract (pred-sequence list limit) (or (not limit) (fixnum? limit)))
  (unless (fixnum? limit) (set! limit -1))
  (def seq list)
  (def (check v)
    (def is-match
      (and (or (equal? (car seq) v) (begin (set! seq list) #f)) ; reset
           (set! seq (cdr seq))
           (null? seq)))
      (when is-match
        (set! seq list) ; reset
        (when (> limit 0) (set! limit (1- limit))))
      is-match)
  (if (pair? list)
    (lambda (v) (if (zero? limit) #f (check v)))
    (lambda (_) #f)))

;; pred-and returns true when every pred invocation returned a truethy value.
(def (pred-and pred)
  (def res #t)
  (lambda (v)
    (if res
      (begin (set! res (pred v)) res)
      #f)))

;; pred-or returns true when any pred invocation returned a truethy value.
(def (pred-or pred)
  (def res #f)
  (lambda (v)
    (if res
      #t
      (begin (set! res (pred v)) res))))

;; pred-every-of returns a predicate which returns true if all predicates match.
;; If preds contains a non-predicate, it is transformed into one using equal?
;; as test if not overridden by the test: keyword.
;;
;; Example:
;;  ((pred-every-of [number? fixnum?]) 2) => #t
(def (pred-every-of preds test: (test equal?))
  (if (pair? preds)
    (let (preds (map (lambda (p) (if (procedure? p) p (cut test p <>))) preds))
      (lambda (v) (andmap (cut <> v) preds)))
    true))

;; pred-any-of returns a predicate which returns true if one predicate matches.
;; If preds contains a non-predicate, it is transformed into one using equal?
;; as test if not overridden by the test: keyword.
;;
;; Example:
;;  ((pred-any-of ['a number? "b"]) 2) => #t
(def (pred-any-of preds test: (test equal?))
  (if (pair? preds)
    (let (preds (map (lambda (p) (if (procedure? p) p (cut test p <>))) preds))
      (lambda (v) (ormap (cut <> v) preds)))
    false))
