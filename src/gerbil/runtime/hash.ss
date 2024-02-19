;;; -*- Gerbil -*-
;;; © vyzo
;;; Gerbil hash table interface
prelude: "../prelude/core"
package: gerbil/runtime
namespace: #f

(import "gambit" "util" "table" "mop" "error" "interface")
(export #t)

(defclass (UnboundKeyError Error) ()
  constructor: :init!)

(defmethod {:init! UnboundKeyError}
  Error:::init!)

(def (raise-unbound-key-error where message . irritants)
  (raise
   (UnboundKeyError message  where: where irritants: irritants)))

(def unbound-key-error? UnboundKeyError?)

(defstruct-type HashTable::t (interface-instance::t)
  #f HashTable?
  id: gerbil#HashTable::t
  name: HashTable
  final: #t
  slots:
  ((ref     HashTable-ref@ HashTable-ref@-set!)
   (set     HashTable-set@ HashTable-set@-set!)
   (update  HashTable-update@ HashTable-update@-set!)
   (del     HashTable-del@ HashTable-del@-set!)
   (each    HashTable-each@ HashTable-each@-set!)
   (length  HashTable-length@ HashTable-length@-set!)
   (copy    HashTable-copy@ HashTable-copy@-set!)
   (clear   HashTable-clear@ HashTable-clear@-set!)))

(def HashTable::interface
  (interface-descriptor
   HashTable::t
   '(ref set! update! delete! for-each length copy clear!)))

(defstruct-type HashTableLock::t (interface-instance::t)
  #f HashTableLock?
  id: gerbil#HashTableLock::t
  name: HashTableLock
  final: #t
  slots:
  ((begin-read  HashTableLock-begin-read@ HashTableLock-begin-read@-set!)
   (end-read    HashTableLock-end-read@ HashTableLock-end-read@-set!)
   (begin-write HashTableLock-begin-write@ HashTableLock-begin-write@-set!)
   (end-write   HashTableLock-end-write@ HashTableLock-end-write@-set!)))

(def HashTableLock::interface
  (interface-descriptor
   HashTableLock::t
   '(begin-read! end-read! begin-write! end-write!)))

;; raw/builtin table methods
(bind-method! __table::t 'ref raw-table-ref)
(bind-method! __table::t 'set! raw-table-set!)
(bind-method! __table::t 'update! raw-table-update!)
(bind-method! __table::t 'delete! raw-table-delete!)
(bind-method! __table::t 'for-each raw-table-for-each)
(bind-method! __table::t 'length &raw-table-count)
(bind-method! __table::t 'copy raw-table-copy)
(bind-method! __table::t 'clear! raw-table-clear!)

(def (gambit-table-update! table key update default)
  (let (result (table-ref table key default))
    (table-set! table key (update default))))

(def (gambit-table-for-each table proc)
  (table-for-each proc table))

(def (gambit-table-clear! table)
  (##unchecked-structure-set! table 0 5 #f #f))

(bind-method! (macro-type-table) 'ref table-ref)
(bind-method! (macro-type-table) 'set! table-set!)
(bind-method! (macro-type-table) 'update! gambit-table-update!)
(bind-method! (macro-type-table) 'delete! table-set!)
(bind-method! (macro-type-table) 'for-each gambit-table-for-each)
(bind-method! (macro-type-table) 'length table-length)
(bind-method! (macro-type-table) 'copy table-copy)
(bind-method! (macro-type-table) 'clear! gambit-table-clear!)

;; immediate hash-table class; reifies the raw-table type
(def hash-table::t
  (begin-annotation
      (@mop.class gerbil#hash-table::t              ; type-id
                  ()                                ; super
                  (table count free hash test seed) ; slots
                  #f                                ; constructor
                  #t                                ; struct?
                  #f                                ; final?
                  #f)                               ; metaclass
    (let* ((slots '(table count free hash test seed))
           (slot-vector
            (list->vector (cons #f slots)))
           (slot-table
            (let (slot-table (make-symbolic-table #f 0))
              (for-each
                (lambda (slot field)
                  (symbolic-table-set! slot-table slot field)
                  (symbolic-table-set! slot-table (symbol->keyword slot) field))
                slots
                (iota (length slots) 1))
              slot-table))
           (flags
            (##fxior type-flag-extensible type-flag-concrete type-flag-id
                     class-type-flag-struct))
           (fields '#())
           (properties
            `((direct-slots: ,@slots)
              (struct: . #t))))
      (##structure
       class::t                      ; type
       'gerbil#hash-table::t         ; type-id
       'hash-table                   ; type-name
       flags                         ; type-flags
       __table::t                    ; type-super
       fields                        ; type-fields
       []                            ; class-type-precedence-list
       slot-vector                   ; class-type-slot-vector
       slot-table                    ; class-type-slot-table
       properties                    ; class-type-properties
       #f                            ; class-type-constructor
       #f))))

(def (hash-table? obj)
  (##structure-instance-of? obj (##type-id hash-table::t)))

;; locked hash table; wraps a HashTable instance to lock on primitive operations
(defstruct locked-hash-table (table lock)
  final: #t)

;; checked hash table; wraps a HashTable and performs safety checks
(defstruct checked-hash-table (table key-check)
  final: #t)

;; specializer types
(defstruct-type eq-hash-table::t (hash-table::t)
  make-eq-hash-table eq-hash-table?
  id: gerbil#eq-hash-table
  name: hash-table)
(defstruct-type eqv-hash-table::t (hash-table::t)
  make-eqv-hash-table eqv-hash-table?
  id: gerbil#eqv-hash-table
  name: hash-table)
(defstruct-type symbol-hash-table::t (hash-table::t)
  make-symbol-hash-table symbol-hash-table?
  id: gerbil#symbol-hash-table
  name: hash-table)
(defstruct-type string-hash-table::t (hash-table::t)
  make-string-hash-table string-hash-table?
  id: gerbil#string-hash-table
  name: hash-table)

(bind-method! hash-table::t 'ref raw-table-ref)
(bind-method! hash-table::t 'set! raw-table-set!)
(bind-method! hash-table::t 'update! raw-table-update!)
(bind-method! hash-table::t 'delete! raw-table-delete!)
(bind-method! hash-table::t 'for-each raw-table-for-each)
(bind-method! hash-table::t 'length &raw-table-count)
(bind-method! hash-table::t 'copy raw-table-copy)
(bind-method! hash-table::t 'clear! raw-table-clear!)

(bind-method! eq-hash-table::t 'ref eq-table-ref)
(bind-method! eq-hash-table::t 'set! eq-table-set!)
(bind-method! eq-hash-table::t 'update! eq-table-update!)
(bind-method! eq-hash-table::t 'delete! eq-table-delete!)

(bind-method! eqv-hash-table::t 'ref eqv-table-ref)
(bind-method! eqv-hash-table::t 'set! eqv-table-set!)
(bind-method! eqv-hash-table::t 'update! eqv-table-update!)
(bind-method! eqv-hash-table::t 'delete! eqv-table-delete!)

(bind-method! symbol-hash-table::t 'ref symbolic-table-ref)
(bind-method! symbol-hash-table::t 'set! symbolic-table-set!)
(bind-method! symbol-hash-table::t 'update! symbolic-table-update!)
(bind-method! symbol-hash-table::t 'delete! symbolic-table-delete!)

(bind-method! string-hash-table::t 'ref string-table-ref)
(bind-method! string-hash-table::t 'set! string-table-set!)
(bind-method! string-hash-table::t 'update! string-table-update!)
(bind-method! string-hash-table::t 'delete! string-table-delete!)

;; HashTable interface methods
(defsyntax (defhash-method stx)
  (syntax-case stx ()
    ((_ (hash-method h arg ...) body ...)
     (with-syntax ((&hash-method (stx-identifier #'hash-method "&" #'hash-method))
                   ((arg-val ...)
                    (stx-map (lambda (arg)
                               (if (identifier? arg)
                                 arg
                                 (stx-car arg)))
                             #'(arg ...))))
       #'(begin
           (def (hash-method h arg ...)
             (&hash-method (cast HashTable::interface h) arg-val ...))
           (def (&hash-method h arg ...)
             body ...))))))

;; the basic interface methods
(defhash-method (HashTable-ref h key default)
  (declare (not safe))
  ((&HashTable-ref@ h) (&interface-instance-object h) key default))

(defhash-method (HashTable-set! h key value)
  (declare (not safe))
  ((&HashTable-set@ h) (&interface-instance-object h) key value)
  (void))

(defhash-method (HashTable-update! h key update default)
  (declare (not safe))
  ((&HashTable-update@ h) (&interface-instance-object h) key update default)
  (void))

(defhash-method (HashTable-delete! h key)
  (declare (not safe))
  ((&HashTable-del@ h) (&interface-instance-object h) key)
  (void))

(defhash-method (HashTable-for-each h proc)
  (declare (not safe))
  ((&HashTable-each@ h) (&interface-instance-object h) proc)
  (void))

(defhash-method (HashTable-length h)
  (declare (not safe))
  ((&HashTable-length@ h) (&interface-instance-object h)))

(defhash-method (HashTable-copy h)
  (declare (not safe))
  ((&HashTable-copy@ h) (&interface-instance-object h)))

(defhash-method (HashTable-clear! h)
  (declare (not safe))
  ((&HashTable-clear@ h) (&interface-instance-object h))
  (void))

;; hash table locker methods
(def (&HashTableLock-begin-read! hl)
  (declare (not safe))
  ((&HashTableLock-begin-read@ hl) (&interface-instance-object hl)))

(def (&HashTableLock-end-read! hl)
  (declare (not safe))
  ((&HashTableLock-end-read@ hl) (&interface-instance-object hl)))

(def (&HashTableLock-begin-write! hl)
  (declare (not safe))
  ((&HashTableLock-begin-write@ hl) (&interface-instance-object hl)))

(def (&HashTableLock-end-write! hl)
  (declare (not safe))
  ((&HashTableLock-end-write@ hl) (&interface-instance-object hl)))

;; locked hash table methods
(defrules deflocked-hash-method ()
  ((_ (method arg ...) begin-lock hash-method end-lock)
   (defmethod {method locked-hash-table}
     (lambda (self arg ...)
       (let ((h (&locked-hash-table-table self))
             (l (&locked-hash-table-lock self)))
         (dynamic-wind
             (cut begin-lock l)
             (cut hash-method h arg ...)
             (cut end-lock l)))))))

(deflocked-hash-method (ref key default)
  &HashTableLock-begin-read!
  &HashTable-ref
  &HashTableLock-end-read!)

(deflocked-hash-method (set! key value)
  &HashTableLock-begin-write!
  &HashTable-set!
  &HashTableLock-end-write!)

(deflocked-hash-method (update! key update default)
  &HashTableLock-begin-write!
  &HashTable-update!
  &HashTableLock-end-write!)

(deflocked-hash-method (delete! key)
  &HashTableLock-begin-write!
  &HashTable-delete!
  &HashTableLock-end-write!)

(deflocked-hash-method (for-each proc)
  &HashTableLock-begin-read!
  &HashTable-for-each
  &HashTableLock-end-read!)

(deflocked-hash-method (length)
  &HashTableLock-begin-read!
  &HashTable-length
  &HashTableLock-end-read!)

(deflocked-hash-method (copy)
  &HashTableLock-begin-read!
  &HashTable-copy
  &HashTableLock-end-read!)

(deflocked-hash-method (clear!)
  &HashTableLock-begin-write!
  &HashTable-clear!
  &HashTableLock-end-write!)

;; checked hash table methods
;; make mutexes implement the hash table lock interface
(bind-method! (macro-type-mutex) 'begin-read! mutex-lock!)
(bind-method! (macro-type-mutex) 'end-read! mutex-unlock!)
(bind-method! (macro-type-mutex) 'begin-write! mutex-lock!)
(bind-method! (macro-type-mutex) 'end-write! mutex-unlock!)

(defrules defchecked-hash-method ()
  ((_ (method self arg ...) check hash-method)
   (defmethod {method checked-hash-table}
     (lambda (self arg ...)
       (let ((h (&checked-hash-table-table self))
             (key? (&checked-hash-table-key-check self)))
         (check key?)
         (hash-method h arg ...))))))

(defrules check-hash-arg ()
  ((_ check? obj)
   (unless (check? obj)
     (error "invalid argument" obj))))

(defchecked-hash-method (ref self key default)
  (cut check-hash-arg <> key)
  &HashTable-ref)

(defchecked-hash-method (set! self key value)
  (cut check-hash-arg <> key)
  &HashTable-set!)

(defchecked-hash-method (update! self key update default)
  (lambda (key?)
    (check-hash-arg key? key)
    (check-hash-arg procedure? update))
  &HashTable-update!)

(defchecked-hash-method (delete! self key)
  (cut check-hash-arg <> key)
  &HashTable-delete!)

(defchecked-hash-method (for-each self proc)
  (lambda (_) (check-hash-arg procedure? proc))
  &HashTable-for-each)

(defchecked-hash-method (length self)
  void
  &HashTable-length)

(defchecked-hash-method (copy self)
  void
  &HashTable-copy)

(defchecked-hash-method (clear! self)
  void
  &HashTable-clear!)

(def (make-generic-hash-table table count free hash test seed)
  (##structure hash-table::t table count free hash test seed))

(def (make-hash-table size: (size-hint #f)
                      seed: (seed (random-integer (macro-max-fixnum32)))
                      test: (test equal?)
                      hash: (hash #f)
                      lock: (lock #f)
                      check: (check #f)
                      ;; these two force gambit hash tables
                      weak-keys: (weak-keys #f)
                      weak-values: (weak-values #f))
  (def (wrap-lock ht)
    (if lock
      (cast HashTable::interface
            (make-locked-hash-table ht (cast HashTableLock::interface lock)))
      ht))

  (def (wrap-checked ht implicit)
    (if check
      (cast HashTable::interface
            (make-checked-hash-table ht (if (procedure? check) check implicit)))
      ht))

  (def (make kons key? hash test)
    (let* ((size (raw-table-size-hint->size size-hint))
           (table (make-vector size (macro-unused-obj)))
           (ht (cast HashTable::interface
                     (kons table 0 (fxquotient size 2) hash test seed))))
      (wrap-checked
       (wrap-lock ht)
       key?)))

  (def (make-gambit-table)
    (let* ((size (or size-hint (macro-absent-obj)))
           (test (or test equal?))
           (hash (cond
                  (hash)
                  ((eq? test eq?)
                   eq?-hash)
                  ((eq? test eqv?)
                   eqv?-hash)
                  (else
                   equal?-hash)))
           (ht
            (cast HashTable::interface
                  (make-table
                   size: size
                   test: test
                   hash: hash
                   weak-keys: weak-keys
                   weak-values: weak-values))))
      (wrap-checked
       (wrap-lock ht)
       true)))

  (cond
   ((or weak-keys weak-values)
    (make-gambit-table))
   ((and (or (eq? test eq?) (eq? test ##eq?))
         (or (not hash) (eq? hash eq?-hash) (eq? hash eq-hash)))
    (make make-eq-hash-table true eq-hash eq?))
   ((and (or (eq? test eqv?) (eq? test ##eqv?))
         (or (not hash) (eq? hash eqv?-hash) (eq? hash eqv-hash)))
    (make make-eqv-hash-table true eqv-hash eqv?))
   ((and (or (eq? test eq?) (eq? test ##eq?))
         (or (eq? hash symbolic-hash) (eq? hash ##symbol-hash)))
    (make make-symbol-hash-table symbolic? symbolic-hash eq?))
   ((and (or (eq? test equal?) (eq? test ##equal?) (eq? test string=?) (eq? test ##string=?))
         (or (eq? hash string-hash) (eq? hash ##string=?-hash)))
    (make make-string-hash-table string? string-hash ##string=?))
   ((and (eq? test equal?) (not hash))
    (make make-generic-hash-table true equal?-hash equal?))
   ((not (procedure? test))
    (error "bad hash table test function; expected procedure" test))
   ((not (procedure? hash))
    (error "bad hash table hash function; expected procedure" hash))
   (else
    (make make-generic-hash-table true hash test))))

(def (make-hash-table-eq . args)
  (apply make-hash-table test: eq? args))

(def (make-hash-table-eqv . args)
  (apply make-hash-table test: eqv? args))

(def (make-hash-table-symbolic . args)
  (apply make-hash-table test: eq? hash: symbolic-hash args))

(def (make-hash-table-string . args)
  (apply make-hash-table test: string=? hash: string-hash args))

(def (list->hash-table lst . args)
  (list->hash-table! lst (apply make-hash-table size: (length lst) args)))

(def (list->hash-table-eq lst . args)
  (list->hash-table! lst (apply make-hash-table-eq size: (length lst) args)))

(def (list->hash-table-eqv lst . args)
  (list->hash-table! lst (apply make-hash-table-eqv size: (length lst) args)))

(def (list->hash-table-symbolic lst . args)
  (list->hash-table! lst (apply make-hash-table-symbolic size: (length lst) args)))

(def (list->hash-table-string lst . args)
  (list->hash-table! lst (apply make-hash-table-string size: (length lst) args)))

(def (list->hash-table! lst h)
  (for-each
    (lambda (el)
      (with ([k . v] el)
        (&HashTable-set! h k v)))
    lst)
  h)

(def (plist->hash-table lst . args)
  (plist->hash-table! lst (apply make-hash-table size: (length lst) args)))

(def (plist->hash-table-eq lst . args)
  (plist->hash-table! lst (apply make-hash-table-eq size: (length lst) args)))

(def (plist->hash-table-eqv lst . args)
  (plist->hash-table! lst (apply make-hash-table-eqv size: (length lst) args)))

(def (plist->hash-table-symbolic lst . args)
  (plist->hash-table! lst (apply make-hash-table-symbolic size: (length lst) args)))

(def (plist->hash-table-string lst . args)
  (plist->hash-table! lst (apply make-hash-table-string size: (length lst) args)))

(def (plist->hash-table! lst h)
  (let loop ((rest lst))
    (match rest
      ([key val . rest]
       (&HashTable-set! h key val)
       (loop rest))
      ([] h)
      (else
       (error "bad property list -- uneven list" lst)))))

;; common hash table api
(defhash-method (hash-length h)
  (&HashTable-length h))

(defhash-method (hash-ref h key (default (macro-absent-obj)))
  (let (result (&HashTable-ref h key default))
    (if (eq? result (macro-absent-obj))
      (raise-unbound-key-error 'hash-ref "unknown hash key" hash: h key: key)
      result)))

(defhash-method (hash-get h key)
  (&HashTable-ref h key #f))

(defhash-method (hash-put! h key value)
  (&HashTable-set! h key value))

(defhash-method (hash-update! h key update (default #!void))
  (&HashTable-update! h key update default))

(defhash-method (hash-remove! h key)
  (&HashTable-delete! h key))

(defhash-method (hash-key? h k)
  (not (eq? (&HashTable-ref h k absent-value) absent-value)))

(defhash-method (hash->list h)
  (let (lst [])
    (&HashTable-for-each h (lambda (k v) (set! lst (cons (cons k v) lst))))
    lst))

(defhash-method (hash->plist h)
  (let (lst [])
    (&HashTable-for-each h (lambda (k v) (set! lst (cons* k v lst))))
    lst))

(def (hash-for-each proc h)
  (HashTable-for-each h proc))

(def (hash-map proc h)
  (let (result [])
    (HashTable-for-each h (lambda (k v) (set! result (cons (proc k v) result))))
    result))

(def (hash-fold proc iv h)
  (let (result iv)
    (HashTable-for-each h (lambda (k v) (set! result (proc k v result))))
    result))

(def (hash-find proc h (default-value #f))
  (let/cc return
    (HashTable-for-each h (lambda (k v) (cond ((proc k v) => return))))
    default-value))

(defhash-method (hash-keys h)
  (let (result [])
    (&HashTable-for-each h (lambda (k v) (set! result (cons k result))))
    result))

(defhash-method (hash-values h)
  (let (result [])
    (&HashTable-for-each h (lambda (k v) (set! result (cons v result))))
    result))

(defhash-method (hash-copy h)
  (&HashTable-copy h))

(def (hash-merge h . rest)
  (let (copy (hash-copy h))
    (apply hash-merge! copy rest)
    copy))

(def (hash-merge! h . rest)
  (let (h (cast HashTable::interface h))
    (for-each (lambda (hr) (hash-for-each
                       (lambda (k v)
                         (unless (&hash-key? h k)
                           (&HashTable-set! h k v)))
                       hr))
              rest)
    h))
