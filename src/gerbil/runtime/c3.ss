;;; -*- Gerbil -*-
;;; © fare
;;; The C3 linearization algorithm to topologically sort an inheritance DAG
;;; into a precedence list follows these three constraints:
;;;  1. The precedence list is a linearization of the inheritance DAG
;;;  2. Every precedence list includes every super's precedence list as sublist
;;;     (elements present in the same order but not necessarily consecutively)
;;;  3. The list of supers is a sublist of the precedence list
;;;
;;; We add support for classes that demand single-inheritance:
;;;  4. The precedence-list of a struct is the tail of the precedence-list of
;;;     its subclasses.
;;;
;;; Additionally, C3 uses the following heuristic to deterministically compute
;;; the list, starting from the front (most specific), to chose the next
;;; element of the precedence list when the above rules leave some ambiguity:
;;; among the possible candidates to be chosen next, pick the one that appears
;;; earliest in the list of precedence lists followed by the super list.
;;;
;;; C3 has since been adopted for multiple inheritance by many modern
;;; object systems for its ordering consistency properties:
;;; OpenDylan, Python 2.3, Raku, Parrot, Scala, Solidity, PGF/TikZ.
;;;       https://en.wikipedia.org/wiki/C3_linearization
;;;       https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.19.3910
;;;
;;; See tests in ../test/c3-test.ss

prelude: "../prelude/core"
package: gerbil/runtime
namespace: #f

(export c3-linearize)
(import "util")

;; C3 linearization algorithm: given a top object x from which to compute the precedence list,
;; - rhead is [x] or [] depending on whether to include x as head of the result.
;; - supers is (get-supers x), the list of direct supers of x
;; - get-precedence-list gets the precedence list for a super s, including s itself in front
;; - single-inheritance? is a predicate that tells if a class follows single inheritance, and
;;   must have its precedence list be a tail of any subclass'es precedence list.
;; - eqpred is an equality predicate between list elements
;;   (passed around because somehow equal? doesn't work correctly on runtime type-descriptors).
;; - get-name gets the name of a object/class, for debugging only.
;; : (List X) (List X) (X -> (NonEmptyList X)) ?(X -> Bool) ?(X X -> Bool) ?(X -> Y) -> (List X)
(def (c3-linearize rhead supers get-precedence-list
                   (single-inheritance? false) (eqpred eq?) (get-name identity))
  (def pls (map get-precedence-list supers)) ;; (List (List X)) ;; precedence lists to merge
  (def sit []) ;; (List X) ;; single-inheritance tail

  ;; Split every precedence list at the first struct, consider whatever
  ;; follows as a tail of the precedence-list. Merge all the tails,
  ;; where two tails are compatible if one is a tail of the other.
  ;; Then in each remaining precedence list, (a) remove from the end the
  ;; classes that are in the correct order in the tail, until you reach one
  ;; that isn't in the tail, then check that no more class there is in the
  ;; tail (or else there's an incompatibility).
  ;; Use that as tail of the precedence list,
  ;; and for the (reverse) head, proceed as usual with C3.

  (def get-names (cut map get-name <>))
  (def (err . a)
    (apply error "Inconsistent precedence graph"
           head: (get-names (reverse rhead))
           precedence-lists: (map get-names pls)
           single-inheritance-tail: (get-names sit) a))

  ;;; Deal with the tail of single-inheritance
  (def (merge-sit! sit2)
    (cond
     ((null? sit2) (void)) ;; no new single inheritance tail
     ((null? sit) (set! sit sit2)) ;; yes new single inheritance tail
     (else
      (let loop ((t1 sit) (t2 sit2))
        (cond ;; eq? should be the same as equal? due to single-inheritance
         ((eq? t1 sit2) (void)) ;; sit is a prefix of sit2
         ((eq? t2 sit) (set! sit sit2)) ;; sit2 is a prefix of sit
         ((null? t1) (err)) ;; TODO: better error message
         ((null? t2) (err)) ;; TODO: better error message
         (else (loop (cdr t1) (cdr t2))))))))
  (def rpls
    (map (lambda (pl)
           (let-values (((rh tl) (append-reverse-until single-inheritance? pl [])))
             (merge-sit! tl)
             rh))
         pls))
  ;; Now that structs can inherit from classes, the superclasses from another
  ;; direct superclass could have inherited from it, so we must remove them
  ;; from the current rtail, after checking that it was included in the right
  ;; order in the overall tail.
  (def (unsitr-rpl rpl)
    (let u ((pl-rhead rpl)
            (pl-tail [])
            (sit-rhead (reverse sit))
            (sit-tail []))
      (match pl-rhead
        ([] pl-tail)
        ([c . plrh]
         (if (member c sit-tail)
           (err direct-super: (last pl-rhead)
                super-out-of-order-vs-single-inheritance-tail: c)
           (let-values (((sit-rh2 sit-tl2)
                         (append-reverse-until
                          (cut eqpred c <>) sit-rhead sit-tail)))
             (if (null? sit-rh2)
               (u plrh [c . pl-tail] [] sit-tl2)
               (u plrh pl-tail (cdr sit-rh2) sit-tl2))))))))

  ;; Add the list of direct-supers to the set of precedence-lists to be
  ;; compatible with. Reset the tails to be in the C3 most-specific to
  ;; least-specific order excluding any class in the single-inheritance tail.
  (append1! rpls (reverse supers))
  (set! pls (map unsitr-rpl rpls))

  ;; Now for the C3 algorithm proper (that technically includes the append1! above)

  ;; Next super selection loop, enforcing the ordering constraint and
  ;; otherwise implementing the earlier-in-list-first search heuristic.
  ;; : (NonEmptyList (NonEmptyList X)) -> X
  (def (c3-select-next tails)
    (let (candidate? ;; : X -> Bool
          (lambda (c) (andmap (lambda (tail) (not (member c (cdr tail) eqpred))) tails)))
      (let loop ((ts tails))
        (match ts
          ([[c . _] . rts]
           (if (candidate? c)
             c
             (loop rts)))
          (else
           (err))))))

  ;; Cleanup after lists after next element in the precedence list was chosen
  ;; : X (List (NonEmptyList X)) -> (List (NonEmptyList X))
  (def (remove-next! next tails)
    (let loop ((t tails))
      (match t
        ([] tails)
        ([[head . tail] . more]
         (when (eqpred head next)
           (set-car! t tail))
         (loop more)))))

  ;; Now for the regular C3 loop
  (let c3loop ((rhead rhead) (tails pls))
    (let (tails (remove-nulls! tails))
      (match tails
        ([]
         (append-reverse rhead sit))
        ([tail]
         (append-reverse rhead (append tail sit)))
        (else
         (let* ((next (c3-select-next tails)))
           (c3loop (cons next rhead)
                 (remove-next! next tails))))))))
