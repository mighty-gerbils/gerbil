;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor message primitives and macros
package: std/actor

(import :gerbil/gambit/threads
        :std/event)
(export
  << <- receive-message
  )
        
;; ~~lib/_gambit#.scm
(extern namespace: #f
  macro-mailbox-mutex
  macro-mailbox-condvar
  macro-mailbox-cursor
  macro-mailbox-cursor-set!
  macro-mailbox-fifo
  macro-fifo-next
  macro-fifo-next-set!
  macro-fifo-elem
  macro-fifo-tail-set!
  )

(defrules << ())
(defrules <- ())

(def empty-mailbox '#(empty))

(def (receive-message test-e receive-e else-e events)
  (def (loop mb)                        ; mutex is locked
    (let (next (mailbox-next! mb))
      (if (eq? next empty-mailbox)
        (if else-e
          (begin
            (mailbox-unlock! mb)
            (else-e))
          (mailbox-wait! mb events loop))
        (if (test-e next)
          (begin
            (mailbox-extract-rewind! mb)
            (receive-e next))
          (loop mb)))))
  
  (let (mb (##thread-mailbox-get! (current-thread)))
    (mailbox-rewind! mb)
    (loop mb)))


(def (mailbox-lock! mb)
  (mutex-lock! (macro-mailbox-mutex mb)))

(def (mailbox-unlock! mb)
  (mutex-unlock! (macro-mailbox-mutex mb)))
  
(def (mailbox-rewind! mb)
  ;; locks mutex and resets the cursor
  (mailbox-lock! mb)
  (mailbox-reset! mb))
  
(def (mailbox-reset! mb)
  ;; reset the mailbox cursor for iteration
  ;; mutex is locked
  (macro-mailbox-cursor-set! mb #f))
  
(def (mailbox-next! mb)
  ;; advances the cursor and returns the next object
  ;; returns empty-mailbox if cursor is at the end
  ;; mutex is locked
  (let* ((cursor (macro-mailbox-cursor mb))
         (next
          (if cursor
            (macro-fifo-next cursor)
            (macro-mailbox-fifo mb)))
          (next2
           (macro-fifo-next next)))
    (if (##pair? next2)
      (let ((result (macro-fifo-elem next2)))
        (macro-mailbox-cursor-set! mb next)
        result)
      empty-mailbox)))

(def (mailbox-wait! mb events loop)
  ;; sync the condvar with events
  ;; mutex is locked
  (apply sync
    (handle-evt
     (cons (macro-mailbox-mutex mb)
           (macro-mailbox-condvar mb))
     (lambda (mx condvar)
       (mutex-lock! mx)
       (loop mb)))
    events))

(def (mailbox-extract-rewind! mb)
  ;; extract object, reset cursor and mulock mutex
  (let (cursor (macro-mailbox-cursor mb))
    (when cursor
      (let* ((next (macro-fifo-next cursor))
             (next2 (macro-fifo-next next)))
        (macro-fifo-next-set! cursor next2)
        (when (##not (##pair? next2))
          (macro-fifo-tail-set! (macro-mailbox-fifo mb) cursor))
        (macro-mailbox-cursor-set! mb #f)))
    (mailbox-unlock! mb)))



