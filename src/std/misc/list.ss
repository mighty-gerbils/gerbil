;; -*- Gerbil -*-
package: std/misc
;;;; List utilities

(export #t)

(import
  :std/srfi/1
  :utils/base)

;; This function transform a property list (k1 v1 k2 v2 ...) into
;; an association list ((k1 . v1) (k2 . v2) ...).
;; NB: it uses equal? as the equality predicate for keys.
(def (plist->alist plist)
  (hash->list (plist->hash-table plist)))

;; Are the two lists of the same length. Note: diverges if either list is circular.
(def (length=? x y) ;; Same as (= (length x) (length y))
  (let ((nx? (null? x))
        (ny? (null? y)))
    (cond
     (nx? ny?)
     (ny? #f)
     (else (length=? (cdr x) (cdr y))))))

;; Is the list of a given length?
(def (length=n? x n) ;; (= (length x) n)
  (cond
   ((null? x) (= 0 n))
   ((= 0 n) #f)
   (else (length=n? (cdr x) (- n 1)))))

;; Is the first list strictly shorter than the latter?
(def (length<? x y) ;; (< (length x) (length y))
  (let ((nx? (null? x))
        (ny? (null? y)))
    (cond
     (nx? (not ny?))
     (ny? #f)
     (else (length<? (cdr x) (cdr y))))))

(def (length<n? x n) ;; (< (length x) n)
  (cond
   ((null? x) (not (zero? n)))
   ((zero? n) #f)
   (else (length<n? (cdr x) (- n 1)))))

(def (length<=? x y) (not (length<? y x)))
(def (length<=n? x n) (length<n? x (1+ n)))
(def (length>? x y) (length<? y x))
(def (length>n? x n) (not (length<=n? x n)))
(def (length>=? x y) (length<=? y x))
(def (length>=n? x n) (not (length<n? x n)))

;; This function helps built a list, by calling a building function that takes two arguments:
;; The first, which could be called poke (or put!, enqueue!, append-one-element-at-the-end!)
;; takes an element and puts it at the end of the list. The second, which could be called peek
;; (or get, get-list-so-far, get-shared-list-that-is-mutated-when-you-put), returns the
;; list of elements that poke has been called with, so far. When the building function returns,
;; call-with-list-builder will return the state of the list, as if by calling the peek function.
;; NB: this implementation accumulates elements by mutating a shared queue of cons cells;
;; in case of continuations, that same list is shared by all executions.
;; : (list X) <- (<- (<- X) ((list X) <-))
(def (call-with-list-builder fun)
  (let* ((head (cons #f '())) ;; use a traditional implementation of queue as cons of tail and head
         (poke (λ (val)
                 (let ((old-tail (car head))
                       (new-tail (cons val '())))
                   (set-cdr! old-tail new-tail)
                   (set-car! head new-tail))))
         (peek (λ () (cdr head))))
    (set-car! head head)
    (fun poke peek)
    (peek)))

;; Like cons, but puts the element at the end of the list
;; (List A) <- A (List A)
(def (snoc x l) (append l [x]))

;; append one element at the end of a list
;; (List A) <- (List A) A
(def (append1 l x) (append l [x]))
