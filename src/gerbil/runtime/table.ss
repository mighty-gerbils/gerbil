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
(def (make-raw-table size-hint hash test (seed (random-integer (macro-max-fixnum32))))
  (let* ((size (if (and (fixnum? size-hint) (fx> size-hint 0))
                 (fx* (max size-hint 2) 4)
                 16))
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

(def (raw-table-delete! tab key)
  (let ((table (&raw-table-table tab))
        (seed (&raw-table-seed tab))
        (hash (&raw-table-hash tab))
        (test (&raw-table-test tab)))
    (__table-del! table seed hash test key
                  (lambda ()
                    (set! (&raw-table-count tab) (fx- (&raw-table-count tab) 1))))))

(def (raw-table-for-each proc tab)
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
;;; in-module eq?-hash to avoid cross runtime call cost,.
(def (eq-hash obj)
  (let (t (##type obj))
    (cond
     ((fx= (fxand t #b1) 0)
      ;; immediate
      (fxand
       (##type-cast obj (macro-type-fixnum))
       (macro-max-fixnum32)))
     ((or (symbol? obj) (keyword? obj))
      (symbolic-hash obj))
     (else
      (fxand
       (let ((sn (object->serial-number obj)))
         (if (fixnum? sn)
           sn
           (fxarithmetic-shift-left
            (##bignum.mdigit-ref sn 0)
            10)))
       (macro-max-fixnum32))))))

(def (symbolic-hash obj)
  (__symbolic-hash obj))

(defrules __symbolic-hash ()
  ((_ obj)
   (macro-slot 1 obj)))

(def (string-hash obj)
  (##string=?-hash obj))

(defrules defspecialized-table ()
  ((_ make ref set __set del hash eq)
   (begin
     (def (make (size-hint #f) (seed (random-integer (macro-max-fixnum32))))
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
  eq-table-delete!
  eq-hash eq?)
;;; symbolic-table: symbols or keywords
(defspecialized-table make-symbolic-table
  symbolic-table-ref
  symbolic-table-set! __symbolic-table-set!
  symbolic-table-delete!
  symbolic-hash eq?)
;;; string-table: strings
(defspecialized-table make-string-table
  string-table-ref
  string-table-set! __string-table-set!
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
