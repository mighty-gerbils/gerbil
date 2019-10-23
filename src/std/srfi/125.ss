;;; -*- Gerbil -*-
;;; (c) vyzo at hackzen.org
;;; SRFI-125: Hash Table Library

(import :gerbil/gambit/hash
        :std/srfi/128)
(export
  ;; constructors
  (rename: srfi-make-hash-table make-hash-table)
  hash-table hash-table-unfold alist->hash-table
  ;; predicates
  hash-table? hash-table-contains? hash-table-exists? hash-table-empty? hash-table=? hash-table-mutable?
  ;; accessors
  hash-table-ref hash-table-ref/default
  ;; mutators
  hash-table-set! hash-table-delete! hash-table-intern! hash-table-update! hash-table-update!/default hash-table-pop! hash-table-clear!
  ;; the whole hash table
  hash-table-size hash-table-keys hash-table-values hash-table-entries hash-table-find hash-table-count
  ;; mapping and folding
  hash-table-map hash-table-for-each hash-table-walk hash-table-map! hash-table-map->list hash-table-fold hash-table-prune!
  ;; copying and conversion
  hash-table-copy hash-table-empty-copy hash-table->alist
  ;; hash tables as sets
  hash-table-union! (rename: hash-table-union! hash-table-merge!) hash-table-intersection! hash-table-difference! hash-table-xor!
  ;; hash functions and reflexivity
  (rename: default-hash hash) string-hash string-ci-hash (rename: default-hash hash-by-identity) hash-table-equivalence-function hash-table-hash-function
  )


