;;; A list merge sort of my own device. Needs to be commented & polished.
;;; -Olin

;;; (mlet ((var-list mv-exp) ...) body ...)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; A LET* form that handles multiple values.
(define-syntax mlet ; Multiple-value LET*
  (syntax-rules ()
    ((mlet ((() exp) rest ...) body ...)
     (begin exp (mlet (rest ...) body ...)))

    ((mlet (((var) exp) rest ...) body ...)
     (let ((var exp)) (mlet (rest ...) body ...)))

    ((mlet ((vars exp) rest ...) body ...)
     (let-values ((vars exp))
       (mlet (rest ...) body ...)))

    ((mlet () body ...) (begin body ...))))


(define (list-merge-sort lis elt<)              ; A stable, natural merge sort

  (define (getrun lis) ; Pick off a contiguous run of sorted data.
    (let lp ((xs (cdr lis)) (prev (car lis)) (i 1))
      (if (pair? xs)
	  (let ((x (car xs)))
	    (if (elt< x prev)
		(values i xs)
		(lp (cdr xs) x (+ i 1))))
	  (values i xs))))

  (define (cmerge a la b lb)	; Counted merge.
    (let recur ((x (car a)) (a a) (la la)
		(y (car b)) (b b) (lb lb))
      (if (elt< y x)
	  (cons y (let ((lb (- lb 1)))
		    (if (= lb 0) a
			(let ((b (cdr b)))
			  (recur x       a la
				 (car b) b lb)))))
	  (cons x (let ((la (- la 1)))
		    (if (= la 0) b
			(let ((a (cdr a)))
			  (recur (car a) a la
				 y       b lb))))))))

  (define (grow s ls ls2 u lw)	; The core of the sort algorithm.
    (if (or (<= lw ls) (not (pair? u)))
	(values s ls u)
	(mlet (((ls2) (let lp ((ls2 ls2))
			(let ((ls2*2 (+ ls2 ls2)))
			  (if (<= ls2*2 ls) (lp ls2*2) ls2))))
	       ;; LS2 is now the largest power of two <= LS.
	       ((lr u2)    (getrun u))	; Get a run.
	       ((t lt u3)  (grow u lr 1 u2 ls2))) ; Grow it.
	  (grow (cmerge s ls t lt) (+ ls lt) ; Merge &
		(+ ls2 ls2) u3 lw))))	     ;   loop.

  (define (first lis i)	; Nil-terminate LIS.
    (if (= 0 i) '()
	(cons (car lis) (first (cdr lis) (- i 1)))))

  (if (not (pair? lis)) '()		; Note: (LENGTH LIS) or any constant
      (mlet (((lr tail)  (getrun lis))	; guaranteed to be greater can be used
	     ((infinity) #o100000000)	; in place of INFINITY.
	     ((a la v)   (grow lis lr 1 tail infinity)))
	(first a la))))			; Properly nil-terminate answer.


;;; (list-merge-sort! lis <)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; A natural, stable, destructive, in-place merge sort.
;;; - natural: picks off maximal contiguous runs of pre-ordered data.
;;; - stable: won't invert the order of equal elements in the input list.
;;; - destructive, in-place: this routine allocates no extra working memory;
;;;   it simply rearranges the list with SET-CDR! operations.

(define (list-merge-sort! lis elt<)
  ;; (getrun lis) -> runlen last rest
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Pick a run of non-decreasing data off of non-empty list LIS.
  ;; Return the length of this run, the last cons cell of the run,
  ;; and the following list.
  (define (getrun lis)
    (let lp ((lis lis) (x (car lis)) (i 1) (next (cdr lis)))
      (if (pair? next)
	  (let ((y (car next)))
	    (if (elt< y x)
		(values i lis next)
		(lp next y (+ i 1) (cdr next))))
	  (values i lis next))))

  ;; (merge! a enda b endb) -> [m endm]
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; Destructively merge non-empty lists A & B.
  ;; This is tedious but simple code. Don't read unless necessary.
  ;; The last cons of A is ENDA. (The cdr of ENDA can be non-nil.)
  ;; the last cons of B is ENDB. (The cdr of ENDB can be non-nil.)
  ;;
  ;; Return the first and last cons cells of the merged list.
  ;; The merge is stable.
  (define (merge! a enda b endb)
    ;; The logic of these two loops is completely driven by these invariants:
    ;;   SCAN-A: (CDR PREV) = A. X = (CAR A). Y = (CAR B).
    ;;   SCAN-B: (CDR PREV) = B. X = (CAR A). Y = (CAR B).
    (letrec ((scan-a (lambda (prev  x a  y b)     ; Zip down A until we
		       (cond ((elt< y x)          ; find an elt > (CAR B).
			      (set-cdr! prev b)
			      (let ((next-b (cdr b)))
				(if (eq? b endb)
				    (begin (set-cdr! b a) enda) ; Done.
				    (scan-b b x a (car next-b) next-b))))

			     ((eq? a enda) (maybe-set-cdr! a b) endb) ; Done.

			     (else (let ((next-a (cdr a)))  ; Continue scan.
				     (scan-a a (car next-a) next-a y b))))))

	     (scan-b (lambda (prev  x a  y b)     ; Zip down B while its
		       (cond ((elt< y x)          ; elts are < (CAR A).
			      (if (eq? b endb)
				  (begin (set-cdr! b a) enda)      ; Done.
				  (let ((next-b (cdr b))) ; Continue scan.
				    (scan-b b x a (car next-b) next-b))))

			     (else (set-cdr! prev a)
				   (if (eq? a enda)
				       (begin (maybe-set-cdr! a b) endb) ; Done.
				       (let ((next-a (cdr a)))
					 (scan-a a (car next-a) next-a y b)))))))

	     ;; This guy only writes if he has to. Called at most once.
	     ;; Pointer equality rules.
	     (maybe-set-cdr! (lambda (pair val) (if (not (eq? (cdr pair) val))
						    (set-cdr! pair val)))))

      (let ((x (car a))  (y (car b)))
	(if (elt< y x)

	    ;; B starts the answer list.
	    (values b (if (eq? b endb)
			  (begin (set-cdr! b a) enda)
			  (let ((next-b (cdr b)))
			    (scan-b b x a (car next-b) next-b))))

	    ;; A starts the answer list.
	    (values a (if (eq? a enda)
			  (begin (maybe-set-cdr! a b) endb)
			  (let ((next-a (cdr a)))
			    (scan-a a (car next-a) next-a y b))))))))

  ;; (grow s ends ls ls2 u lw) -> [a enda la v]
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  ;; The core routine.
  ;; - S is a sorted list of length LS > 1, with final cons cell ENDS,
  ;;   not properly terminated.
  ;; - LS2 is some power of two <= LS.
  ;; - U is an unsorted list.
  ;; - LW is a positive integer.
  ;; Starting with S, and taking data from U as needed, produce
  ;; a sorted list of *at least* length LW, if there's enough data
  ;; (LW <= LS + length(U)), or use all of U if not.
  ;;
  ;; GROW takes maximal contiguous runs of data from U at a time;
  ;; it is allowed to return a list *longer* than LW if it gets lucky
  ;; with a long run.
  ;;
  ;; Returns:
  ;;   - A:    The result list (not properly terminated)
  ;;   - ENDA: The last cons cell of the result list.
  ;;   - LA:   The length of the result list
  ;;   - V:    The unused tail of U.
  (define (grow s ends ls ls2 u lw)
    (if (and (pair? u) (< ls lw))

	(mlet (((ls2) (let lp ((ls2 ls2))
			(let ((ls2*2 (+ ls2 ls2)))
			  (if (<= ls2*2 ls) (lp ls2*2) ls2))))
	       ;; LS2 is now the largest power of two <= LS.
	       ;; Just think of it as being roughly LS.
	       ((lr endr u2)   (getrun u))
	       ((t endt lt u3) (grow u endr lr 1 u2 ls2))
	       ((st end-st)    (merge! s ends t endt)))
	  (grow st end-st (+ ls lt) (+ ls2 ls2) u3 lw))

	(values s ends ls u)))

  ;; Note: (LENGTH LIS) or any constant guaranteed
  ;; to be greater can be used in place of INFINITY.
  (if (pair? lis)
      (mlet (((lr endr rest)  (getrun lis))
	     ((infinity)      #o100000000)
             ((a enda la v)   (grow lis endr lr 1 rest infinity)))
        (set-cdr! enda '())
        a)

      '()))
