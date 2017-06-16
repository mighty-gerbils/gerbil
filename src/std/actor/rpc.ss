;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor rpc
package: std/actor

(import :gerbil/gambit/threads
        :gerbil/gambit/os
        :gerbil/gambit/exceptions
        :std/sugar
        :std/format
        :std/event
        :std/logger
        :std/net/address
        :std/net/server
        :std/os/socket
        :std/misc/uuid
        :std/actor/message
        :std/actor/xdr
        :std/actor/proto
        :std/actor/proto/message
        :std/actor/proto/null
        :std/actor/proto/cookie
        :std/actor/proto/cipher
        )
(export
  current-rpc-server
  start-rpc-server!
  stop-rpc-server!
  (struct-out rpc.register)
  !rpc.register !!rpc.register
  (struct-out rpc.unregister)
  !rpc.unregister !!rpc.unregister
  (struct-out rpc.resolve)
  !rpc.resolve !!rpc.resolve
  (struct-out rpc.server-address)
  !rpc.server-address !!rpc.server-address
  rpc-null-proto
  rpc-cookie-proto
  rpc-generate-cookie!
  rpc-cipher-proto
  rpc-cookie-cipher-proto
  set-rpc-keep-alive-interval!
  set-rpc-idle-timeout!
  set-rpc-call-timeout!
  )

