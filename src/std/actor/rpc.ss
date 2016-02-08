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
        )
(export
  current-rpc-server
  handle handle::t make-handle handle? handle-uuid
  remote remote::t make-remote remote? remote-address remote-proto
  opaque opaque::t make-opaque opaque? opaque-data
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
  rpc-null-proto-accept
  rpc-null-proto-connect
  )

(def current-rpc-server
  (make-parameter #f))

(defstruct (handle proxy) (uuid)
  id: std/actor#handle::t
  constructor: :init!)

(defstruct (remote handle) (address proto)
  id: std/actor#remote-handle::t)

(defstruct opaque (data)
  id: std/actor#opaque::t)

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

(def (xdr-uuid-read port)
  (let (bytes (xdr-binary-read port values))
    (make-uuid bytes #f)))

(def (xdr-uuid-write obj port)
  (xdr-binary-write (uuid->u8vector obj) port))

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

(def (xdr-opaque-read port)
  (let (bytes (xdr-binary-read port values))
    (make-opaque bytes)))

(def (xdr-opaque-write obj port)
  (xdr-binary-write (opaque-data obj) port))

(defproto-default-type
  (uuid::t uuid-t uuid? xdr-uuid-read xdr-uuid-write)
  (handle::t handle-t remote? xdr-handle-read xdr-handle-write)
  (remote::t remote-t remote? xdr-remote-read xdr-remote-write)
  (opaque::t opaque-t opaque? xdr-opaque-read xdr-opaque-write))

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
                        (accept-e rpc-null-proto-accept)
                        (connect-e rpc-null-proto-connect))
  (spawn rpc-server address accept-e connect-e))

(def (rpc-server address accept-e connect-e)
  (let (sock (and address
                   (open-tcp-server
                    (inet-address->string
                     (inet-address address)))))
    (parameterize ((current-rpc-server (current-thread)))
      (rpc-server-loop (or sock never-evt) accept-e connect-e))))

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

(def (rpc-server-loop sock-evt accept-e connect-e)
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
           (sinfo (tcp-client-peer-socket-info sock))
           (address (cons (socket-info-address sinfo)
                          (socket-info-port-number sinfo))))
      (hash-put! conns address thr)
      (hash-put! threads thr address)
      (thread-send monitor thr)))
  
  (def (open-connection address)
    (let (thr (spawn rpc-client-connection
                     (current-thread) address  connect-e))
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
         (!!error (message-source msg) "connection error ~a" k))
        (else #!void)))))

(def (rpc-server-connection rpc-server sock proto-e)
  (try
   (let (client (read sock))
     (rpc-connection-loop rpc-server client proto-e))
   (catch (e)
     (rpc-connection-cleanup rpc-server e sock))))

(def (rpc-client-connection rpc-server address proto-e)
  (try
   (let (cli (open-tcp-client (inet-address->string address) address))
     (rpc-connection-loop rpc-server cli proto-e))
   (catch (e)
     (rpc-connection-cleanup rpc-server e #f))))

(def rpc-keep-alive 10) ; keep-alive interval

(def (set-rpc-keep-alive! dt)
  (if (and (real? dt) (positive? dt))
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
              (with ((message content dest) msg)
                (match content
                  ((? (or !call? !event?))
                   (dispatch-call msg bytes))
                  ((? !value?)
                   (dispatch-value msg bytes !value-k !value-k-set!))
                  ((? !error?)
                   (dispatch-value msg bytes !error-k !error-k-set!))
                  ((? not)
                   (dispatch-call msg message-e-set!)))
                (begin
                  (warning "read error" msg)
                  (close-connection)))))))
       ((eof-object? data)
        (close-connection))
       (else
        (warning "connection eorror ~a" data)
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
                 (make-remote rpc-server uuid peer-address))
               (send actor msg)
               (loop))
             (begin
               (warning "unmarshall error ~a" e)
               (loop)))))
        (#f
         (warning "cannot route call; no actor binding ~a" uuid)
         (loop)))))

    
  (def (dispatch-value msg bytes value-k value-k-set!)
    (let* ((content (message-e msg))
           (cont (hash-get continuations (value-k content))))
      (match cont
        ((values actor k proto)
         (let (e (unmarshall-message-content msg proto bytes))
           (if (message? e)
             (begin
               (value-k-set! (message-e msg) k)
               (set! (message-source msg)
                 (make-remote rpc-server (message-source msg) peer-address))
               (send actor msg)
               (loop))
             (begin
               (warning "unmarshall error ~a" e)
               (loop)))))
        (#f
         (warning "cannot route value; bogus continuation ~a"
           (value-k content))
         (loop)))))

  (def (unmarshall-message-content msg proto bytes)
    (try (rpc-proto-read-message-content proto bytes)
         (catch (e) e)))
    
  (def (write-message msg)
    (with ((message content src dest opts) msg)
      (if (remote? dest)
        (with ((remote _ uuid proto) dest)
          (set! (message-dest msg)
            uuid)
          ;; keep track of continuation and timeout
          (when (!call? content)
            (match content
              ((!call e k)
               (let (wire-id (next-continuation-id!))
                 (hash-put! continuations wire-id (values src k proto))
                 (cond
                  ((pgetq timeout: opts)
                   => (lambda (timeo)
                        (let (abs-timeo
                              (if (time? timeo)
                                timeo
                                (seconds->time
                                 (+ (time->seconds (current-time)) timeo))))
                          (hash-put! timeouts abs-timeo wire-id)
                          (hash-put! continuation-timeouts wire-id timeo)))))
                 (set! (!call-k content) wire-id)))))
          ;; marshall, write, loop
          (marshall-and-write proto msg))
        (begin
          (warning "bad handle; no protocol ~a ~a" dest msg)
          (loop)))))
  
  (def (next-continuation-id!)
    (let (next next-continuation-id)
      (set! next-continuation-id (1+ next))))
  
  (def (remove-continuation! wire-id)
    (hash-remove! continuations wire-id)
    (let (timeo (hash-get continuation-timeouts wire-id))
      (when timeo
        (hash-remove! continuation-timeouts wire-id)
        (hash-remove! timeouts timeo))))

  (def (marshall-and-write proto msg)
    (let (e (try (rpc-proto-marshall-message msg proto)
                 (catch (e) e)))
        (if (u8vector? e)
          (connection-write-and-loop e)
          (begin
            (warning "marshall error ~a" e)
            (let (content (message-e msg))
              (match content
                ((!call e wire-id)
                 (dispatch-error wire-id "marshall error")
                 (loop))
                (else
                 (loop))))))))
  
  (def (connection-write-and-loop data)
    (let (e (try (write-e data) #!void (catch (e) e)))
      (if (void? e)
        (loop)
        (begin
          (warning "write error" e)
          (close-connection)))))
  
  (def (dispatch-error wire-id what)
    (with ((values actor k proto) (hash-ref continuations wire-id))
      (!!error actor what k)
      (remove-continuation! wire-id)))
  
  (def (dispatch-timeout timeo)
    (cond
     ((hash-get timeouts timeo)
      => (lambda (wire-id) (dispatch-error wire-id "timeout")))))

  (def (keep-alive)
    (let (e (try (write-e #!void) #!void (catch (e) e)))
      (if (void? e)
        (loop)
        (begin
          (warning "write error" e)
          (close-connection)))))
  
  (def (loop)
    (<< (! rpc-keep-alive (keep-alive))
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
        (else #!void))))

(def (rpc-connection-cleanup rpc-server exn sock)
  (warning "connection error ~a" exn)
  (when sock (close-port sock))
  (rpc-connection-shutdown rpc-server))
