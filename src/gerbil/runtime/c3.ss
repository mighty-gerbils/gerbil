;;; -*- Gerbil -*-
;;; © fare
;;; The C3 linearization algorithm to topologically sort a multiple-inheritance
;;; DAG into a precedence list follows these three constraints:
;;;  1. The precedence list is a linearization of the inheritance DAG
;;;  2. Every precedence list includes every super's precedence list as sublist
;;;     (elements present in the same order but not necessarily consecutively)
;;;  3. The list of supers is a sublist of the precedence list
;;;
;;; We add support for structs that demand single-inheritance:
;;;  4. The precedence-list of a struct is a suffix of the precedence-list of
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
;;; OpenDylan, Python 2.3, Raku, Parrot, Solidity, PGF/TikZ.
;;;       https://en.wikipedia.org/wiki/C3_linearization
;;;       https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.19.3910
;;;
;;; We dub C4 our extension with the 4th constraint for single-inheritance.
;;;
;;; See tests in ../test/c3-test.ss
;;;
;;; PS: Common Lisp, and the earlier tradition of multiple inheritance
;;; (all the way back to Flavors), that we follow here, calls "classes"
;;; the things with multiple inheritance and "structs" the things with
;;; single inheritance only. Smalltalk and after it Java, and the earlier
;;; and more prevalent tradition of single inheritance, calls "classes"
;;; the things with single inheritance and "traits" the things with multiple
;;; inheritance (after Mesa). Wonderful nomenclature, right?

prelude: "../core"
package: gerbil/runtime
namespace: #f

(export c4-linearize)
(import "util")

