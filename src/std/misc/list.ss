;; -*- Gerbil -*-
;;; © fare@tunes.org
;;;; List utilities

(export
  unique unique! duplicates
  length=? length=n?
  length<? length<n? length<=? length<=n?
  length>? length>n? length>=? length>=n?
  snoc append1
  for-each!
  push! pop!
  flatten flatten1
  rassoc
  when/list when-list-or-empty listify keyword-when
  slice slice-right
  slice! slice-right!
  butlast
  split
  take-until take-until! drop-until
  group-consecutive group-n-consecutive group-same
  map/car
  every-consecutive?
  separate-keyword-arguments
  first-and-only
  )
;; The following are exporting these for backward compatibility only;
;; we'll deprecate these reexported symbols as soon as we have a deprecation facility.
(export
  (import: ./list-builder)
  (import: ./alist)
  (import: ./plist))

(import ./list-builder ./alist ./plist
        (only-in ../srfi/1
                 drop drop-right drop-right! take take-right take! reverse!
                 take-while take-while! drop-while
                 delete-duplicates delete-duplicates!
                 split-at)
        :std/error
        :std/sugar
        :std/assert)

(defalias unique delete-duplicates)
(defalias unique! delete-duplicates!)

;; duplicates returns a cons cells (item . count) for every element
;; that occurs more than once in the list. If key: is not false
;; the unary procedure is applied to every element before comparison;
;; if it is false, it is as if the procedure is identity.
;;
;; Example:
;;  (duplicates ['a 1 'a]) => ((a . 2))
;; (List X) ?(Fun Y Y -> Bool) key: ?(OrFalse (Fun X -> Y))
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

;; Are the two lists of the same length. Note: diverges if either list is circular.
;; : (List X) (List Y) -> Bool
(def (length=? x y) ;; Same as (= (length x) (length y))
  (let ((nx? (not (pair? x)))
        (ny? (not (pair? y))))
    (cond
     (nx? ny?)
     (ny? #f)
     (else (length=? (cdr x) (cdr y))))))

;; Is the list of a given length?
;; : (List X) Nat -> Bool
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
   (else (raise-bad-argument length=n? "number" n))))

;; Is the first list strictly shorter than the latter?
;; : (List X) (List Y) -> Bool
(def (length<? x y) ;; Efficient version of (< (length x) (length y))
  (let ((nx? (not (pair? x)))
        (ny? (not (pair? y))))
    (cond
     (nx? (not ny?))
     (ny? #f)
     (else (length<? (cdr x) (cdr y))))))

;; : (List X) Nat -> Bool
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
   (else (raise-bad-argument length<=n? "real number" n))))

