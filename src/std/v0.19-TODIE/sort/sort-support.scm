;;; The SRFI-?? sort package -- R5RS support			-*- Scheme -*-
;;; Copyright (c) 1998 by Olin Shivers.
;;; This code is open-source; see the end of the file for
;;; more copyright information.
;;; Olin Shivers 10/98.

;;; This file provides definitions of three syntax forms & two procedures
;;; that are used by the SRFI-?? sorting package:
;;; - (receive (var ...) mv-exp body ...)
;;;   The SRFI-?? multi-value-return binding form.
;;;
;;; - (let-vector-start+end (start end) proc vector arg-list
;;;     body ...)
;;;
;;; - (let-vector-start+end2 (start1 end1 start2 end2)
;;;                          proc vector1 vector2 arg-list
;;;     body ...)
;;;
;;; - (vector-copy  v [start end]) -> vector
;;; - (vector-copy! target-vec source-vec [start end]) -> unspecified
;;;
;;; These definitions are completely R5RS, with the addition of an ERROR
;;; procedure: (error msg-string offending-procedure . extra-arguments).

(define-syntax receive
  (syntax-rules ()
    ((receive vars mv-exp body ...)
     (let-values ((vars mv-exp)) body ...))))

;;; (let-vector-start+end (start end) proc vector arg-list
;;;   body ...)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; This macro parses optional start/end arguments from arg lists, defaulting
;;; them to 0 & (vector-length v), respectively, and checks them for
;;; correctness.
;;;
;;; - START and END are two variables that get bound in the scope of the body.
;;;
;;; - PROC is the procedure whose args we are parsing -- it's used in error
;;;   reports.
;;;
;;; - VECTOR is the corresponding vector. We use its length as END's default.
;;;
;;; - ARG-LIST is a "rest list" of procedure arguments. It should have at
;;;   most 2 elements.

(define-syntax let-vector-start+end
  (syntax-rules ()
    ((let-vector-start+end (start end) proc v-exp args-exp body ...)
     (receive (start end) (parse-vector-final-start+end proc v-exp args-exp)
       body ...))))

;;; (let-vector-start+end2 (start1 end1 start2 end2)
;;;                        proc vector1 vector2 arg-list
;;;   body ...)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; This is just like LET-VECTOR-START+END, except it handles two vectors and
;;; a pair of START/END pairs.
(define-syntax let-vector-start+end2
  (syntax-rules ()
    ((let-vector-start+end2 (start1 end1 start2 end2)
                            proc v1-exp v2-exp args-exp
       body ...)
     (receive (start1 end1 rest) (parse-vector-start+end proc v-exp1 args-exp)
       (receive (start2 end2) (parse-vector-start+end proc v-exp2 rest)
         body ...)))))

;;; Returns three values: start end rest

(define (parse-vector-start+end proc v args)
  (let ((vlen (vector-length v)))
    (if (pair? args)

	(let ((start (car args))
	      (args (cdr args)))
	  (if (or (not (integer? start)) (< start 0))
	      (error "Illegal subvector START spec" proc start v)
	      (receive (end args)
		  (if (pair? args)
		      (let ((end (car args))
			    (args (cdr args)))
			(if (or (not (integer? end)) (< vlen end))
			    (error "Illegal subvector END spec" proc end v)
			    (values end args)))
		      (values vlen args))
		(if (<= start end) (values start end args)
		    (error "Illegal subvector START/END spec"
			   proc start end v)))))

	(values 0 (vector-length v) '()))))

(define (parse-vector-final-start+end proc v args)
  (receive (start end rest) (parse-vector-start+end proc v args)
    (if (pair? rest) (error "Extra arguments to procedure" proc rest)
	(values start end))))

#;(define (vector-copy v . maybe-start+end)
  (let-vector-start+end (start end) vector-copy v maybe-start+end
    (let* ((len (- end start))
	   (ans (make-vector len)))
      (do ((i (- len 1) (- i 1))
	   (j (- end 1) (- j 1)))
	  ((< i 0) ans)
	(vector-set! ans i (vector-ref v j))))))

;;; This is not too well thought out, for a general utility.
#;(define (vector-copy! target src . maybe-start+end)
  (let-vector-start+end (start end) vector-copy! src maybe-start+end
    (let ((len (- end start)))
      (do ((i (- len 1) (- i 1))
	   (j (- end 1) (- j 1)))
	  ((< i 0))
	(vector-set! target i (vector-ref src j))))))

;;; This code is: Copyright (c) 1998 by Olin Shivers.
;;; The terms are: You may do as you please with this code, as long as
;;; you do not delete this notice or hold me responsible for any outcome
;;; related to its use.
;;;
;;; This is extremely portable code. It's R4RS with two exceptions:
;;; - The R5RS multiple-value VALUES procedure and the simple RECEIVE
;;;   multiple value-binding macro.
;;; - ERROR
