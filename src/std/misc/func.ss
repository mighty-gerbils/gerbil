;;; -*- Gerbil -*-
;;; © t.brandscheid@gmail.com
;;; © vyzo
;;; Utility procedures

(export
  repeat
  always)

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
