;;; -*- Gerbil -*-
;;; © fare, vyzo
;;; hash table utilities
;;; TODO port the rest of misc/hash
(export #t)

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

(def (hash-ref/default (h : HashTable) key (default : :procedure))
  (let (val (h.ref key absent-value))
    (if (eq? val absent-value)
      (default)
      val)))

(def (hash-ensure-ref (h : HashTable) key (default : :procedure))
  (let (val (h.ref key absent-value))
    (if (eq? val absent-value)
      (let (val (default))
        (h.set! key val)
        val)
      val)))

(def (invert-hash-into! (from : HashTable) (to (make-hash-table) : HashTable))
  => HashTable
  (from.for-each (lambda (k v) (to.set! v k)))
  to)

(def (hash->list/sort (h : HashTable) (pred : :procedure))
  => :list
  (list-sort (lambda (x y) (pred (car x) (car y)))
             (hash->list h)))
