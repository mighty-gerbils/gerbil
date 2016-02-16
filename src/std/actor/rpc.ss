;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor rpc
package: std/actor

(import :gerbil/gambit/hvectors
        :gerbil/gambit/threads
        :gerbil/gambit/ports
        :gerbil/gambit/os
        :std/sugar
        :std/format
        :std/event
        :std/net/address
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
  handle handle::t make-handle handle? handle-uuid
  remote remote::t make-remote remote? remote-address remote-proto
  opaque opaque::t make-opaque opaque? opaque-type opaque-data
  start-rpc-server!
  rpc.register rpc.register? make-rpc.register
  rpc.register-id rpc.register-proto
  !rpc.register !!rpc.register
  rpc.unregister rpc.unregister? make-rpc.unregister
  rpc.unregister-id
  !rpc.unregister !!rpc.unregister
  rpc.resolve rpc.resolve? make-rpc.resolve
  rpc.resolve-id
  !rpc.resolve !!rpc.resolve
  rpc-null-proto
  rpc-cookie-proto
  rpc-generate-cookie!
  rpc-cipher-proto
  rpc-cookie-cipher-proto
  )

(def current-rpc-server
  (make-parameter #f))

(defstruct (handle proxy) (uuid)
  id: std/actor#handle::t
  constructor: :init!)

(defstruct (remote handle) (address proto)
  id: std/actor#remote-handle::t)

(defmethod {:init! handle}
  (lambda (self handler id)
    (set! (proxy-handler self)
      handler)
    (set! (handle-uuid self)
      (UUID id))))

(defmethod {:init! remote}
  (lambda (self handler id address proto)
    (handle:::init! self handler id)
    (set! (remote-address self)
      (inet-address address))
    (set! (remote-proto self)
      proto)))

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
  event: (connection-shutdown)
  event: (connection-close)
  call:  (lookup id)
  ;; client -> server
  call:  (register id proto)
  call:  (unregister id)
  call:  (resolve id)
  )

;;; rpc-server
(def (warning fmt . args)
  (eprintf "Warning [~a]: ~?" (current-thread) fmt args)
  (newline (current-error-port)))
  
(def (start-rpc-server! (address #f)
                        proto: (proto (rpc-null-proto)))
  (spawn rpc-server (and address (inet-address address)) proto))

(def (rpc-server address proto)
  (let (sock (and address
                  ((!rpc-protocol-open-server proto) address)))
    (parameterize ((current-rpc-server (current-thread)))
      (rpc-server-loop (or sock never-evt) proto))))

(def (rpc-monitor-thread rpc-server)
  (let lp ((threads []))
    (<< (! (dead (choice-evt threads))
           (thread-send rpc-server dead)
           (lp (remove dead threads)))
        ((? thread? thread)
         (lp (cons thread threads)))
        (msg
         (warning "unexecpted message ~a" msg)
         (lp)))))

(def (rpc-server-loop sock-evt proto)
  (def open-client
    (!rpc-protocol-open-client proto))
  (def connect-e
    (!rpc-protocol-connect-e proto))
  (def accept-e
    (!rpc-protocol-accept-e proto))
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
    (spawn rpc-monitor-thread))

  (def (accept-connection sock)
    (let* ((thr (spawn rpc-server-connection (current-thread) sock accept-e))
           (sinfo (<< ((? socket-info? sinfo)
                       sinfo)
                      (! thr #f)))
           (address (and sinfo
                         (cons (socket-info-address sinfo)
                               (socket-info-port-number sinfo)))))
      (if address
        (begin
          (hash-put! conns address thr)
          (hash-put! threads thr address)
          (thread-send monitor thr))
        (warning "accept error; thread exited ~a ~a" sock thr))))
  
  (def (open-connection address)
    (let (thr (spawn rpc-client-connection
                     (current-thread) address open-client connect-e))
      (hash-put! conns address thr)
      (hash-put! threads thr address)
      (thread-send monitor thr)
      thr))
  
  (def (handle-protocol-action msg)
    (with ((message content src dest opt) msg)
      (match content
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
                (uuids (uuid->symbol))
                (thread (actor-thread-e src)))
           (hash-remove! actors uuids)
           (hash-remove! protos uuids)
           (hash-put! actor-threads uuids
                      (remove uuids (hash-get actor-threads thread)))
           (!!value src #!void k)))
        ((!rpc.resolve id k)
         (let* ((uuid (UUID id))
                (uuids (uuid->symbol uuid)))
           (cond
            ((hash-get actors uuids)
             => (lambda (actor) (!!value src actor k)))
            (else
             (!!value src #f k)))))
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
    (<< (! sock-evt => accept-connection)
        ((? message? msg)
         (let (dest (message-dest msg))
           (cond
            ((remote? dest)
             (let (address (remote-address dest))
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
         (remove-thread! thread))
        (value
         (warning "unexepected message ~a"  value)))
    (loop))
  
  (loop))

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

(def (rpc-server-connection rpc-server sock proto-e)
  (try
   (let (client (read sock))
     (thread-send rpc-server (tcp-client-peer-socket-info client))
     (rpc-connection-loop rpc-server client proto-e))
   (catch (e)
     (rpc-connection-cleanup rpc-server e sock))))

(def (rpc-client-connection rpc-server address open-client proto-e)
  (try
   (let (cli (open-client address))
     (try
      (rpc-connection-loop rpc-server cli proto-e)
      (catch (e)
       (rpc-connection-cleanup rpc-server e cli))))
   (catch (e)
     (rpc-connection-cleanup rpc-server e #f))))

(def rpc-keep-alive 30) ; keep-alive interval

(def (set-rpc-keep-alive! dt)
  (if (or (not dt) (and (real? dt) (positive? dt)))
    (set! rpc-keep-alive dt)
    (error "bad keep-alive; expected positive real" dt)))

(def (rpc-connection-loop rpc-server sock proto-e)
  (defvalues (read-e write-e)
    (proto-e sock))
  (def peer-address
    (let (sinfo (tcp-client-peer-socket-info sock))
      (cons (socket-info-address sinfo)
            (socket-info-port-number sinfo))))
  (def continuations               ; wire-id => (values actor k proto)
    (make-hash-table-eqv))
  (def timeouts                         ; time => wire-id
    (make-hash-table-eq))
  (def continuation-timeouts            ; wire-id => time
    (make-hash-table-eqv))
  (def next-continuation-id 0)
  
  (def (close-connection)
    (close-port sock)
    (for-each
      (lambda (wire-id)
        (cond
         ((hash-get continuations wire-id)
          => (lambda (cont)
               (with ((values actor k proto) cont)
                 (!!error actor "connection closed" k)
                 (hash-remove! continuations wire-id)
                 (cond
                  ((hash-get continuation-timeouts wire-id)
                   => (lambda (timeo)
                        (hash-remove! continuation-timeouts wire-id)
                        (hash-remove! timeouts timeo)))))))))
      (hash-keys continuations))
    (rpc-connection-shutdown rpc-server))
  
  (def (read-message)
    (let (data (try (read-e sock) (catch (e) e)))
      (cond
       ((void? data)                    ; keep-alive
        (loop))
       ((u8vector? data)                ; incoming message
        (let (bytes (open-input-bytes data))
          (let (msg (try (rpc-proto-read-message-envelope bytes)
                         (catch (e) e)))
            (if (message? msg)
              (with ((message content _ dest) msg)
                (match content
                  ((? (or !call? !event?))
                   (dispatch-call msg bytes))
                  ((? !value?)
                   (dispatch-value msg bytes !value-k !value-k-set!))
                  ((? !error?)
                   (dispatch-value msg bytes !error-k !error-k-set!))
                  ((? not)
                   (dispatch-call msg bytes)))
                (begin
                  (warning "read error ~a" msg)
                  (close-connection)))))))
       ((eof-object? data)
        (close-connection))
       (else
        (warning "connection error ~a" data)
        (close-connection)))))
  
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
               (warning "unmarshall error ~a" e)
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
             ((values actor k proto)
              (let (e (unmarshall-message-content msg proto bytes))
                (if (message? e)
                  (begin
                    (value-k-set! (message-e msg) k)
                    (set! (message-source msg)
                      (make-remote rpc-server (message-dest msg) peer-address proto))
                    (send actor msg)
                    (loop))
                  (begin
                    (warning "unmarshall error ~a" e)
                    (loop)))))))
       (else
        (warning "cannot route value; bogus continuation ~a" cont)
        (loop)))))

  (def (unmarshall-message-content msg proto bytes)
    (try (rpc-proto-read-message-content msg proto bytes)
         (catch (e) e)))
    
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
                   (timeo (or (and opts (pgetq timeout: opts)) 120)))
               (hash-put! continuations wire-id (values src k proto))
               (let* ((abs-timeo
                       (if (time? timeo)
                         timeo
                         (seconds->time
                          (+ (time->seconds (current-time)) timeo))))
                      (timeo-evt (rec evt (handle-evt abs-timeo (lambda (_) evt)))))
                 (hash-put! timeouts timeo-evt wire-id)
                 (hash-put! continuation-timeouts wire-id timeo))
                 (set! (!call-k content) wire-id)))
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
                 (catch (e) e)))
      (cond
       ((u8vector? e)
        (connection-write-and-loop e))
       (local-error?
        (warning "marshall error ~a" e)
        (let (content (message-e msg))
          (match content
            ((!call e wire-id)
             (dispatch-error wire-id "marshall error"))
            (else
             (loop)))))
       (else
        (warning "marshall error ~a" e)
        (loop)))))
  
  (def (connection-write-and-loop data)
    (let (e (try (write-e data sock) #!void (catch (e) e)))
      (if (void? e)
        (loop)
        (begin
          (warning "write error ~s" e)
          (close-connection)))))
  
  (def (dispatch-error wire-id what)
    (with ((values actor k proto) (hash-ref continuations wire-id))
      (!!error actor what k)
      (remove-continuation! wire-id)
      (loop)))
  
  (def (dispatch-timeout timeo)
    (cond
     ((hash-get timeouts timeo)
      => (lambda (wire-id)
           (hash-remove! timeouts timeo)
           (hash-remove! continuation-timeouts wire-id)
           (dispatch-error wire-id "timeout")))))

  (def (keep-alive)
    (let (e (try (write-e #!void sock) #!void (catch (e) e)))
      (if (void? e)
        (loop)
        (begin
          (warning "write error ~a" e)
          (close-connection)))))
  
  (def (loop)
    (<< (! (or rpc-keep-alive never-evt) (keep-alive))
        (! sock (read-message))
        (! (choice-evt (hash-keys timeouts))
           => dispatch-timeout)
        ((? message? msg)
         (write-message msg))
        (bogus
         (warning "unexpected message ~a" bogus)
         (loop))))
  
  (loop))

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
  (warning "connection error ~a" exn)
  (when sock (close-port sock))
  (rpc-connection-shutdown rpc-server))
