;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor rpc connections
package: std/actor/rpc

(import :gerbil/gambit/threads
        :gerbil/gambit/os
        :gerbil/gambit/exceptions
        :std/sugar
        :std/logger
        :std/net/bio
        :std/net/socket
        :std/os/socket
        :std/misc/uuid
        :std/actor/message
        :std/actor/xdr
        :std/actor/proto
        :std/actor/rpc/base
        :std/actor/rpc/proto/message)
(export #t)

(declare (not safe))

(def (rpc-server-connection rpc-server actors sock sa cliaddr proto-e)
  (try
   (rpc-set-nodelay! sock (socket-address-family sa))
   (rpc-connection-loop rpc-server actors sock cliaddr proto-e)
   (catch (e)
     (rpc-connection-cleanup rpc-server e sock))))

(def (rpc-client-connection rpc-server actors address proto-e)
  (try
   (let* ((sa (socket-address address))
          (cli (ssocket-connect sa)))
     (rpc-set-nodelay! cli (socket-address-family sa))
     (rpc-connection-loop rpc-server actors cli address proto-e))
   (catch (e)
     (rpc-connection-cleanup rpc-server e #f))))

(def (rpc-set-nodelay! sock safamily)
  (when (or (eq? safamily AF_INET)
            (eq? safamily AF_INET6))
    (socket-setsockopt (ssocket-socket sock) IPPROTO_TCP TCP_NODELAY 1)))

(def rpc-keep-alive 60) ; keep-alive interval

(def (set-rpc-keep-alive-interval! dt)
  (if (or (not dt) (and (real? dt) (positive? dt)))
    (set! rpc-keep-alive dt)
    (error "bad keep-alive; expected positive real or #f" dt)))

(def rpc-idle-timeout #f)

(def (set-rpc-idle-timeout! dt)
  (if (or (not dt) (and (real? dt) (positive? dt)))
    (set! rpc-idle-timeout dt)
    (error "bad idle interval; expected positive real or #f" dt)))

(def rpc-call-timeout 60)

(def (set-rpc-call-timeout! dt)
  (cond
   ((and (real? dt) (positive? dt) (finite? dt))
    (set! rpc-call-timeout dt))
   ((not dt)
    (set! rpc-call-timeout #f))
   (else
    (error "bad timeout; expected finite positive real or #f" dt))))

(def (rpc-connection-loop rpc-server actors sock peer-address proto-e)
  (def input
    (open-ssocket-input-buffer sock))
  (def output
    (open-ssocket-output-buffer sock))
  (defvalues (read-e write-e)
    (proto-e input output))
  (def continuations                    ; wire-id => (values actor k stream?)
    (make-hash-table-eqv))
  (def stream-continuations             ; k => wire-id
    (make-hash-table-eq))
  (def stream-actors                    ; wire-id => [actor . dest]
    (make-hash-table-eqv))
  (def timeouts                         ; timeout => wire-id
    (make-hash-table-eq))
  (def continuation-timeouts            ; wire-id => timeout
    (make-hash-table-eqv))
  (def next-timeout #f)
  (def next-continuation-id 0)
  (def idle-timeout #f)
  (def reader #f)
  (def writer #f)

  (def (reset-idle-timeout)
    (cond
     (rpc-idle-timeout
      (set! idle-timeout
        (seconds->time
         (+ (##current-time-point) rpc-idle-timeout))))
     ((not idle-timeout))
     (else
      (set! idle-timeout #f))))

  (def (close-connection)
    (ssocket-close sock)
    (thread-send writer 'exit)
    (for-each
      (lambda (wire-id)
        (cond
         ((hash-get continuations wire-id)
          => (lambda (cont)
               (with ((values actor k stream?) cont)
                 (!!error actor (make-rpc-error 'rpc-connection "connection error") k))))))
      (hash-keys continuations))
    (hash-for-each
      (lambda (wire-id stream)
        (with ([actor . dest] stream)
          (let (abort (make-message (make-!abort wire-id) dest actor #f))
            (send actor abort))))
      stream-actors)
    (rpc-connection-shutdown rpc-server))

  (def (read-message data)
    (cond
     ((void? data)                      ; keep-alive
      (loop))
     ((u8vector? data)                  ; incoming message
      (let (msg (try (rpc-proto-unmarshal-message data)
                     (catch (exception? e) e)))
        (match msg
          ((message content _ dest)
           (match content
             ((? (or !call? !event? !stream?))
              (dispatch-call msg))
             ((? (or !value? !error? !yield? !end?))
              (dispatch-value msg))
             ((? (or !continue? !close? !abort?))
              (dispatch-control msg))
             (else
              (dispatch-call msg))))
          (else
           ;; unmarshal error -- is it a recoverable payload unmarshal error?
           (log-error "unmarshal error" msg)
           (let (msg (try (rpc-proto-unmarshal-envelope data)
                          (catch (exception? e) e)))
             (match msg
               ((message content _ dest)
                (match content
                  ((or (!call _ k) (!stream _ k))
                   (cond
                    ((actor-table-get actors dest)
                     ;; we have an actor binding (and hence a protocol) so it's
                     ;; a userland marshaling error
                     (dispatch-remote-error (make-!error "unmarshal error" k) dest))
                    (else
                     ;; we probably failed to unmarshal because there is no binding
                     (warning "bogus message; no actor binding ~a" (uuid->string dest))
                     (dispatch-remote-error (make-!error "no binding" k) dest))))
                  ((? !event?)
                   (unless (actor-table-get actors dest)
                     ;; same here, so warn about it
                     (warning "bogus message; no actor binding ~a" (uuid->string dest)))
                   (loop))
                  ((or (!value _ k) (!error _ k) (!yield _ k))
                   (cond
                    ((hash-get continuations k)
                     => (match <>
                          ((values actor cont stream?)
                           (!!error actor (make-rpc-error 'rpc-connection "unmarshal error") cont)
                           (remove-continuation! k)))))
                   (if (!yield? content)
                     (dispatch-remote-error (make-!abort k) dest)
                     (loop)))
                  (else
                   (loop))))
               (else
                ;; envelope error -- unrecoverable
                (close-connection))))))))
     ((eof-object? data)
      (close-connection))
     (else
      (log-error "connection error" data)
      (close-connection))))

  (def (reader-loop connection-thread)
    (let lp ()
      (let (next (read-e input))
        (thread-send connection-thread (cons 'read next))
        (unless (eof-object? next)
          (lp)))))

  (def (dispatch-call msg)
    (let (uuid (message-dest msg))
      (cond
       ((actor-table-get actors uuid)
        => (lambda (actor)
             (set! (message-dest msg)
               actor)
             (set! (message-source msg)
               (make-remote (current-thread) uuid peer-address))
             (send actor msg)
             (loop)))
        (else
         (warning "cannot route message; no actor binding ~a" (uuid->string uuid))
         (match (message-e msg)
           ((or (!call _ k) (!stream _ k))
            (dispatch-remote-error (make-!error "no binding" k) uuid))
           (else
            (loop)))))))

  (def (dispatch-value msg)
    (let* ((content (message-e msg))
           (cont    (value-k content)))
      (cond
       ((hash-get continuations cont)
        => (match <>
             ((values actor k stream?)
              (value-k-set! (message-e msg) k)
              (set! (message-source msg)
                (make-remote (current-thread) (message-dest msg) peer-address))
              (unless (!yield? content)
                (remove-continuation! cont))
              (send actor msg)
              (loop))))
       (else
        (warning "cannot route message; bogus continuation ~a" cont)
        (if (!yield? content)
          (dispatch-remote-error (make-!abort cont) (message-dest msg))
          (loop))))))

  (def (dispatch-control msg)
    (let* ((content (message-e msg))
           (wire-id (value-k content))
           (stream (hash-get stream-actors wire-id)))
      (if stream
        (with ([actor . dest] stream)
          (set! (message-source msg) dest)
          (send actor msg)
          (when (!abort? content)
            (hash-remove! stream-actors wire-id))
          (loop))
        (begin
          (warning "bad control message; unknown stream ~a" wire-id)
          (dispatch-remote-error (make-!error "uknown stream" wire-id) (message-dest msg))))))

  (def (value-k obj)
    (##vector-ref obj (fx1- (##vector-length obj))))

  (def (value-k-set! obj k)
    (##vector-set! obj (fx1- (##vector-length obj)) k))

  (def (dispatch-remote-error what dest)
    (marshal-and-write (make-message what (void) dest #f) #f))

  (def (write-message msg)
    (with ((message content src dest opts) msg)
      (if (remote? dest)
        (with ((remote _ uuid address) dest)
          (set! (message-dest msg)
            uuid)
          ;; keep track of continuation and timeout
          (match content
            ((!call _ k)
             (let (wire-id (next-continuation-id!))
               (hash-put! continuations wire-id (values src k #f))
               (set! (!call-k content) wire-id)
               (alet (timeo (rpc-options-timeout opts rpc-call-timeout))
                 (hash-put! timeouts timeo wire-id)
                 (hash-put! continuation-timeouts wire-id timeo)
                 (set-timeout! timeo))
               (marshal-and-write msg #t)))
            ((!stream _ k)
             (let (wire-id (next-continuation-id!))
               (hash-put! continuations wire-id (values src k #t))
               (hash-put! stream-continuations k wire-id)
               (set! (!stream-k content) wire-id)
               (alet (timeo (rpc-options-timeout opts #f))
                 (hash-put! timeouts timeo wire-id)
                 (hash-put! continuation-timeouts wire-id timeo)
                 (set-timeout! timeo))
               (marshal-and-write msg #t)))
            ((? !value?)
             (marshal-and-write msg #t))
            ((!yield _ wire-id)
             (hash-put! stream-actors wire-id (cons src dest))
             (marshal-and-write msg #t))
            ((or (!error _ wire-id)
                 (!end wire-id))
             (hash-remove! stream-actors wire-id)
             (marshal-and-write msg #t))
            ((!continue k)
             (let (wire-id (hash-get stream-continuations k))
               (if wire-id
                 (begin
                   (set! (!continue-k content) wire-id)
                   (marshal-and-write msg #t))
                 (begin
                   (warning "bad continue; unknown stream ~a" k)
                   (loop)))))
            ((!close k)
             (let (wire-id (hash-get stream-continuations k))
               (if wire-id
                 (begin
                   (set! (!close-k content) wire-id)
                   (marshal-and-write msg #t))
                 (begin
                   (warning "bad close; unknown stream ~a" k)
                   (loop)))))
            ((!abort k)
             (let (wire-id (hash-get stream-continuations k))
               (if wire-id
                 (begin
                   (set! (!abort-k content) wire-id)
                   (remove-continuation! wire-id)
                   (marshal-and-write msg #t))
                 (begin
                   (warning "bad abort; unknown stream ~a" k)
                   (loop)))))
            (else
             (marshal-and-write msg #t))))
        (begin
          (warning "bad handle; no protocol ~a ~a" dest msg)
          (loop)))))

  (def (next-continuation-id!)
    (let (next next-continuation-id)
      (set! next-continuation-id (1+ next))
      next))

  (def (remove-continuation! wire-id)
    (alet (cont (hash-get continuations wire-id))
      (hash-remove! continuations wire-id)
      (with ((values _ k stream?) cont)
        (when stream?
          (hash-remove! stream-continuations k)))
      (alet (timeo (hash-get continuation-timeouts wire-id))
        (hash-remove! continuation-timeouts wire-id)
        (hash-remove! timeouts timeo))))

  (def (marshal-and-write msg local-error?)
    (let (e (try (rpc-proto-marshal-message msg)
                 (catch (exception? e) e)))
      (cond
       ((u8vector? e)
        (if (fx<= (u8vector-length e) rpc-proto-message-max-length)
          (begin
            (thread-send writer e)
            (loop))
          (let (content (message-e msg))
            (warning "message too large; not sending %d bytes" (u8vector-length e))
            (match content
              ((or (!call e wire-id) (!stream e wire-id))
               (dispatch-error wire-id "message too large"))
              ((!yield wire-id)
               (dispatch-stream-error msg wire-id "message too large"))
              (else
               (loop))))))
       ((chunked-output-buffer? e)
        (if (fx<= (chunked-output-length e) rpc-proto-message-max-length)
          (begin
            (thread-send writer e)
            (loop))
          (let (content (message-e msg))
            (warning "message too large; not sending %d bytes" (chunked-output-length e))
            (match content
              ((or (!call e wire-id) (!stream e wire-id))
               (dispatch-error wire-id "message too large"))
              ((!yield wire-id)
               (dispatch-stream-error msg wire-id "message too large"))
              (else
               (loop))))))
       (local-error?
        (log-error "marshal error" e)
        (let (content (message-e msg))
          (match content
            ((or (!call e wire-id) (!stream e wire-id))
             (dispatch-error wire-id "marshal error"))
            ((!yield wire-id)
             (dispatch-stream-error msg wire-id "marshal error"))
            (else
             (loop)))))
       (else
        (log-error "marshal error" e)
        (loop)))))

  (def (dispatch-error wire-id what)
    (with ((values actor k stream?) (hash-ref continuations wire-id))
      (!!error actor (make-rpc-error 'rpc-connection what) k)
      (remove-continuation! wire-id)
      (loop)))

  (def (dispatch-stream-error msg wire-id what)
    (with ((message _ src dest) msg)
      (let (abort (make-message (make-!abort wire-id) dest src #f))
        (send src abort))
      (hash-remove! stream-actors wire-id)
      (dispatch-remote-error (make-!error what wire-id) dest)))

  (def (dispatch-timeout timeo)
    (set! next-timeout #f)
    (cond
     ((hash-get timeouts timeo)
      => (lambda (wire-id)
           (dispatch-error wire-id "timeout")))
     (else
      (loop))))

  (def (writer-loop)
    (let lp ()
      (<< (! rpc-keep-alive
             (write-e output (void))
             (lp))
          ((? u8vector? data)
           (write-e output data)
           (lp))
          ((? output-buffer? buf)
           (write-e output buf)
           (lp))
          ('exit (void))
          (bogus
           (warning "unexpected message ~a" bogus)
           (lp)))))

  (def (timeout< a b)
    (< (time->seconds a)
       (time->seconds b)))

  (def (set-timeout! timeo)
    (when (or (not next-timeout) (timeout< timeo next-timeout))
      (set! next-timeout timeo)))

  (def (timeout-event)
    (unless next-timeout
      (unless (fxzero? (hash-length timeouts))
        (hash-for-each
          (lambda (timeo _)
            (set-timeout! timeo))
          timeouts)))
    next-timeout)

  (def (loop)
    (<< (! (timeout-event)
           => dispatch-timeout)
        (! idle-timeout
           (close-connection))
        ((? message? msg)
         (reset-idle-timeout)
         (write-message msg))
        (['read . data]
         (reset-idle-timeout)
         (read-message data))
        ('shutdown
         (close-connection))
        ((? thread? thread)
         (try
          (thread-join! thread)
          (warning "connection error: i/o thread ~a exited unexpectedly" (thread-name thread))
          (catch (uncaught-exception? e)
            (log-error "connection error" (uncaught-exception-reason e)))
          (catch (e)
            (log-error "connection error" e)))
         (close-connection))
        (bogus
         (warning "unexpected message ~a" bogus)
         (loop))))

  (def (run)
    ;; create a denv cell and bubble up the cache; cf parameter perf considerations
    (parameterize ((current-xdr-type-registry +xdr-default-type-registry+))
      (loop)))

  (let (thread (spawn/name 'rpc-connection-reader reader-loop (current-thread)))
    (set! reader thread)
    (rpc-monitor thread))

  (let (thread (spawn/name 'rpc-connection-writer writer-loop))
    (set! writer thread)
    (rpc-monitor thread))

  (reset-idle-timeout)
  (try
   (run)
   (catch (e)
     (log-error "unhandled exception" e)
     (close-connection))))

(def (rpc-options-timeout opts default)
  (def (timeout dt default)
    (cond
     ((real? dt)                        ; rel time
      (seconds->time
       (+ (##current-time-point) dt)))
     ((time? dt) dt)                    ; abs time
     ((not dt) dt)                      ; bottom
     (else
      (timeout default #f))))
  (cond
   ((and opts (memq timeout: opts))
    => (lambda (plist)
         (timeout (cadr plist) default)))
   (else
    (timeout default #f))))

(def (rpc-connection-shutdown rpc-server)
  (!!rpc.connection-shutdown rpc-server)
  (let lp ()
    (<< ((? message? msg)
         (with ((message content) msg)
           (match content
             ((!rpc.connection-close)
              (rpc-send-error-responses "connection error"))
             (else
              (rpc-send-error-response msg "connection error")
              (lp)))))
        (ignore (lp)))))

(def (rpc-connection-cleanup rpc-server exn sock)
  (log-error "connection error" exn)
  (when sock
    (ssocket-close sock))
  (rpc-connection-shutdown rpc-server))
