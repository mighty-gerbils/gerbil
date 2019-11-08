;;; -*- Gerbil -*-
;;; © t.brandscheid@gmail.com
;;; © vyzo
;;; Utility procedures

(export #t)

;; Repeat value or call function N times and return the result as list.
;; (repeat 2 5)                  -> (2 2 2 2 2)  ; repeat the value 2
;; (repeat random-interger 3 10) -> (8 3 5)      ; repeated function call with passed argument
(def (repeat v-or-fn n-times . args)
  (declare (fixnum) (not safe))
  (unless (fixnum? n-times)
    (error "Bad argument; expected fixnum" n-times))
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
  (lambda ()
    (if (procedure? v-or-fn)
      (apply v-or-fn args)
      v-or-fn)))


;; composes a sequence of unary functions; per the mathematical function composition
;; the value flows right to left.
(def* compose1
  (() identity)
  ((f) f)
  ((f1 f2)
   (lambda (x) (f1 (f2 x))))
  ((f1 f2 . rest)
   (compose1 f1 (apply compose1 f2 rest))))

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
   (compose f1 (apply compose f2 rest))))

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
   (compose/values f1 (apply compose/values f2 rest))))

;; like compose/values, but with arguments flowing left-to-right
(def* rcompose/values
  (() values)
  ((f) f)
  ((f1 f2)
   (lambda args
     (call-with-values (lambda () (apply f1 args)) f2)))
  ((f1 f2 . rest)
   (rcompose/values f1 (apply rcompose/values f2 rest))))