;; : (List X) Nat -> Bool
(def (length<n? x n) ;; Efficient version of (< (length x) n)
  (cond
   ((fixnum? n)
    (and (fxpositive? n) (length<=n? x (fx- n 1))))
   ((real? n)
    (and (positive? n)
         (or (< ##max-fixnum n)
             (length<n? x (inexact->exact (ceiling n))))))
   (else (raise-bad-argument length<n? "real number" n))))

;; : (List X) (List Y) -> Bool
(def (length<=? x y) (not (length<? y x)))

;; : (List X) (List Y) -> Bool
(def (length>? x y) (length<? y x))

;; : (List X) Nat -> Bool
(def (length>n? x n) (not (length<=n? x n)))

;; : (List X) (List Y) -> Bool
(def (length>=? x y) (length<=? y x))

;; : (List X) Nat -> Bool
(def (length>=n? x n) (not (length<n? x n)))

;; Like cons, but puts the element at the end of the list
;; : A (List A) -> (List A)
(def (snoc x l) (append l [x]))

;; Append one element at the end of a list
;; : (List A) A -> (List A)
(def (append1 l x) (append l [x]))

;; Variant of for-each with arguments reversed, which nest-s nicer.
;; The name also makes it more obvious that this is used for side-effects.
;; Unlike for-each, also works on improper lists, ended by non-pairs other than '()
;; : (list X) (Fun X ->) ->
(def (for-each! list fun)
  (match list
    ([elem . more] (fun elem) (for-each! more fun))
    (_ (void))))

;; Analog to CL:PUSH, hence the argument order.
;; TODO: use setq-macro, look at the set! defn in prelude/core.ss
(defrule (push! element list) (set! list (cons element list)))

;; Analog to CL:POP.
;; TODO: use setq-macro, look at the set! defn in prelude/core.ss
(defrule (pop! list) (let (l list) (and (pair? l) (begin0 (car l) (set! list (cdr l))))))

;; Removes all nested layers of a proper list.
;; [1 [2]]   -> [1 2]
;; [1 [[2]]] -> [1 2]
(def (flatten l)
  (def (f v acc)
    (match v
      ([] acc)
      ([a . b] (f a (f b acc)))
      (else (cons v acc))))
  (f l []))

;; Removes one layer of a nested proper list.
;; [1 [2]]   -> [1 2]
;; [1 [[2]]] -> [1 [2]]
;; : (List (List X)) -> (List X)
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
;; : Y (List (Pair X Y)) ?(Y Y -> Bool) -> (OrFalse (Pair X Y))
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
(defrule (when/list cond list list+ ...) (if cond (begin list list+ ...) '()))

;; Macro that evaluates the body only if the passed value is
;; a non-empty list, otherwise an empty list is returned.
(defrule (when-list-or-empty list body body+ ...)
  (when/list (pair? list) (begin body body+ ...)))

;; Returns its argument if it is a list (empty or not), or else empty.
(def (listify x) (when/list (pair? x) x))

;; Returns a list of the keyword and the value when the condition holds.
;; By default, the value is the same thing as the condition.
(defrules keyword-when ()
  ((_ keyword condition) (let (value condition) (when/list value [keyword value])))
  ((_ keyword condition value) (when/list condition [keyword value])))

;; Returns a list from lst, starting from the left at start,
;; containing limit elements.
;; (slice [1 2 3 4] 2)   => (3 4)
;; (slice [1 2 3 4] 2 1) => (3)
;; : (List X) Nat ?(OrFalse Nat) -> (List X)
(def (slice lst start (limit #f))
  (if limit
    (take (drop lst start) limit)
    (drop lst start)))

;; Returns a list from lst, starting from the right at start,
;; containing limit elements.
;; (slice-right [1 2 3 4] 2)   => (1 2)
;; (slice-right [1 2 3 4] 2 1) => (2)
;; : (List X) Nat ?(OrFalse Nat) -> (List X)
(def (slice-right lst start (limit #f))
  (if limit
    (take-right (drop-right lst start) limit)
    (drop-right lst start)))

;; Returns a sublist by potentially updating the input list lst.
;; Starting from the left at start, containing limit elements.
;; (def lst [1 2 3 4 5])
;; (slice! lst 2 2)
;; => (3 4)
;; : (List X) Nat ?(OrFalse Nat) -> (List X)
(def (slice! lst start (limit #f))
  (if limit
    (take! (drop lst start) limit)
    (drop lst start)))

;; Returns a sublist by potentially updating the input list lst.
;; Starting from the right at start, containing limit elements.
;; (def lst [1 2 3 4 5])
;; (slice-right! lst 2 2)
;; => (2 3)
;; : (List X) Nat ?(OrFalse Nat) -> (List X)
(def (slice-right! lst start (limit #f))
  (if limit
    (take-right (drop-right! lst start) limit)
    (drop-right! lst start)))

;; butlast returns a copy of the proper list lst, except the last element.
;; When lst is empty, lst is returned as it is.
;; (butlast [1 2 3]) => (1 2)
;; (butlast [])      => ()
;; : (List X) -> (List X)
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
;; : (List X) Nat ?(OrFalse Nat) -> (List X)
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
;; : (List X) (X -> Bool) -> (List X)
(def (take-until  pred list) (take-while  (? (not pred)) list))
(def (take-until! pred list) (take-while! (? (not pred)) list))

;; drop-until returns a list with all elements from the point on pred returns #t.
;;
;; Example:
;;  (drop-until number? ['a [] "hi" 1 'c]) => (1 c)
;; : (List X) (X -> Bool) -> (List X)
(def (drop-until pred list) (drop-while (? (not pred)) list))

;; group consecutive equal elements of the list lst into a list-of-lists.
;; Example:
;;  (group-consecutive [1 2 2 3 1 1]) => ((1) (2 2) (3) (1 1))
;; : (List X) ?(X X -> Bool) -> (List (List X))
(def (group-consecutive l (test equal?))
  (def (continue-group rest latest inner outer)
    (match rest
      ([] (reverse (cons (reverse inner) outer)))
      ([elem . r] (if (test latest elem)
                    (continue-group r elem (cons elem inner) outer)
                    (new-group elem r (cons (reverse inner) outer))))))
  (def (new-group elem rest outer)
    (continue-group rest elem [elem] outer))
  (match l
    ([] [])
    ([a . r] (new-group a r []))))

;; group consecutive clusters of n elements of the list into a list-of-lists
;; The last element of the list returned may have fewer than n elements.
;; : Nat+ (List X) -> (List (List X))
(def (group-n-consecutive n list)
  (cond
   ((null? list) [])
   ((length<=n? list n) [list])
   (else (let-values (((head tail) (split-at list n))) (cons head (group-n-consecutive n tail))))))

;; Given a list l of X, a function key from X to Y, and a presumably empty table of Y to a list of X
;; (by default an empty hash-table), add the elements in l to t, then return the list for each added
;; key y in t of the list of elements xs with that same key y (for the equality predicate of t).
;; Otherwise preserve the order of appearance of keys and elements for each key.
;; : (List X) key: ?(Fun X -> Y) table: ?(Table Y -> (List X)) -> (List (List X))
(def (group-same l key: (key identity) table: (t (make-hash-table)))
  (def ys (with-list-builder (c)
            (for-each! l
              (lambda (x)
                (def y (key x))
                (def p (hash-get t y))
                (if p
                  (hash-put! t y (cons x p))
                  (begin
                    (hash-put! t y (list x))
                    (c y)))))))
  (map (lambda (y) (reverse! (hash-get t y))) ys))

;; : (A -> C) (Cons A B) -> (Cons C B)
(def (map/car f x) (match x ([a . b] [(f a) . b])))

;; Returns a boolean that is true if any two consecutive terms in the list satisfy the predicate.
;; In particular, if the predicate is a partial order predicate (respectively a strict partial
;; order predicate), then the list is totally ordered (respectively strictly totally ordered)
;; according to the predicate.
;; (every-consecutive? < [1 2 3 4 5])
;; => #t
;; : (X -> Bool) (List X) -> Bool
(def (every-consecutive? f l)
  (or (null? l)
      (let loop ((x (car l)) (r (cdr l)))
        (match r ([] #t) ([y . rr] (and (f x y) (loop y rr)))))))

;; TODO: make sure this faithfully matches keyword-dispatch in gerbil/runtime/gx-gambc0.scm
(def (separate-keyword-arguments args (positionals-only? #f))
  (let lp ((rest args) (positionals []) (keywords []))
    (match rest
      ([#!rest . r] (values (foldl cons (if positionals-only? r rest) positionals) (reverse keywords)))
      ([#!key k . r] (lp r (if positionals-only? (cons k positionals) (cons* k '#!key positionals)) keywords))
      ([(? keyword? k) v . r] (lp r positionals (cons* v k keywords)))
      ([a . r] (lp r (cons a positionals) keywords))
      ([] (values (reverse positionals) (reverse keywords))))))

;; : (List X) -> X
(def (first-and-only x)
  (assert! (and (pair? x) (null? (cdr x))))
  (car x))
