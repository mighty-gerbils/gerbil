;;; -*- Gerbil -*-
;;; © vyzo
;;; Gerbil hash table interface
prelude: "../core"
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

(deftype @HashTable HashTable)

(interface HashTable
  (ref key default) => :t
  (set! key value) => :void
  (update! key (proc : :procedure) default) => :void
  (delete! key) => :void
  (for-each (proc : :procedure)) => :void
  (copy) => @HashTable
  (clear!) => :void
  (length) => :fixnum)

(interface Locker
  (read-lock!) => :void
  (read-unlock!) => :void
  (write-lock!) => :void
  (write-unlock!) => :void)

;; raw/builtin table methods
(bind-method! __table::t 'HashTable::ref raw-table-ref)
(bind-method! __table::t 'HashTable::set! raw-table-set!)
(bind-method! __table::t 'HashTable::update! raw-table-update!)
(bind-method! __table::t 'HashTable::delete! raw-table-delete!)
(bind-method! __table::t 'HashTable::for-each raw-table-for-each)
(bind-method! __table::t 'HashTable::length &raw-table-count)
(bind-method! __table::t 'HashTable::copy raw-table-copy)
(bind-method! __table::t 'HashTable::clear! raw-table-clear!)

(bind-method! __gc-table::t 'HashTable::ref gc-table-ref)
(bind-method! __gc-table::t 'HashTable::set! gc-table-set!)
(bind-method! __gc-table::t 'HashTable::update! gc-table-update!)
(bind-method! __gc-table::t 'HashTable::delete! gc-table-delete!)
(bind-method! __gc-table::t 'HashTable::for-each gc-table-for-each)
(bind-method! __gc-table::t 'HashTable::length gc-table-length)
(bind-method! __gc-table::t 'HashTable::copy gc-table-copy)
(bind-method! __gc-table::t 'HashTable::clear! gc-table-clear!)

(def (gambit-table-update! table key update default)
  (let (result (table-ref table key default))
    (table-set! table key (update default))))

(def (gambit-table-for-each table proc)
  (table-for-each proc table))

(def (gambit-table-clear! table)
  (##unchecked-structure-set! table 0 5 #f #f))

(bind-method! (macro-type-table) 'HashTable::ref table-ref)
(bind-method! (macro-type-table) 'HashTable::set! table-set!)
(bind-method! (macro-type-table) 'HashTable::update! gambit-table-update!)
(bind-method! (macro-type-table) 'HashTable::delete! table-set!)
(bind-method! (macro-type-table) 'HashTable::for-each gambit-table-for-each)
(bind-method! (macro-type-table) 'HashTable::length table-length)
(bind-method! (macro-type-table) 'HashTable::copy table-copy)
(bind-method! (macro-type-table) 'HashTable::clear! gambit-table-clear!)

;; immediate hash-table class; reifies the raw-table type
(def hash-table::t
  (begin-annotation
      (@mop.class gerbil#hash-table::t              ; type-id
                  (object::t)                       ; super
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
       [object::t t::t]              ; class-type-precedence-list
       slot-vector                   ; class-type-slot-vector
       slot-table                    ; class-type-slot-table
       properties                    ; class-type-properties
       #f                            ; class-type-constructor
       #f))))

;; immediate gc-hash-table class; reifies the gc-table type
(def gc-hash-table::t
  (begin-annotation
      (@mop.class gerbil#gc-hash-table::t ; type-id
                  (object::t)             ; super
                  (gcht immediate)        ; slots
                  #f                      ; constructor
                  #t                      ; struct?
                  #f                      ; final?
                  #f)                               ; metaclass
    (let* ((slots '(gcht immediate))
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
       class::t                         ; type
       'gerbil#gc-hash-table::t         ; type-id
       'hash-table                      ; type-name
       flags                            ; type-flags
       __gc-table::t                    ; type-super
       fields                           ; type-fields
       [object::t t::t]                 ; class-type-precedence-list
       slot-vector                      ; class-type-slot-vector
       slot-table                       ; class-type-slot-table
       properties                       ; class-type-properties
       #f                               ; class-type-constructor
       #f))))

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
(defstruct-type immediate-hash-table::t (hash-table::t)
  make-immediate-hash-table immediate-hash-table?
  id: gerbil#immediate-hash-table::t
  name: hash-table)

(bind-method! hash-table::t 'HashTable::ref raw-table-ref)
(bind-method! hash-table::t 'HashTable::set! raw-table-set!)
(bind-method! hash-table::t 'HashTable::update! raw-table-update!)
(bind-method! hash-table::t 'HashTable::delete! raw-table-delete!)
(bind-method! hash-table::t 'HashTable::for-each raw-table-for-each)
(bind-method! hash-table::t 'HashTable::length &raw-table-count)
(bind-method! hash-table::t 'HashTable::copy raw-table-copy)
(bind-method! hash-table::t 'HashTable::clear! raw-table-clear!)

(bind-method! eq-hash-table::t 'HashTable::ref eq-table-ref)
(bind-method! eq-hash-table::t 'HashTable::set! eq-table-set!)
(bind-method! eq-hash-table::t 'HashTable::update! eq-table-update!)
(bind-method! eq-hash-table::t 'HashTable::delete! eq-table-delete!)

(bind-method! eqv-hash-table::t 'HashTable::ref eqv-table-ref)
(bind-method! eqv-hash-table::t 'HashTable::set! eqv-table-set!)
(bind-method! eqv-hash-table::t 'HashTable::update! eqv-table-update!)
(bind-method! eqv-hash-table::t 'HashTable::delete! eqv-table-delete!)

(bind-method! symbol-hash-table::t 'HashTable::ref symbolic-table-ref)
(bind-method! symbol-hash-table::t 'HashTable::set! symbolic-table-set!)
(bind-method! symbol-hash-table::t 'HashTable::update! symbolic-table-update!)
(bind-method! symbol-hash-table::t 'HashTable::delete! symbolic-table-delete!)

(bind-method! string-hash-table::t 'HashTable::ref string-table-ref)
(bind-method! string-hash-table::t 'HashTable::set! string-table-set!)
(bind-method! string-hash-table::t 'HashTable::update! string-table-update!)
(bind-method! string-hash-table::t 'HashTable::delete! string-table-delete!)

(bind-method! immediate-hash-table::t 'HashTable::ref immediate-table-ref)
(bind-method! immediate-hash-table::t 'HashTable::set! immediate-table-set!)
(bind-method! immediate-hash-table::t 'HashTable::update! immediate-table-update!)
(bind-method! immediate-hash-table::t 'HashTable::delete! immediate-table-delete!)

(bind-method! gc-hash-table::t 'HashTable::ref gc-table-ref)
(bind-method! gc-hash-table::t 'HashTable::set! gc-table-set!)
(bind-method! gc-hash-table::t 'HashTable::update! gc-table-update!)
(bind-method! gc-hash-table::t 'HashTable::delete! gc-table-delete!)
(bind-method! gc-hash-table::t 'HashTable::for-each gc-table-for-each)
(bind-method! gc-hash-table::t 'HashTable::length gc-table-length)
(bind-method! gc-hash-table::t 'HashTable::copy gc-table-copy)
(bind-method! gc-hash-table::t 'HashTable::clear! gc-table-clear!)

;; HashTable interface methods
(def hash-table?
  HashTable?)

(def is-hash-table?
  is-HashTable?)

;; locked hash table methods
(defrules deflocked-hash-method ()
  ((_ (method arg ...) begin-lock hash-method end-lock continue)
   (defmethod {method locked-hash-table}
     (lambda (self arg ...)
       (let ((h (&locked-hash-table-table self))
             (l (&locked-hash-table-lock self)))
         (continue
          (dynamic-wind
              (cut begin-lock l)
              (cut hash-method h arg ...)
              (cut end-lock l)))))
     interface: HashTable))
  ((recur (method arg ...) begin-lock hash-method end-lock)
   (recur (method arg ...) begin-lock hash-method end-lock identity)))

(deflocked-hash-method (ref key default)
  &Locker-read-lock!
  &HashTable-ref
  &Locker-read-unlock!)

(deflocked-hash-method (set! key value)
  &Locker-write-lock!
  &HashTable-set!
  &Locker-write-unlock!
  void)

(deflocked-hash-method (update! key update default)
  &Locker-write-lock!
  &HashTable-update!
  &Locker-write-unlock!
  void)

(deflocked-hash-method (delete! key)
  &Locker-write-lock!
  &HashTable-delete!
  &Locker-write-unlock!
  void)

(deflocked-hash-method (for-each proc)
  &Locker-read-lock!
  &HashTable-for-each
  &Locker-read-unlock!
  void)

(deflocked-hash-method (length)
  &Locker-read-lock!
  &HashTable-length
  &Locker-read-unlock!
  (cut : <> :fixnum))

(deflocked-hash-method (copy)
  &Locker-read-lock!
  &HashTable-copy
  &Locker-read-unlock!
  HashTable)

(deflocked-hash-method (clear!)
  &Locker-write-lock!
  &HashTable-clear!
  &Locker-write-unlock!
  void)

;; checked hash table methods
;; make mutexes implement the hash table lock interface
(bind-method! (macro-type-mutex) 'Locker::read-lock! mutex-lock!)
(bind-method! (macro-type-mutex) 'Locker::read-unlock! mutex-unlock!)
(bind-method! (macro-type-mutex) 'Locker::write-lock! mutex-lock!)
(bind-method! (macro-type-mutex) 'Locker::write-unlock! mutex-unlock!)

(defrules defchecked-hash-method ()
  ((_ (method self arg ...) check hash-method)
   (defmethod {method checked-hash-table}
     (lambda (self arg ...)
       (declare (not safe))
       (let ((h (&checked-hash-table-table self))
             (key? (&checked-hash-table-key-check self)))
         (if (check key? arg ...)
           (hash-method h arg ...)
           (abort!
            (raise-contract-violation-error
             "invalid key"
             context: 'hash-method
             value: [arg ...])))))
     interface: HashTable)))

(defchecked-hash-method (ref self key default)
  (lambda (key? key default) (key? key))
  &HashTable-ref)

(defchecked-hash-method (set! self key value)
  (lambda (key? key value) (key? key))
  &HashTable-set!)

(defchecked-hash-method (update! self key update default)
  (lambda (key? key update default) (key? key))
  &HashTable-update!)

(defchecked-hash-method (delete! self key)
  (lambda (key? key) (key? key))
  &HashTable-delete!)

(defchecked-hash-method (for-each self proc)
  (lambda (key? proc) #t)
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
                      seed: (seed #f)
                      test: (test equal?)
                      hash: (hash #f)
                      lock: (lock #f)
                      check: (check #f)
                      ;; these two force gambit hash tables
                      weak-keys: (weak-keys #f)
                      weak-values: (weak-values #f))
  => HashTable

  (def (table-seed)
    (if (fixnum? seed)
      seed
      (random-integer (macro-max-fixnum32))))

  (def (wrap-lock (ht :- HashTable))
    => HashTable
    (if lock
      (HashTable
       (make-locked-hash-table ht (Locker lock)))
      ht))

  (def (wrap-checked (ht :- HashTable) implicit)
    => HashTable
    (if check
      (HashTable
       (make-checked-hash-table ht (if (procedure? check) check implicit)))
      ht))

  (def (make kons key? hash test)
    => HashTable
    (let* ((size (raw-table-size-hint->size size-hint))
           (table (make-vector size (macro-unused-obj)))
           (ht (HashTable
                (kons table 0 (fxquotient size 2) hash test (table-seed)))))
      (wrap-checked
       (wrap-lock ht)
       key?)))

  (def (make-gc-hash-table)
    => HashTable
    (let (ht
          (HashTable
           (make-gc-table size-hint gc-hash-table::t)))
      (wrap-checked
       (wrap-lock ht)
       true)))

  (def (make-gambit-table)
    => HashTable
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
            (HashTable
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
         (or (not hash) (eq? hash eq?-hash) (eq? hash eq-hash))
         (not seed))
    (make-gc-hash-table))
   ((and (or (eq? test eq?) (eq? test ##eq?))
         (or (not hash) (eq? hash eq?-hash) (eq? hash eq-hash)))
    (make make-eq-hash-table true eq-hash eq?))
   ((and (or (eq? test eqv?) (eq? test ##eqv?))
         (or (not hash) (eq? hash eqv?-hash) (eq? hash eqv-hash)))
    (make make-eqv-hash-table true eqv-hash eqv?))
   ((and (or (eq? test eq?) (eq? test ##eq?))
         (or (eq? hash symbolic-hash) (eq? hash ##symbol-hash)))
    (make make-symbol-hash-table symbolic? symbolic-hash eq?))
   ((and (or (eq? test eq?) (eq? test ##eq?))
         (eq? hash immediate-hash))
    (make make-immediate-hash-table immediate? immediate-hash eq?))
   ((and (or (eq? test equal?) (eq? test ##equal?) (eq? test string=?) (eq? test ##string=?))
         (or (eq? hash string-hash) (eq? hash ##string=?-hash)))
    (make make-string-hash-table string? string-hash ##string=?))
   ((and (eq? test equal?) (not hash))
    (make make-generic-hash-table true equal?-hash equal?))
   ((not (procedure? test))
    (abort!
     (error "bad hash table test function; expected procedure" test)))
   ((not (procedure? hash))
    (abort!
     (error "bad hash table hash function; expected procedure" hash)))
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

(def (make-hash-table-immediate . args)
  (apply make-hash-table test: eq? hash: immediate-hash args))

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

(def (list->hash-table-immediate lst . args)
  (list->hash-table! lst (apply make-hash-table-immediate size: (length lst) args)))

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

(def (plist->hash-table-immediate lst . args)
  (plist->hash-table! lst (apply make-hash-table-immediate size: (length lst) args)))

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
(defrule (defhash-method (proc h . rest) body ...)
  (def (proc (h : HashTable) . rest) body ...))

(defhash-method (hash-length h)
  (h.length))

(defhash-method (hash-ref h key (default (macro-absent-obj)))
  (let (result (h.ref key default))
    (if (eq? result (macro-absent-obj))
      (raise-unbound-key-error 'hash-ref "unknown hash key" hash: h key: key)
      result)))

(defhash-method (hash-get h key)
  (h.ref key #f))

(defhash-method (hash-put! h key value)
  (h.set! key value))

(defhash-method (hash-update! h key update (default #!void))
  (h.update! key update default))

(defhash-method (hash-remove! h key)
  (h.delete! key))

(defhash-method (hash-key? h k)
  (not (eq? (h.ref k absent-value) absent-value)))

(defhash-method (hash->list h)
  (let (lst [])
    (h.for-each (lambda (k v) (set! lst (cons (cons k v) lst))))
    lst))

(defhash-method (hash->plist h)
  (let (lst [])
    (h.for-each (lambda (k v) (set! lst (cons* k v lst))))
    lst))

(def (hash-for-each (proc : :procedure) (h : HashTable))
  (h.for-each proc))

(def (hash-map (proc : :procedure) (h : HashTable))
  (let (result [])
    (h.for-each (lambda (k v) (set! result (cons (proc k v) result))))
    result))

(def (hash-fold (proc : :procedure) iv (h : HashTable))
  (let (result iv)
    (h.for-each (lambda (k v) (set! result (proc k v result))))
    result))

(def (hash-find (proc : :procedure) (h : HashTable) (default-value #f))
  (let/cc return
    (h.for-each (lambda (k v) (cond ((proc k v) => return))))
    default-value))

(defhash-method (hash-keys h)
  (let (result [])
    (h.for-each (lambda (k v) (set! result (cons k result))))
    result))

(defhash-method (hash-values h)
  (let (result [])
    (h.for-each (lambda (k v) (set! result (cons v result))))
    result))

(defhash-method (hash-copy h)
  (h.copy))

(defhash-method (hash-clear! h)
  (h.clear!))

(def (hash-merge (h : HashTable) . rest)
  (let (copy (h.copy))
    (apply hash-merge! copy rest)
    copy))

(def (hash-merge! (h : HashTable) . rest)
  (for-each
    (lambda ((hr : HashTable))
      (hr.for-each
       (lambda (k v)
         (unless (hash-key? h k)
           (h.set! k v)))))
    rest)
  h)
