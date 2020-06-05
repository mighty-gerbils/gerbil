;; -*- Gerbil -*-
;;; © fare@tunes.org
;;;; List utilities

(export
  unique unique! duplicates
  alist?
  plist?
  plist->alist
  alist->plist
  length=? length=n?
  length<? length<n? length<=? length<=n?
  length>? length>n? length>=? length>=n?
  call-with-list-builder with-list-builder
  snoc append1
  for-each!
  push!
  flatten
  flatten1
  rassoc
  when/list when-list-or-empty listify keyword-when
  slice slice-right
  slice! slice-right!
  butlast
  split
  take-until take-until! drop-until
  group
  every-consecutive?
  psetq psetv pset psetq! psetv! pset! pgetq-set! pgetv-set! pget-set!
  premq premv prem premq! premv! prem!
  separate-keyword-arguments
  )

(import (only-in ../srfi/1
                 drop drop-right drop-right! take take-right take! reverse!
                 take-while take-while! drop-while
                 delete-duplicates delete-duplicates!)
        ../sugar)

(defalias unique delete-duplicates)
(defalias unique! delete-duplicates!)

;; duplicates returns a cons cells (item . count) for every element
;; that occurs more than once in the list. If key: is not false
;; the unary procedure is applied to every element before comparison.
;;
;; Example:
;;  (duplicates ['a 1 'a]) => ((a . 2))
(def (duplicates list (test equal?) key: (key #f))
  (if (pair? list)
    (let (ht (make-hash-table test: test))
      (if key
        (for-each (lambda (v) (hash-update! ht (key v) 1+ 0)) list)
        (for-each (cut hash-update! ht <> 1+ 0) list))
      (hash-fold
       (lambda (a b acc) (if (> b 1) (cons [a . b] acc) acc))
       [] ht))
    []))

;; This function checks if the list is a proper association-list.
;; ie it has the form [[key1 . val1] [key2 . val2]]
(def (alist? alist)
  (match alist
    ([] #t)
    ([[sym . val] . rest]
     (alist? rest))
    (v #f)))

;; This function checks if the list is a proper property-list.
;; ie it has the form [key1 val1 key2 val2]
(def (plist? plist)
  (match plist
    ([] #t)
    ([key val . rest]
     (plist? rest))
    (v #f)))

;; This function transform a property list (k1 v1 k2 v2 ...) into
;; an association list ((k1 . v1) (k2 . v2) ...).
(def (plist->alist plist)
  (let loop ((p plist))
    (match p
      ([k v . rest] (cons (cons k v) (loop rest)))
      ([] [])
      (else (error "improper plist" plist)))))

;; This function transform an association list ((k1 . v1) (k2 . v2) ...) into
;; an association list (k1 v1 k2 v2 ...)
(def (alist->plist alist)
  (let loop ((p alist))
    (match p
      ([[k . v] . rest] (append [k v] (loop rest)))
      ([] [])
      (else (error "improper alist" alist)))))

;; Are the two lists of the same length. Note: diverges if either list is circular.
(def (length=? x y) ;; Same as (= (length x) (length y))
  (let ((nx? (not (pair? x)))
        (ny? (not (pair? y))))
    (cond
     (nx? ny?)
     (ny? #f)
     (else (length=? (cdr x) (cdr y))))))

;; Is the list of a given length?
(def (length=n? x n) ;; Efficient version of (= (length x) n)
  (cond
   ((fixnum? n)
    (and (fx<= 0 n)
         (let loop ((x x) (n n))
           (cond
            ((not (pair? x)) (fxzero? n))
            ((fxzero? n) #f)
            (else (loop (cdr x) (fx- n 1)))))))
   ((integer? n)
    (and (<= 0 n ##max-fixnum)
         (length=n? x (inexact->exact n))))
   ((number? n) #f)
   (else (error "not a number" n))))

;; Is the first list strictly shorter than the latter?
(def (length<? x y) ;; Efficient version of (< (length x) (length y))
  (let ((nx? (not (pair? x)))
        (ny? (not (pair? y))))
    (cond
     (nx? (not ny?))
     (ny? #f)
     (else (length<? (cdr x) (cdr y))))))

(def (length<=n? x n) ;; Efficient version of (<= (length x) n)
  (cond
   ((fixnum? n)
    (and (fx<= 0 n)
         (let loop ((x x) (n n))
           (cond
            ((not (pair? x)) #t)
            ((fxzero? n) #f)
            (else (loop (cdr x) (fx- n 1)))))))
   ((real? n)
    (and (positive? n)
         (or (< ##max-fixnum n)
             (length<=n? x (inexact->exact (floor n))))))
   (else (error "not a real number" n))))

(def (length<n? x n) ;; Efficient version of (< (length x) n)
  (cond
   ((fixnum? n)
    (and (fxpositive? n) (length<=n? x (fx- n 1))))
   ((real? n)
    (and (positive? n)
         (or (< ##max-fixnum n)
             (length<n? x (inexact->exact (ceiling n))))))
   (else (error "not a real number" n))))

(def (length<=? x y) (not (length<? y x)))
(def (length>? x y) (length<? y x))
(def (length>n? x n) (not (length<=n? x n)))
(def (length>=? x y) (length<=? y x))
(def (length>=n? x n) (not (length<n? x n)))

(defrules with-list-builder ()
  ((_ (c) body1 body+ ...) (with-list-builder (c _) body1 body+ ...))
  ((_ (poke peek) body1 body+ ...)
   (let ((head (cons #f '()))) ;; use a traditional implementation of queue as cons of tail and head
     (set-car! head head)
     (defrules poke ()
       ((_ val) (let ((old-tail (car head))
                      (new-tail (cons val '())))
                  (set-cdr! old-tail new-tail)
                  (set-car! head new-tail)))
       ((_ . _) (error "invalid number of arguments" poke))
       (_ (lambda (val) (poke val))))
     (defrules peek ()
       ((_) (cdr head))
       ((_ . _) (error "invalid number of arguments" peek))
       (_ (lambda () (peek))))
     body1 body+ ... (peek))))

;; Build a list, by calling a building function that takes two arguments:
;; The first, which could be called poke! (or put!, enqueue!, append-one-element-at-the-end!)
;; takes an element and puts it at the end of the list. The second, which could be called peek
;; (or get, get-list-so-far, get-shared-list-that-is-mutated-when-you-put), returns the
;; list of elements that poke! has been called with, so far. When the building function returns,
;; call-with-list-builder will return the state of the list, as if by calling the peek function.
;; NB: this implementation accumulates elements by mutating a shared queue of cons cells;
;; in case of multiple entries by continuations, that same list is shared by all executions.
;; : (list X) <- (<- (<- X) ((list X) <-))
(def (call-with-list-builder fun)
  (with-list-builder (poke peek) (fun poke peek)))

;; Like cons, but puts the element at the end of the list
;; (List A) <- A (List A)
(def (snoc x l) (append l [x]))

;; Append one element at the end of a list
;; (List A) <- (List A) A
(def (append1 l x) (append l [x]))

;; Variant of for-each with arguments reversed, which nest-s nicer.
;; The name also makes it more obvious that this is used for side-effects.
;; Unlike for-each, also works on improper lists, ended by non-pairs other than '()
;; : <- (list X) (<- X)
(def (for-each! list fun)
  (match list
    ([elem . more] (fun elem) (for-each! more fun))
    (_ (void))))

;; Analog to CL:PUSH, hence the argument order.
;; TODO: use setq-macro, look at the set! defn in prelude/core.ss
(defrule (push! element list) (set! list (cons element list)))

;; Removes all nested layers of a proper list.
;; [1 [2]]   -> [1 2]
;; [1 [[2]]] -> [1 2]
(def (flatten list-of-lists)
  (foldr (lambda (v acc)
	   (cond
	    ((null? v) acc)
	    ((pair? v) (append (flatten v) acc))
	    (else (cons v acc))))
	 []
	 list-of-lists))

;; Removes one layer of a nested proper list.
;; [1 [2]]   -> [1 2]
;; [1 [[2]]] -> [1 [2]]
(def (flatten1 list-of-lists)
  (foldr (lambda (v acc)
	   (cond
	    ((null? v) acc)
	    ((pair? v) (append v acc))
	    (else (cons v acc))))
	 []
	 list-of-lists))

;; Returns the first pair in alist whose cdr satisfies cmpf, or #f otherwise.
;; Analog to assoc, but checks cdr instead of car.
;; (rassoc 2 '((a . 1) (b . 2) (c . 3)))      => (b . 2)
;; (rassoc "a" '((1 . "a") (2 . "b")))        => #f
;; (rassoc "a" '((1 . "a") (2 . "b")) equal?) => (1 . "a")
(def (rassoc x alist (cmpf eqv?))
  (let loop ((lst alist))
    (match lst
      ([(? pair? head) . tail]
       (if (cmpf x (cdr head))
         head
         (loop tail)))
      (else #f))))


;; Variant of when that returns an empty list [] rather than (void) when then condition is false,
;; making it suitable for use when appending lists, or splicing with `,@ or [...].
(defrule (when/list cond list) (if cond list '()))

;; Macro that evaluates the body only if the passed value is
;; a non-empty list, otherwise an empty list is returned.
(defrule (when-list-or-empty list body body+ ...)
  (when/list (pair? list) (begin body body+ ...)))

;; Returns its argument if it is a list (empty or not), or else empty.
(def (listify x) (when/list (pair? x) x))

;; Returns a list of the keyword and the value when the condition holds.
;; By default, the value is the same thing as the condition.
(def (keyword-when keyword condition (value condition))
  (when/list condition [keyword value]))

;; Returns a list from lst, starting from the left at start,
;; containing limit elements.
;; (slice [1 2 3 4] 2)   => (3 4)
;; (slice [1 2 3 4] 2 1) => (3)
(def (slice lst start (limit #f))
  (if limit
    (take (drop lst start) limit)
    (drop lst start)))

;; Returns a list from lst, starting from the right at start,
;; containing limit elements.
;; (slice-right [1 2 3 4] 2)   => (1 2)
;; (slice-right [1 2 3 4] 2 1) => (2)
(def (slice-right lst start (limit #f))
  (if limit
    (take-right (drop-right lst start) limit)
    (drop-right lst start)))

;; Returns a sublist by potentially updating the input list lst.
;; Starting from the left at start, containing limit elements.
;; (def lst [1 2 3 4 5])
;; (slice! lst 2 2)
;; => (3 4)
(def (slice! lst start (limit #f))
  (if limit
    (take! (drop lst start) limit)
    (drop lst start)))

;; Returns a sublist by potentially updating the input list lst.
;; Starting from the right at start, containing limit elements.
;; (def lst [1 2 3 4 5])
;; (slice-right! lst 2 2)
;; => (2 3)
(def (slice-right! lst start (limit #f))
  (if limit
    (take-right (drop-right! lst start) limit)
    (drop-right! lst start)))

;; butlast returns a copy of the proper list lst, except the last element.
;; When lst is empty, lst is returned as it is.
;; (butlast [1 2 3]) => (1 2)
;; (butlast [])      => ()
(def (butlast lst)
  (if (pair? lst)
    (take lst (1- (length lst)))
    lst))

;; split the list lst into a list-of-lists using the value or
;; unary procedure stop. If limit is set, split the list only limit times.
;;
;; Examples:
;;  (split '(1 2 "hi" 3 4) string?)    => ((1 2) (3 4))
;;  (split '(1 2 "hi") string?)        => ((1 2))
;;  (split [1 2 0 3 4 0 5 6] 0 1)      => ((1 2) (3 4 0 5 6))
;;  (split [] number?)                 => ()
(def (split lst stop (limit #f))
  (declare (fixnum))
  (def test (if (procedure? stop) stop (cut equal? <> stop)))
  (let loop ((xs lst) (buf []) (n (if (fixnum? limit) limit -1)))
    (match* ((zero? n) xs)
      ((#f [])       (if (pair? buf) [(reverse! buf)] []))
      ((#f [v . xs]) (if (test v)
                       (cons (reverse! buf) (loop xs [] (1- n)))
                       (loop xs (cons v buf) n)))
      ((#t rest)     (if (zero? limit) lst
                       (if (pair? rest) [rest] []))))))

;; take-until returns a list with all elements before pred returns #t.
;;
;; Example:
;;  (take-until number? ['a [] "hi" 1 'c]) => (a () "hi")
(def (take-until  pred list) (take-while  (? (not pred)) list))
(def (take-until! pred list) (take-while! (? (not pred)) list))

;; drop-until returns a list with all elements from the point on pred returns #t.
;;
;; Example:
;;  (drop-until number? ['a [] "hi" 1 'c]) => (1 c)
(def (drop-until pred list) (drop-while (? (not pred)) list))

;; group consecutive elements of the list lst into a list-of-lists.
;;
;; Example:
;;  (group [1 2 2 3 1 1]) => ((1) (2 2) (3) (1 1))
(def (group lst (test equal?))
  (def (helper)
    (let loop ((rest lst) (buf []) (acc []))
      (match rest
	([it . rest]
	 (if (or (null? buf) (test it (car buf)))
	   (loop rest (cons it buf) acc)
	   (loop rest [it] (cons buf acc))))
	(else (reverse! (cons buf acc))))))
  (match lst
    ([] lst)
    ([a] [[a]])
    (_ (helper))))

;; Returns a boolean that is true if any two consecutive terms in the list satisfy the predicate.
;; In particular, if the predicate is a partial order predicate (respectively a strict partial
;; order predicate), then the list is totally ordered (respectively strictly totally ordered)
;; according to the predicate.
;; (every-consecutive? < [1 2 3 4 5])
;; => #t
(def (every-consecutive? f l)
  (or (null? l)
      (let loop ((x (car l)) (r (cdr l)))
        (match r ([] #t) ([y . rr] (and (f x y) (loop y rr)))))))

;; The plist definitions below are patterned after pgetq and friends from gerbil/runtime/gx-gambc0.scm
(defrule (define-pset pset cmp)
  (def (pset lst key val)
     (let lp ((rest lst) (rhd []))
       (match rest
         ([k v . rest]
          (if (cmp k key)
            (foldl cons (cons* key val rest) rhd)
            (lp rest (cons* v k rhd))))
         (else
          (cons* key val lst))))))

(define-pset psetq eq?)
(define-pset psetv eqv?)
(define-pset pset equal?)

;; Note how the current implementation ensures that the cons cell whose car
;; holds the value for a given key will never change, though there is
;; currently no pgetq-cell function to get to it.
;; Also, we privilege recently added keys by pushing them to the front of the
;; plist rather than to its end.
(defrule (define-pset! pset! cmp)
  (def (pset! lst key val)
    (unless (pair? lst) (error "Cannot destructively modify an empty plist" pset! lst key val))
    (let lp ((l lst))
      (match l
        ([k v . r] (if (cmp k key) (set-car! (cdr l) val) (lp r)))
        ([] (match lst ([k1 . v1r] (set-car! lst key) (set-cdr! lst (cons* val k1 v1r)))))
        (_ (error "Invalid plist" pset! lst key val))))))

(define-pset! psetq! eq?)
(def pgetq-set! (case-lambda ((k l v) (psetq! l k v)) ((k l d v) (psetq! l k v))))
(define-pset! psetv! eqv?)
(def pgetv-set! (case-lambda ((k l v) (psetv! l k v)) ((k l d v) (psetv! l k v))))
(define-pset! pset! equal?)
(def pget-set! (case-lambda ((k l v) (pset! l k v)) ((k l d v) (pset! l k v))))

(defrule (define-prem prem cmp)
  (def (prem key lst)
    (let lp ((tl lst) (rhd []))
      (match tl
        ([k v . r] (if (cmp k key) (foldl cons r rhd) (lp r (cons* v k rhd))))
        ([] lst)
        (_ (error "Invalid plist" 'prem key lst))))))

(define-prem premq eq?)
(define-prem premv eqv?)
(define-prem prem equal?)

(defrule (define-prem! prem! cmp)
  (def (prem! key lst)
    (def (invalid) (error "Invalid plist" prem! key lst))
    (let lp ((p lst) (prev #f))
      (match p
        ([k1 _ . r]
         (if (cmp key k1)
           (if prev
             (set-cdr! prev r)
             (match r
               ([k2 . v2r] (set-car! p k2) (set-cdr! p v2r))
               ([] (error "Cannot remove last key from plist" prem! key lst))
               (_ (invalid))))
           (lp r (cdr p))))
        ([] (void)) ; key not found: NOP
        (_ (invalid))))))

(define-prem! premq! eq?)
(define-prem! premv! eqv?)
(define-prem! prem! equal?)

;; TODO: make sure this faithfully matches keyword-dispatch in gerbil/runtime/gx-gambc0.scm
(def (separate-keyword-arguments args (positionals-only? #f))
  (let lp ((rest args) (positionals []) (keywords []))
    (match rest
      ([#!rest . r] (values (foldl cons (if positionals-only? r rest) positionals) (reverse keywords)))
      ([#!key k . r] (lp r (if positionals-only? (cons k positionals) (cons* k '#!key positionals)) keywords))
      ([(? keyword? k) v . r] (lp r positionals (cons* v k keywords)))
      ([a . r] (lp r (cons a positionals) keywords))
      ([] (values (reverse positionals) (reverse keywords))))))

