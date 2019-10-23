;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; imperative queues

(export queue make-queue queue? queue-length
        queue-empty? non-empty-queue?
        enqueue! enqueue-front! dequeue! queue-peek
        queue->list)
(declare (not safe))

(defstruct queue (front back length)
  constructor: :init!
  final: #t unchecked: #t)

(defmethod {:init! queue}
  (lambda (self)
    (struct-instance-init! self '() #f 0)))

(def (queue-empty? q)
  (null? (queue-front q)))

(def (non-empty-queue? q)
  (pair? (queue-front q)))

(def (enqueue! q v)
  (with ((queue front back length) q)
    (if (null? front)
      (let (front [v])
        (set! (&queue-front q)
          front)
        (set! (&queue-back q)
          front)
        (set! (&queue-length q)
          1))
      (let (new-back [v])
        (set! (cdr back)
          new-back)
        (set! (&queue-back q)
          new-back)
        (set! (&queue-length q)
          (fx1+ length))))))

(def (enqueue-front! q v)
  (if (queue-empty? q)
    (enqueue! q v)
    (with ((queue front _ length) q)
      (let (new-front (cons v front))
        (set! (&queue-front q)
          new-front)
        (set! (&queue-length q)
          (fx1+ length))))))

(def (dequeue! q (default absent-obj))
  (with ((queue front back length) q)
    (cond
     ((eq? front back)
      (let (v (car front))
        (set! (&queue-front q) '())
        (set! (&queue-back q) #f)
        (set! (&queue-length q) 0)
        v))
     ((pair? front)
      (let ((v (car front))
            (new-front (cdr front)))
        (set! (&queue-front q)
          new-front)
        (set! (&queue-length q)
          (fx1- length))
        v))
     ((eq? default absent-obj)
      (error "cannot dequeue; empty queue" q))
     (else default))))

(def (queue-peek q (default absent-obj))
  (with ((queue front) q)
    (cond
     ((pair? front)
      (car front))
     ((eq? default absent-obj)
      (error "cannot peek; empty queue" q))
     (else default))))

(def (queue->list q)
  (foldr cons [] (queue-front q)))
