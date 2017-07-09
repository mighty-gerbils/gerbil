;;; The SRFI-?? sort package -- sorted predicates
;;; Olin Shivers 10/98.
;;;
;;; (list-sorted? lis <) -> boolean
;;; (vector-sorted? v < [start end]) -> boolean

(define (list-sorted? list <)
  (or (not (pair? list))
      (let lp ((prev (car list)) (tail (cdr list)))
	(or (not (pair? tail))
	    (let ((next (car tail)))
	      (and (not (< next prev))
		   (lp next (cdr tail))))))))

(define (vector-sorted? v elt< . maybe-start+end)
  ;; vyzo: add check for unsafe compilation, this is exported
  (unless (vector? v)
    (error "Expected vector" v))
  (let-vector-start+end (start end) vector-sorted? v maybe-start+end
    (or (>= start end) ; Empty range
	(let lp ((i (+ start 1)) (vi-1 (vector-ref v start)))
	  (or (>= i end)
	      (let ((vi (vector-ref v i)))
		(and (not (elt< vi vi-1))
		     (lp (+ i 1) vi))))))))

;;; Copyright and porting non-notices
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Give me a break. It's fifteen lines of code. I place this code in the
;;; public domain; help yourself.
;;;
;;; This code is completely R5RS except for the LET-VECTOR-START+END
;;; macro used to handle defaulting & checking the optional START/END args
;;; passed to VECTOR-SORTED?. There's an R5RS definition of this macro in
;;; sort-support-macs.scm, which comes with this SRFI reference implementation.
;;;
;;; If your Scheme has a faster mechanism for handling optional arguments
;;; (e.g., Chez), you should definitely port over to it. Note that argument
;;; defaulting and error-checking are interleaved -- you don't have to
;;; error-check defaulted START/END args to see if they are fixnums that are
;;; legal vector indices for the corresponding vector, etc.
