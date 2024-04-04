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

(deftype @node node)
(defstruct node (e (prev :- @node) (next :- @node))
  constructor: :init!
  final: #t)

(defmethod {:init! node}
  (lambda (self e)
    (struct-instance-init! self e)))

(def (make-node/prev e (prev :- node))
  (let (new (make-node e))
    (using (new :- node)
      (set! new.prev prev)
      (set! prev.next new)
      new)))

(def (make-node/next e (next :- node))
  (let (new (make-node e))
    (using (new :- node)
      (set! new.next next)
      (set! next.prev new)
      new)))

(defstruct deque ((front :- node)
                  (back  :- node)
                  (length :- :fixnum))
  constructor: :init!
  final: #t)

(defmethod {:init! deque}
  (lambda (self)
    (struct-instance-init! self #f #f 0)))

(def (deque-empty? (dq : deque))
  => :boolean
  (zero? dq.length))

(def (push-front! (dq : deque) v)
  (let (new (if dq.front
              (make-node/next v dq.front)
              (make-node v)))
    (set! dq.front new)
    (unless dq.back
      (set! dq.back new))
    (set! dq.length (fx1+ dq.length))))

(def (push-back! (dq : deque) v)
  (let (new (if dq.back
              (make-node/prev v dq.back)
              (make-node v)))
    (set! dq.back new)
    (unless dq.front
      (set! dq.front new))
    (set! dq.length (fx1+ dq.length))))

(def (pop-front! (dq : deque) (default absent-obj))
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
   (else default)))

(def (pop-back! (dq : deque) (default absent-obj))
  (cond
   (dq.back
    => (lambda ((back :- node))
         (using (prev back.prev :- node)
           (set! dq.back prev)
           (if prev
             (set! prev.next #f)
             (set! dq.front #f))
           (set! dq.length (fx1- dq.length))
           back.e)))
   ((eq? default absent-obj)
    (raise-context-error pop-back! "Cannot pop; empty deque" dq))
   (else default)))

(def (peek-front (dq : deque) (default absent-obj))
  (cond
   (dq.front => &node-e)
   ((eq? default absent-obj)
    (raise-context-error peek-front "Cannot peek; empty deque" dq))
   (else default)))

(def (peek-back (dq : deque) (default absent-obj))
  (cond
   (dq.back => &node-e)
   ((eq? default absent-obj)
    (raise-context-error peek-back "Cannot peek; empty deque" dq))
   (else default)))

(def (deque->list (dq : deque))
  => :list
  (let lp (((n :- node) dq.back) ((r :- :list) []))
    => :list
    (if n
      (lp n.prev (cons n.e r))
      r)))
