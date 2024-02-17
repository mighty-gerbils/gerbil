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
               '#(keys 5 #f values 5 #f count 5 #f free 5 #f hash 5 #f test 5 #f)))

(def (&raw-table-keys tab)
  (##unchecked-structure-ref tab 1 __table::t 'raw-table-keys))
(def (&raw-table-values tab)
  (##unchecked-structure-ref tab 2 __table::t 'raw-table-values))
(def (&raw-table-count tab)
  (##unchecked-structure-ref tab 3 __table::t 'raw-table-count))
(def (&raw-table-free tab)
  (##unchecked-structure-ref tab 4 __table::t 'raw-table-free))
(def (&raw-table-hash tab)
  (##unchecked-structure-ref tab 5 __table::t 'raw-table-hash))
(def (&raw-table-test tab)
  (##unchecked-structure-ref tab 6 __table::t 'raw-table-test))

(def (&raw-table-keys-set! tab val)
  (##unchecked-structure-set! tab val 1 __table::t 'raw-table-keys-set!))
(def (&raw-table-values-set! tab val)
  (##unchecked-structure-set! tab val 2 __table::t 'raw-table-values-set!))
(def (&raw-table-count-set! tab val)
  (##unchecked-structure-set! tab val 3 __table::t 'raw-table-count-set!))
(def (&raw-table-free-set! tab val)
  (##unchecked-structure-set! tab val 4 __table::t 'raw-table-free-set!))
(def (&raw-table-hash-set! tab val)
  (##unchecked-structure-set! tab val 5 __table::t 'raw-table-hash-set!))
(def (&raw-table-test-set! tab val)
  (##unchecked-structure-set! tab val 6 __table::t 'raw-table-test-set!))

;; generic raw tables
(def (make-raw-table size-hint hash test)
  (let* ((size (if (and (fixnum? size-hint) (fx> size-hint 0))
                 (max size-hint 2)
                 10))
         (keys (make-vector size (macro-unused-obj)))
         (values (make-vector size (macro-absent-obj))))
    (##structure __table::t keys values 0 size hash test)))

(def (raw-table-ref tab key default)
  (let ((keys (&raw-table-keys tab))
        (values (&raw-table-values tab))
        (hash (&raw-table-hash tab))
        (test (&raw-table-test tab)))
    (__table-ref keys values hash test key default)))

(def (raw-table-set! tab key value)
  (when (fx< (&raw-table-free tab)
             (fxquotient (vector-length (&raw-table-keys tab)) 2))
    (__raw-table-rehash! tab))
  (__raw-table-set! tab key value))

(def (raw-table-delete! tab key)
  (let ((keys (&raw-table-keys tab))
        (values (&raw-table-values tab))
        (hash (&raw-table-hash tab))
        (test (&raw-table-test tab)))
    (__table-del! keys values hash test key
                  (lambda ()
                    (set! (&raw-table-count tab) (fx- (&raw-table-count tab) 1))))))

(def (__raw-table-set! tab key value)
  (let ((keys (&raw-table-keys tab))
        (values (&raw-table-values tab))
        (hash (&raw-table-hash tab))
        (test (&raw-table-test tab)))
    (__table-set! keys values hash test key value
                  (lambda () ; insert
                    (set! (&raw-table-free tab) (fx- (&raw-table-free tab) 1))
                    (set! (&raw-table-count tab) (fx+ (&raw-table-count tab) 1)))
                  (lambda () ; ressurect
                    (set! (&raw-table-count tab) (fx+ (&raw-table-count tab) 1))))))

(def (__raw-table-rehash! tab)
  (let* ((old-keys (&raw-table-keys tab))
         (old-values (&raw-table-values tab))
         (new-size
          (if (fx< (&raw-table-count tab) (fxquotient (vector-length old-keys) 2))
            (vector-length old-keys)
            (fx* 2 (vector-length old-keys))))
         (new-keys
          (make-vector new-size (macro-unused-obj)))
         (new-values
          (make-vector new-size (macro-absent-obj))))
    (set! (&raw-table-keys tab) new-keys)
    (set! (&raw-table-values tab) new-values)
    (set! (&raw-table-count tab) 0)
    (set! (&raw-table-free tab) new-size)
    (let lp ((i (fx- (vector-length old-keys) 1)))
      (unless (fx< i 0)
        (let (key (vector-ref old-keys i))
          (when (and (not (eq? key (macro-unused-obj)))
                     (not (eq? key (macro-deleted-obj))))
            (let (value (vector-ref old-values i))
              (__raw-table-set! tab key value))))
        (lp (fx- i 1))))))

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
  (macro-slot 1 obj))

;; eq-table
(def (make-eq-table (size-hint #f))
  (make-raw-table size-hint eq-hash eq?))

(def (eq-table-ref tab key default)
  (let ((keys (&raw-table-keys tab))
        (values (&raw-table-values tab)))
    (__table-ref keys values eq-hash eq? key default)))

(def (eq-table-set! tab key value)
  (when (fx< (&raw-table-free tab)
             (fxquotient (vector-length (&raw-table-keys tab)) 2))
    (__raw-table-rehash! tab))
  (__eq-table-set! tab key value))

(def (__eq-table-set! tab key value)
  (let ((keys (&raw-table-keys tab))
        (values (&raw-table-values tab)))
    (__table-set! keys values eq-hash eq? key value
                  (lambda () ; insert
                    (set! (&raw-table-free tab) (fx- (&raw-table-free tab) 1))
                    (set! (&raw-table-count tab) (fx+ (&raw-table-count tab) 1)))
                  (lambda () ; ressurect
                    (set! (&raw-table-count tab) (fx+ (&raw-table-count tab) 1))))))

(def (eq-table-delete! tab key)
  (let ((keys (&raw-table-keys tab))
        (values (&raw-table-values tab)))
    (__table-del! keys values eq-hash eq? key
                  (lambda ()
                    (set! (&raw-table-count tab) (fx- (&raw-table-count tab) 1))))))

;;; symbolic-table: symbols or keywords
(def (make-symbolic-table (size-hint #f))
  (make-raw-table size-hint symbolic-hash eq?))

(def (symbolic-table-ref tab key default)
  (let ((keys (&raw-table-keys tab))
        (values (&raw-table-values tab)))
    (__table-ref keys values symbolic-hash eq? key default)))

(def (symbolic-table-set! tab key value)
  (when (fx< (&raw-table-free tab)
             (fxquotient (vector-length (&raw-table-keys tab)) 2))
    (__raw-table-rehash! tab))
  (__symbolic-table-set! tab key value))

(def (__symbolic-table-set! tab key value)
  (let ((keys (&raw-table-keys tab))
        (values (&raw-table-values tab)))
    (__table-set! keys values symbolic-hash eq? key value
                  (lambda () ; insert
                    (set! (&raw-table-free tab) (fx- (&raw-table-free tab) 1))
                    (set! (&raw-table-count tab) (fx+ (&raw-table-count tab) 1)))
                  (lambda () ; ressurect
                    (set! (&raw-table-count tab) (fx+ (&raw-table-count tab) 1))))))

(def (symbolic-table-delete! tab key)
  (let ((keys (&raw-table-keys tab))
        (values (&raw-table-values tab)))
    (__table-del! keys values symbolic-hash eq? key
                  (lambda ()
                    (set! (&raw-table-count tab) (fx- (&raw-table-count tab) 1))))))

;;; string-table: symbols or keywords
(def (make-string-table (size-hint #f))
  (make-raw-table size-hint string-hash ##string=?))

(def (string-hash obj)
  (##string=?-hash obj))

(def (string-table-ref tab key default)
  (let ((keys (&raw-table-keys tab))
        (values (&raw-table-values tab)))
    (__table-ref keys values string-hash ##string=? key default)))

(def (string-table-set! tab key value)
  (when (fx< (&raw-table-free tab)
             (fxquotient (vector-length (&raw-table-keys tab)) 2))
    (__raw-table-rehash! tab))
  (__string-table-set! tab key value))

(def (__string-table-set! tab key value)
  (let ((keys (&raw-table-keys tab))
        (values (&raw-table-values tab)))
    (__table-set! keys values string-hash ##string=? key value
                  (lambda () ; insert
                    (set! (&raw-table-free tab) (fx- (&raw-table-free tab) 1))
                    (set! (&raw-table-count tab) (fx+ (&raw-table-count tab) 1)))
                  (lambda () ; ressurect
                    (set! (&raw-table-count tab) (fx+ (&raw-table-count tab) 1))))))

(def (string-table-delete! tab key)
  (let ((keys (&raw-table-keys tab))
        (values (&raw-table-values tab)))
    (__table-del! keys values string-hash ##string=? key
                  (lambda ()
                    (set! (&raw-table-count tab) (fx- (&raw-table-count tab) 1))))))


;;; table implementation; open addressing, quadratic probing
;;; Note: we use separate key and value vectors to avoid having to do
;;        doublifications all over the place.
(defrules probe-step ()
  ((_ start i size)
   (let (next-probe (fx+ start (fxquotient (fx+ i (fx* i i)) 2)))
     (fxmodulo next-probe size))))

(defrules __table-ref ()
  ((_ keys values hash test key default-value)
   (let* ((size (vector-length keys))
          (h     (hash key))
          (start (fxmodulo h size)))
     (let loop ((probe start) (i 1) (deleted #f))
       (let (k (vector-ref keys probe))
         (cond
          ((eq? k (macro-unused-obj))
           default-value)
          ((eq? k (macro-deleted-obj))
           (loop (probe-step start i size) (fx+ i 1) (or deleted probe)))
          ((test key k)
           (vector-ref values probe))
          (else
           (loop (probe-step start i size) (fx+ i 1) deleted))))))))

(defrules __table-set! ()
  ((_ keys values hash test key value inserted ressurected)
   (let* ((size (vector-length keys))
          (h     (hash key))
          (start (fxmodulo h size)))
     (let loop ((probe start) (i 1) (deleted #f))
       (let (k (vector-ref keys probe))
         (cond
          ((eq? k (macro-unused-obj))
           (if deleted
             (begin
               (vector-set! keys deleted key)
               (vector-set! values deleted value)
               (ressurected))
             (begin
               (vector-set! keys probe key)
               (vector-set! values probe value)
               (inserted))))
          ((eq? k (macro-deleted-obj))
           (loop (probe-step start i size) (fx+ i 1) (or deleted probe)))
          ((test key k)
           (vector-set! keys probe key)
           (vector-set! values probe value))
          (else
           (loop (probe-step start i size) (fx+ i 1) deleted))))))))

(defrules __table-del! ()
  ((_ keys values hash test key deleted)
   (let* ((size (vector-length keys))
          (h     (hash key))
          (start (fxmodulo h size)))
     (let loop ((probe start) (i 1))
       (let (k (vector-ref keys probe))
         (cond
          ((eq? k (macro-unused-obj))
           (void))
          ((eq? k (macro-deleted-obj))
           (loop (probe-step start i size) (fx+ i 1)))
          ((test key k)
           (vector-set! keys probe (macro-deleted-obj))
           (vector-set! values probe (macro-absent-obj))
           (deleted))
          (else
           (loop (probe-step start i size) (fx+ i 1)))))))))