(def current-rpc-server
  (make-parameter #f))

(def (xdr-handle-read port)
  (let (uuid (xdr-read-object port))
    (make-handle (current-rpc-server) uuid)))

(def (xdr-handle-write obj port)
  (with ((handle _ uuid) obj)
    (xdr-write-object uuid port)))

(def (xdr-remote-read port)
  (let* ((uuid (xdr-read-object port))
         (address (xdr-read-object port))
         (proto (xdr-read-object port)))
    (make-remote (current-rpc-server)
                 address uuid
                 (xdr-type-registry-get proto))))

(def (xdr-remote-write obj port)
  (with ((remote _ uuid address proto) obj)
    (xdr-write-object uuid port)
    (xdr-write-object address port)
    (xdr-write-object (and proto (!protocol-id proto)) port)))

(defproto-default-type
  (uuid::t uuid-t uuid? xdr-uuid-read xdr-uuid-write)
  (handle::t handle-t remote? xdr-handle-read xdr-handle-write)
  (remote::t remote-t remote? xdr-remote-read xdr-remote-write))

;; rpc server protocol
(defproto rpc
  id: std/actor#rpc
  ;; server <-> connection
  event:
  (connection-accept sock sa)
  (connection-shutdown)
  (connection-close)
  call:
  (lookup id)
  ;; client -> server
  call:
  (register id proto)
  (unregister id)
  (resolve id)
  (server-address)
  )

;;; rpc-server
(def (start-rpc-server! (address #f)
                        proto: (proto (rpc-null-proto)))
  (start-logger!)
  (spawn rpc-server address proto))

(def (stop-rpc-server! rpcd)
  (thread-kill! rpcd))

(def (rpc-server address proto)
  (let* ((socksrv (start-socket-server!))
         (sa (and address (socket-address address)))
         (sock (and sa (server-listen socksrv sa))))
    (parameterize ((current-rpc-server (current-thread)))
      (try
       (rpc-server-loop socksrv sock sa proto)
       (catch (e)
         (cond
          ((eq? e 'interrupt))
          ((uncaught-exception? e)
           (log-error "rpc server error" (uncaught-exception-reason e)))
          (else
           (log-error "rpc server error" e))))
       (finally
        (server-shutdown! socksrv))))))

(def (rpc-monitor server)
  (def (thread-monitor server thread)
    (with-catch values (cut thread-join! thread))
    (thread-send server thread))
  
  (let lp ()
    (<< ((? thread? thread)
         (spawn thread-monitor server thread)
         (lp))
        ('exit
         (void))
        (msg
         (warning "Unexpected message ~a" msg)
         (lp)))))

(def (rpc-server-loop socksrv sock sa proto)
  (def connect-e
    (!rpc-protocol-connect proto))
  (def accept-e
    (!rpc-protocol-accept proto))
  (def actors                           ; uuid-symbol => src
    (make-hash-table-eq))
  (def protos                           ; uuid-symbol => proto
    (make-hash-table-eq))   
  (def actor-threads                    ; thread => [uuid-symbol ...]
    (make-hash-table-eq))
  (def conns                            ; address => thread
    (make-hash-table))
  (def threads                          ; threads => address
    (make-hash-table-eq))
  (def monitor
    (spawn rpc-monitor (current-thread)))
  (def acceptor
    (and sock
         (spawn rpc-server-accept (current-thread) sock (socket-address-family sa))))
  
  (def (accept-connection cli clisa)
    (let* ((thr (spawn rpc-server-connection (current-thread) cli clisa accept-e))
           (address (socket-address->address clisa)))
      (hash-put! conns address thr)
      (hash-put! threads thr address)
      (thread-send monitor thr)))
  
  (def (open-connection address)
    (let (thr (spawn rpc-client-connection (current-thread) socksrv address connect-e))
      (hash-put! conns address thr)
      (hash-put! threads thr address)
      (thread-send monitor thr)
      thr))

  (def (canonical-address address)
    (cond
     ((or (inet-address? address)
          (inet-address-string? address))
      (resolve-address address))
     ((string? address)                 ; unix domain
      address)
     (else #f)))
  
  (def (handle-protocol-action msg)
    (with ((message content src dest opt) msg)
      (match content
        ((!rpc.connection-accept cli cliaddr)
         (accept-connection cli cliaddr))
        ((!rpc.connection-shutdown)
         (cond
          ((hash-get threads src)
           => (lambda (address)
                (!!rpc.connection-close src)
                (hash-remove! conns address)
                (hash-remove! threads src)))
          (else
           (warning "Unexpected protocol mesage ~a" msg))))
        ((!rpc.lookup id k)
         (let* ((uuid (UUID id))
                (uuids (uuid->symbol uuid)))
           (cond
            ((hash-get actors uuids)
             => (lambda (actor)
                  (let (proto (hash-get protos uuids))
                    (!!value src (values actor proto) k))))
            (else
             (!!value src #f k)))))
        ((!rpc.register id proto k)
         (let* ((uuid (UUID id))
                (uuids (uuid->symbol uuid)))
           (if (hash-key? actors uuids)
             (!!error src "duplicate actor" k)
             (let (thread (actor-thread-e src))
                (hash-put! actors uuids src)
                (hash-put! protos uuids proto)
                (hash-update! actor-threads thread (cut cons uuids <>) [])
                (thread-send monitor thread)
                (!!value src uuid k)))))
        ((!rpc.unregister id k)
         (let* ((uuid (UUID id))
                (uuids (uuid->symbol uuid))
                (thread (actor-thread-e src)))
           (hash-remove! actors uuids)
           (hash-remove! protos uuids)
           (let (actor-rest (remove uuids (hash-ref actor-threads thread [])))
             (if (null? actor-rest)
               (hash-remove! actor-threads thread)
               (hash-put! actor-threads thread actor-rest)))
           (!!value src #!void k)))
        ((!rpc.resolve id k)
         (let* ((uuid (UUID id))
                (uuids (uuid->symbol uuid)))
           (cond
            ((hash-get actors uuids)
             => (lambda (actor) (!!value src actor k)))
            (else
             (!!value src #f k)))))
        ((!rpc.server-address k)
         (let (address (and sa (socket-address->address sa)))
           (!!value src address k)))
        (else
         (warning "Unexpected message ~a" msg)))))
  
  (def (actor-thread-e actor)
    (cond
     ((thread? actor) actor)
     ((proxy? actor) (proxy-handler actor))
     (else
      (error "Bad actor" actor))))
  
  (def (remove-thread! thread)
    ;; connection threads
    (cond
     ((hash-get threads thread)
      => (lambda (address)
           (rpc-send-connection-error-responses address)
           (hash-remove! conns address)
           (hash-remove! threads thread))))
    ;; actor threads
    (cond
     ((hash-get actor-threads thread)
      => (lambda (uuids)
           (for-each (cut hash-remove! actors <>) uuids)
           (for-each (cut hash-remove! protos <>) uuids)
           (hash-remove! actor-threads thread)))))
  
  (def (loop)
    (<< ((? message? msg)
         (let (dest (message-dest msg))
           (cond
            ((remote? dest)
             (let (address (canonical-address (remote-address dest)))
               (cond
                ((hash-get conns address)
                 => (lambda (handler)
                      (thread-send handler msg)))
                (else
                 (let (thr (open-connection address))
                   (thread-send thr msg))))))
            ((handle? dest)
             (let* ((uuid (handle-uuid dest))
                    (uuids (uuid->symbol uuid)))
               (cond
                ((hash-get actors uuids)
                 => (lambda (actor) (send actor msg)))
                (else
                 (rpc-send-error-response msg)))))
            ((eq? (current-thread) dest)
             (handle-protocol-action msg))
            (else
             (warning "bad destination ~a" dest)
             (rpc-send-error-response msg)))))
        ((? thread? thread)
         (cond
          ((eq? thread socksrv)
           (error "socket server has exited unexpectedly"))
          ((eq? thread acceptor)
           (error "acceptor thread has exited unexpectedly"))
          (else
           (remove-thread! thread))))
        (value
         (warning "unexepected message ~a"  value)))
    (loop))

  (thread-send monitor socksrv)
  (when acceptor
    (thread-send monitor acceptor))
  (try
   (loop)
   (finally
    (thread-send monitor 'exit)
    (when acceptor
      (thread-kill! acceptor))
    (for-each thread-kill! (hash-keys threads)))))

(def (rpc-server-accept rpc-server sock safamily)
  (while #t
    (try
     (let* ((cliaddr (make-socket-address safamily))
            (clisock (server-accept sock cliaddr)))
       (debug "accepted connection from ~a" (socket-address->string cliaddr))
       (!!rpc.connection-accept rpc-server clisock cliaddr))
     (catch (exception? e)
       (log-error "error accepting connection" e)))))

(def (rpc-send-error-response msg)
  (when (message? msg)
    (with ((message content src) msg)
      (match content
        ((!call _ k)
         (!!error (message-source msg) "connection error" k))
        (else #!void)))))

(def (rpc-send-connection-error-responses address)
  (let lp ()
    (<< ((and (message _ _ (remote _ _ (equal? address)))
              msg)
         (rpc-send-error-response msg)
         (lp))
        (else #!void))))

(def (rpc-server-connection rpc-server sock sa proto-e)
  (try
   (rpc-set-nodelay! sock (socket-address-family sa))
   (rpc-connection-loop rpc-server sock (socket-address->address sa) proto-e)
   (catch (e)
     (rpc-connection-cleanup rpc-server e sock))))

(def (rpc-client-connection rpc-server socksrv address proto-e)
  (try
   (let* ((sa (socket-address address))
          (cli (server-connect socksrv sa)))
     (rpc-set-nodelay! cli (socket-address-family sa))
     (rpc-connection-loop rpc-server cli address proto-e))
   (catch (e)
     (rpc-connection-cleanup rpc-server e #f))))

(def (rpc-set-nodelay! sock safamily)
  (when (or (eq? safamily AF_INET)
            (eq? safamily AF_INET6))
    (socket-setsockopt (server-socket-e sock) IPPROTO_TCP TCP_NODELAY 1)))

(def rpc-keep-alive 60) ; keep-alive interval

(def (set-rpc-keep-alive-interval! dt)
  (if (or (not dt) (and (real? dt) (positive? dt)))
    (set! rpc-keep-alive dt)
    (error "bad keep-alive; expected positive real or #f" dt)))

(def rpc-idle-timeout (* 2 3600))

(def (set-rpc-idle-timeout! dt)
  (if (or (not dt) (and (real? dt) (positive? dt)))
    (set! rpc-idle-timeout dt)
    (error "bad idle interval; expected positive real or #f" dt)))

(def rpc-call-timeout 30)

(def (set-rpc-call-timeout! dt)
  (if (and (real? dt) (positive? dt))
    (set! rpc-call-timeout dt)
    (error "bad timeout; expected positive real " dt)))

(def (rpc-connection-loop rpc-server sock peer-address proto-e)
  (def input
    (server-input-buffer sock))
  (def output
    (server-output-buffer sock))
  (defvalues (read-e write-e)
    (proto-e input output))
  (def continuations               ; wire-id => (values actor k proto stream?)
    (make-hash-table-eqv))
  (def timeouts                         ; time => wire-id
    (make-hash-table-eq))
  (def continuation-timeouts            ; wire-id => time
    (make-hash-table-eqv))
  (def next-continuation-id 0)
  (def idle-timeout #f)
  (def reader #f)
  (def writer #f)
  (def monitor
    (spawn rpc-monitor (current-thread)))
  
  (def (reset-idle-timeout)
    (set! idle-timeout
      (if rpc-idle-timeout
        (seconds->time
         (+ (time->seconds (current-time))
            rpc-idle-timeout))
        never-evt)))
  
  (def (close-connection)
    (rpc-close-sock sock)
    (thread-kill! writer)
    (thread-kill! reader)
    (thread-send monitor 'exit)
    (for-each
      (lambda (wire-id)
        (cond
         ((hash-get continuations wire-id)
          => (lambda (cont)
               (with ((values actor k proto stream?) cont)
                 (!!error actor "connection closed" k)
                 (remove-continuation! wire-id))))))
      (hash-keys continuations))
    (rpc-connection-shutdown rpc-server))
  
  (def (read-message data)
    (cond
       ((void? data)                    ; keep-alive
        (loop))
       ((u8vector? data)                ; incoming message
        (let (bytes (open-input-u8vector data))
          (let (msg (try (rpc-proto-read-message-envelope bytes)
                         (catch (exception? e) e)))
            (if (message? msg)
              (with ((message content _ dest) msg)
                (match content
                  ((? (or !call? !event? !stream?))
                   (dispatch-call msg bytes))
                  ((? !value?)
                   (dispatch-value msg bytes !value-k !value-k-set!))
                  ((? !error?)
                   (dispatch-value msg bytes !error-k !error-k-set!))
                  ((? !end?)
                   (dispatch-value msg bytes !end-k !end-k-set!))
                  ((? not)
                   (dispatch-call msg bytes))))
                (begin
                  (log-error "read error" msg)
                  (close-connection))))))
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
  
  (def (dispatch-call msg bytes)
    (let (uuid (message-dest msg))
      (match (!!rpc.lookup rpc-server uuid)
        ((values actor proto)
         (let (e (unmarshall-message-content msg proto bytes))
           (if (message? e)
             (begin
               (set! (message-dest msg)
                 actor)
               (set! (message-source msg)
                 (make-remote rpc-server uuid peer-address proto))
               (send actor msg)
               (loop))
             (begin
               (log-error "unmarshall error" e)
               (loop)))))
        (else
         (warning "cannot route call; no actor binding ~a" uuid)
         (match (message-e msg)
           ((!call _ k)
            (marshall-and-write
             (make-message (make-!error "no binding" k) #!void uuid #f)
             #f #f))
           (else
            (loop)))))))

    
  (def (dispatch-value msg bytes value-k value-k-set!)
    (let* ((content (message-e msg))
           (cont    (value-k content)))
      (cond
       ((hash-get continuations cont)
        => (match <>
             ((values actor k proto stream?)
              (let (e (unmarshall-message-content msg proto bytes))
                (if (message? e)
                  (begin
                    (value-k-set! (message-e msg) k)
                    (set! (message-source msg)
                      (make-remote rpc-server (message-dest msg) peer-address proto))
                    (unless (and stream? (not (!end? content)) (not (!error? content)))
                      (remove-continuation! cont))
                    (send actor msg)
                    (loop))
                  (begin
                    (!!error actor "unmarshall error" k)
                    (remove-continuation! cont)
                    (loop)))))))
       (else
        (warning "cannot route value; bogus continuation ~a" cont)
        (loop)))))
  
  (def (unmarshall-message-content msg proto bytes)
    (try (rpc-proto-read-message-content msg proto bytes)
         (catch (exception? e) e)))
    
  (def (write-message msg)
    (with ((message content src dest opts) msg)
      (if (remote? dest)
        (with ((remote _ uuid address proto) dest)
          (set! (message-dest msg)
            uuid)
          ;; keep track of continuation and timeout
          (match content
            ((!call _ k)
             (let ((wire-id (next-continuation-id!))
                   (timeo (or (and opts (pgetq timeout: opts))
                              rpc-call-timeout)))
               (hash-put! continuations wire-id (values src k proto #f))
               (let* ((abs-timeo
                       (if (time? timeo)
                         timeo
                         (seconds->time
                          (+ (time->seconds (current-time)) timeo))))
                      (timeo-evt (rec evt (handle-evt abs-timeo (lambda (_) evt)))))
                 (hash-put! timeouts timeo-evt wire-id)
                 (hash-put! continuation-timeouts wire-id timeo-evt))
               (set! (!call-k content) wire-id)))
            ((!stream _ k)
             (let ((wire-id (next-continuation-id!))
                   (timeo (and opts (pgetq timeout: opts))))
               (hash-put! continuations wire-id (values src k proto #t))
               (when timeo
                 (let* ((abs-timeo
                       (if (time? timeo)
                         timeo
                         (seconds->time
                          (+ (time->seconds (current-time)) timeo))))
                        (timeo-evt (rec evt (handle-evt abs-timeo (lambda (_) evt)))))
                 (hash-put! timeouts timeo-evt wire-id)
                 (hash-put! continuation-timeouts wire-id timeo-evt)))
               (set! (!stream-k content) wire-id)))
            (else (void)))
          ;; marshall, write, loop
          (marshall-and-write msg proto #t))
        (begin
          (warning "bad handle; no protocol ~a ~a" dest msg)
          (loop)))))
  
  (def (next-continuation-id!)
    (let (next next-continuation-id)
      (set! next-continuation-id (1+ next))
      next))
  
  (def (remove-continuation! wire-id)
    (hash-remove! continuations wire-id)
    (let (timeo (hash-get continuation-timeouts wire-id))
      (when timeo
        (hash-remove! continuation-timeouts wire-id)
        (hash-remove! timeouts timeo))))

  (def (marshall-and-write msg proto local-error?)
    (let (e (try (rpc-proto-marshall-message msg proto)
                 (catch (exception? e) e)))
      (cond
       ((u8vector? e)
        (if (fx<= (u8vector-length e) rpc-proto-message-max-length)
          (begin
            (thread-send writer e)
            (loop))
          (let (content (message-e msg))
            (match content
              ((or (!call e wire-id) (!stream e wire-id))
               (dispatch-error wire-id "message too large"))
              (else
               (warning "message too large; not sending %d bytes" (u8vector-length e))
               (loop))))))
       (local-error?
        (log-error "marshall error" e)
        (let (content (message-e msg))
          (match content
            ((or (!call e wire-id) (!stream e wire-id))
             (dispatch-error wire-id "marshall error"))
            (else
             (loop)))))
       (else
        (log-error "marshall error" e)
        (loop)))))
  
  (def (dispatch-error wire-id what)
    (with ((values actor k proto stream?) (hash-ref continuations wire-id))
      (!!error actor what k)
      (remove-continuation! wire-id)
      (loop)))
  
  (def (dispatch-timeout timeo)
    (cond
     ((hash-get timeouts timeo)
      => (lambda (wire-id)
           (dispatch-error wire-id "timeout")))))
  
  (def (writer-loop)
    (let (output (server-output-buffer sock))
      (<< (! (or rpc-keep-alive never-evt)
             (write-e output #!void)
             (writer-loop))
          ((? u8vector? data)
           (write-e output data)
           (writer-loop))
          (bogus
           (warning "unexpected message ~a" bogus)
           (writer-loop)))))

  (def (timeout-event)
    (let lp ((rest (hash-keys timeouts)) (timeo #f) (time #f))
      (match rest
        ([evt . rest]
         (if timeo
           (let (xtime (time->seconds (event-selector evt)))
             (if (< xtime time)
               (lp rest evt xtime)
               (lp rest timeo time)))
           (lp rest evt (time->seconds (event-selector evt)))))
        (else
         (or timeo never-evt)))))
                    
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
        ((? thread?)
         (close-connection))
        (bogus
         (warning "unexpected message ~a" bogus)
         (loop))))

  (let (thread (spawn/name 'rpc-connection-reader reader-loop (current-thread)))
    (set! reader thread)
    (thread-send monitor thread))
  
  (let (thread (spawn/name 'rpc-connection-writer writer-loop))
    (set! writer thread)
    (thread-send monitor thread))
  
  (reset-idle-timeout)
  (try
   (loop)
   (catch (e)
     (log-error "connection error" e)
     (close-connection))))

(def (rpc-connection-shutdown rpc-server)
  (!!rpc.connection-shutdown rpc-server)
  (let lp ()
    (<< ((? message? msg)
         (with ((message content) msg)
           (match content
             ((!rpc.connection-close)
              (void))
             (else
              (rpc-send-error-response msg)
              (lp)))))
        (value (lp))
        (else (void)))))

(def (rpc-connection-cleanup rpc-server exn sock)
  (unless (eq? exn 'interrupt)
    (log-error "connection error" exn))
  (rpc-close-sock sock)
  (rpc-connection-shutdown rpc-server))

(def (rpc-close-sock sock)
  (when sock
    (server-close sock)))

(def (thread-kill! thread)
  (with-catch void (cut thread-interrupt! thread (cut raise 'interrupt))))
