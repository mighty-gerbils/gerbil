;; -*- Gerbil -*-
;;; © fare@tunes.org
;;;; List utilities
package: std/misc

(export
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
  when-list-or-empty
  slice slice-right
  slice! slice-right!)

(import (only-in :std/srfi/1 drop drop-right take take-right reverse!))

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
  (let* ((head (cons #f '())) ;; use a traditional implementation of queue as cons of tail and head
         (poke (lambda (val)
                 (let ((old-tail (car head))
                       (new-tail (cons val '())))
                   (set-cdr! old-tail new-tail)
                   (set-car! head new-tail))))
         (peek (lambda () (cdr head))))
    (set-car! head head)
    (fun poke peek)
    (peek)))

(defrules with-list-builder ()
  ((_ (c r) body1 body+ ...) (call-with-list-builder (lambda (c r) body1 body+ ...)))
  ((_ (c) body1 body+ ...) (with-list-builder (c _) body1 body+ ...)))

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
(defrules push! ()
  ((_ element list) (set! list (cons element list))))

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

;; Macro which evaluates the body only if the passed value is
;; a non-empty list, otherwise an empty list is returned.
(defrules when-list-or-empty ()
  ((_ list body body* ...)
   (if (not (pair? list))
     []
     (begin body body* ...))))

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

;; Macro to cut out a sublist of lst by mutation.
;; Starting from the left at start, containing limit elements.
;; (def lst [1 2 3 4])
;; (slice! lst 2)
;; => (3 4)
;;
;; lst
;; => (1 2)
(defrules slice! ()
  ((m lst start)
   (m lst start #f))
  ((m lst start limit)
   ;; prevent list mutation in case nothing has to be done here
   (if (and limit (< limit 1))
     []
     (let loop ((newlist []) ; will override the existing list
		(sublist []) ; return value accumulator
                (list lst)
		(i 0)
		(taken 0))
       (if (or (null? list)
               (and limit (= limit taken)))
         (begin
           (set! lst (reverse! newlist))
           (reverse! sublist))
         (if (< i start)
           (loop (cons (car list) newlist) sublist (cdr list) (1+ i) taken)
           (loop newlist (cons (car list) sublist) (cdr list) (1+ i) (1+ taken))))))))

;; Macro to cut out a sublist of lst by mutation.
;; Starting from the right at start, containing limit elements.
;; (def lst [1 2 3 4])
;; (slice-right! lst 2)
;; => (1 2)
;;
;; lst
;; => (3 4)
(defrules slice-right! ()
  ((m lst start)
   (m lst start #f))
  ((m lst start limit)
   ;; prevent list mutation in case nothing has to be done here
   (if (and limit (< limit 1))
     []
     (let loop ((newlist []) ; will override the existing list
		(sublist []) ; return value accumulator
		(list (reverse! lst))
		(i 0)
		(taken 0))
       (if (or (null? list)
               (and limit (= limit taken)))
         (begin
           (set! lst newlist)
           sublist)
         (if (< i start)
           (loop (cons (car list) newlist) sublist (cdr list) (1+ i) taken)
           (loop newlist (cons (car list) sublist) (cdr list) (1+ i) (1+ taken))))))))
