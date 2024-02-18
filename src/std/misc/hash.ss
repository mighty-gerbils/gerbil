;;; -*- Gerbil -*-
;;; © fare
;;; Hash-table utilities

(export
  hash-empty?
  hash-ref/default
  hash-ensure-ref
  invert-hash
  invert-hash/fold
  invert-hash<-vector
  invert-hash<-vector/fold
  hash-restrict-keys
  hash-value-map
  hash-key-value-map
  hash-filter
  hash-remove
  hash-remove-value
  hash-ensure-removed!
  hash-ensure-modify!
  hash-merge/override
  hash-merge/override!
  hash->list/sort
  hash-get-set!
  hash-ref-set!)

(import
  :gerbil/gambit
  :std/iter
  :std/sort)

(def (hash-empty? h)
  (zero? (hash-length h)))

;; type (Table V K) ;; hash-tables mapping key K to values V (note that V comes before K)

;; Lookup a table. If the key is missing, compute and return a default value.
;; : V <- (Table V K) K (V <-)
(def (hash-ref/default table key default)
  (let (val (hash-ref table key absent-value))
    (if (eq? val absent-value)
      (default)
      val)))

;; Lookup a table. If the key is missing, compute a default value *and* put it in the table.
;; : V <- (Table V K) K (V <-)
(def (hash-ensure-ref table key default)
  (hash-ref/default
   table key (cut let (value (default)) (hash-put! table key value) value)))

;; Given a hash-table to (a new equal? hash-table by default,
;; but e.g. an eqv? or eq? hash-table could be given instead), invert the hash-table from
;; by storing in the hash-table a map from vector value back to map key.
;; NB: Assumes the original table is injective and/or you only care to link back to
;; *one* possible key for each value.
;; : (Table K V) <- (Table V K) to: (Optional (Table K V))
(def (invert-hash from to: (to (make-hash-table)))
  (hash-for-each (lambda (k v) (hash-put! to v k)) from)
  to)

