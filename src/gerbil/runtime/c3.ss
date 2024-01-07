;;; -*- Gerbil -*-
;;; © fare
;;; The C3 Linearization algorithm to topologically sort an inheritance DAG
;;; into a precedence list such that:
;;;  1. The precedence list is a linearization of the inheritance DAG
;;;  2. Every precedence list includes as a sublist the precedence list of every super
;;;  3. The list of supers is a sublist of the precedence list
;;;  4. The elements that appear earlier in the list of precedence lists followed by
;;;     the super list appear earlier in the precedence list.
;;;     (This heuristic choice of an order makes the linearization deterministic).
;;; In the above, sublist means that the super list includes all the sublist elements
;;; in the same order but not necessarily consecutively.
;;;
;;; C3 has since been adopted for multiple inheritance by many modern object systems
;;; for its ordering consistency properties:
;;; OpenDylan, Python, Raku, Parrot, Solidity, PGF/TikZ.
;;;       https://en.wikipedia.org/wiki/C3_linearization
;;;       https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.19.3910
;;;
;;; See tests in ../test/c3-test.ss

prelude: :gerbil/core
package: gerbil/runtime
namespace: #f

(export #t)

;; C3 linearization algorithm: given a top object x from which to compute the precedence list,
;; - rhead is [x] or [] depending on whether to include x as head of the result.
;; - supers is (get-supers x), the list of direct supers of x
;; - get-precedence-list gets the precedence list for a super s, including s itself in front
;; - eqpred is an equality predicate between list elements
;;   (passed around because somehow equal? doesn't work correctly on runtime type-descriptors).
;; - get-name gets the name of a object/class, for debugging only.
;; : (List X) (List X) (X -> (NonEmptyList X)) ?(X X -> Bool) ?(X -> Y) -> (List X)
(def (c3-linearize rhead supers get-precedence-list (eqpred eqv?) (get-name identity))
  (let (tails (map get-precedence-list supers)) ;; : (List (NonEmptyList X))
    (append1! tails supers)
    (c3-linearize-loop rhead tails eqpred get-name)))

;; The main loop for c3
;; : (List X) (List (NonEmptyList X)) ?(X X -> Bool) ?(X -> Y) -> (List X)
(def (c3-linearize-loop rhead tails (eqpred eqv?) (get-name identity))
  (let loop ((rhead rhead) (tails tails))
    (let (tails (remove-nulls! tails))
      (match tails
        ([] (reverse rhead))
        ([tail] (append-reverse rhead tail))
        (else
         (let* ((err (cut error "Inconsistent precedence graph"
                          head: (map get-name (reverse rhead))
                          tails: (map (cut map get-name <>) tails)))
                (next (c3-select-next tails eqpred err)))
           (loop (cons next rhead)
                 (remove-next! next tails eqpred))))))))

;; Next super selection loop, enforcing the ordering constraint and
;; otherwise implementing the earlier-in-list-first search heuristic.
;; : (NonEmptyList (NonEmptyList X)) ?(X X -> Bool) ?(-> Bottom) -> X
(def (c3-select-next tails eqpred err)
  (let (candidate? ;; : X -> Bool
        (lambda (c) (andmap (lambda (tail) (not (member c (cdr tail) eqpred))) tails)))
    (let loop ((ts tails))
      (match ts
        ([[c . _] . rts]
         (if (candidate? c) c (loop rts)))
        (else
         (err))))))

;; Cleanup after lists after next element in the precedence list was chosen
;; : X (List (NonEmptyList X)) ?(X X -> Bool) -> (List (NonEmptyList X))
(def (remove-next! next tails (eqpred eqv?))
  (let loop ((t tails))
    (match t
      ([] tails)
      ([[head . tail] . more]
       (when (eqpred head next)
         (set-car! t tail))
       (loop more)))))

;;; General-Purpose Utilities

;; Destructively remove the empty lists from a list of lists, returns the list.
;; : (List (List X)) -> (List (NonEmptyList X))
(def (remove-nulls! l)
  (match l
    ([[] . r]
     (remove-nulls! r))
    ([_ . r]
     (let loop ((l l) (r r))
       (match r
         ([[] . rr] (set-cdr! l (remove-nulls! rr)))
         ([_ . rr] (loop r rr))
         (_ (void))))
     l)
    (_ l))) ;; []

(def (append1! l x)
  (let (l2 [x])
    (if (pair? l)
      (set-cdr! (##last-pair l) l2)
      l2)))

;; Append the reverse of the list in first argument and the list in second argument
;; = (append (reverse rev-head) tail) ;; same as in SRFI 1.
;; : (List X) (List X) -> (List X)
(def (append-reverse rev-head tail)
  (foldl cons tail rev-head))
