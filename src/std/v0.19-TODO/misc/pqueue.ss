;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; heap based priority queues
(import :std/error
        :gerbil/gambit)
(export pqueue make-pqueue pqueue? pqueue-empty? pqueue-size
        pqueue-peek pqueue-pop! pqueue-push! pqueue-contents)

;; so that we don't have to write ##vector-ref/set!
;; the module is statically type checked anyway.
(declare (not safe))

(defstruct pqueue ((e    : :vector)
                   (cmp  : :procedure)
                   (prio : :procedure))
  constructor: :init!
  final: #t)

;; prio: function returning a real priority for objects inserted in the queue
;; cmp: heap comparison function, defaults to < (min-heap)
(defmethod {:init! pqueue}
  (lambda (self (prio : :procedure) (cmp : :procedure := <) (isz 15))
    (let (e (make-vector (fx1+ isz)))
      (set! (heap-size e) 0)
      (struct-instance-init! self e cmp prio))))

(def (pqueue-empty? (pq : pqueue))
  => :boolean
  (fxzero? (heap-size pq.e)))

(def (pqueue-size (pq : pqueue))
  => :fixnum
  (heap-size pq.e))

(def (pqueue-peek (pq : pqueue) (default absent-obj))
  (if (fxzero? (heap-size pq.e))
    (if (eq? default absent-obj)
      (raise-context-error pqueue-peek "empty pqueue" pq)
      default)
    (heap-top pq.e)))

(def (pqueue-pop! (pq : pqueue) (default absent-obj))
  (if (fxzero? (heap-size pq.e))
    (if (eq? default absent-obj)
      (raise-context-error pqueue-pop! "Cannot pop; empty pqueue" pq)
      default)
    (let (obj (heap-top pq.e))
      (heap-pop! pq.e pq.cmp)
      obj)))

(def (pqueue-push! (pq : pqueue) obj)
  (let (e* (heap-push! pq.e pq.cmp (pq.prio obj) obj))
    (unless (eq? pq.e e*)   ; avoid store if same vector (most likely)
      (set! pq.e e*))))

(def (pqueue-contents (pq : pqueue))
  (let (e pq.e)
    (let loop ((i (:- (vector-ref e 0) :fixnum)) (a []))
      (if (fxzero? i)
        a
        (loop (fx- i 1) (cons (cdr (vector-ref e i)) a))))))

;; heap operations
;; the heap is stored in a resizable vector, with the heap size in the first element
;; this allows us to use 1-based indexing for array operations (cf CLR)
;; the elements of the vector are pairs, with priority as the car and the value as the cdr
(def (heap-size (e : :vector))
  => :fixnum
  (:- (vector-ref e 0) :fixnum))

(def (heap-size-set! (e : :vector) (sz : :fixnum))
  (vector-set! e 0 sz))

(def (heap-top (e : :vector))
  => :fixnum
  (:- (cdr (vector-ref e 1)) :fixnum))

(def (heap-prio (e : :vector) (i : :fixnum))
  => :fixnum
  (:- (car (vector-ref e i)) :fixnum))

(def (heap-parent (i : :fixnum))
  => :fixnum
  (fxquotient i 2))

(def (heap-left (i : :fixnum))
  => :fixnum
  (fx* i 2))

(def (heap-right (i : :fixnum))
  => :fixnum
  (fx+ (heap-left i) 1))

(def (heap-pop! (e : :vector) (cmp : :procedure))
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

(def (heap-push! (e : :vector) (cmp : :procedure) prio obj)
  => :vector
  (let* ((sz (heap-size e))
         (sz+1 (fx+ sz 1))
         (e (heap-resize! e sz+1)))
    (vector-set! e sz+1 (cons prio obj))
    (let lp ((i sz+1))
      => :vector
      (using (e :- :vector)
        (if (fx> i 1)
          (let (parent (heap-parent i))
            (if (cmp (heap-prio e i)
                     (heap-prio e parent))
              (begin
                (heap-swap! e parent i)
                (lp parent))
              e))
          e)))))

(def (heap-swap! (e : :vector) (i : :fixnum) (j : :fixnum))
  => :void
  (vector-swap! e i j))

(def (heap-resize! (e : :vector) (sz+1 : :fixnum))
  => :vector
  (let (len (vector-length e))
    (if (fx< sz+1 len)
      (begin
        (set! (heap-size e) sz+1)
        e)
      (let (new (make-vector (fxquotient (fx* 3 len) 2)))
        (set! (heap-size new) sz+1)
        (##subvector-move! e 1 len new 1)
        new))))