;; Given a hash-table to (a new equal? hash-table by default,
;; but e.g. an eqv? or eq? hash-table could be given instead), invert the hash-table from
;; by storing in the hash-table a map from vector value back to list of map keys.
;; Instead of a list, any container (M V) of values of type V can be used,
;; by overriding the arguments nil and cons.
;; NB: If there are multiple indices, the order is not guaranteed.
;; : (Table (M K) V) <- (Vector V) \
;;     to: (Optional (Table (M K) V)) nil: (M V) cons: ((M V) <- V (M V))
(def (invert-hash/fold from to: (to (make-hash-table)) nil: (nil '()) cons: (cons cons))
  (hash-for-each (lambda (k v) (hash-put! to v (cons k (hash-ref to v nil)))) from)
  to)

;; Given a vector from and a hash-table to (a new equal? hash-table by default, but an existing table,
;; possibly an eqv? or eq? hash-table could be given instead), compute a "right invert" (or section)
;; of the vector (or subset thereof from start included (default 0) to end excluded (default the length
;; of the vector) from by storing in the hash-table a map from vector value back to vector index.
;; Optionally, a function key (default identity) extracts from each value in the vector
;; a value to be used as key in the hash-table.
;; NB: Assumes the original table is injective and/or you only care to link back to
;; *one* possible index for each value.
;; : (Table Nat W) <- (Vector V) to: (Optional (Table Nat W)) start: ?Nat end: ?Nat key: ?(Fun W <- V)
(def (invert-hash<-vector from start: (start 0) end: (end (vector-length from))
                          to: (to (make-hash-table)) key: (key identity))
  (for (i (in-range start end)) (hash-put! to (key (vector-ref from i)) i))
  to)

;; Given a vector from and a hash-table to (a new equal? hash-table by default, but an existing table,
;; possibly an eqv? or eq? hash-table could be given instead), compute a "right invert" (or section)
;; of the vector (or subset thereof from start included (default 0) to end excluded (default the length
;; of the vector) from by storing in the hash-table a map from vector value back to a list of indices.
;; Instead of a list, any container (M V) of values of type V can be used,
;; by overriding the arguments nil and cons.
;; NB: If there are multiple indices, the order is not guaranteed.
;; Optionally, a function key (default identity) extracts from each value in the vector
;; a value to be used as key in the hash-table.
;; : (Table (M Nat) W) <- (Vector V) \
;;     to: (Optional (Table (List V) Nat)) nil: (M V) cons: ((M V) <- V (M V)) \
;;     start: ?Nat end: ?Nat key: ?(Fun W <- V)
(def (invert-hash<-vector/fold
      from start: (start 0) end: (end (vector-length from))
      to: (to (make-hash-table)) nil: (nil '()) cons: (cons cons) key: (key identity))
  (for (i (in-range start end))
    (def val (vector-ref from i))
    (hash-put! to (key val) (cons i (hash-ref to val nil))))
  to)

;; Create a new hash-table the keys of which are restricted to those specified (if any).
;; TODO: find a better name. subhash ?
;; : (Table V K) <- (Table V K) (List K)
(def hash-restrict-keys
  (let ((marker '#(fresh)))
    (lambda (h keys)
      (let ((table (make-hash-table)))
        (for-each
          (lambda (k) (let ((v (hash-ref h k marker)))
                   (unless (eq? v marker) (hash-put! table k v))))
          keys)
        table))))

;;; Map a function f on all the values of a map
;; : (Table W K) <- (Table V K) (W <- V)
(def (hash-value-map h f)
  (list->hash-table
   (map (match <> ([k . v] (cons k (f v))))
        (hash->list h))))

;;; Map a function f on all the key-value pairs of a map, creating a new map
;; : (Table W <- L) <- (Fun (OrFalse (Cons L W)) <- K V) (Table V <- K) ?(Table W <- L)
(def (hash-key-value-map f from (to (make-hash-table)))
  (hash-for-each (lambda (k v) (match (f k v)
                            ([k1 . v1] (hash-put! to k1 v1))
                            (#f (void)))) from)
  to)

;;; Remove entries that satisfy a predicate
;; : (Table V K) <- (Table V K) (Bool <- K V) (Optional (Table V K))
(def (hash-filter from pred (to (make-hash-table)))
  (hash-for-each (lambda (k v) (when (pred k v) (hash-put! to k v))) from)
  to)

;;; Remove entries that do not satisfy a predicate
;; : (Table V K) <- (Table V K) (Bool <- K V) (Optional (Table V K))
(def (hash-remove from pred (to (make-hash-table)))
  (hash-for-each (lambda (k v) (unless (pred k v) (hash-put! to k v))) from)
  to)

;;; Remove entries that map some key to a given value (typically #f)
;; : (Table V K) <- (Table V K) (Optional V) (Optional (Table V K))
(def (hash-remove-value from (value #f) (to (make-hash-table)))
  (hash-remove from (lambda (_ v) (equal? v value)) to))

;;; Remove entry from the table if it exists, return two values:
;; the value that was removed, if any, or #f if none was found,
;; and a boolean that tells if there was a value.
(def (hash-ensure-removed! table key)
  (let ((val (hash-ref table key absent-value)))
    (if (eq? val absent-value)
      (values #f #f)
      (begin
        (hash-remove! table key)
        (values val #t)))))

;; Modify an entry in a table. If no entry exists yet, call the provided default thunk.
;; Return the new value.
;; : V <- (Table V K) K (V <-) (V <- V)
(def (hash-ensure-modify! table key default function)
  (let* ((val (hash-ensure-ref table key default))
         (new-val (function val)))
    (hash-put! table key new-val)
    new-val))

;; Merge hash tables together and produce a new hash table. If same key exists in both base table
;; and rest of other tables then the key/value binding of the other tables takes precedence.
;; If more than one other table is given after the base table and bindings for the same key exist
;; in multiple other tables then the rightmost table's binding takes precedence.
;; This is unlike hash-merge
;; : Table <- Table (Optional-Keyword Bool) Table ...
(def (hash-merge/override base-table . rest)
  (foldl (lambda (tab r)
           (hash-for-each (cut hash-put! r <> <>) tab)
           r)
         (hash-copy base-table) rest))

;; Merge hash tables together and update the base table's bindings. If same key exists in both base
;; table and rest of other tables then the key/value binding of the other tables takes precedence.
;; If more than one other table is given after the base table and bindings for the same key exist
;; in multiple other tables then the rightmost table's binding takes precedence.
;; : Table <- Table (Optional-Keyword Bool) Table ...
(def (hash-merge/override! base-table . rest)
  (foldl (lambda (tab r)
           (hash-for-each (cut hash-put! r <> <>) tab)
           r)
         base-table rest))

;; Extract from a hash-table an alist of its key-value pairs, with keys sorted the predicate.
;; : (List (Pair K V)) <- (Table V K) (Bool <- K K)
(def (hash->list/sort hash pred)
  (sort (hash->list hash) (lambda (x y) (pred (car x) (car y)))))

(def hash-get-set! hash-put!) ;; allow hash-get to be used as a place
(def hash-ref-set! ;; allow hash-ref to be used as a place, accepting (ignored) optional default argument
  (case-lambda ((h k v) (hash-put! h k v))
          ((h k _d v) (hash-put! h k v))))
