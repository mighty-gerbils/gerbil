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
        :std/misc/pqueue
        :std/misc/sync
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
  rpc-connect rpc-register rpc-unregister
  (struct-out rpc.register)
  !rpc.register !!rpc.register
  (struct-out rpc.unregister)
  !rpc.unregister !!rpc.unregister
  (struct-out rpc.resolve)
  !rpc.resolve !!rpc.resolve
  (struct-out rpc.server-address)
  !rpc.server-address !!rpc.server-address
  (struct-out rpc.monitor)
  !rpc.monitor !!rpc.monitor
  (struct-out rpc.unmonitor)
  !rpc.unmonitor !!rpc.unmonitor
  (struct-out rpc.disconnect)
  !rpc.disconnect !!rpc.disconnect
  (struct-out rpc.shutdown)
  !rpc.shutdown !!rpc.shutdown
  rpc-null-proto
  rpc-cookie-proto
  rpc-generate-cookie!
  rpc-cipher-proto
  rpc-cookie-cipher-proto
  set-rpc-keep-alive-interval!
  set-rpc-idle-timeout!
  set-rpc-call-timeout!
  rpc-canonical-address
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

(def (xdr-error-read error-t port)
  (xdr-vector-like-read (cut make-object error-t <>) 1 port))

(def (xdr-error-write obj port)
  (xdr-vector-like-write obj 1 port))

(def (xdr-actor-error-read port)
  (xdr-error-read actor-error::t port))

(def (xdr-remote-error-read port)
  (xdr-error-read remote-error::t port))

(def (xdr-rpc-error-read port)
  (xdr-error-read rpc-error::t port))

(defproto-default-type
  (uuid::t uuid-t uuid? xdr-uuid-read xdr-uuid-write)
  (handle::t handle-t handle? xdr-handle-read xdr-handle-write)
  (remote::t remote-t remote? xdr-remote-read xdr-remote-write)
  (actor-error::t actor-error-t actor-error? xdr-actor-error-read xdr-error-write)
  (remote-error::t remote-error-t remote-error? xdr-remote-error-read xdr-error-write)
  (rpc-error::t rpc-error-t rpc-error? xdr-rpc-error-read xdr-error-write))

;; rpc server protocol
(defproto rpc
  id: std/actor#rpc
  ;; server <-> connection
  event:
  (connection-accept sock sa)
  (connection-shutdown)
  (connection-close)
  ;; client -> server
  call:
  (connect id address proto)
  (register id proto)
  (unregister id)
  (resolve id)
  (server-address)
  event:
  (monitor remote)
  (unmonitor remote)
  (disconnect remote)
  (shutdown))

;;; rpc-server
(def (start-rpc-server! proto: (proto (rpc-null-proto)) . addresses)
  (start-logger!)
  (spawn rpc-server proto addresses))

(def (stop-rpc-server! rpcd)
  (!!rpc.shutdown rpcd)
  (thread-join! rpcd))

(def (rpc-connect rpcd id address proto)
  (cond
   ((rpc-canonical-address address)
    => (lambda (address)
         (!!rpc.connect rpcd id address proto)))
   (else
    (error "Bad rpc address" address))))

(def (rpc-register rpcd id proto)
  (!!rpc.register rpcd id proto))

(def (rpc-unregister rpcd id)
  (!!rpc.unregister rpcd id))

