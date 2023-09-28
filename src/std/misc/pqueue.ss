;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; heap based priority queues
(import :std/error
        :std/contract
        :gerbil/gambit)
(export pqueue make-pqueue pqueue? pqueue-empty? pqueue-size
        pqueue-peek pqueue-pop! pqueue-push! pqueue-contents)

(declare (not safe))

(defstruct pqueue (e cmp prio)
  constructor: :init!
  final: #t)

;; prio: function returning a real priority for objects inserted in the queue
;; cmp: heap comparison function, defaults to < (min-heap)
(defmethod {:init! pqueue}
  (lambda (self prio (cmp <) (isz 15))
    (let (e (make-vector (fx1+ isz)))
      (set! (heap-size e) 0)
      (struct-instance-init! self e cmp prio))))

(def (pqueue-empty? pq)
  (using (pq : pqueue)
    (fxzero? (heap-size pq.e))))

(def (pqueue-size pq)
  (using (pq : pqueue)
    (heap-size pq.e)))

(def (pqueue-peek pq (default absent-obj))
  (using (pq : pqueue)
    (if (fxzero? (heap-size pq.e))
      (if (eq? default absent-obj)
        (raise-context-error pqueue-peek "empty pqueue" pq)
        default)
      (heap-top pq.e))))

(def (pqueue-pop! pq (default absent-obj))
  (using (pq : pqueue)
    (if (fxzero? (heap-size pq.e))
      (if (eq? default absent-obj)
        (raise-context-error pqueue-pop! "Cannot pop; empty pqueue" pq)
        default)
      (let (obj (heap-top pq.e))
        (heap-pop! pq.e pq.cmp)
        obj))))

(def (pqueue-push! pq obj)
  (using (pq : pqueue)
    (let (e* (heap-push! pq.e pq.cmp (pq.prio obj) obj))
      (unless (eq? pq.e e*)    ; avoid store if same vector (most likely)
        (set! pq.e e*)))))

(def (pqueue-contents pq)
  (using (pq : pqueue)
    (def e pq.e)
    (let loop ((i (vector-ref e 0)) (a []))
      (if (fxzero? i) a (loop (fx- i 1) (cons (cdr (vector-ref e i)) a))))))

;; heap operations
;; the heap is stored in a resizable vector, with the heap size in the first element
;; this allows us to use 1-based indexing for array operations (cf CLR)
;; the elements of the vector are pairs, with priority as the car and the value as the cdr
(def (heap-size e)
  (vector-ref e 0))

(def (heap-size-set! e sz)
  (vector-set! e 0 sz))

(def (heap-top e)
  (cdr (vector-ref e 1)))

(def (heap-prio e i)
  (car (vector-ref e i)))

(def (heap-parent i)
  (fxquotient i 2))

(def (heap-left i)
  (fx* i 2))

(def (heap-right i)
  (fx+ (heap-left i) 1))

(def (heap-pop! e cmp)
  (let* ((sz (heap-size e))
         (sz-1 (fx- sz 1)))
    (set! (heap-size e) sz-1)
    (unless (fxzero? sz-1)
      (vector-set! e 1 (vector-ref e sz))
      (let lp ((i 1))
        (let* ((l (heap-left i))
               (r (heap-right i))
               (xchg
                (if (and (fx<= l sz-1)
                         (cmp (heap-prio e l)
                              (heap-prio e i)))
                  l i))
               (xchg
                (if (and (fx<= r sz-1)
                         (cmp (heap-prio e r)
                              (heap-prio e xchg)))
                  r xchg)))
          (when (not (fx= xchg i))
            (heap-swap! e xchg i)
            (lp xchg)))))))

(def (heap-push! e cmp prio obj)
  (let* ((sz (heap-size e))
         (sz+1 (fx+ sz 1))
         (e (heap-resize! e sz+1)))
    (vector-set! e sz+1 (cons prio obj))
    (let lp ((i sz+1))
      (if (fx> i 1)
        (let (parent (heap-parent i))
          (if (cmp (heap-prio e i)
                   (heap-prio e parent))
            (begin
              (heap-swap! e parent i)
              (lp parent))
            e))
        e))))

(def (heap-swap! e i j)
  (let (tmp (vector-ref e j))
    (vector-set! e j (vector-ref e i))
    (vector-set! e i tmp)))

(def (heap-resize! e sz+1)
  (let (len (vector-length e))
    (if (fx< sz+1 len)
      (begin
        (set! (heap-size e) sz+1)
        e)
      (let (new (make-vector (fxquotient (fx* 3 len) 2)))
        (set! (heap-size new) sz+1)
        (##subvector-move! e 1 len new 1)
        new))))
