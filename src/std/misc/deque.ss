;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; double ended queues
package: std/misc

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
    (set! (&node-prev new) prev)
    (set! (&node-next prev) new)
    new))

(def (make-node/next e next)
  (let (new (make-node e))
    (set! (&node-next new) next)
    (set! (&node-prev next) new)
    new))

(defstruct deque (front back length)
  constructor: :init!
  final: #t unchecked: #t)

(defmethod {:init! deque}
  (lambda (self)
    (struct-instance-init! self #f #f 0)))

(def (deque-empty? dq)
  (zero? (&deque-length dq)))

(def (push-front! dq v)
  (with ((deque front back len) dq)
    (let (new (if front
                (make-node/next v front)
                (make-node v)))
      (set! (&deque-front dq) new)
      (unless back
        (set! (&deque-back dq) new))
      (set! (&deque-length dq)
        (1+ len)))))

(def (push-back! dq v)
  (with ((deque front back len) dq)
    (let (new (if back
                (make-node/prev v back)
                (make-node v)))
      (set! (&deque-back dq) new)
      (unless front
        (set! (&deque-front dq) new))
      (set! (&deque-length dq)
        (1+ len)))))

(def (pop-front! dq)
  (with ((deque front back len) dq)
    (if front
      (let (next (&node-next front))
        (set! (&deque-front dq) next)
        (if next
          (set! (&node-prev next) #f)
          (set! (&deque-back dq) #f))
        (set! (&deque-length dq)
          (1- len))
        (&node-e front))
      (error "Cannot pop; empty deque" dq))))

(def (pop-back! dq)
  (with ((deque front back len) dq)
    (if back
      (let (prev (&node-prev back))
        (set! (&deque-back dq) prev)
        (if prev
          (set! (&node-next prev) #f)
          (set! (&deque-front dq) #f))
        (set! (&deque-length dq)
          (1- len))
        (&node-e back))
      (error "Cannot pop; empty deque" dq))))

(def (peek-front dq)
  (with ((deque front) dq)
    (if front
      (&node-e front)
      (error "Cannot peek; empty deque"))))

(def (peek-back dq)
  (with ((deque _ back) dq)
    (if back
      (&node-e back)
      (error "Cannot peek; empty deque"))))

(def (deque->list dq)
  (with ((deque _ back) dq)
    (let lp ((n back) (r []))
      (if n
        (lp (&node-prev n)
            (cons (&node-e n) r))
        r))))
