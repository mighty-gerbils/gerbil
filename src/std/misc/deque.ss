;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; double ended queues
(import :std/error
        :std/contract)
(export deque make-deque deque? deque-length
        deque-empty?
        push-front! pop-front! peek-front
        push-back! pop-back! peek-back
        deque->list)
(declare
  (fixnum)
  (not safe))

(defstruct node (e prev next)
  constructor: :init!
  final: #t unchecked: #t)

(defmethod {:init! node}
  (lambda (self e)
    (struct-instance-init! self e)))

(def (make-node/prev e prev)
  (let (new (make-node e))
    (using ((new :- node) (prev :- node))
      (set! new.prev prev)
      (set! prev.next new)
      new)))

(def (make-node/next e next)
  (let (new (make-node e))
    (using ((new :- node) (next :- node))
      (set! new.next next)
      (set! next.prev new)
      new)))

(defstruct deque (front back length)
  constructor: :init!
  final: #t unchecked: #t)

(defmethod {:init! deque}
  (lambda (self)
    (struct-instance-init! self #f #f 0)))

(def (deque-empty? dq)
  (using (dq : deque)
    (zero? dq.length)))

(def (push-front! dq v)
  (using (dq : deque)
    (let (new (if dq.front
                (make-node/next v dq.front)
                (make-node v)))
      (set! dq.front new)
      (unless dq.back
        (set! dq.back new))
      (set! dq.length (fx1+ dq.length)))))

(def (push-back! dq v)
  (using (dq : deque)
    (let (new (if dq.back
                (make-node/prev v dq.back)
                (make-node v)))
      (set! dq.back new)
      (unless dq.front
        (set! dq.front new))
      (set! dq.length (fx1+ dq.length)))))

(def (pop-front! dq (default absent-obj))
  (using (dq : deque)
    (cond
     (dq.front
      => (lambda (front)
           (let (next (&node-next front))
             (set! dq.front next)
             (if next
               (set! (&node-prev next) #f)
               (set! dq.back #f))
             (set! dq.length (fx1- dq.length))
             (&node-e front))))
     ((eq? default absent-obj)
      (raise-context-error pop-front! "Cannot pop; empty deque" dq))
     (else default))))

(def (pop-back! dq (default absent-obj))
  (using (dq : deque)
    (cond
     (dq.back
      => (lambda (back)
           (let (prev (&node-prev back))
             (set! dq.back prev)
             (if prev
               (set! (&node-next prev) #f)
               (set! dq.front #f))
             (set! dq.length (fx1- dq.length))
             (&node-e back))))
     ((eq? default absent-obj)
      (raise-context-error pop-back! "Cannot pop; empty deque" dq))
     (else default))))

(def (peek-front dq (default absent-obj))
  (using (dq : deque)
    (cond
     (dq.front => &node-e)
     ((eq? default absent-obj)
      (raise-context-error peek-front "Cannot peek; empty deque" dq))
     (else default))))

(def (peek-back dq (default absent-obj))
  (using (dq : deque)
    (cond
     (dq.back => &node-e)
     ((eq? default absent-obj)
      (raise-context-error peek-back "Cannot peek; empty deque" dq))
     (else default))))

(def (deque->list dq)
  (using (dq : deque)
    (let lp ((n dq.back) (r []))
      (if n
        (lp (&node-prev n)
            (cons (&node-e n) r))
        r))))
