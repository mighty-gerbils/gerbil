;;; -*- Gerbil -*-
;;; © fare
;;; The C4 linearization algorithm to topologically sort a multiple-inheritance
;;; DAG into a precedence list. C4 is an extension of C3 that supports "suffixes" a.k.a. "structs".
;;;
;;; See ../../../doc/reference/gerbil/runtime/c3.md for detailed explanations.
;;; See ../test/c3-test.ss for tests.
;;;
prelude: "../core"
package: gerbil/runtime
namespace: #f

(export c4-linearize c4-linearize*)
(import "util")

;; Temporary, for backwards compatibility only
(def (c4-linearize rhead supers
                   get-precedence-list: get-precedence-list
                   struct: (struct? #f)
                   eq: (eq eq?)
                   get-name: (get-name identity))
  => :values
  (c4-linearize* (reverse rhead) (list supers)
                 get-precedence-list: get-precedence-list
                 suffix: struct?
                 eq: eq
                 get-name: get-name))

;; C4 linearization algorithm: compute the precedence list of a specification x,
;; i.e. the best total order between its ancestors (transitive parents).
;; - head is a prefix to prepend to the precedence list, typically [x] or []
;;   depending on whether to include x as head of the result.
;; - parents the list of total orders of parents of x, typically just (list (get-supers x))
;; - get-precedence-list gets the precedence list for a parent, including the parent itself in front
;; - suffix is a predicate that tells if a specification has the suffix property, i.e.
;;   must have its precedence list be a suffix of any descendent's precedence list
;;   (with single inheritance among suffix specifications but not interstitial infix ones)
;; - eq is an equality predicate between list elements (defaults to eq?).
;; - get-name gets the name of a object/class, for debugging only (defaults to identity).
;; Returns two values:
;; - the linearized precedence list,
;; - the most specific suffix ancestor if any
;; : (List X) (List (NonEmptyList X)) \
;;  get-precedence-info: (X -> (NonEmptyList X) (OrFalse X) (Hash X (List X))) \
;;  suffix: (X -> Bool) \
;;  super-suffix: (X -> (OrFalse X)) \
;;  eq: ?(X X -> Bool) \
;;  get-name: ?(X -> Y) \
;; -> (List X) (OrFalse X)
(def (c4-linearize* head parents
                    get-precedence-list: get-precedence-list
                    suffix: suffix?
                    super-suffix: (super-suffix (lambda (x) (find suffix? (cdr (get-precedence-list x)))))
                    eq: (eq eq?)
                    get-name: (get-name identity))
  => :values
  (set! parents (remove-nulls! parents)) ;; allow but remove nulls, e.g. [(get-supers)] when no supers
  (cond
   ((null? parents) ;; 0 parents: it's a base class
    (values head #f))
   ((and (null? (cdr parents))
         (null? (cdar parents))) ;; 1 list of 1 parent: it's effectively single inheritance
    (let* ((parent (caar parents))
           (pl (get-precedence-list parent)))
      (values (append head pl)
              (if (suffix? parent) parent (super-suffix parent)))))
   (else ;; 2 parents or more: it's effectively multiple inheritance
    (let (;; reverse list or reverse (precedence lists or local order lists) to merge
          (rcandidates '()) ;; : (List (NonEmptyList X))
          (suffix #f) ;; : (OrFalse X) ;; most specific super suffix (known so far)
          (suffix-tail [])) ;; precedence list of the above, or [] if false

      ;; Utilities
      (def (get-names lst)
        (map get-name lst))
      (def (err . a)
        (apply error "Inconsistent precedence graph"
               head: (get-names head)
               parents: (map get-names parents)
               precedence-lists: (map get-names
                                      (map get-precedence-list
                                           ;; (delete-duplicates ...)
                                           (foldl append [] parents)))
               common-suffix-tail: (get-names suffix-tail)
               rcandidates: (map get-names rcandidates)
               a))

      ;; is s2 a suffix of s1?
      (def (super-suffix? s1 s2)
        (or (not s2)
            (let loop ((s s1))
              (and s (or (eq s s2) (loop (super-suffix s)))))))

      ;; merge suffixes s1 and s2.
      ;; Both are specifications with the suffix property (or #f if not found):
      ;; return the more specific one, or raise an error if they are not compatible.
      (def (merge-suffix s1 s2)
        (cond
         ((not s2) s1) ;; s1 is more specific
         ((not s1) s2) ;; s2 is more specific
         (else
          (let loop ((t1 s1) (t2 s2)) ;; iterate over super-suffixes of s1 and s2
            (cond
             ((eq t1 s2) s1) ;; s1 is more specific
             ((eq t2 s1) s2) ;; s2 is more specific
             ((not t1) (if (super-suffix? t2 s1) s2
                           (err suffix-incompatibility: [(get-name s1) (get-name s2)])))
             ((not t2) (if (super-suffix? t1 s2) s1
                           (err suffix-incompatibility: [(get-name s1) (get-name s2)])))
             (else (loop (super-suffix t1)
                         (super-suffix t2))))))))

      ;; Define a table and populate the hash-table of counts for ancestors
      (def ancestor-counts (make-table test: eq)) ;; Gambit hash-table
      (def (get-ancestor-count c) (table-ref ancestor-counts c 0))
      (def (increment-ancestor-count c) (table-set! ancestor-counts c (1+ (get-ancestor-count c))))
      (def (decrement-ancestor-count c) (table-set! ancestor-counts c (1- (get-ancestor-count c))))

      ;; For each parent in the parents lists, accumulate the reverse of its precedence lists,
      ;; if not already present in the ancestors,
      ;; after removing each of their most specific element and its precedence list.
      ;; Update the ss variable with each of the suffix specifications found.
      ;; This is a C4 specific step, not needed in plain C3.
      (for-each
        (lambda (parent-list)
          (for-each
            (lambda (parent)
              (when (zero? (get-ancestor-count parent))
                ;; New parent: iterate to first suffix
                (let loop ((al (get-precedence-list parent))
                           (r []))
                  (def (done)
                    (unless (null? r)
                      (set! rcandidates (cons r rcandidates))))
                  (match al
                    ([] (done))
                    ([a . ar]
                     (if (suffix? a)
                       ;; Found suffix; the rest of the precedence list is its precedence list.
                       (let (ms (merge-suffix a suffix))
                         (unless (eq ms suffix)
                           ;; Newer longer suffix
                           (let loop2 ((tl al))
                             (match tl
                               ([] (void))
                               ([t . tr] (unless (eq t suffix)
                                           (increment-ancestor-count t)
                                           (loop2 tr)))))
                           (set! suffix a)
                           (set! suffix-tail al))
                         (done))
                       (begin
                         (increment-ancestor-count a)
                         (loop ar (cons a r)))))))))
          parent-list))
        parents)

      (def suffix-tail-index (make-table test: eq)) ;; Gambit hash-table because we can't use runtime/hash
      (let loop ((i (length suffix-tail)) (t suffix-tail))
        (match t
          ([] (void))
          ([a . r]
           (table-set! suffix-tail-index a i) (loop (1- i) r))))

      ;; Prepend the reversed lists of reversed parents to
      ;; the reversed lists of reversed precedence-lists,
      ;; to enforce the local precedence order.
      ;; Putting it at the *end* (once re-reversed) gives local precedence order
      ;; lower priority than depth-first search, which promotes tail sharing,
      ;; which is the right thing that C3 does (though not explained by the C3 paper).
      ;; We add the parents in reverse order, because the rcandidates is in reverse order.
      ;; We do want parents to be processed by unssr-rpl like the other precedence lists.
      ;; This step is needed by C3 (not just C4) though none of the lists would be reversed
      ;; in plain C4, and plain C3 has only one list.
      ;; NB: that as an optimization, we filter off singleton parent lists
      (def r-local-order
        (filter-map (lambda (parent-list) (and (not (null? (cdr parent-list)))
                                          (reverse parent-list)))
                    parents))
      (for-each (lambda (cl) (for-each increment-ancestor-count cl)) r-local-order)
      ;; The append below is technically part of C3 (where r-local-order is a singleton).
      (set! rcandidates (append r-local-order rcandidates))

      ;; Remove the common suffix-tail (most-specific suffix ancestor and ancestors)
      ;; from each reversed candidate list. Return them in the usual (re-reversed) order.
      ;;
      ;; We already reversed those candidate lists after removing their own suffix-tail.
      ;; We will be reversing them back, but as we go, we will remove
      ;; from the end of the lists (beginning of them in their initially reversed state),
      ;; the ancestors that are in the correct order in the suffix, until we reach one
      ;; that isn't in the suffix-tail, then check that no more class remains in the list
      ;; that is in the suffix (or else there's an incompatibility, as in
      ;; this example bug: parents (A) (B) (s A) (C A B) where s is suffix).
      ;; NB: We can safely assume that there was no inconsistency in the suffix-tail itself
      ;; which is an ancestor's precedence list, so already checked for inconsistency.
      ;;
      ;; This function processes the (reversed, tail-stripped) precedence list of one parent
      ;; : (NonEmptyList X) -> (List X)
      (def (remove-suffix-tail-and-reverse rcl)
        (let u ((cl-rhead rcl) ;; suffixless reversed prefix to yet to process
                (suffix-pos -1)) ;; how far are we in the suffix?
          (match cl-rhead
            ([] []) ;; done processing -- all ancestors already in the suffix tail
            ([c . clrh]
             (let ((p (table-ref suffix-tail-index c #f)))
               (def (err2 . a)
                 (apply err
                   reverse-candidate-list: (get-names rcl)
                   suffix-tail-index: (map (match <> ([a . i] [(get-name a) :: i]))
                                           (table->list suffix-tail-index))
                   c: (get-name c)
                   p: p
                   suffix-pos: suffix-pos
                   a))
               (cond
                ((not p)
                 (let-values (((clrh2 h)
                               (append-reverse-until
                                (cut table-ref suffix-tail-index <> #f) clrh [c])))
                   (if (null? clrh2)
                     h
                     (err2
                      precedence-list-tail: (get-names h)
                      ancestor-out-of-order-vs-suffix-tail: (get-name (car clrh2))
                      precedence-list-head: (get-names (reverse clrh2))))))
                ((> p suffix-pos)
                 (u clrh p))
                (else
                 (err2 ancestor-out-of-order-vs-suffix-tail: (get-name c)))))))))
      ;; List of list of candidates
      ;; precedence lists of the parents in usual order, followed by the local order lists,
      ;; but after removing from each list the elements of the suffix-tail
      ;; : (List (NonEmptyList X))
      (def candidates (reverse (remove-nulls! (map remove-suffix-tail-and-reverse rcandidates))))

      ;; Now for the C3 algorithm proper (that technically includes the append above):
      ;; Extract classes in the precedence list one by one, applying a simple heuristic
      ;; that prioritizes classes based on a depth-first traversal.

      ;; The plain C3 algorithm as lifted from literature is O(d²n²),
      ;; where d is the number of parents, and n the length of the precedence list,
      ;; due to linear membership scan for each candidate.
      ;; But by counting the memberships in a single hash-table, we can make it O(dn).
      ;; NB: In practice, in CL land (loading as much as possible of Quicklisp 2025-06-22),
      ;; we have 99% of the time d≤3, n≤19; but exceptionally, d goes to 61, n to 66.
      ;; In a pure functional data structure library I wrote (LIL), I get to d=15 and n=38.

      ;; First, promote the heads of candidates list as candidate,
      ;; uncounting them from the tails of the candidate lists.
      (for-each (lambda (cl) (decrement-ancestor-count (car cl))) candidates)

      ;; Next super selection loop, enforcing the ordering constraint and
      ;; otherwise implementing the earlier-in-list-first search heuristic.
      ;; : (NonEmptyList (NonEmptyList X)) -> X
      (def (c3-select-next tails)
        (let loop ((ts tails))
          (match ts
            ([[c . _] . rts]
             (if (zero? (get-ancestor-count c))
               c
               (loop rts)))
            (else
             (err ;; ancestor-counts: (table->list ancestor-counts)
              c3-select-next: 'fail)))))

      ;; Cleanup after lists after next element in the precedence list was chosen
      ;; - popping the candidate off the lists it appears in
      ;;   - then promoting the next candidate if any, after decrementing the ancestor-count for it
      ;; : X (List (NonEmptyList X)) -> (List (NonEmptyList X))
      (def (remove-next! next tails)
        (let loop ((t tails))
          (match t
            ([(and hd [(? (cut eq next <>)) . tl]) . rr]
             (match tl
               ([c . _] (decrement-ancestor-count c))
               (_ (void))) ;; we could merge this with remove-nulls! but it would add complexity.
             (set-car! t tl)
             (loop rr))
            ([_ . rr] (loop rr))
            (_ tails))))

      ;; The regular C3 loop
      ;; NB: if we cached the lengths of the precedence lists,
      ;; we could walk the precedence list to check which longest tail has the same length
      ;; as that of the precedence list of its top element, thereby being that very same list,
      ;; and then share the tail. But we don't, so we eschew that sharing optimization.
      (def precedence-list
        (let c3loop ((rhead (reverse head)) (tails candidates))
          (match tails
            ([]
             (append-reverse rhead suffix-tail))
            ([tail]
             (append-reverse rhead (append tail suffix-tail)))
            (else
             (let* ((next (c3-select-next tails)))
               (c3loop (cons next rhead)
                       (remove-nulls! (remove-next! next tails))))))))
      (values precedence-list suffix)))))
