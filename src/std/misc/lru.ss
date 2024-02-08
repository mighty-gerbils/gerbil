;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; LRU cache

(import :std/error
        :std/contract
        :std/generic
        :std/iter
        :std/misc/list)
(export make-lru-cache lru-cache? lru-cache
        lru-cache-ref lru-cache-get lru-cache-put! lru-cache-remove!
        lru-cache-size (rename: lru-cache-cap lru-cache-capacity)
        lru-cache-flush! lru-cache-for-each lru-cache-walk
        lru-cache-fold lru-cache-foldr lru-cache->list
        in-lru-cache in-lru-cache-keys in-lru-cache-values)
(declare (not safe))

(defstruct lru-cache (ht hd tl size cap)
  constructor: :init!
  final: #t )

(defstruct node (key val prev next)
  final: #t )

(defmethod {:init! lru-cache}
  (lambda (self cap)
    (unless (and (fixnum? cap) (fx> cap 1))
      (raise-bad-argument make-lru-cache "fixnum > 1" cap))
    (struct-instance-init! self (make-hash-table) #f #f 0 cap)))

(def (lru-cache-ref lru key (default absent-obj))
  (using (lru : lru-cache)
    (cond
     ((hash-get lru.ht key)
      => (lambda (n)
           (using (n :- node)
             (lru-cache-touch! lru n)
             n.val)))
     ((eq? default absent-obj)
      (raise-unbound-key lru-cache-ref lru key))
     (else default))))

(def (lru-cache-touch! lru n)
  (using ((lru :- lru-cache)
          (n :- node)
          (hd lru.hd :- node)
          (tl lru.tl :- node))
    (cond
     ((eq? n hd))
     ((eq? n tl)
      (using (prev n.prev :- node)
        (set! prev.next #f)
        (set! lru.tl prev)
        (set! n.next hd)
        (set! hd.prev n)
        (set! n.prev #f)
        (set! lru.hd n)))
     (else
      (using ((prev n.prev :- node)
              (next n.next :- node))
        (set! prev.next next)
        (set! next.prev prev)
        (set! n.next hd)
        (set! hd.prev n)
        (set! n.prev #f)
        (set! lru.hd n))))))

(def (lru-cache-get lru key)
  (lru-cache-ref lru key #f))

(def (lru-cache-put! lru key val)
  (using (lru : lru-cache)
    (cond
     ((hash-get lru.ht key)
      => (lambda (n)
           (using (n :- node)
             ;; update in-place
             (set! n.val val)
             ;; and move to front
             (lru-cache-touch! lru n)
             (void))))
     (else
      (let ((n (make-node key val #f #f))
            (sz lru.size))
        (using (n :- node)
          (hash-put! lru.ht key n)
          (cond
           ((fx= sz 0)
            ;; empty cache
            (set! lru.hd n)
            (set! lru.tl n)
            (set! lru.size 1))
           ((fx< sz lru.cap)
            ;; we have space, add to front
            (using (hd lru.hd :- node)
              (set! hd.prev n)
              (set! n.next hd)
              (set! lru.hd n)
              (set! lru.size (fx+ sz 1))))
           (else
            ;; cache is full, drop tail node and add to front
            (using ((hd lru.hd :- node)
                    (tl lru.tl :- node)
                    (xl tl.prev :- node)) ; cap > 1, so this is not #f
              (hash-remove! lru.ht tl.key)
              (set! xl.next #f)
              (set! lru.tl xl)
              (set! hd.prev n)
              (set! n.next hd)
              (set! lru.hd n)))))
        (void))))))

(def (lru-cache-remove! lru key)
  (using (lru : lru-cache)
    (alet (n (hash-get lru.ht key))
      (using (n :- node)
        (hash-remove! lru.ht key)
        (set! lru.size (fx- lru.size 1))
        (cond
         ((eq? n lru.hd)
          (if (eq? n lru.tl)
            (begin
              (set! lru.hd #f)
              (set! lru.tl #f))
            (using (next n.next :- node)
              (set! next.prev #f)
              (set! lru.hd next))))
         ((eq? n lru.tl)
          (using (prev n.prev :- node)
            (set! prev.next #f)
            (set! lru.tl prev)))
         (else
          (using ((prev n.prev :- node)
                  (next n.next :- node))
            (set! prev.next next)
            (set! next.prev prev))))
        (void)))))

(def (lru-cache-flush! lru)
  (using (lru : lru-cache)
    (when (fx> lru.size 0)
      (struct-instance-init! lru (make-hash-table) #f #f 0))))

(def (lru-cache-for-each proc lru)
  (using (lru : lru-cache)
    (let lp ((n lru.hd))
      (when n
        (using (n :- node)
          (proc n.key n.val)
          (lp n.next))))))

(def (lru-cache-walk lru proc)
  (lru-cache-for-each proc lru))

(def (lru-cache-fold proc iv lru)
  (using (lru : lru-cache)
    (let lp ((n lru.hd) (r iv))
      (if n
        (using (n :- node)
          (lp n.next (proc n.key n.val r)))
        r))))

(def (lru-cache-foldr proc iv lru)
  (using (lru : lru-cache)
    (let lp ((n lru.tl) (r iv))
      (if n
        (using (n :- node)
          (lp n.prev (proc n.key n.val r)))
        r))))

(def (lru-cache->list lru)
  (lru-cache-foldr (lambda (k v r) (cons (cons k v) r)) [] lru))

;;; iterators
(defmethod (:iter (lru lru-cache))
  (in-lru-cache lru))

(def (in-lru-cache lru)
  (def (iterate)
    (lru-cache-for-each yield lru))
  (in-coroutine iterate))

(def (in-lru-cache-keys lru)
  (def (iterate)
    (lru-cache-for-each (lambda (k v) (yield k))  lru))
  (in-coroutine iterate))

(def (in-lru-cache-values lru)
  (def (iterate)
    (lru-cache-for-each (lambda (k v) (yield v))  lru))
  (in-coroutine iterate))
