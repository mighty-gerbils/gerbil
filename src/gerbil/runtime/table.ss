;;; -*- Gerbil -*-
;;; © vyzo
;;; Gerbil hash tables: raw tables
prelude: "../core"
package: gerbil/runtime
namespace: #f

(import "gambit" "util")
(export #t)
(declare (not safe))

;; this is defined as a raw gambit type, as we don't have MOP yet -- it needs tables!
(def __table::t.id 'gerbil#__table::t)

(def __table::t
  (##structure ##type-type  ; type
               __table::t.id ; id
               'raw-table    ; name
               26 ; flags: extensible | concrete | nongenerative
               #f ; super
               '#(table 5 #f count 5 #f free 5 #f hash 5 #f test 5 #f seed 5 #f)))

(def (&raw-table-table tab)
  (##unchecked-structure-ref tab 1 __table::t 'raw-table-table))
(def (&raw-table-count tab)
  (##unchecked-structure-ref tab 2 __table::t 'raw-table-count))
(def (&raw-table-free tab)
  (##unchecked-structure-ref tab 3 __table::t 'raw-table-free))
(def (&raw-table-hash tab)
  (##unchecked-structure-ref tab 4 __table::t 'raw-table-hash))
(def (&raw-table-test tab)
  (##unchecked-structure-ref tab 5 __table::t 'raw-table-test))
(def (&raw-table-seed tab)
  (##unchecked-structure-ref tab 6 __table::t 'raw-table-seed))

(def (&raw-table-table-set! tab val)
  (##unchecked-structure-set! tab val 1 __table::t 'raw-table-table-set!))
(def (&raw-table-count-set! tab val)
  (##unchecked-structure-set! tab val 2 __table::t 'raw-table-count-set!))
(def (&raw-table-free-set! tab val)
  (##unchecked-structure-set! tab val 3 __table::t 'raw-table-free-set!))
(def (&raw-table-hash-set! tab val)
  (##unchecked-structure-set! tab val 4 __table::t 'raw-table-hash-set!))
(def (&raw-table-test-set! tab val)
  (##unchecked-structure-set! tab val 5 __table::t 'raw-table-test-set!))
(def (&raw-table-seed-set! tab val)
  (##unchecked-structure-set! tab val 6 __table::t 'raw-table-seed-set!))

;; SMP: global spinlock for all raw table mutations
(def __raw-table-lock (__make-inline-lock))

;; generic raw tables
(def (raw-table-size-hint->size size-hint)
  (if (and (fixnum? size-hint) (fx> size-hint 0))
    ;; make it a power of 2 so that quadratic probing produces
    ;; a full table probe; we multiply by 4 to avoid rehashing.
    (fx* (fxmax 2 (expt 2 (integer-length size-hint))) 4)
    16))

(def (make-raw-table size-hint hash test (seed 0))
  (let* ((size (raw-table-size-hint->size size-hint))
         (table (make-vector size (macro-unused-obj))))
    (##structure __table::t table 0 (fxquotient size 2) hash test seed)))

(def (raw-table-ref tab key default)
  (__lock-inline! __raw-table-lock)
  (let ((table (&raw-table-table tab))
        (seed (&raw-table-seed tab))
        (hash (&raw-table-hash tab))
        (test (&raw-table-test tab)))
    (let (result (__table-ref table seed hash test key default))
      (__unlock-inline! __raw-table-lock)
      result)))

(def (raw-table-set! tab key value)
  (__lock-inline! __raw-table-lock)
  (when (fx< (&raw-table-free tab)
             (fxquotient (vector-length (&raw-table-table tab)) 4))
    (__raw-table-rehash! tab))
  (__raw-table-set! tab key value)
  (__unlock-inline! __raw-table-lock))

(def (raw-table-update! tab key update default)
  (__lock-inline! __raw-table-lock)
  (when (fx< (&raw-table-free tab)
             (fxquotient (vector-length (&raw-table-table tab)) 4))
    (__raw-table-rehash! tab))
  (__raw-table-update! tab key update default)
  (__unlock-inline! __raw-table-lock))

(def (raw-table-delete! tab key)
  (__lock-inline! __raw-table-lock)
  (let ((table (&raw-table-table tab))
        (seed (&raw-table-seed tab))
        (hash (&raw-table-hash tab))
        (test (&raw-table-test tab)))
    (__table-del! table seed hash test key
                  (lambda ()
                    (set! (&raw-table-count tab) (fx- (&raw-table-count tab) 1)))))
  (__unlock-inline! __raw-table-lock))

(def (raw-table-for-each tab proc)
  ;; Snapshot the table vector under the lock to prevent seeing a
  ;; mid-rehash (empty) table.  Release the lock before iterating
  ;; so that the proc callback can safely access other tables.
  (__lock-inline! __raw-table-lock)
  (let* ((table (&raw-table-table tab))
         (size  (vector-length table)))
    (__unlock-inline! __raw-table-lock)
    (let loop ((i 0))
      (when (fx< i size)
        (let (key (vector-ref table i))
          (when (and (not (eq? key (macro-unused-obj)))
                     (not (eq? key (macro-deleted-obj))))
            (let (value (vector-ref table (fx+ i 1)))
              (proc key value))))
        (loop (fx+ i 2))))))

(def (raw-table-copy tab)
  (__lock-inline! __raw-table-lock)
  (let (new-tab (##structure-copy tab))
    (set! (&raw-table-table new-tab)
      (vector-copy (&raw-table-table tab)))
    (__unlock-inline! __raw-table-lock)
    new-tab))

(def (raw-table-clear! tab)
  (__lock-inline! __raw-table-lock)
  (vector-fill! (&raw-table-table tab) (macro-unused-obj))
  (set! (&raw-table-count tab) 0)
  (set! (&raw-table-free tab)
    (fxquotient (vector-length (&raw-table-table tab)) 2))
  (__unlock-inline! __raw-table-lock))

(def (__raw-table-set! tab key value)
  (let ((table (&raw-table-table tab))
        (seed (&raw-table-seed tab))
        (hash (&raw-table-hash tab))
        (test (&raw-table-test tab)))
    (__table-set! table seed hash test key value
                  (lambda () ; insert
                    (set! (&raw-table-free tab) (fx- (&raw-table-free tab) 1))
                    (set! (&raw-table-count tab) (fx+ (&raw-table-count tab) 1)))
                  (lambda () ; ressurect
                    (set! (&raw-table-count tab) (fx+ (&raw-table-count tab) 1))))))

(def (__raw-table-update! tab key update default)
  (let ((table (&raw-table-table tab))
        (seed (&raw-table-seed tab))
        (hash (&raw-table-hash tab))
        (test (&raw-table-test tab)))
    (__table-update! table seed hash test key update default
                  (lambda () ; insert
                    (set! (&raw-table-free tab) (fx- (&raw-table-free tab) 1))
                    (set! (&raw-table-count tab) (fx+ (&raw-table-count tab) 1)))
                  (lambda () ; ressurect
                    (set! (&raw-table-count tab) (fx+ (&raw-table-count tab) 1))))))

(def (__raw-table-rehash! tab)
  (let* ((old-table (&raw-table-table tab))
         (old-size (vector-length old-table))
         (new-size
          (if (fx< (&raw-table-count tab) (fxquotient old-size 4))
            (vector-length old-table)
            (fx* 2 (vector-length old-table))))
         (new-table
          (make-vector new-size (macro-unused-obj))))
    (set! (&raw-table-table tab) new-table)
    (set! (&raw-table-count tab) 0)
    (set! (&raw-table-free tab) (fxquotient new-size 2))
    (let lp ((i 0))
      (when (fx< i old-size)
        (let (key (vector-ref old-table i))
          (when (and (not (eq? key (macro-unused-obj)))
                     (not (eq? key (macro-deleted-obj))))
            (let (value (vector-ref old-table (fx+ i 1)))
              (__raw-table-set! tab key value))))
        (lp (fx+ i 2))))))

;;; specialized tables
(def (eq-hash obj)
  (let (t (##type obj))
    (cond
     ((fx= (fxand t #b1) 0)
      ;; immediate
      (fxand
       (##type-cast obj (macro-type-fixnum))
       (macro-max-fixnum32)))
     ((symbolic? obj)
      (symbolic-hash obj))
     ((procedure? obj)
      (procedure-hash obj))
     (else
      (fxand (__eq-hash obj)
             (macro-max-fixnum32))))))

(def (procedure-hash obj)
  (let (h (if (##closure? obj)
            ;; avoid collisions for closures from the same parent
            ;; they point to the same label, and this is particularly
            ;; eggregious for interpreted procedures
            (__eq-hash obj)
            ;; top level procedure, use the pointer directly
            (##type-cast obj 0)))
    (fxand h (macro-max-fixnum32))))

(cond-expand
  (gerbil-smp
   (def __eq-hash-lock (__make-inline-lock))
   (def (__eq-hash obj)
     (__lock-inline! __eq-hash-lock)
     (let (h (__object->eq-hash obj))
       (__unlock-inline! __eq-hash-lock)
       h)))
  (else
   (def (__eq-hash obj)
     (declare (not interrupts-enabled))
     (__object->eq-hash obj))))

(def (eqv-hash obj)
  (define (combine a b)
    (fxand
     (fx* (fx+ a (fxarithmetic-shift-left b 1))
          331804471)
     (macro-max-fixnum32)))

  (define (hash obj)
    (macro-number-dispatch obj
      (eq-hash obj) ;; obj = not a number
      (fxand obj (macro-max-fixnum32)) ;; obj = fixnum
      (modulo obj 331804481) ;; obj = bignum
      (combine (hash (macro-ratnum-numerator obj)) ;; obj = ratnum
               (hash (macro-ratnum-denominator obj)))
      (combine (##u16vector-ref obj 0) ;; obj = flonum
               (combine (##u16vector-ref obj 1)
                        (combine (##u16vector-ref obj 2)
                                 (##u16vector-ref obj 3))))
      (combine (hash (macro-cpxnum-real obj)) ;; obj = cpxnum
               (hash (macro-cpxnum-imag obj)))))

  (hash obj))

(def (symbolic? obj)
  (or (symbol? obj) (keyword? obj)))

(def (symbolic-hash obj)
  (##symbol-hash obj))

(def (string-hash obj)
  (##string=?-hash obj))

(def (immediate-hash obj)
  (##type-cast obj (macro-type-fixnum)))

(defrules defspecialized-table ()
  ((_ make ref set __set update __update del hash eq)
   (begin
     (def (make (size-hint #f) (seed 0))
       (make-raw-table size-hint hash eq seed))
     (def (ref tab key default)
       (__lock-inline! __raw-table-lock)
       (let ((table (&raw-table-table tab))
             (seed (&raw-table-seed tab)))
         (let (result (__table-ref table seed hash eq key default))
           (__unlock-inline! __raw-table-lock)
           result)))
     (def (set tab key value)
       (__lock-inline! __raw-table-lock)
       (when (fx< (&raw-table-free tab)
                  (fxquotient (vector-length (&raw-table-table tab)) 4))
         (__raw-table-rehash! tab))
       (__set tab key value)
       (__unlock-inline! __raw-table-lock))
     (def (__set tab key value)
       (let ((table (&raw-table-table tab))
             (seed (&raw-table-seed tab)))
         (__table-set! table seed hash eq key value
                       (lambda ()            ; insert
                         (set! (&raw-table-free tab) (fx- (&raw-table-free tab) 1))
                         (set! (&raw-table-count tab) (fx+ (&raw-table-count tab) 1)))
                       (lambda ()            ; ressurect
                         (set! (&raw-table-count tab) (fx+ (&raw-table-count tab) 1))))))
     (def (update tab key update default)
       (__lock-inline! __raw-table-lock)
       (when (fx< (&raw-table-free tab)
                  (fxquotient (vector-length (&raw-table-table tab)) 4))
         (__raw-table-rehash! tab))
       (__update tab key update default)
       (__unlock-inline! __raw-table-lock))
     (def (__update tab key update default)
       (let ((table (&raw-table-table tab))
             (seed (&raw-table-seed tab)))
         (__table-update! table seed hash eq key update default
                       (lambda ()            ; insert
                         (set! (&raw-table-free tab) (fx- (&raw-table-free tab) 1))
                         (set! (&raw-table-count tab) (fx+ (&raw-table-count tab) 1)))
                       (lambda ()            ; ressurect
                         (set! (&raw-table-count tab) (fx+ (&raw-table-count tab) 1))))))
     (def (del tab key)
       (__lock-inline! __raw-table-lock)
       (let ((table (&raw-table-table tab))
             (seed (&raw-table-seed tab)))
         (__table-del! table seed hash eq key
                       (lambda ()
                         (set! (&raw-table-count tab) (fx- (&raw-table-count tab) 1)))))
       (__unlock-inline! __raw-table-lock)))))


;; eq-table
(defspecialized-table make-eq-table
  eq-table-ref
  eq-table-set! __eq-table-set!
  eq-table-update! __eq-table-update!
  eq-table-delete!
  eq-hash eq?)
;; eqv-table
(defspecialized-table make-eqv-table
  eqv-table-ref
  eqv-table-set! __eqv-table-set!
  eqv-table-update! __eqv-table-update!
  eqv-table-delete!
  eqv-hash eqv?)
;;; symbolic-table: symbols or keywords
(defspecialized-table make-symbolic-table
  symbolic-table-ref
  symbolic-table-set! __symbolic-table-set!
  symbolic-table-update! __symbolic-table-update!
  symbolic-table-delete!
  symbolic-hash eq?)
;;; string-table: strings
(defspecialized-table make-string-table
  string-table-ref
  string-table-set! __string-table-set!
  string-table-update! __string-table-update!
  string-table-delete!
  string-hash ##string=?)
;;; imeediate-table: non mem allocated objects
(defspecialized-table make-immediate-table
  immediate-table-ref
  immediate-table-set! __immediate-table-set!
  immediate-table-update! __immediate-table-update!
  immediate-table-delete!
  immediate-hash eq?)

;;; table implementation; open addressing, quadratic probing
(defrules probe-step ()
  ((_ start i size)
   (let (next-probe (fx+ start i (fx* i i)))
     (fxmodulo next-probe size))))

(defrules __table-ref ()
  ((_ table seed hash test key default-value)
   (let* ((h       (fxxor (hash key) seed))
          (size    (vector-length table))
          (entries (fxquotient size 2))
          (start   (fxarithmetic-shift-left (fxmodulo h entries) 1)))
     (let loop ((probe start) (i 1) (deleted #f))
       (let (k (vector-ref table probe))
         (cond
          ((eq? k (macro-unused-obj))
           default-value)
          ((eq? k (macro-deleted-obj))
           (loop (probe-step start i size) (fx+ i 1) (or deleted probe)))
          ((test key k)
           (vector-ref table (fx+ probe 1)))
          (else
           (loop (probe-step start i size) (fx+ i 1) deleted))))))))

(defrules __table-set! ()
  ((_ table seed hash test key value inserted ressurected)
   (let* ((h       (fxxor (hash key) seed))
          (size    (vector-length table))
          (entries (fxquotient size 2))
          (start   (fxarithmetic-shift-left (fxmodulo h entries) 1)))
     (let loop ((probe start) (i 1) (deleted #f))
       (let (k (vector-ref table probe))
         (cond
          ((eq? k (macro-unused-obj))
           (if deleted
             (begin
               (vector-set! table deleted key)
               (vector-set! table (fx+ deleted 1) value)
               (ressurected))
             (begin
               (vector-set! table probe key)
               (vector-set! table (fx+ probe 1) value)
               (inserted))))
          ((eq? k (macro-deleted-obj))
           (loop (probe-step start i size) (fx+ i 1) (or deleted probe)))
          ((test key k)
           (vector-set! table probe key)
           (vector-set! table (fx+ probe 1) value))
          (else
           (loop (probe-step start i size) (fx+ i 1) deleted))))))))

(defrules __table-update! ()
  ((_ table seed hash test key update default inserted ressurected)
   (let* ((h       (fxxor (hash key) seed))
          (size    (vector-length table))
          (entries (fxquotient size 2))
          (start   (fxarithmetic-shift-left (fxmodulo h entries) 1)))
     (let loop ((probe start) (i 1) (deleted #f))
       (let (k (vector-ref table probe))
         (cond
          ((eq? k (macro-unused-obj))
           (if deleted
             (begin
               (vector-set! table deleted key)
               (vector-set! table (fx+ deleted 1) (update default))
               (ressurected))
             (begin
               (vector-set! table probe key)
               (vector-set! table (fx+ probe 1) (update default))
               (inserted))))
          ((eq? k (macro-deleted-obj))
           (loop (probe-step start i size) (fx+ i 1) (or deleted probe)))
          ((test key k)
           (vector-set! table probe key)
           (vector-set! table (fx+ probe 1) (update (vector-ref table (fx+ probe 1)))))
          (else
           (loop (probe-step start i size) (fx+ i 1) deleted))))))))

(defrules __table-del! ()
  ((_ table seed hash test key deleted)
   (let* ((h       (fxxor (hash key) seed))
          (size    (vector-length table))
          (entries (fxquotient size 2))
          (start   (fxarithmetic-shift-left (fxmodulo h entries) 1)))
     (let loop ((probe start) (i 1))
       (let (k (vector-ref table probe))
         (cond
          ((eq? k (macro-unused-obj))
           (void))
          ((eq? k (macro-deleted-obj))
           (loop (probe-step start i size) (fx+ i 1)))
          ((test key k)
           (vector-set! table probe (macro-deleted-obj))
           (vector-set! table (fx+ probe 1) (macro-absent-obj))
           (deleted))
          (else
           (loop (probe-step start i size) (fx+ i 1)))))))))

;;; gc tables -- specialized eq? tables that use gambit's gchts directly
;;; Note: we keep two separate tables, a gcht for memory allocated objects
;;  and an immediate-table for immediate objects, as gcht don't seem to work with
;;  mixed keys. The immediate table is lazily allocated
(def __gc-table::t.id 'gerbil#__gc-table::t)

(def __gc-table::t
  (##structure ##type-type              ; type
               __gc-table::t.id         ; id
               'gc-table                ; name
               26       ; flags: extensible | concrete | nongenerative
               #f       ; super
               '#(gcht 5 #f immediate 5 #f)))

(def __gc-table-loads '#f64(.45 .6363961030678927 .9))

(def (&gc-table-gcht tab)
  (##unchecked-structure-ref tab 1 __gc-table::t 'gc-table-gcht))
(def (&gc-table-immediate tab)
  (##unchecked-structure-ref tab 2 __gc-table::t 'gc-table-immediate))
(def (&gc-table-gcht-set! tab val)
  (##unchecked-structure-set! tab val 1 __gc-table::t 'gc-table-gcht-set!))
(def (&gc-table-immediate-set! tab val)
  (##unchecked-structure-set! tab val 2 __gc-table::t 'gc-table-immediate-set!))

;; SMP: global spinlock for gc-table rehash and immediate creation
(def __gc-table-lock (__make-inline-lock))

(def (make-gc-table size-hint (klass __gc-table::t) (flags 0))
  (let (gcht (__gc-table-new (if (fixnum? size-hint) size-hint 16) flags))
    (##structure klass gcht #f)))

(def (__gc-table-immediate tab)
  (cond
   ((&gc-table-immediate tab))
   (else
    ;; Double-check under lock to prevent duplicate creation
    (__lock-inline! __gc-table-lock)
    (cond
     ((&gc-table-immediate tab)
      => (lambda (imm)
           (__unlock-inline! __gc-table-lock)
           imm))
     (else
      (let (immediate (make-immediate-table #f 0))
        (set! (&gc-table-immediate tab) immediate)
        (__unlock-inline! __gc-table-lock)
        immediate))))))

(def (__gc-table-new size flags)
  (let* ((flags
          (fxand flags (fxnot (macro-gc-hash-table-flag-need-rehash))))
         (flags
          (fxior flags (macro-gc-hash-table-flag-mem-alloc-keys)))
         (gcht
          (##gc-hash-table-allocate size flags __gc-table-loads)))
    gcht))

(def (__gc-table-e tab)
  (let (gcht (&gc-table-gcht tab))
    (if (fx= 0
             (fxand
              (macro-gc-hash-table-flags gcht)
              (macro-gc-hash-table-flag-need-rehash)))
      gcht
      (begin
        (__gc-table-rehash! tab)
        (&gc-table-gcht tab)))))

(def (__gc-table-rehash! tab)
  (__lock-inline! __gc-table-lock)
  ;; Always rehash under lock. Called both for GC key-moved rehash and
  ;; for overflow resize. The lock prevents concurrent rehashes from
  ;; corrupting state; gc-table-set!'s verify-retry handles staleness.
  (let* ((old-table (&gc-table-gcht tab))
         (new-table (##gc-hash-table-resize! old-table __gc-table-loads))
         (result (##gc-hash-table-rehash! old-table new-table)))
    (set! (&gc-table-gcht tab) result)
    (__unlock-inline! __gc-table-lock)))

(def (gc-table-ref tab key default)
  (cond
   ((##mem-allocated? key)
    (let (gcht (__gc-table-e tab))
      (let (value (##gc-hash-table-ref gcht key))
        (if (eq? value (macro-unused-obj))
          default
          value))))
   ((&gc-table-immediate tab)
    => (lambda (immediate)
         (immediate-table-ref immediate key default)))
   (else default)))

(def (gc-table-set! tab key value)
  (if (##mem-allocated? key)
    (let (gcht (__gc-table-e tab))
      (when (##gc-hash-table-set! gcht key value)
        (__gc-table-rehash! tab)
        (gc-table-set! tab key value))
      ;; SMP: verify gcht is still current; another thread may have
      ;; resized between our __gc-table-e and ##gc-hash-table-set!
      (unless (##eq? gcht (&gc-table-gcht tab))
        (gc-table-set! tab key value)))
    (immediate-table-set! (__gc-table-immediate tab) key value)))

(def (gc-table-update! tab key update default)
  (if (##mem-allocated? key)
    (let (value (gc-table-ref tab key default))
      (gc-table-set! tab key (update value)))
    (immediate-table-update! (__gc-table-immediate tab) key update default)))

(def (gc-table-delete! tab key)
  (cond
   ((##mem-allocated? key)
    (let (gcht (__gc-table-e tab))
      (when (##gc-hash-table-set! gcht key (macro-absent-obj))
        (__gc-table-rehash! tab)
        (gc-table-delete! tab key))
      ;; SMP: verify gcht is still current
      (unless (##eq? gcht (&gc-table-gcht tab))
        (gc-table-delete! tab key))))
   ((&gc-table-immediate tab)
    => (lambda (immediate)
         (immediate-table-delete! immediate key)))))

(def (gc-table-for-each tab proc)
  ;; mem allocated first
  (let (gcht (__gc-table-e tab))
    (##gc-hash-table-for-each proc gcht))
  ;; immediates next
  (cond
   ((&gc-table-immediate tab) =>
    (lambda (immediate)
      (raw-table-for-each immediate proc)))))

(def (gc-table-copy tab)
  (let* ((gcht (__gc-table-e tab))
         (new-table
          (__gc-table-new
           (macro-gc-hash-table-count gcht)
           (macro-gc-hash-table-flags gcht)))
         (result
          (##structure (##structure-type tab)
                       new-table #f)))
    (gc-table-for-each tab (lambda (k v) (gc-table-set! result k v)))
    result))

(def (gc-table-clear! tab)
  (let* ((gcht (__gc-table-e tab))
         (new-table
          (__gc-table-new 16 (macro-gc-hash-table-flags gcht))))
    (__lock-inline! __gc-table-lock)
    (set! (&gc-table-gcht tab) new-table)
    (set! (&gc-table-immediate tab) #f)
    (__unlock-inline! __gc-table-lock)))

(def (gc-table-length tab)
  (let (gcht (__gc-table-e tab))
    (fx+ (macro-gc-hash-table-count gcht)
         (cond
          ((&gc-table-immediate tab) => &raw-table-count)
          (else 0)))))

;;; object->eq-hash
(def __object-eq-hash-next 0)
(def __object-eq-hash
  (make-gc-table 1024 __gc-table::t (macro-gc-hash-table-flag-weak-keys)))

(def (__object->eq-hash obj)
  (let (val (gc-table-ref __object-eq-hash obj #f))
    (if val
      val
      (let* ((mix __object-eq-hash-next)
             (ptr (##type-cast obj 0))
             (h (fxand (fxxor mix ptr) (macro-max-fixnum32))))
        (set! __object-eq-hash-next (or (##fx+? __object-eq-hash-next 1) 0))
        (gc-table-set! __object-eq-hash obj h)
        h))))
