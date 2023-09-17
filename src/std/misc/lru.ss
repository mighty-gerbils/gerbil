;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; LRU cache

(import :std/error
        :std/misc/list
        :std/generic
        :std/iter)
(export make-lru-cache lru-cache? lru-cache
        lru-cache-ref lru-cache-get lru-cache-put! lru-cache-remove!
        lru-cache-size (rename: lru-cache-cap lru-cache-capacity)
        lru-cache-flush! lru-cache-for-each lru-cache-walk
        lru-cache-fold lru-cache-foldr lru-cache->list
        in-lru-cache in-lru-cache-keys in-lru-cache-values)

(defstruct lru-cache (ht hd tl size cap)
  constructor: :init!
  final: #t unchecked: #t)

(defstruct node (key val prev next)
  final: #t unchecked: #t)

(defmethod {:init! lru-cache}
  (lambda (self cap)
    (unless (and (fixnum? cap) (##fx> cap 1))
      (raise-bad-argument 'make-lru-cache "fixnum > 1" cap))
    (struct-instance-init! self (make-hash-table) #f #f 0 cap)))

(def (lru-cache-ref lru key (default absent-obj))
  (with ((lru-cache ht) lru)
    (cond
     ((hash-get ht key)
      => (lambda (n)
           (lru-cache-touch! lru n)
           (&node-val n)))
     ((eq? default absent-obj)
      (raise-key-error 'lru-cache-ref lru key))
     (else default))))

(def (lru-cache-touch! lru n)
  (let ((hd (&lru-cache-hd lru))
        (tl (&lru-cache-tl lru)))
    (cond
     ((eq? n hd))
     ((eq? n tl)
      (let (prev (&node-prev n))
        (set! (&node-next prev) #f)
        (set! (&lru-cache-tl lru) prev)
        (set! (&node-next n) hd)
        (set! (&node-prev hd) n)
        (set! (&node-prev n) #f)
        (set! (&lru-cache-hd lru) n)))
     (else
      (let ((prev (&node-prev n))
            (next (&node-next n)))
        (set! (&node-next prev) next)
        (set! (&node-prev next) prev)
        (set! (&node-next n) hd)
        (set! (&node-prev hd) n)
        (set! (&node-prev n) #f)
        (set! (&lru-cache-hd lru) n))))))

(def (lru-cache-get lru key)
  (lru-cache-ref lru key #f))

(def (lru-cache-put! lru key val)
  (with ((lru-cache ht) lru)
    (cond
     ((hash-get ht key)
      => (lambda (n)
           ;; update in-place
           (set! (&node-val n) val)
           ;; and move to front
           (lru-cache-touch! lru n)
           (void)))
     (else
      (let ((n (make-node key val #f #f))
            (sz (&lru-cache-size lru)))
        (hash-put! ht key n)
        (cond
         ((##fx= sz 0)
          ;; empty cache
          (set! (&lru-cache-hd lru) n)
          (set! (&lru-cache-tl lru) n)
          (set! (&lru-cache-size lru) 1))
         ((##fx< sz (&lru-cache-cap lru))
          ;; we have space, add to front
          (let (hd (&lru-cache-hd lru))
            (set! (&node-prev hd) n)
            (set! (&node-next n) hd)
            (set! (&lru-cache-hd lru) n)
            (set! (&lru-cache-size lru) (##fx+ sz 1))))
         (else
          ;; cache is full, drop tail node and add to front
          (let* ((hd (&lru-cache-hd lru))
                 (tl (&lru-cache-tl lru))
                 (xl (&node-prev tl)))  ; cap > 1, so this is not #f
            (hash-remove! ht (&node-key tl))
            (set! (&node-next xl) #f)
            (set! (&lru-cache-tl lru) xl)
            (set! (&node-prev hd) n)
            (set! (&node-next n) hd)
            (set! (&lru-cache-hd lru) n))))
        (void))))))

(def (lru-cache-remove! lru key)
  (with ((lru-cache ht hd tl sz) lru)
    (alet (n (hash-get ht key))
      (hash-remove! ht key)
      (set! (&lru-cache-size lru) (##fx- sz 1))
      (cond
       ((eq? n hd)
        (if (eq? n tl)
          (begin
            (set! (&lru-cache-hd lru) #f)
            (set! (&lru-cache-tl lru) #f))
          (let (next (&node-next n))
            (set! (&node-prev next) #f)
            (set! (&lru-cache-hd lru) next))))
       ((eq? n tl)
        (let (prev (&node-prev n))
          (set! (&node-next prev) #f)
          (set! (&lru-cache-tl lru) prev)))
       (else
        (let ((prev (&node-prev n))
              (next (&node-next n)))
          (set! (&node-next prev) next)
          (set! (&node-prev next) prev))))
      (void))))

(def (lru-cache-flush! lru)
  (when (##fx> (lru-cache-size lru) 0)
    (struct-instance-init! lru (make-hash-table) #f #f 0)))

(def (lru-cache-for-each proc lru)
  (let lp ((n (lru-cache-hd lru)))
    (when n
      (proc (&node-key n) (&node-val n))
      (lp (&node-next n)))))

(def (lru-cache-walk lru proc)
  (lru-cache-for-each proc lru))

(def (lru-cache-fold proc iv lru)
  (let lp ((n (lru-cache-hd lru)) (r iv))
    (if n
      (lp (&node-next n) (proc (&node-key n) (&node-val n) r))
      r)))

(def (lru-cache-foldr proc iv lru)
  (let lp ((n (lru-cache-tl lru)) (r iv))
    (if n
      (lp (&node-prev n) (proc (&node-key n) (&node-val n) r))
      r)))

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
