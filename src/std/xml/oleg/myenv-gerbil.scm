;;; Support macros for oleg's code
;;; mostly lifted from oleg's myenv-chez

(define string-null? string-empty?)
(define nl (string #\newline))

(define (cout . args)
  (for-each (lambda (x)
              (if (procedure? x) (x) (display x)))
            args))

(define (cerr . args)
  (for-each (lambda (x)
              (if (procedure? x) (x (current-error-port))
		(display x (current-error-port))))
            args))

(define-syntax assert
  (syntax-rules ()
    ((assert _expr . _others)
     (letrec-syntax
       ((write-report
	  (syntax-rules ()
			; given the list of expressions or vars,
			; create a cerr form
	    ((_ exprs prologue)
	      (k!reverse () (cerr . prologue)
		(write-report* ! exprs #\newline)))))
	 (write-report*
	   (syntax-rules ()
	     ((_ rev-prologue () prefix)
	       (k!reverse () (nl . rev-prologue) (k!id !)))
	     ((_ rev-prologue (x . rest) prefix)
	       (symbol?? x
		 (write-report* (x ": " 'x #\newline . rev-prologue)
		   rest #\newline)
		 (write-report* (x prefix . rev-prologue) rest "")))))

			; return the list of all unique "interesting"
			; variables in the expr. Variables that are certain
			; to be bound to procedures are not interesting.
	 (vars-of
	   (syntax-rules (!)
	     ((_ vars (op . args) (k-head ! . k-args))
	       (id-memv?? op
		 (quote let let* letrec let*-values lambda cond quasiquote
		   case define do assert)
		 (k-head vars . k-args) ; won't go inside
				; ignore the head of the application
		 (vars-of* vars args (k-head ! . k-args))))
		  ; not an application -- ignore
	     ((_ vars non-app (k-head ! . k-args)) (k-head vars . k-args))
	     ))
	 (vars-of*
	   (syntax-rules (!)
	     ((_ vars () (k-head ! . k-args)) (k-head vars . k-args))
	     ((_ vars (x . rest) k)
	       (symbol?? x
		 (id-memv?? x vars
		   (vars-of* vars rest k)
		   (vars-of* (x . vars) rest k))
		 (vars-of vars x (vars-of* ! rest k))))))

	 (do-assert
	   (syntax-rules ()
	     ((_ () expr)			; the most common case
	       (do-assert-c expr))
	     ((_ () expr report: . others) ; another common case
	       (do-assert-c expr others))
	     ((_ () expr . others) (do-assert (expr and) . others))
	     ((_ exprs)
	       (k!reverse () exprs (do-assert-c !)))
	     ((_ exprs report: . others)
	       (k!reverse () exprs (do-assert-c ! others)))
	     ((_ exprs x . others) (do-assert (x . exprs) . others))))

	 (do-assert-c
	   (syntax-rules ()
	     ((_ exprs)
	       (or exprs
		 (begin (vars-of () exprs
			  (write-report !
			    ("failed assertion: " 'exprs nl "bindings")))
		   (error "assertion failure"))))
	     ((_ exprs others)
	       (or exprs
		 (begin (write-report others
			  ("failed assertion: " 'exprs))
		   (error "assertion failure"))))))
	 )
       (do-assert () _expr . _others)
       ))))

(define-syntax id-memv??
  (syntax-rules ()
    ((id-memv?? form (id ...) kt kf)
      (let-syntax
	((test
	   (syntax-rules (id ...)
	     ((test id _kt _kf) _kt) ...
	     ((test otherwise _kt _kf) _kf))))
	(test form kt kf)))))

(define-syntax symbol??
  (syntax-rules ()
    ((symbol?? (x . y) kt kf) kf)	; It's a pair, not a symbol
    ((symbol?? #(x ...) kt kf) kf)	; It's a vector, not a symbol
    ((symbol?? maybe-symbol kt kf)
      (let-syntax
	((test
	   (syntax-rules ()
	     ((test maybe-symbol t f) t)
	     ((test x t f) f))))
	(test abracadabra kt kf)))))

(define-syntax k!id			; Just the identity. Useful in CPS
  (syntax-rules ()
    ((k!id x) x)))

(define-syntax k!reverse
  (syntax-rules (!)
    ((k!reverse acc () (k-head ! . k-args))
      (k-head acc . k-args))
    ((k!reverse acc (x . rest) k)
      (k!reverse (x . acc) rest k))))

(define-syntax inc!		; Mutable increment
  (syntax-rules ()
    ((inc! x) (set! x (+ 1 x)))))
(define-syntax inc               ; Read-only increment
  (syntax-rules ()
    ((inc x) (+ 1 x))))

(define-syntax dec!		; Mutable decrement
  (syntax-rules ()
    ((dec! x) (set! x (- x 1)))))
(define-syntax dec		; Read-only decrement
  (syntax-rules ()
    ((dec x) (- x 1))))
