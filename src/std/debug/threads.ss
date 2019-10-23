;;; -*- Gerbil -*-
;;; © vyzo
;;; thread debugging utilities

(import :gerbil/gambit/threads
        :gerbil/gambit/continuations
        :std/misc/threads)
(export #t)

(def (dump-thread-stack-trace! thread (port (current-error-port)))
  (let (cont (##thread-continuation-capture thread))
    (display-continuation-backtrace
     cont
     port
     #t                                 ; all-frames?
     #f                                 ; display-env?
     )))

(def (dump-thread! thread (port (current-error-port)))
  (unless (eq? thread (current-thread))
    (display "thread: " port)
    (display thread port)
    (let (qlen (thread-queue-length thread))
      (display " (" port)
      (display qlen port)
      (display ")" port))
    (newline port)
    (dump-thread-stack-trace! thread port)))

(def (dump-thread-group! (tg (current-thread-group))
                         (port (current-error-port))
                         (filter true))
  (for-each
    (lambda (thread)
      (when (filter thread)
        (dump-thread! thread port)))
    (thread-group->thread-list tg)))

(def (dump-thread-group!* (tg (current-thread-group))
                          (port (current-error-port))
                          (filter true))
  (dump-thread-group! tg port filter)
  (for-each (cut dump-thread-group!* <> port filter)
            (thread-group->thread-group-list tg)))

(def (dump-all-threads! (port (current-error-port))
                        (filter true))
  (dump-thread-group!* (primordial-thread-group) port filter))

(def (dump-all-threads/queue! (port (current-error-port)))
  (dump-all-threads! port (? (not thread-queue-empty?))))

(def (thread-queue-length thread)
  (cond
   ((macro-thread-mailbox thread)
    => (lambda (mb)
         (let (fifo (macro-mailbox-fifo mb))
           (length (cdr fifo)))))
   (else 0)))

(def (thread-queue-empty? thread)
  (cond
   ((macro-thread-mailbox thread)
    => (lambda (mb)
         (let (fifo (macro-mailbox-fifo mb))
           (null? (cdr fifo)))))
   (else #t)))

;; _gambit#
(extern namespace: #f
  macro-thread-mailbox
  macro-mailbox-fifo)
