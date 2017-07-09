;;; The SRFI-?? sort package -- quick sort			-*- Scheme -*-
;;; Copyright (c) 1998 by Olin Shivers.
;;; This code is open-source; see the end of the file for porting and
;;; more copyright information.
;;; Olin Shivers 10/98.

;;; Exports:
;;; (quick-sort  v < [start end]) -> vector
;;; (quick-sort! v < [start end]) -> unspecific

;;; This quicksort is at least somewhat non-naive -- it uses the median of
;;; three elements as the partition pivot, so pathological n^2 run time is
;;; much rarer (but not eliminated completely). If you really wanted to get
;;; fancy, you could use a random number generator to choose pivots. The key
;;; to this trick is that you only need to pick one random number for each
;;; *level* of recursion -- i.e. you only need (lg n) random numbers.  See the
;;; end of the file for a further trick, which I learned from Jon Bentley,
;;; for exploiting ordering procedures that discriminate 3 ways (<, =, >)
;;; to partition each subvector into 3 regions.

(define (quick-sort! v < . maybe-start+end)
  (let-vector-start+end (start end) quick-sort! v maybe-start+end
    (%quick-sort! v < start end)))

(define (quick-sort v < . maybe-start+end)
  (let-vector-start+end (start end) quick-sort v maybe-start+end
    (let ((ans (vector-copy v start end)))
      (%quick-sort! ans < 0 (- end start))
      ans)))


;;; %QUICK-SORT! is not exported.
;;; Preconditions:
;;;   V vector
;;;   START END fixnums
;;;   0 <= START, END <= (vector-length V)
;;; If these preconditions are ensured by the cover functions, you
;;; can safely change this code to use unsafe fixnum arithmetic and vector
;;; indexing ops, for *huge* speedup.
;;;
;;; We bail out to insertion sort for small ranges; feel free to tune the
;;; crossover -- it's just a random guess. If you don't have the insertion
;;; sort routine, just kill that branch of the IF and change the recursion
;;; test to (< 1 (- r l)) -- the code is set up to work that way.

(define (%quick-sort! v elt< start end)
  (let recur ((l start) (r end))	; Sort the range [l,r).
    (if (< 5 (- r l))

	;; Choose the median of V[l], V[r], and V[middle] for the pivot.
	(let* ((median (lambda (v1 v2 v3)
			 (receive (little big)
			     (if (elt< v1 v2) (values v1 v2) (values v2 v1))
			   (if (elt< big v3) big
			       (if (elt< little v3) v3 little)))))
	       (pivot (median (vector-ref v l)
			      (vector-ref v (quotient (+ l r) 2))
			      (vector-ref v (- r 1)))))

	  (let loop ((i l) (j (- r 1)))
	    (let ((i (let scan ((i i)) (if (elt< (vector-ref v i) pivot)
					   (scan (+ i 1))
					   i)))
		  (j (let scan ((j j)) (if (elt< pivot (vector-ref v j))
					   (scan (- j 1))
					   j))))
	      (if (< i j)
		  (let ((tmp (vector-ref v j)))
		    (vector-set! v j (vector-ref v i))	; Swap V[I]
		    (vector-set! v i tmp)		;  and V[J].
		    (loop (+ i 1) (- j 1)))

		  (begin (recur l i) (recur (+ j 1) r))))))

	;; Small segment => punt to insert sort.
	;; Use the dangerous subprimitive.
	;; NOTE: It can happen that (< r l), which means an empty range.
	;; If %INSERT-SORT! didn't tolerate such a degenerate range, we'd
	;; have to check for this case.
	(%insert-sort! v elt< l r)
	)))

;;; Note: If you're ambitious, you might consider a variant of this quicksort
;;; routine. If you have a comparison routine that returns *three*
;;; indicators -- <, =, or > -- then the partition code can partition the
;;; vector into a left part that is <, a middle region that is =, and a right
;;; part that is > the pivot. Here's how it is done:
;;;   The partition loop divides the range being partitioned into five
;;;   subranges:
;;;       =======<<<<<<<<<?????????>>>>>>>=======
;;;   where = marks a value that is = to the pivot, < marks a value that is
;;;   less than the pivot, ? marks a value that hasn't been scanned, and
;;;   > marks a value that is greater than the pivot. Let's consider the
;;;   rightward scan. If it checks a ? value that is <, it keeps scanning.
;;;   If the ? value is >, we stop the scan -- we are ready to start the
;;;   leftward scan and then do a swap. But if the rightward scan checks a
;;;   ? value that is =, we swap it *down* to the end of the initial chunk
;;;   of ====='s -- we exchange it with the leftmost < value -- and then
;;;   continue our rightward scan. The leftwards scan works in a similar
;;;   fashion, scanning past > elements, stopping on a < element, and swapping
;;;   up = elements. When we are done, we have a picture like this
;;;       ========<<<<<<<<<<<<>>>>>>>>>>=========
;;;   Then swap the = elements up into the middle of the vector to get
;;;   this:
;;;       <<<<<<<<<<<<=================>>>>>>>>>>
;;;   Then recurse on the <'s and >'s. Working out all the tricky little
;;;   boundary cases I leave an exercise to the interested reader.
;;;     -Olin


;;; Copyright
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; This code is
;;;     Copyright (c) 1998 by Olin Shivers.
;;; The terms are: You may do as you please with this code, as long as
;;; you do not delete this notice or hold me responsible for any outcome
;;; related to its use.
;;;
;;; Blah blah blah.


;;; Code tuning & porting
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; This is very portable code. It's R4RS with the following exceptions:
;;; - VECTOR-COPY
;;; - The scsh LET-VECTOR-START+END macro for parsing and defaulting optional
;;;   START/END arguments.
;;; - The R5RS multiple-value VALUES procedure and the simple RECEIVE
;;;   multiple value-binding macro.
;;; - The quicksort recursion bottoms out in a call to an insertion sort
;;;   routine, %INSERT-SORT!. But you could even punt this and go with pure
;;;   recursion in a pinch.
;;;
;;; This code is *tightly* bummed as far as I can go in portable Scheme.
;;;
;;; The internal primitive %QUICK-SORT! that does the real work can be
;;; converted to use unsafe vector-indexing and fixnum-specific arithmetic ops
;;; *if* you alter the two small cover functions to enforce the invariants.
;;; This should provide *big* speedups. In fact, all the code bumming I've
;;; done pretty much disappears in the noise unless you have a good compiler
;;; and also can dump the vector-index checks and generic arithmetic -- so
;;; I've really just set things up for you to exploit.
;;;
;;; The optional-arg parsing, defaulting, and error checking is done with a
;;; portable R4RS macro. But if your Scheme has a faster mechanism (e.g.,
;;; Chez), you should definitely port over to it. Note that argument defaulting
;;; and error-checking are interleaved -- you don't have to error-check
;;; defaulted START/END args to see if they are fixnums that are legal vector
;;; indices for the corresponding vector, etc.
