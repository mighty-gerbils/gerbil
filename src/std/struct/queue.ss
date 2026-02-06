;;; -*- Gerbil -*-
;;; © vyzo
;;; imperative queues
(import :std/error)
(export Queue Queue? make-queue
        queue-length
        queue-empty?
        non-empty-queue?
        enqueue!
        enqueue-front!
        dequeue!
        queue-peek
        queue->list)

(defstruct Queue ((front  :- :list)
                  (back   :- :pair)
                  (length :- :fixnum))
  constructor: :init!
  final: #t)

(defmethod {:init! Queue}
  (lambda (self)
    (struct-instance-init! self [] #f 0)))

(def (queue-empty? (q : Queue))
  => :boolean
  (null? q.front))

(def (non-empty-queue? (q : Queue))
  => :boolean
  (pair? q.front))

(def (enqueue! (q : Queue) v)
  => :void
  (if (null? q.front)
    (let (front [v])
      (set! q.front front)
      (set! q.back front)
      (set! q.length 1))
    (let (new-back [v])
      (set! (cdr (:- q.back :pair)) new-back)
      (set! q.back new-back)
      (set! q.length (fx1+ q.length)))))

(def (enqueue-front! (q : Queue) v)
  => :void
  (if (queue-empty? q)
    (enqueue! q v)
    (let (new-front (cons v q.front))
      (set! q.front new-front)
      (set! q.length (fx1+ q.length)))))

(def (dequeue! (q : Queue) (default absent-value))
  => :t
  (cond
   ((eq? q.front q.back)
    (let (v (car q.front))
      (set! q.front [])
      (set! q.back #f)
      (set! q.length 0)
      v))
   ((pair? q.front)
    (let ((v (car (:- q.front :pair)))
          (new-front (cdr (:- q.front :pair))))
      (set! q.front new-front)
      (set! q.length (fx1- q.length))
      v))
   ((eq? default absent-value)
    (raise-context-error dequeue! "cannot dequeue; empty queue" q))
   (else default)))

(def (queue-peek (q : Queue) (default absent-obj))
  => :t
  (cond
   ((pair? q.front)
    (car (:- q.front :pair)))
   ((eq? default absent-obj)
    (raise-context-error queue-peek "cannot peek; empty queue" q))
   (else default)))

(def (queue->list (q : Queue))
  => :list
  (list-copy q.front))
