;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; imperative queues

(import :std/error
        :std/contract)
(export queue make-queue queue?
        queue-length &queue-length
        queue-empty? &queue-empty?
        non-empty-queue?
        enqueue! &enqueue!
        enqueue-front! &enqueue-front!
        dequeue! &dequeue!
        queue-peek &queue-peek
        queue->list)
(declare (not safe))

(defstruct queue (front back length)
  constructor: :init!
  final: #t unchecked: #t)

(defmethod {:init! queue}
  (lambda (self)
    (struct-instance-init! self [] #f 0)))

(def (queue-empty? q)
  (using (q : queue)
    (&queue-empty? q)))

(def (&queue-empty? q)
  (using (q :- queue)
    (null? q.front)))

(def (non-empty-queue? q)
  (using (q : queue)
    (pair? q.front)))

(def (enqueue! q v)
  (using (q : queue)
    (&enqueue! q v)))

(def (&enqueue! q v)
  (using (q :- queue)
    (if (null? q.front)
      (let (front [v])
        (set! q.front front)
        (set! q.back front)
        (set! q.length 1))
      (let (new-back [v])
        (set! (cdr q.back) new-back)
        (set! q.back new-back)
        (set! q.length (fx1+ q.length))))))

(def (enqueue-front! q v)
  (using (q : queue)
    (&enqueue-front! q v)))

(def (&enqueue-front! q v)
  (using (q :- queue)
    (if (&queue-empty? q)
      (&enqueue! q v)
      (let (new-front (cons v q.front))
        (set! q.front new-front)
        (set! q.length (fx1+ q.length))))))

(def (dequeue! q (default absent-obj))
  (using (q : queue)
    (&dequeue! q default)))

(def (&dequeue! q (default absent-obj))
  (using (q :- queue)
    (cond
     ((eq? q.front q.back)
      (let (v (car q.front))
        (set! q.front [])
        (set! q.back #f)
        (set! q.length 0)
        v))
     ((pair? q.front)
      (let ((v (car q.front))
            (new-front (cdr q.front)))
        (set! q.front new-front)
        (set! q.length (fx1- q.length))
        v))
     ((eq? default absent-obj)
      (raise-context-error dequeue! "cannot dequeue; empty queue" q))
     (else default))))

(def (queue-peek q (default absent-obj))
  (using (q : queue)
    (&queue-peek q default)))

(def (&queue-peek q (default absent-obj))
  (using (q :- queue)
    (cond
     ((pair? q.front)
      (car q.front))
     ((eq? default absent-obj)
      (raise-context-error queue-peek "cannot peek; empty queue" q))
     (else default))))

(def (queue->list q)
  (foldr cons [] (queue-front q)))
