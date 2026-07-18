;; -*- Gerbil -*-
;;;; Utilities pertaining to using Vectors

(export
  vector-least-index
  maybe-subvector
  subvector-for-each
  subvector-for-each/index
  subvector-reverse-for-each
  subvector-reverse-for-each/index
  subvector->list
  cons->vector
  vector-filter
  ;; the /index variants implement srfi-43 API (there without /index)
  vector-fold/index
  vector-fold-right/index
  vector-map/index
  vector-map!/index
  vector-for-each/index
  vector-count/index)

(import
  :std/iter ;; NB: fails if you try to import just (for in-range)
  (only-in :std/list/list-builder with-list-builder)
  (only-in :std/number/misc least-integer))

;;; Assuming a sorted vector, a predicate on vector elements that is "increasing",
;;; i.e. if true, true on all subsequent elements, and optionally
;;; a start (inclusive, defaults to 0) and an end (exclusive, defaults to vector length),
;;; return the least index of a vector element in the interval [start, env)
;;; that satisfies the predicate, or the end if none does.
(def (vector-least-index (pred? : :procedure)
                         (vector : :vector)
                         start: (start : :fixnum := 0)
                         end: (end :? :fixnum := #f))
  (least-integer (lambda (i) (pred? (vector-ref vector i))) start (or end (vector-length vector))))

;;; Copy a vector if necessary: return the same if no change in start and end requested.
(def (maybe-subvector (vector : :vector)
                      (start : :fixnum := 0)
                      (end :? :fixnum := #f))
  (let* ((len (vector-length vector))
         (end (or end len)))
    (if (and (eqv? start 0) (eqv? end len))
      vector
      (subvector vector start end))))

(def (subvector-for-each (function : :procedure)
                         (vector : :vector)
                         start: (start : :fixnum := 0)
                         end: (end :? :fixnum := #f))
  (for ((i (in-range start (or end (vector-length vector)) 1)))
    (function (vector-ref vector i))))

(def (subvector-for-each/index (function : :procedure)
                               (vector : :vector)
                               start: (start : :fixnum := 0)
                               end: (end :? :fixnum := #f))
  (for ((i (in-range start (or end (vector-length vector)) 1)))
    (function i (vector-ref vector i))))

(def (subvector-reverse-for-each (function : :procedure)
                                 (vector : :vector)
                                 start: (start : :fixnum := 0)
                                 end: (end :? :fixnum := #f))
  (let ((end (or end (vector-length vector))))
    (for ((i (in-range (- end 1) (- start 1) -1)))
      (function (vector-ref vector i)))))

(def (subvector-reverse-for-each/index (function : :procedure)
                                       (vector : :vector)
                                       start: (start : :fixnum := 0)
                                       end: (end :? :fixnum := #f))
  (let (end (or end (vector-length vector)))
    (for ((i (in-range (- end 1) (- start 1) -1)))
      (function i (vector-ref vector i)))))

(def (subvector->list (vector : :vector)
                      start: (start : :fixnum := 0)
                      end: (end :? :fixnum := #f))
  (with-list-builder (c!) (subvector-for-each c! vector start: start end: end)))

(def (cons->vector (x : :pair))
  (vector (car x) (cdr x)))

;;;; Given a vector, an index and a function, update the element of the vector at given index
;;;; by invoking the function on its previous value
;;(def (vector-update! vector index fun)
;;  (vector-set! vector index (fun (vector-ref vector index))))

;; Filter entries of a vector to those that satisfy the predicate
(def (vector-filter (pred? : :procedure)
                    (v : :vector)
                    start: (start : :fixnum := 0)
                    end: (end :? :fixnum := #f))
  (list->vector
   (with-list-builder (c)
     (for (i (in-range start (or end (vector-length v)) 1))
       (let (e (vector-ref v i))
         (when (pred? e) (c e)))))))


;;; These functions below are renamed from srfi-43 with /index at the end

;++ This should be implemented more efficiently.  It shouldn't cons a
;++ closure, and the cons cells used in the loops when using this could
;++ be reused.
(def (vectors-ref (vectors : :list) (i : :fixnum))
  (map (lambda (v) (vector-ref v i)) vectors))

;;; (%SMALLEST-LENGTH <vector-list> <default-length> <callee>)
;;;       -> exact, nonnegative integer
;;;   Compute the smallest length of VECTOR-LIST.  DEFAULT-LENGTH is
;;;   the length that is returned if VECTOR-LIST is empty.  Common use
;;;   of this is in n-ary vector routines:
;;;     (define (f vec . vectors)
;;;       (let ((vec (check-type vector? vec f)))
;;;         ...(%smallest-length vectors (vector-length vec) f)...))
;;;   %SMALLEST-LENGTH takes care of the type checking -- which is what
;;;   the CALLEE argument is for --; thus, the design is tuned for
;;;   avoiding redundant type checks.
(def (%smallest-length (vector-list : :list) default-length)
  (if (null? vector-list)
    default-length
    (%smallest-length (cdr vector-list)
                      (min (vector-length (: (car vector-list) :vector)) default-length))))

;;; (%VECTOR-FOLD1 <start> <kons> <knil> <vector>) -> knil'
;;;     (KONS <index> <knil> <elt>) -> knil'
(def (%vector-fold1 (i : :fixnum) (kons : :procedure) knil (len : :fixnum) (vec : :vector))
  (if (= i len)
    knil
    (%vector-fold1 (fx+ i 1)
                   kons (kons i knil (vector-ref vec i))
                   len vec)))

;;; (%VECTOR-FOLD2+ <start> <kons> <knil> <vectors>) -> knil'
;;;     (KONS <index> <knil> <elt> ...) -> knil'
(def (%vector-fold2+ (i : :fixnum) (kons : :procedure) knil (len : :fixnum) (vectors : :list))
  (if (= i len)
    knil
    (%vector-fold2+ (fx+ i 1)
                    kons (apply kons i knil (vectors-ref vectors i))
                    len vectors)))

;;; (%VECTOR-MAP! <f> <target> <length> <vector>) -> target
;;;     (F <index> <elt>) -> elt'
(def (%vector-map1! (f : :procedure) (target : :vector) (vec : :vector) (i : :fixnum))
  (if (zero? i)
    target
    (let (j (fx- i 1))
      (vector-set! target j (f j (vector-ref vec j)))
      (%vector-map1! f target vec j))))

;;; (%VECTOR-MAP2+! <f> <target> <vectors> <len>) -> target
;;;     (F <index> <elt> ...) -> elt'
(def (%vector-map2+! (f : :procedure) (target : :vector) (vectors : :list) (i : :fixnum))
  (if (zero? i)
    target
    (let (j (fx- i 1))
      (vector-set! target j (apply f j (vectors-ref vectors j)))
      (%vector-map2+! f target vectors j))))

;;; (VECTOR-FOLD <kons> <initial-knil> <vector> ...) -> knil
;;;     (KONS <knil> <elt> ...) -> knil' ; N vectors -> N+1 args
;;;   The fundamental vector iterator.  KONS is iterated over each
;;;   index in all of the vectors in parallel, stopping at the end of
;;;   the shortest; KONS is applied to an argument list of (list I
;;;   STATE (vector-ref VEC I) ...), where STATE is the current state
;;;   value -- the state value begins with KNIL and becomes whatever
;;;   KONS returned at the respective iteration --, and I is the
;;;   current index in the iteration.  The iteration is strictly left-
;;;   to-right.
;;;     (vector-fold KONS KNIL (vector E_1 E_2 ... E_N))
;;;       <=>
;;;     (KONS (... (KONS (KONS KNIL E_1) E_2) ... E_N-1) E_N)
(def (vector-fold/index (kons : :procedure) knil (vec : :vector) . vectors)
  (if (null? vectors)
    (%vector-fold1 0 kons knil (vector-length vec) vec)
    (%vector-fold2+ 0 kons knil
                    (%smallest-length vectors (vector-length vec))
                    (cons vec vectors))))

;;; (VECTOR-FOLD-RIGHT <kons> <initial-knil> <vector> ...) -> knil
;;;     (KONS <knil> <elt> ...) -> knil' ; N vectors => N+1 args
;;;   The fundamental vector recursor.  Iterates in parallel across
;;;   VECTOR ... right to left, applying KONS to the elements and the
;;;   current state value; the state value becomes what KONS returns
;;;   at each next iteration.  KNIL is the initial state value.
;;;     (vector-fold-right KONS KNIL (vector E_1 E_2 ... E_N))
;;;       <=>
;;;     (KONS (... (KONS (KONS KNIL E_N) E_N-1) ... E_2) E_1)
;;;
;;; Not implemented in terms of a more primitive operations that might
;;; called %VECTOR-FOLD-RIGHT due to the fact that it wouldn't be very
;;; useful elsewhere.
(def (vector-fold-right/index (kons : :procedure) knil (vec : :vector) . vectors)
  (if (null? vectors)
    (let lp1 ((i (fx- (vector-length vec) 1))
              (acc knil))
      (if (negative? i)
        acc
        (lp1 (fx- i 1) (kons i acc (vector-ref vec i)))))
    (let ((vectors (cons vec vectors)))
      (let lp2+ ((i (fx- (%smallest-length vectors (vector-length vec)) 1))
                 (acc knil))
        (if (negative? i)
          acc
          (lp2+ (fx- i 1) (apply kons i acc (vectors-ref vectors i))))))))

;;; (VECTOR-MAP <f> <vector> ...) -> vector
;;;     (F <elt> ...) -> value ; N vectors -> N args
;;;   Constructs a new vector of the shortest length of the vector
;;;   arguments.  Each element at index I of the new vector is mapped
;;;   from the old vectors by (F I (vector-ref VECTOR I) ...).  The
;;;   dynamic order of application of F is unspecified.
(def (vector-map/index (f : :procedure) (vec : :vector) . vectors)
  (if (null? vectors)
    (let ((len (vector-length vec)))
      (%vector-map1! f (make-vector len) vec len))
    (let ((len (%smallest-length vectors (vector-length vec))))
      (%vector-map2+! f (make-vector len) (cons vec vectors)
                      len))))

;;; (VECTOR-MAP! <f> <vector> ...) -> unspecified
;;;     (F <elt> ...) -> element' ; N vectors -> N args
;;;   Similar to VECTOR-MAP, but rather than mapping the new elements
;;;   into a new vector, the new mapped elements are destructively
;;;   inserted into the first vector.  Again, the dynamic order of
;;;   application of F is unspecified, so it is dangerous for F to
;;;   manipulate the first VECTOR.
(def (vector-map!/index (f : :procedure) (vec : :vector) . vectors)
  (if (null? vectors)
    (%vector-map1!  f vec vec (vector-length vec))
    (%vector-map2+! f vec (cons vec vectors)
                    (%smallest-length vectors (vector-length vec))))
  (void))

;;; (VECTOR-FOR-EACH <f> <vector> ...) -> unspecified
;;;     (F <elt> ...) ; N vectors -> N args
;;;   Simple vector iterator: applies F to each index in the range [0,
;;;   LENGTH), where LENGTH is the length of the smallest vector
;;;   argument passed, and the respective element at that index.  In
;;;   contrast with VECTOR-MAP, F is reliably applied to each
;;;   subsequent elements, starting at index 0 from left to right, in
;;;   the vectors.
(define vector-for-each/index
  (letrec ((for-each1
            (lambda (f vec i len)
              (cond ((< i len)
                     (f i (vector-ref vec i))
                     (for-each1 f vec (+ i 1) len)))))
           (for-each2+
            (lambda (f vecs i len)
              (cond ((< i len)
                     (apply f i (vectors-ref vecs i))
                     (for-each2+ f vecs (+ i 1) len))))))
    (lambda ((f : :procedure) (vec : :vector) . vectors)
      (if (null? vectors)
        (for-each1 f vec 0 (vector-length vec))
        (for-each2+ f (cons vec vectors) 0
                    (%smallest-length vectors (vector-length vec)))))))

;;; (VECTOR-COUNT <predicate?> <vector> ...)
;;;       -> exact, nonnegative integer
;;;     (PREDICATE? <index> <value> ...) ; N vectors -> N+1 args
;;;   PREDICATE? is applied element-wise to the elements of VECTOR ...,
;;;   and a count is tallied of the number of elements for which a
;;;   true value is produced by PREDICATE?.  This count is returned.
(def (vector-count/index (pred? : :procedure) (vec : :vector) . vectors)
  (if (null? vectors)
    (%vector-fold1 0
                   (lambda (index count elt)
                     (if (pred? index elt)
                       (+ count 1)
                       count))
                   0
                   (vector-length vec)
                   vec)
    (%vector-fold2+ 0
                    (lambda (index count . elts)
                      (if (apply pred? index elts)
                        (+ count 1)
                        count))
                    0
                    (%smallest-length vectors (vector-length vec))
                    (cons vec vectors))))
