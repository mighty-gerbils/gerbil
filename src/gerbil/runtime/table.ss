;;; -*- Gerbil -*-
;;; © vyzo
;;; Gerbil hash tables: raw tables
prelude: "../prelude/core"
package: gerbil/runtime
namespace: #f

(import "gambit")
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
  (let ((table (&raw-table-table tab))
        (seed (&raw-table-seed tab))
        (hash (&raw-table-hash tab))
        (test (&raw-table-test tab)))
    (__table-ref table seed hash test key default)))

(def (raw-table-set! tab key value)
  (when (fx< (&raw-table-free tab)
             (fxquotient (vector-length (&raw-table-table tab)) 4))
    (__raw-table-rehash! tab))
  (__raw-table-set! tab key value))

(def (raw-table-update! tab key update default)
  (when (fx< (&raw-table-free tab)
             (fxquotient (vector-length (&raw-table-table tab)) 4))
    (__raw-table-rehash! tab))
  (__raw-table-update! tab key update default))

(def (raw-table-delete! tab key)
  (let ((table (&raw-table-table tab))
        (seed (&raw-table-seed tab))
        (hash (&raw-table-hash tab))
        (test (&raw-table-test tab)))
    (__table-del! table seed hash test key
                  (lambda ()
                    (set! (&raw-table-count tab) (fx- (&raw-table-count tab) 1))))))

(def (raw-table-for-each tab proc)
  (let* ((table (&raw-table-table tab))
         (size  (vector-length table)))
    (let loop ((i 0))
      (when (fx< i size)
        (let (key (vector-ref table i))
          (when (and (not (eq? key (macro-unused-obj)))
                     (not (eq? key (macro-deleted-obj))))
            (let (value (vector-ref table (fx+ i 1)))
              (proc key value))))
        (loop (fx+ i 2))))))

(def (raw-table-copy tab)
  (let (new-tab (##structure-copy tab))
    (set! (&raw-table-table new-tab)
      (vector-copy (&raw-table-table tab)))
    new-tab))

(def (raw-table-clear! tab)
  (vector-fill! (&raw-table-table tab) (macro-unused-obj))
  (set! (&raw-table-count tab) 0)
  (set! (&raw-table-free tab)
    (fxquotient (vector-length (&raw-table-table tab)) 2)))

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
     (else
      (fxand (__eq-hash obj)
             (macro-max-fixnum32))))))

(cond-expand
  (gerbil-smp
   (def (__eq-hash obj)
     (declare (not interrupts-enabled))
     (let again ()
       (if (##fx= (##vector-cas! __eq-hash-lock 0 1 0) 0)
         (begin
           (__object->eq-hash obj)
           (##vector-cas! __eq-hash-lock 0 0 1))
         (begin
           ;; spin lock
           (again)))))
   (def __eq-hash-lock (vector 0)))
  (else
   (def (__eq-hash obj)
     (__object->eq-hash obj))))

(def __object-eq-hash-next 0)
(def __object-eq-hash-loads '#f64(0.25 0.75))
(def __object-eq-hash
  (##gc-hash-table-allocate 1024
                            (##fxior
                             (macro-gc-hash-table-flag-mem-alloc-keys)
                             (macro-gc-hash-table-flag-weak-keys))
                            __object-eq-hash-loads))

(def (__object->eq-hash obj)
  (declare (not interrupts-enabled))
  (unless (##fx= 0
                 (##fxand
                  (macro-gc-hash-table-flags __object-eq-hash)
                  (macro-gc-hash-table-flag-need-rehash)))
    (set! __object-eq-hash
      (##gc-hash-table-rehash!
       __object-eq-hash
       (##gc-hash-table-resize! __object-eq-hash  __object-eq-hash-loads))))
  (let (val (##gc-hash-table-ref __object-eq-hash obj))
    (if (##eq? val (macro-unused-obj))
      (let (val __object-eq-hash-next)
        (set! __object-eq-hash-next (or (##fx+? __object-eq-hash-next 1) 0))
        (when (##gc-hash-table-set! __object-eq-hash obj val)
          (let (new-table
                (##gc-hash-table-rehash!
                 __object-eq-hash
                 (##gc-hash-table-resize! __object-eq-hash  __object-eq-hash-loads)))
            (##gc-hash-table-set! new-table obj val)
            (set! __object-eq-hash new-table)))
        val)
      val)))

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
  (__symbolic-hash obj))

(defrules __symbolic-hash ()
  ((_ obj)
   (macro-slot 1 obj)))

(def (string-hash obj)
  (##string=?-hash obj))

(defrules defspecialized-table ()
  ((_ make ref set __set update __update del hash eq)
   (begin
     (def (make (size-hint #f) (seed 0))
       (make-raw-table size-hint hash eq seed))
     (def (ref tab key default)
       (let ((table (&raw-table-table tab))
             (seed (&raw-table-seed tab)))
         (__table-ref table seed hash eq key default)))
     (def (set tab key value)
       (when (fx< (&raw-table-free tab)
                  (fxquotient (vector-length (&raw-table-table tab)) 4))
         (__raw-table-rehash! tab))
       (__set tab key value))
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
       (when (fx< (&raw-table-free tab)
                  (fxquotient (vector-length (&raw-table-table tab)) 4))
         (__raw-table-rehash! tab))
       (__update tab key update default))
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
       (let ((table (&raw-table-table tab))
             (seed (&raw-table-seed tab)))
         (__table-del! table seed hash eq key
                       (lambda ()
                         (set! (&raw-table-count tab) (fx- (&raw-table-count tab) 1)))))))))


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