;; C4 linearization algorithm: given a top object x from which to compute the precedence list,
;; - rhead is [x] or [] depending on whether to include x as head of the result.
;; - supers is (get-supers x), the list of direct supers of x
;; - get-precedence-list gets the precedence list for a super s, including s itself in front
;; - struct is a predicate that tells if a class follows single inheritance, and
;;   must have its precedence list be a suffix of any subclass' precedence list.
;; - eq is an equality predicate between list elements
;; - get-name gets the name of a object/class, for debugging only.
;; Returns the linearized precedence list, and the most specific struct superclass if any
;; : (List X) (List X) \
;;  get-precedence-list: (X -> (NonEmptyList X)) \
;;  struct: (X -> Bool) \
;;  eq: ?(X X -> Bool) \
;;  get-name: ?(X -> Y) \
;; -> (List X) (OrFalse X)
(def (c4-linearize rhead supers
                   get-precedence-list: get-precedence-list
                   struct: struct?
                   eq: (eq eq?)
                   get-name: (get-name identity))
  => :values
  (def pls (map get-precedence-list supers)) ;; (List (List X)) ;; precedence lists to merge
  (def sis []) ;; (List X) ;; single-inheritance suffix

  ;; Split every precedence list at the first struct, consider whatever
  ;; follows as a suffix of the precedence-list. Merge all the suffixes,
  ;; where two suffixes are compatible if one is a suffix of the other.
  ;; Then in each remaining precedence list, (a) remove from the end the
  ;; classes that are in the correct order in the suffix, until you reach one
  ;; that isn't in the suffix, then check that no more class there is in the
  ;; suffix (or else there's an incompatibility).
  ;; Use that as suffix of the precedence list,
  ;; and for the (reverse) head, proceed as usual with C3.

  (def (get-names lst)
    (map get-name lst))
  (def (err . a)
    (apply error "Inconsistent precedence graph"
           head: (get-names (reverse rhead))
           precedence-lists: (map get-names pls)
           single-inheritance-suffix: (get-names sis) a))
  (def (eqlist? l1 l2)
    (or (eq? l1 l2)
        (and (andmap eq l1 l2)
             (fx= (length l1) (length l2)))))

  ;;; Deal with the struct suffix
  (def (merge-sis! sis2)
    (cond
     ((null? sis2) (void)) ;; no new struct suffix
     ((null? sis) (set! sis sis2)) ;; yes new struct suffix
     (else
      (let loop ((t1 sis) (t2 sis2))
        (cond
         ((eqlist? t1 sis2) (void)) ;; sis is a prefix of sis2
         ((eqlist? t2 sis) (set! sis sis2)) ;; sis2 is a prefix of sis
         ((or (null? t1) (null? t2))
          (err struct-incompatibility: [(get-names sis) (get-names sis2)]))
         (else (loop (cdr t1) (cdr t2))))))))
  (def rpls
    (map (lambda (pl)
           (let-values (((tl rh) (append-reverse-until struct? pl [])))
             (merge-sis! tl)
             rh))
         pls))
  ;; Now that structs can inherit from classes, the superclasses from another
  ;; direct superclass could have inherited from it, so we must remove them
  ;; from the current rpl, after checking that each was included in the right
  ;; order in the overall suffix.
  (def (unsisr-rpl rpl)
    (let u ((pl-rhead rpl) ;; superclasses to process, least-specific to most-specific
            (pl-tail []) ;; superclasses processed, most-specific to least-specific
            (sis-rhead (reverse sis)) ;; single-inheritance suffix to process, least- to most- specific
            (sis-tail [])) ;; single-inheritance suffix processed, most- to least- specific
      (match pl-rhead
        ([] pl-tail) ;; done processing -- superclasses not in the sis, most- to least- specific
        ([c . plrh]
         (if (member c sis-tail eq) ;; caught a superclass out of order with the sis
           (err precedence-list-head: (get-names (reverse pl-rhead))
                precedence-list-tail: (get-names pl-tail)
                single-inheritance-head: (get-names (reverse sis-rhead))
                single-inheritance-tail: (get-names sis-tail)
                super-out-of-order-vs-single-inheritance-tail: (get-name c))
           (let-values (((sis-rh2 sis-tl2)
                         (append-reverse-until
                          (cut eq c <>) sis-rhead sis-tail)))
             (if (null? sis-rh2)
               (u plrh (cons c pl-tail) [] sis-tl2)
               (u plrh pl-tail (cdr sis-rh2) sis-tl2))))))))

  ;; Add the list of direct-supers to the set of precedence-lists to be
  ;; compatible with. Reset the precedence-lists to be in the C3 most-specific to
  ;; least-specific order excluding any class in the single-inheritance suffix.
  (append1! rpls (reverse supers))
  (def hpls (map unsisr-rpl rpls))

  ;; Now for the C3 algorithm proper (that technically includes the append1! above)

  ;; Next super selection loop, enforcing the ordering constraint and
  ;; otherwise implementing the earlier-in-list-first search heuristic.
  ;; : (NonEmptyList (NonEmptyList X)) -> X
  (def (c3-select-next tails)
    (let (candidate? ;; : X -> Bool
          (lambda (c) (andmap (lambda (tail) (not (member c (cdr tail) eq))) tails)))
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
         (when (eq head next)
           (set-car! t tail))
         (loop more)))))

  ;; Now for the regular C3 loop
  (def precedence-list
    (cond
     ((null? supers) (reverse rhead))
     ((null? (cdr supers)) (append-reverse rhead (car pls))) ;; share the structure in case of effective single inheritance
     ;; NB: if we cached the lengths of the precedence lists,
     ;; we could walk the precedence list to check which longest tail has the same length
     ;; as that of the precedence list of its top element, thereby being that very same list,
     ;; and then share the tail. But we don't, so we eschew that sharing optimization.
     (else
      (let c3loop ((rhead rhead) (tails hpls))
        (let (tails (remove-nulls! tails))
          (match tails
            ([]
             (append-reverse rhead sis))
            ([tail]
             (append-reverse rhead (append tail sis)))
            (else
             (let* ((next (c3-select-next tails)))
               (c3loop (cons next rhead)
                       (remove-next! next tails))))))))))
  (def super-struct (match sis ([s . _] s) (else #f)))
  (values precedence-list super-struct))
