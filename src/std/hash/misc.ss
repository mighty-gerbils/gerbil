;;; -*- Gerbil -*-
;;; © fare, vyzo
;;; hash table utilities

(export
  let-hash
  equal-hash?
  hash=?
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
  :std/iter)

;; the hash deconstructor macro
;; usage: (let-hash a-hash body ...)
;; rebinds %%ref so that identifiers starting with a dot are looked up in the hash:
;;  .x  -> (hash-ref a-hash 'x)  ; strong accessor
;;  .?x -> (hash-get a-hash 'x)  ; weak accessor
;;  .$x -> (hash-get a-hash "x") ; string weak accessor
;;  ..x -> (%%ref .x)            ; escape
(defsyntax-case let-hash ()
  ((macro expr body ...)
   (with-syntax ((@ref (stx-identifier #'macro '%%ref)))
     #'(let (ht (: expr HashTable))
         (let-syntax
             ((var-ref
               (syntax-rules ()
                 ((_ id) (@ref id)))))
           (let-syntax
               ((@ref
                 (lambda (stx)
                   (syntax-case stx ()
                     ((_ id)
                      (let (str (symbol->string (stx-e #'id)))
                        (def (str->symbol start)
                          (string->symbol (substring str start (string-length str))))
                        (def (substr start)
                          (substring str start (string-length str)))
                        (if (eq? (string-ref str 0) #\.) ; hash accessor?
                          (cond
                           ((eq? (string-ref str 1) #\.) ; escape
                            (with-syntax ((sym (str->symbol 1)))
                              #'(var-ref sym)))
                           ((eq? (string-ref str 1) #\?) ; weak
                            (with-syntax ((sym (str->symbol 2)))
                              #'(hash-get ht 'sym)))
                           ((eq? (string-ref str 1) #\$) ; string weak
                            (with-syntax ((sub (substr 2)))
                              #'(hash-get ht 'sub)))
                           (else
                            (with-syntax ((sym (str->symbol 1)))
                              #'(hash-ref ht 'sym))))
                          #'(var-ref id))))))))
             body ...))))))

(def (equal-hash? a b) => :boolean
  (and (hash-table? a)
       (hash-table? b)
       (hash=? a b)))

(def (hash=? (a : HashTable) (b : HashTable)) => :boolean
  (if (fx= (a.length) (b.length))
    (let/cc return
      (a.for-each
       (lambda (k v)
         (let (bv (b.ref k absent-value))
           (if (eq? bv absent-value)
             (return #f)
             (if (hash-table? v)
               (unless (and (hash-table? bv)
                            (hash=? v bv))
                 (return #f))
               (unless (equal? bv v)
                 (return #f)))))))
      #t)
    #f))

(def (hash-empty? (h : HashTable)) => :boolean
  (fxzero? (h.length)))

;; type (Table V K) ;; hash-tables mapping key K to values V (note that V comes before K)

;; Lookup a table. If the key is missing, compute and return a default value.
;; : V <- (Table V K) K (V <-)
(def (hash-ref/default (h : HashTable) key (default : :procedure))
  (let (val (h.ref key absent-value))
    (if (eq? val absent-value)
      (default)
      val)))

;; Lookup a table. If the key is missing, compute a default value *and* put it in the table.
;; : V <- (Table V K) K (V <-)
(def (hash-ensure-ref (h : HashTable) key (default : :procedure))
  (let (val (h.ref key absent-value))
    (if (eq? val absent-value)
      (let (val (default))
        (h.set! key val)
        val)
      val)))


;; Given a hash-table to (a new equal? hash-table by default,
;; but e.g. an eqv? or eq? hash-table could be given instead), invert the hash-table from
;; by storing in the hash-table a map from vector value back to map key.
;; NB: Assumes the original table is injective and/or you only care to link back to
;; *one* possible key for each value.
;; : (Table K V) <- (Table V K) to: (Optional (Table K V))
(def (invert-hash (from : HashTable) to: (to : HashTable := (HashTable-new from)))
  => HashTable
  (from.for-each (lambda (k v) (to.set! v k)))
  to)

;; Given a hash-table to (a new equal? hash-table by default,
;; but e.g. an eqv? or eq? hash-table could be given instead), invert the hash-table from
;; by storing in the hash-table a map from vector value back to list of map keys.
;; Instead of a list, any container (M V) of values of type V can be used,
;; by overriding the arguments nil and cons.
;; NB: If there are multiple indices, the order is not guaranteed.
;; : (Table (M K) V) <- (Vector V) \
;;     to: (Optional (Table (M K) V)) nil: (M V) cons: ((M V) <- V (M V))
(def (invert-hash/fold (from : HashTable) to: (to : HashTable := (HashTable-new from))
                       nil: (nil []) cons: (cons : :procedure := cons))
  => HashTable
  (from.for-each (lambda (k v) (to.set! v (cons k (to.ref v nil)))))
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
(def (invert-hash<-vector
      (from : :vector)
      start: (start : :fixnum := 0)
      end: (end :? :fixnum := (vector-length from))
      to: (to : HashTable := (make-hash-table size: (- end start)))
      key: (key : :procedure := identity))
  => HashTable
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
      (from : :vector)
      start: (start : :fixnum := 0)
      end: (end : :fixnum := (vector-length from))
      to: (to : HashTable := (make-hash-table size: (- end start)))
      key: (key : :procedure := identity)
      nil: (nil [])
      cons: (cons : :procedure := cons))
  => HashTable
  (for (i (in-range start end))
    (def val (vector-ref from i))
    (to.set! (key val) (cons i (to.ref val nil))))
  to)

;; Create a new hash-table the keys of which are restricted to those specified (if any).
;; TODO: find a better name. subhash ?
;; : (Table V K) <- (Table V K) (List K)
(def (hash-restrict-keys (from : HashTable) (keys : :list)) => HashTable
  (using (to (from.new (length keys)) : HashTable)
    (for-each
      (lambda (k) (let ((v (from.ref k absent-value)))
                    (unless (eq? v absent-value) (to.set! k v))))
      keys)
    to))

;;; Map a function f on all the values of a map
;; : (Table W K) <- (Table V K) (W <- V)
(def (hash-value-map (h : HashTable) (f : :procedure))
  (list->hash-table
   (map (match <> ([k . v] (cons k (f v))))
        (hash->list h))))

;;; Map a function f on all the key-value pairs of a map, creating a new map
;; : (Table W <- L) <- (Fun (OrFalse (Cons L W)) <- K V) (Table V <- K) ?(Table W <- L)
(def (hash-key-value-map
      (f : :procedure)
      (from : HashTable)
      (to : HashTable := (HashTable-new from)))
  (from.for-each (lambda (k v) (match (f k v)
                                 ([k1 . v1] (to.set! k1 v1))
                                 (#f (void)))))
  to)

;;; Remove entries that satisfy a predicate
;; : (Table V K) <- (Table V K) (Bool <- K V) (Optional (Table V K))
(def (hash-filter
      (from : HashTable)
      (pred : :procedure)
      (to : HashTable := (HashTable-new from)))
  (from.for-each (lambda (k v) (when (pred k v) (to.set! k v))))
  to)

;;; Remove entries that do not satisfy a predicate
;; (named after remove in SRFI-1, the naming convention clashes with the hash-remove! primitive)
;; : (Table V K) <- (Table V K) (Bool <- K V) (Optional (Table V K))
(def (hash-remove
      (from : HashTable)
      (pred : :procedure)
      (to : HashTable := (HashTable-new from)))
  (from.for-each (lambda (k v) (unless (pred k v) (to.set! k v))))
  to)

;;; Remove entries that map some key to a given value (typically #f)
;; : (Table V K) <- (Table V K) (Optional V) (Optional (Table V K))
(def (hash-remove-value
      (from : HashTable)
      (value #f)
      (to : HashTable := (HashTable-new from)))
  (hash-remove from (lambda (_ v) (equal? v value)) to))

;;; Remove entry from the table if it exists, return two values:
;; the value that was removed, if any, or #f if none was found,
;; and a boolean that tells if there was a value.
(def (hash-ensure-removed! (table : HashTable) key)
  (let ((val (hash-ref table key absent-value)))
    (if (eq? val absent-value)
      (values #f #f)
      (begin
        (hash-remove! table key)
        (values val #t)))))

;; Modify an entry in a table. If no entry exists yet, call the provided default thunk.
;; Return the new value.
;; : V <- (Table V K) K (V <-) (V <- V)
(def (hash-ensure-modify! (table : HashTable) key (default : :procedure) (function : :procedure))
  (let* ((val (hash-ensure-ref table key default))
         (new-val (function val)))
    (table.set! key new-val)
    new-val))

;; Merge hash tables together and produce a new hash table. If same key exists in both base table
;; and rest of other tables then the key/value binding of the other tables takes precedence.
;; If more than one other table is given after the base table and bindings for the same key exist
;; in multiple other tables then the rightmost table's binding takes precedence.
;; This is unlike hash-merge
;; : Table <- Table (Optional-Keyword Bool) Table ...
(def (hash-merge/override (base-table : HashTable) . rest)
  (apply hash-merge/override! (base-table.copy) rest))

;; Merge hash tables together and update the base table's bindings. If same key exists in both base
;; table and rest of other tables then the key/value binding of the other tables takes precedence.
;; If more than one other table is given after the base table and bindings for the same key exist
;; in multiple other tables then the rightmost table's binding takes precedence.
;; : Table <- Table (Optional-Keyword Bool) Table ...
(def (hash-merge/override! (dest-table : HashTable) . rest)
  (for-each (lambda ((tab : HashTable))
              (tab.for-each (cut dest-table.set! <> <>)))
            rest)
  dest-table)

;; Extract from a hash-table an alist of its key-value pairs, with keys sorted the predicate.
;; : (List (Pair K V)) <- (Table V K) (Bool <- K K)
(def (hash->list/sort (h : HashTable) (pred : :procedure))
  => :list
  (list-sort (lambda (x y) (pred (car x) (car y)))
             (hash->list h)))

(def hash-get-set! hash-put!) ;; allow hash-get to be used as a place
(def hash-ref-set! ;; allow hash-ref to be used as a place, accepting (ignored) optional default argument
  (case-lambda ((h k v) (hash-put! h k v))
          ((h k _d v) (hash-put! h k v))))