(def (rpc-canonical-address address)
  (cond
   ((resolved-address? address)         ; resolved inet address
    address)
   ((or (inet-address? address)         ; unresolved inet address
        (inet-address-string? address))
    (resolve-address address))
   ((string? address)                   ; treat as unix domain
    address)
   (else #f)))

(def (rpc-server proto addresses)
  (let* ((socksrv (start-socket-server!))
         (sas     (map socket-address addresses))
         (_       (for-each rpc-unlink-unix-socket sas))
         (socks   (map (cut server-listen socksrv <>) sas)))
    (parameterize ((current-rpc-server (current-thread)))
      (try
       (rpc-server-loop socksrv socks sas proto)
       (catch (e)
         (unless (eq? e 'shutdown)
           (log-error "unhandled exception" e)
           (raise e)))
       (finally
        (server-shutdown! socksrv))))))

(def (rpc-unlink-unix-socket sa)
  (when (eq? (socket-address-family sa) AF_UNIX)
    (with-catch void (cut delete-file (socket-address->string sa)))))

(def (rpc-monitor thread (msg thread))
  (def (thread-monitor server thread msg)
    (with-catch values (cut thread-join! thread))
    (thread-send server msg))
  (spawn/name 'rpc-monitor thread-monitor (current-thread) thread msg))

(def (make-actor-table)
  (make-sync-hash (make-hash-table test: uuid=? hash: uuid-hash)))
(def (actor-table-put! at uuid actor proto)
  (sync-hash-put! at uuid (values actor proto)))
(def actor-table-get
  sync-hash-get)
(def actor-table-key?
  sync-hash-key?)
(def actor-table-remove!
  sync-hash-remove!)

(def (rpc-server-loop socksrv socks sas proto)
  (def connect-e
    (!rpc-protocol-connect proto))
  (def accept-e
    (!rpc-protocol-accept proto))
  (def actors                           ; uuid => (values actor proto)
    (make-actor-table))
  (def actor-threads                    ; thread => [uuid ...]
    (make-hash-table-eq))
  (def conns                            ; address => thread
    (make-hash-table))
  (def threads                          ; thread => address
    (make-hash-table-eq))
  (def monitors                         ; thread => [[actor . remote] ...]
    (make-hash-table-eq))
  (def acceptors
    (map (lambda (sock sa)
           (spawn rpc-server-accept (current-thread) sock (socket-address-family sa)))
         socks sas))
  (def server-connection 0)

  (def (accept-connection cli clisa)
    (let* ((cliaddr (socket-address->address clisa))
           (address (list cliaddr server-connection))
           (thr (spawn rpc-server-connection (current-thread) actors cli clisa address accept-e)))
      (set! server-connection (1+ server-connection))
      (hash-put! conns address thr)
      (hash-put! threads thr address)
      (rpc-monitor thr)))

  (def (open-connection address)
    (cond
     ((hash-get conns address) => values)
     ((list? address) #f)               ; passive address, can't connect
     (else
      (let (address (rpc-canonical-address address))
        (cond
         ((not address) #f)
         ((hash-get conns address) => values)
         (else
          (let (thr (spawn rpc-client-connection (current-thread) actors socksrv address connect-e))
            (hash-put! conns address thr)
            (hash-put! threads thr address)
            (rpc-monitor thr)
            thr)))))))

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
                (remove-thread! src)))
          (else
           (warning "Unexpected protocol mesage ~a" msg))))
        ((!rpc.connect id address proto k)
         (let (handler (open-connection address))
           (if handler
             (!!value src (make-remote handler id address proto) k)
             (!!error src (make-rpc-error 'rpc-server "invalid address") k))))
        ((!rpc.register id proto k)
         (let (uuid (UUID id))
           (if (actor-table-key? actors uuid)
             (!!error src "duplicate registration" k)
             (let (thread (actor-thread-e src))
               (actor-table-put! actors uuid src proto)
               (hash-update! actor-threads thread (cut cons uuid <>) [])
               (rpc-monitor thread)
               (!!value src uuid k)))))
        ((!rpc.unregister id k)
         (let* ((uuid (UUID id))
                (thread (actor-thread-e src)))
           (actor-table-remove! actors uuid)
           (let (actor-rest (remf (cut uuid=? <> uuid) (hash-ref actor-threads thread [])))
             (if (null? actor-rest)
               (hash-remove! actor-threads thread)
               (hash-put! actor-threads thread actor-rest)))
           (!!value src (void) k)))
        ((!rpc.resolve id k)
         (let (uuid (UUID id))
           (match (actor-table-get actors uuid)
             ((values actor proto)
              (!!value src actor k))
             (else
              (!!value src #f k)))))
        ((!rpc.server-address k)
         (let (addresses (map socket-address->address sas))
           (!!value src addresses k)))
        ((!rpc.monitor remote)
         (let (address (remote-address remote))
           (cond
            ((hash-get conns address)
             => (lambda (thread)
                  (hash-update! monitors  thread (cut cons [src . remote] <>) [])))
            (else
             (!!rpc.disconnect src remote)))))
        ((!rpc.unmonitor remote)
         (let (address (remote-address remote))
           (alet (thread (hash-get conns address))
             (hash-update! monitors thread (cut remove [src . remote] <>) []))))
        ((!rpc.shutdown)
         (raise 'shutdown))
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
           (for-each
             (match <>
               ([actor . remote]
                (!!rpc.disconnect actor remote)))
             (hash-ref monitors thread []))
           (hash-remove! conns address)
           (hash-remove! threads thread)
           (hash-remove! monitors thread))))
    ;; actor threads
    (cond
     ((hash-get actor-threads thread)
      => (lambda (uuids)
           (for-each (cut actor-table-remove! actors <>) uuids)
           (hash-remove! actor-threads thread)))))

  (def (loop)
    (<< ((? message? msg)
         (let (dest (message-dest msg))
           (cond
            ((eq? (current-thread) dest)
             (handle-protocol-action msg))
            ((remote? dest)
             (let (address (remote-address dest))
               (let (handler (open-connection address))
                 (if handler
                   (thread-send handler msg)
                   (rpc-send-error-response msg "ivalid address")))))
            ((handle? dest)
             (let (uuid (handle-uuid dest))
               (match (actor-table-get actors uuid)
                 ((values actor proto)
                  (send actor msg))
                 (else
                  (rpc-send-error-response msg "unknown actor")))))
            (else
             (warning "bad destination ~a" dest)
             (rpc-send-error-response msg "bad destination")))))
        ((? thread? thread)
         (cond
          ((eq? thread socksrv)
           (error "socket server has exited unexpectedly"))
          ((memq thread acceptors)
           (warning "acceptor thread has exited abnormally ~a" thread))
          (else
           (remove-thread! thread))))
        (value
         (warning "unexepected message ~a"  value)))
    (loop))

  (rpc-monitor socksrv)
  (for-each rpc-monitor acceptors)
  (try
   (loop)
   (catch (e)
     (for-each (cut !!rpc.shutdown <>) (hash-keys actor-threads))
     (for-each server-close socks)
     (for-each (lambda (thread)
                 (thread-send thread 'shutdown)
                 (!!rpc.connection-close thread))
               (hash-keys threads))
     (for-each thread-join! (hash-keys threads))
     (rpc-send-error-responses "server shutdown")
     (raise e))))

(def (rpc-server-accept rpc-server sock safamily)
  (while #t
    (try
     (let* ((cliaddr (make-socket-address safamily))
            (clisock (server-accept sock cliaddr)))
       (debug "accepted connection from ~a"
              (let (clistr (socket-address->string cliaddr))
                (if (string-empty? clistr) ; UNIX client
                  "?" clistr)))
       (!!rpc.connection-accept rpc-server clisock cliaddr))
     (catch (os-exception? e)
       (log-error "error accepting connection" e)))))

(def (rpc-send-error-response msg what)
  (when (message? msg)
    (with ((message content src dest) msg)
      (match content
        ((or (!call _ k) (!stream _ k))
         (!!error (message-source msg) (make-rpc-error 'rpc-server what) k))
        ((!yield k)
         (let (abort (make-message (make-!abort k) dest src #f))
           (send src abort)))
        (else (void))))))

(def (rpc-send-error-responses what)
  (let lp ()
    (<< ((? message? msg)
         (rpc-send-error-response msg what)
         (lp))
        (ignore (lp))
        (else (void)))))

(def (rpc-server-connection rpc-server actors sock sa cliaddr proto-e)
  (try
   (rpc-set-nodelay! sock (socket-address-family sa))
   (rpc-connection-loop rpc-server actors sock cliaddr proto-e)
   (catch (e)
     (rpc-connection-cleanup rpc-server e sock))))

(def (rpc-client-connection rpc-server actors socksrv address proto-e)
  (try
   (let* ((sa (socket-address address))
          (cli (server-connect socksrv sa)))
     (rpc-set-nodelay! cli (socket-address-family sa))
     (rpc-connection-loop rpc-server actors cli address proto-e))
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
    (server-input-buffer sock))
  (def output
    (server-output-buffer sock))
  (defvalues (read-e write-e)
    (proto-e input output))
  (def continuations                    ; wire-id => (values actor k proto stream?)
    (make-hash-table-eqv))
  (def stream-continuations             ; k => wire-id
    (make-hash-table-eq))
  (def stream-actors                    ; wire-id => [actor . dest]
    (make-hash-table-eqv))
  (def timeouts                         ; timeout => wire-id
    (make-hash-table-eq))
  (def continuation-timeouts            ; wire-id => timeout
    (make-hash-table-eqv))
  (def timeouts-pqueue
    (make-pqueue (lambda (evt) (time->seconds (event-selector evt)))))
  (def next-continuation-id 0)
  (def idle-timeout #f)
  (def reader #f)
  (def writer #f)

  (def (reset-idle-timeout)
    (set! idle-timeout
      (if rpc-idle-timeout
        (seconds->time
         (+ (time->seconds (current-time))
            rpc-idle-timeout))
        never-evt)))

  (def (close-connection)
    (server-close sock)
    (thread-send writer 'exit)
    (for-each
      (lambda (wire-id)
        (cond
         ((hash-get continuations wire-id)
          => (lambda (cont)
               (with ((values actor k proto stream?) cont)
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
                ((? !yield?)
                 (dispatch-value msg bytes !yield-k !yield-k-set!))
                ((? !end?)
                 (dispatch-value msg bytes !end-k !end-k-set!))
                ((? !continue?)
                 (dispatch-control msg bytes !continue-k !continue-k-set!))
                ((? !close?)
                 (dispatch-control msg bytes !close-k !close-k-set!))
                ((? !abort?)
                 (dispatch-control msg bytes !abort-k !abort-k-set!))
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
      (match (actor-table-get actors uuid)
        ((values actor proto)
         (let (e (unmarshal-message-content msg proto bytes))
           (if (message? e)
             (begin
               (set! (message-dest msg)
                 actor)
               (set! (message-source msg)
                 (make-remote (current-thread) uuid peer-address proto))
               (send actor msg)
               (loop))
             (begin
               (log-error "unmarshal error" e)
               (match (message-e msg)
                 ((or (!call _ k) (!stream _ k))
                  (dispatch-remote-error (make-!error "unmarshal error" k) uuid))
                 (else
                  (loop)))))))
        (else
         (warning "cannot route call; no actor binding ~a" (uuid->symbol uuid))
         (match (message-e msg)
           ((or (!call _ k) (!stream _ k))
            (dispatch-remote-error (make-!error "no binding" k) uuid))
           (else
            (loop)))))))

  (def (dispatch-value msg bytes value-k value-k-set!)
    (let* ((content (message-e msg))
           (cont    (value-k content)))
      (cond
       ((hash-get continuations cont)
        => (match <>
             ((values actor k proto stream?)
              (let (e (unmarshal-message-content msg proto bytes))
                (if (message? e)
                  (begin
                    (value-k-set! (message-e msg) k)
                    (set! (message-source msg)
                      (make-remote (current-thread) (message-dest msg) peer-address proto))
                    (unless (!yield? content)
                      (remove-continuation! cont))
                    (send actor msg)
                    (loop))
                  (begin
                    (log-error "unmarshal error" e)
                    (!!error actor (make-rpc-error 'rpc-connection "unmarshal error") k)
                    (remove-continuation! cont)
                    (if (!yield? content)
                      (dispatch-remote-error (make-!abort cont) (message-dest msg))
                      (loop))))))))
       (else
        (warning "cannot route value; bogus continuation ~a" cont)
        (if (!yield? content)
          (dispatch-remote-error (make-!abort cont) (message-dest msg))
          (loop))))))

  (def (dispatch-control msg bytes value-k value-k-set!)
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

  (def (dispatch-remote-error what dest)
    (marshal-and-write (make-message what (void) dest #f) #f #f))

  (def (unmarshal-message-content msg proto bytes)
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
             (let (wire-id (next-continuation-id!))
               (hash-put! continuations wire-id (values src k proto #f))
               (set! (!call-k content) wire-id)
               (alet (timeo (rpc-options-timeout opts rpc-call-timeout))
                 (let* ((abs-timeo
                         (if (real? timeo)
                           (seconds->time
                            (+ (time->seconds (current-time)) timeo))
                           timeo))
                        (timeo-evt
                         (rec evt (handle-evt abs-timeo (lambda (_) evt)))))
                   (hash-put! timeouts timeo-evt wire-id)
                   (hash-put! continuation-timeouts wire-id timeo-evt)
                   (pqueue-push! timeouts-pqueue timeo-evt)))
               (marshal-and-write msg proto #t)))
            ((!stream _ k)
             (let (wire-id (next-continuation-id!))
               (hash-put! continuations wire-id (values src k proto #t))
               (hash-put! stream-continuations k wire-id)
               (set! (!stream-k content) wire-id)
               (alet (timeo (rpc-options-timeout opts #f))
                 (let* ((abs-timeo
                         (if (real? timeo)
                           (seconds->time
                            (+ (time->seconds (current-time)) timeo))
                           timeo))
                        (timeo-evt (rec evt (handle-evt abs-timeo (lambda (_) evt)))))
                   (hash-put! timeouts timeo-evt wire-id)
                   (hash-put! continuation-timeouts wire-id timeo-evt)
                   (pqueue-push! timeouts-pqueue timeo-evt)))
               (marshal-and-write msg proto #t)))
            ((? !value?)
             (marshal-and-write msg proto #t))
            ((!yield _ wire-id)
             (hash-put! stream-actors wire-id (cons src dest))
             (marshal-and-write msg proto #t))
            ((or (!error _ wire-id)
                 (!end wire-id))
             (hash-remove! stream-actors wire-id)
             (marshal-and-write msg proto #t))
            ((!continue k)
             (let (wire-id (hash-get stream-continuations k))
               (if wire-id
                 (begin
                   (set! (!continue-k content) wire-id)
                   (marshal-and-write msg proto #t))
                 (begin
                   (warning "bad continue; unknown stream ~a" k)
                   (loop)))))
            ((!close k)
             (let (wire-id (hash-get stream-continuations k))
               (if wire-id
                 (begin
                   (set! (!close-k content) wire-id)
                   (marshal-and-write msg proto #t))
                 (begin
                   (warning "bad close; unknown stream ~a" k)
                   (loop)))))
            ((!abort k)
             (let (wire-id (hash-get stream-continuations k))
               (if wire-id
                 (begin
                   (set! (!abort-k content) wire-id)
                   (remove-continuation! wire-id)
                   (marshal-and-write msg proto #t))
                 (begin
                   (warning "bad abort; unknown stream ~a" k)
                   (loop)))))
            (else
             (marshal-and-write msg proto #t))))
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
      (with ((values _ k _ stream?) cont)
        (when stream?
          (hash-remove! stream-continuations k)))
      (alet (timeo (hash-get continuation-timeouts wire-id))
        (hash-remove! continuation-timeouts wire-id)
        (hash-remove! timeouts timeo))))

  (def (marshal-and-write msg proto local-error?)
    (let (e (try (rpc-proto-marshal-message msg proto)
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
    (with ((values actor k proto stream?) (hash-ref continuations wire-id))
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
    (cond
     ((hash-get timeouts timeo)
      => (lambda (wire-id)
           (dispatch-error wire-id "timeout")))))

  (def (writer-loop)
    (let lp ()
      (<< (! (or rpc-keep-alive never-evt)
             (write-e output (void))
             (lp))
          ((? u8vector? data)
           (write-e output data)
           (lp))
          ('exit (void))
          (bogus
           (warning "unexpected message ~a" bogus)
           (lp)))))

  (def (timeout-event)
    (let lp ()
      (if (pqueue-empty? timeouts-pqueue)
        never-evt
        (let (timeo (pqueue-peek timeouts-pqueue))
          (if (hash-get timeouts timeo)
            timeo
            (begin
              (pqueue-pop! timeouts-pqueue)
              (lp)))))))

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

  (let (thread (spawn/name 'rpc-connection-reader reader-loop (current-thread)))
    (set! reader thread)
    (rpc-monitor thread))

  (let (thread (spawn/name 'rpc-connection-writer writer-loop))
    (set! writer thread)
    (rpc-monitor thread))

  (reset-idle-timeout)
  (try
   (parameterize ((current-xdr-type-registry *default-proto-type-registry*))
     (loop))
   (catch (e)
     (log-error "unhandled exception" e)
     (close-connection))))

(def (rpc-options-timeout opts default)
  (def nil (lambda (_) 'nil))
  (if opts
    (let (timeo (pgetq timeout: opts nil))
      (cond
       ((eq? timeo 'nil)                ; not specified
        default)
       ((not timeo)                     ; no timeout
        #f)
       ((real? timeo)                   ; relative timeout
        (if (positive? timeo)
          (if (finite? timeo)
            timeo
            #f)                         ; +inf.0
          0))
       ((time? timeo)                   ; absolute timeout
        timeo)
       (else                            ; not quite a timeout, we'll do default
        default)))
    default))

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
    (server-close sock))
  (rpc-connection-shutdown rpc-server))