(def (srfi-make-hash-table comparator-or-equality . rest)
  (def (make eqf hashf args)
    (let ((size (or (find integer? rest) absent-obj))
          (weak-keys (if (memq 'weak-keys rest) #t absent-obj))
          (weak-values (if (memq 'weak-values rest) #t absent-obj)))
      (make-hash-table test: eqf hash: hashf size: size weak-keys: weak-keys weak-values: weak-values)))

  (cond
   ((comparator? comparator-or-equality)
    (let ((eqf (comparator-equality-predicate comparator-or-equality))
          (hashf (comparator-hash-function comparator-or-equality)))
      (make eqf hashf rest)))
   ((procedure? comparator-or-equality)
    (match rest
      ([(? procedure? hashf) . rest]
       (make comparator-or-equality hashf rest))
      (else
       (make comparator-or-equality absent-obj rest))))
   (else
    (error "Illegal argument" comparator-or-equality))))

(def (hash-table comparator . args)
  (let (ht (make-hash-table test: (comparator-equality-predicate comparator)
                            hash: (comparator-hash-function comparator)))
    (let lp ((rest args))
      (match rest
        ([key val . rest]
         (hash-put! ht key val)
         (lp rest))
        ([]
         ht)))))

(def (hash-table-unfold stop? mapper successor seed comparator . args)
  (let (ht (apply srfi-make-hash-table comparator args))
    (let lp ((seed seed))
      (if (stop? seed)
        ht
        (let ((values key val) (mapper seed))
          (hash-put! ht key val)
          (lp (successor seed)))))))

(def (alist->hash-table alist comparator . args)
  (let (ht (apply srfi-make-hash-table comparator args))
    (for-each (match <> ([key . val] (hash-put! ht key val)))
              alist)
    ht))

(defalias hash-table-contains? hash-key?)
(defalias hash-table-exists? hash-key?)

(def (hash-table-empty? ht)
  (##zero? (hash-length ht)))

(def (hash-table-mutable? ht)
  #t)

(def (hash-table=? value-comparator ht1 ht2)
  (let (eqf (comparator-equality-predicate value-comparator))
    (let/cc K
      (hash-for-each
       (lambda (key val)
         (let (xval (hash-ref ht2 key absent-value))
           (when (or (eq? xval absent-value)
                     (not (eqf val xval)))
             (K #f))))
       ht1)
      (hash-for-each
       (lambda (key _)
         (unless (hash-key? ht1 key)
           (K #f)))
       ht2)
      #t)))

(def* hash-table-ref
  ((ht key) (hash-ref ht key))
  ((ht key failure)
   (let (val (hash-ref ht key absent-value))
     (if (eq? val absent-value)
       (failure)
       val)))
  ((ht key failure success)
   (let (val (hash-ref ht key absent-value))
     (if (eq? val absent-value)
       (failure)
       (success val)))))

(def (hash-table-ref/default ht key default)
  (hash-ref ht key default))

(def* hash-table-set!
  ((ht key val)
   (hash-put! ht key val))
  ((ht key val . rest)
   (hash-put! ht key val)
   (let lp ((rest rest))
     (match rest
       ([key val . rest]
        (hash-put! ht key val)
        (lp rest))
       ([] (void))))))

(def* hash-table-delete!
  ((ht key)
   (hash-remove! ht key))
  ((ht key . rest)
   (hash-remove! ht key)
   (for-each (cut hash-remove! ht <>) rest)))

(def (hash-table-intern! ht key failure)
  (let (val (hash-ref ht key absent-value))
    (if (eq? val absent-value)
      (let (val (failure))
        (hash-put! ht key val)
        val)
      val)))

(def* hash-table-update!
  ((ht key updater)
   (hash-put! ht key (updater (hash-ref ht key))))
  ((ht key updater failure)
   (hash-put! ht key (updater (hash-table-ref ht key failure))))
  ((ht key updater failure success)
   (hash-put! ht key (updater (hash-table-ref ht key failure success)))))

(def (hash-table-update!/default ht key updater default)
  (hash-put! ht key (updater (hash-ref ht key default))))

(def (hash-table-pop! ht)
  (let/cc K
    (hash-for-each
     (lambda (key val)
       (hash-remove! ht key)
       (K key val))
     ht)
    (error "hash table is empty")))

(defalias hash-table-clear! hash-clear!)
(defalias hash-table-size hash-length)
(defalias hash-table-keys hash-keys)
(defalias hash-table-values hash-values)

(def (hash-table-entries ht)
  (let ((keys [])
        (vals []))
    (hash-for-each
     (lambda (key val)
       (set! keys (cons key keys))
       (set! vals (cons val vals)))
     ht)
    (values keys vals)))

(def (hash-table-find proc ht failure)
  (let/cc K
    (hash-for-each
     (lambda (key val)
       (cond
        ((proc key val) => K)))
     ht)
    (failure)))

(def (hash-table-count pred ht)
  (let (count 0)
    (hash-for-each
     (lambda (key val)
       (when (pred key val)
         (set! count (fx1+ count))))
     ht)
    count))

(def (hash-table-map proc comparator ht)
  (let (rt (srfi-make-hash-table comparator))
    (hash-for-each
     (lambda (key val)
       (hash-put! rt key (proc val)))
     ht)
    rt))

(def (hash-table-map! proc ht)
  (hash-for-each
   (lambda (key val)
     (hash-put! ht key (proc val)))
   ht))

(def (hash-table-map->list proc ht)
  (let (r [])
    (hash-for-each
     (lambda (key val)
       (set! r (cons (proc key val) r)))
     ht)
    r))

(defalias hash-table-for-each hash-for-each)

(def (hash-table-walk ht proc)
  (hash-for-each proc ht))

(def (hash-table-fold a1 a2 a3)
  (cond
   ((procedure? a1)
    (hash-fold a1 a2 a3))
   ((hash-table? a1)
    (hash-fold a2 a3 a1))
   (else
    (error "Unexpected argument" a1))))

(def (hash-table-prune! proc ht)
  (hash-for-each
   (lambda (key val)
     (when (proc key val)
       (hash-remove! ht key)))
   ht))

(def (hash-table-copy ht (ignore #f))
  (hash-copy ht))

(def (hash-table-empty-copy ht)
  (if (hash-table? ht)
    (let (copy (make-hash-table))
      (##vector-set! copy 1 (##vector-ref ht 1)) ; flags
      (##vector-set! copy 2 (##vector-ref ht 2)) ; test
      (##vector-set! copy 3 (##vector-ref ht 3)) ; hash
      (##vector-set! copy 4 (##vector-ref ht 4)) ; loads
      (##vector-set! copy 6 (##vector-ref ht 6)) ; init
      copy)
    (error "Invalid argument" ht)))

(defalias hash-table->alist hash->list)

(def (hash-table-union! ht1 ht2)
  (hash-merge! ht1 ht2))

(def (hash-table-intersection! ht1 ht2)
  (hash-for-each
   (lambda (key val)
     (unless (hash-key? ht2 key)
       (hash-remove! ht1 key)))
   ht1)
  ht1)

(def (hash-table-difference! ht1 ht2)
  (hash-for-each
   (lambda (key val)
     (when (hash-key? ht2 key)
       (hash-remove! ht1 key)))
   ht1)
  ht1)

(def (hash-table-xor! ht1 ht2)
  (let (removed (make-hash-table))
    (hash-for-each
     (lambda (key val)
       (when (hash-key? ht2 key)
         (hash-remove! ht1 key)
         (hash-put! removed key #t)))
     ht1)
    (hash-for-each
     (lambda (key val)
       (unless (hash-key? removed key)
         (hash-put! ht1 key val)))
     ht2)
    ht1))

(def (hash-table-equivalence-function ht)
  (if (hash-table? ht)
    (##vector-ref ht 2)
    (error "Invalid argument" ht)))

(def (hash-table-hash-function ht)
  (if (hash-table? ht)
    (##vector-ref ht 3)
    (error "Invalid argument" ht)))
