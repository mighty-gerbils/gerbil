;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor message primitives and macros
package: std/actor

(import :gerbil/gambit/threads
        :std/event)
(export
  message message::t message?
  message-e message-source message-dest message-options
  proxy proxy::t proxy? proxy-handler
  -> send send-message
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

;;; structured messages
(defstruct message (e source dest options)
  id: std/actor#message::t)

(defstruct proxy (handler)
  id: std/actor#proxy::t)

;;; send primitives
(def (send dest msg)
  (let lp ((dest dest))
    (cond
     ((thread? dest)
      (thread-send dest msg))
     ((proxy? dest)
      (lp (proxy-handler dest)))
     (else
      (lp (call-method ':actor dest))))))

(def (send-message dest value (options #f))
  (send dest (make-message value (current-thread) dest options)))

(defsyntax (-> stx)
  (syntax-case stx ()
    ((macro msg)
     (with-syntax ((dest (stx-identifier #'macro '@source)))
       #'(send dest msg)))))

;;; receive primitives
;; receive macros
;; <- matches a structured message, << raw matches the raw message
(begin-syntax
  (def (generate-receive stx generate-test-e generate-recv-e)
    (syntax-case stx ()
      ((_ clause ...)
       (with-syntax* (((values clauses events else-e)
                       (parse-receive stx #'(clause ...)))
                      ((event ...) events)
                      (test-e (generate-test-e stx clauses))
                      (recv-e (generate-recv-e stx clauses))
                      (else-e else-e))
         #'(receive-message test-e recv-e else-e [event ...])))))

  (def (parse-receive stx clauses)
    (let lp ((rest clauses) (clauses []) (events []) (else-e #f))
      (syntax-case rest (=> ! else)
        (((! evt => K) . rest)
         (lp #'rest clauses
             (cons #'(handle-evt evt K) events)
             else-e))
        (((! (var evt) body ...) . rest)
         (identifier? #'var)
         (lp #'rest clauses
             (cons #'(handle-evt evt (lambda (var) body ...)) events)
             else-e))
        (((! ((var ...) evt) body ...) . rest)
         (identifier-list? #'(var ...))
         (lp #'rest clauses
             (cons #'(handle-evt evt (lambda (var ...) body ...)) events)
             else-e))
        (((! evt body ...) . rest)
         (lp #'rest clauses
             (cons #'(handle-evt evt (lambda (_) body ...)) events)
             else-e))
        (((else body ...) . rest)
         (if else-e
           (raise-syntax-error #f "Bad syntax; duplicate else"
                               stx (stx-car #'rest))
           (lp #'rest clauses events
               #'(lambda () body ...))))
        ((clause . rest)
         (lp #'rest
             (cons #'clause clauses)
             events else-e))
        (()
         (values (reverse clauses) (reverse events) else-e))
        (_ (raise-syntax-error #f "Bad sytnax; bad clause" stx rest)))))
  
  (def (generate-receive-raw-test-e stx clauses)
    (with-syntax ((((hd . body) ...) clauses))
      #'(lambda (msg)
          (match msg
            ((or hd ...) #t)
            (else #f)))))

  (def (generate-receive-raw-recv-e stx clauses)
    (with-syntax (((clause ...) clauses))
      #'(lambda (msg)
          (match msg clause ...))))
  
  (def (generate-receive-msg-test-e stx clauses)
    (with-syntax* ((((hd . body) ...) clauses)
                   ((macro . body) stx)
                   (@message (stx-identifier #'macro '@message))
                   (@value   (stx-identifier #'macro '@value))
                   (@source  (stx-identifier #'macro '@source))
                   (@dest    (stx-identifier #'macro '@dest))
                   (@options (stx-identifier #'macro '@options)))
      #'(lambda (@message)
          (match @message
            ((message @value @source @dest @options)
             (match @value
               ((or hd ...)
                #t)
               (else #f)))
            (else #f)))))
  
  (def (generate-receive-msg-recv-e stx clauses)
    (with-syntax* (((clause ...) clauses)
                   ((macro . body) stx)
                   (@message (stx-identifier #'macro '@message))
                   (@value   (stx-identifier #'macro '@value))
                   (@source  (stx-identifier #'macro '@source))
                   (@dest    (stx-identifier #'macro '@dest))
                   (@options (stx-identifier #'macro '@options)))
      #'(lambda (@message)
          (match @message
            ((message @value @source @dest @options)
             (match @value
               clause ...))))))

    )

(defsyntax (<< stx)
  (generate-receive stx generate-receive-raw-test-e generate-receive-raw-recv-e))

(defsyntax (<- stx)
  (generate-receive stx generate-receive-msg-test-e generate-receive-msg-recv-e))

;; receive-message
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

(def empty-mailbox '#(empty))

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
