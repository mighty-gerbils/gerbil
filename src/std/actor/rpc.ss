;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor rpc
package: std/actor

(import :gerbil/gambit/hvectors
        :gerbil/gambit/ports
        :std/sugar
        :std/format
        :std/event
        :std/misc/uuid
        :std/actor/message
        :std/actor/proto
        :std/actor/proto/null
        )
(export
  handle handle::t make-handle handle? handle-uuid
  remote remote::t make-remote remote? remote-address remote-proto
  start-rpc-server!
  rpc-server-null-proto-accept
  rpc-server-null-proto-connect
  )

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

(defmethod {:init! remote-handle}
  (lambda (self handler id address proto)
    (handle:::init! self handler id)
    (set! (remote-handle-address self)
      (inet-address address))
    (set! (remote-handle-proto self)
      proto)))

;; rpc server protocol
(defproto rpc
  id: std/actor#rpc::proto
  ;; server <-> connection
  event: (connection-shutdown)
  event: (connection-close)
  call:  (lookup id) => _
  ;; client -> server
  call:  (register id proto) => _
  call:  (unregister id) => _
  )

;;; rpc-server
(def (warning fmt . args)
  (eprintf "Warning [~a]: ~?" (current-thread) fmt args)
  (newline (current-error-port)))
  
(def (start-rpc-server! (address #f)
                        (accept-e rpc-null-proto-accept)
                        (connect-e rpc-null-proto-connect))
  (spawn rpc-server address accept-e connect-e))

(def (rpc-server address rpc-accept-e rpc-connect-e)
  (let (sock (and address
                   (open-tcp-server
                    (inet-address->string
                     (inet-address address)))))
    (rpc-server-loop (or sock never-evt)
                     accept-e
                     connect-e)))

(def (rpc-monitor-thread rpc-server)
  (let lp ((threads []))
    (<< (! (dead (choice-evt threads))
           (thread-send rpc-server thread)
           (lp (remove dead threads)))
        ((? thread thread)
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
    (make-hash-table))
  (def monitor
    (spawn rpc-monitor-thread))

  (def (accept-connection sock)
    (let* ((thr (spawn rpc-server-connection (current-thread) cli accept-e))
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
                (hash-remove! theads thr)))
          (else
           (warning "Unexpected protocol mesage ~a" msg))))
        ((!rpc.lookup id k)
         (let* ((uuid (UUID id))
                (uuids (uuuid->symbol uuid)))
           (cond
            ((hash-get actors uuids)
             => (lambda (actor)
                  (let (proto (hash-get protos uuids))
                    (!!value src (values actor proto) k))))
            (else
             (!!value src #f k)))))
        ((!rpc.register id proto k)
         (let* ((uuids (UUID id))
                (uuids (uuid->symbol uuid)))
           (if (hash-key? actors uuids)
             (!!error src "duplicate actor" k)
             ((let (thread (actor-thread-e src))
                (hash-put! actors uuids src)
                (hash-put! protos uuids proto)
                (hash-update! actor-threads thread (cut cons uuids <>) [])
                (thread-send monitor thread)
                (!!value src uuid k))))))
        ((!rpc.unregister id k)
         (let* ((uuid (UUID id))
                (uuids (uuid->symbol))
                (thread (actor-thread-e thread)))
           (hash-remove! actors uuids)
           (hash-remove! protos uuids)
           (hash-put! actor-threads uuids
                      (remove uuids (hash-get actor-threads thread)))
           (!!value src #!void k)))
        (else
         (warning "Unexpected message ~a" msg)))))
  
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
    (<< ((! sock-evt => accept-conection)
         ((? message? msg)
          (let (dest (message-dest msg))
            (cond
             ((eq? (current-thread) dest)
              (handle-protocol-action msg))
             ((remote? dest)
              (let (address (inet-address->string (remote-address dest)))
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
             (else
              (warning "bad destination ~a" dest)
              (rpc-send-error-response msg)))))
         ((? thread? thread)
          (remove-thread! thread))
         (value
          (warning "unexepected message ~a"  value))))
    (loop))
  
  (loop))

(def (rpc-send-error-response msg)
  (when (message? msg)
    (with ((message content src) msg)
      (match content
        ((!call _ k)
         (!!error src "connection error ~a" k))
        (else #!void)))))

(def (rpc-server-connection rpc-server sock proto-e)
  (try
   (let (client (read sock))
     (rpc-connection-loop rpc-server client proto-e))
   (catch (e)
     (rpc-connection-cleanup rpc-server e sock))))

(def (rpc-client-connection rpc-server address proto-e)
  (try
   (let (cli (open-tcp-client address address))
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
  (def sock-address
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
      (hash-keys continuations)
      (rpc-connection-shutdown rpc-server)))
  
  (def (read-message)
    (let (data (try (read-e sock) (catch (e) e)))
      (cond
       ((void? data)                    ; keep-alive
        (loop))
       ((u8vector? data)                ; incoming message
        (let (bytes (open-input-bytes data))
          (let (msg (try (rpc-proto-read-message-evenelope bytes)
                         (catch (e) e)))
            (if (message? msg)
              (with ((message content dest) msg)
                (match content
                  ((? !call?)
                   (dispatch-call msg
                     (lambda (msg val)
                       (set! (!call-e (message-e msg))
                         val))))
                  ((? !event?)
                   (dispatch-call msg
                     (lambda (msg val)
                       (set! (!event-e (message-e msg))
                         val))))
                  ((? !value?)
                   (dispatch-value msg !value-k !value-k-set! !value-e-set!))
                  ((? !error?)
                   (dispatch-value msg !error-k !error-k-set! !error-e-set!))
                  ((? not)
                   (dispatch-call msg message-e-set!)))
                (begin
                  (warning "read error" msg)
                  (close-connection)))))))
       ((eof-object? data)
        (close-connection))
       (else                            ; error
        (warn "connection error ~a" e)
        (close-connection)))))
  
  (def (dispatch-call msg message-content-set!)
    (let (uuid (message-dest msg))
      (match (!!rpc.lookup rpc-server uuid)
        ((values actor proto)
         (message-content-set!
          msg (rpc-proto-read-message-content proto bytes))
         (set! (message-dest msg)
           actor)
         (set! (message-src msg)
           (make-remote (current-thread) uuid sock-address))
         (send actor msg)
         (loop))
        (#f
         (warning "cannot route call; no actor binding ~a"
                  dest)
         (rpc-proto-read-message-content #f bytes)
         (loop)))))

    
  (def (dispatch-value msg value-k value-k-set! value-e-set!)
    (let (cont (hash-get continuations (value-k content)))
      (match cont
        ((values actor k proto)
         (value-k-set! content k)
         (value-e-set! content
                       (rpc-proto-read-message-conent proto bytes))
         (set! (message-src msg)
           (make-remote (current-thread) (message-src msg) sock-address))
         (send actor msg)
         (loop))
        (#f
         (warning "cannot route value; bogus continuation ~a"
                  (!value-k content))
         (loop)))))
    
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
    (let (bytes (open-output-u8vector))
      (let (e (try (rpc-proto-write-message proto msg bytes) #!void
                   (catch (e) e)))
        (if (void? e)
          (connection-write-and-loop (get-output-u8vector))
          (let (content (message-e msg))
            (match content
              ((!call e wire-id)
               (dispatch-error wire-id "marshal error")
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
    (let* ((k (hash-ref reply-continuations wire-id))
           (actor (hash-ref continuations wire-id)))
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
        (! (choice-evts (hash-keys actor-threads))
           => remove-thread!)
        ((? thread? thread)
         (remove-thread! thread))
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
        (value
         (warning "unexpected message ~a" value)
         (lp)))))

(def (rpc-connection-cleanup rpc-server exn sock)
  (warning "connection error ~a" exn)
  (when sock (close-port sock))
  (rpc-connection-shutdown rpc-server))

;;; wire protocol implementation
;; Handshake:
;;  client sends hello byte with the protocol byte
;;  server replies with rpc-proto-connect-accept if it
;;  supports the requested protocol or rpc-proto-connect-reject
(def rpc-proto-connect-hello  #x00)
(def rpc-proto-connect-accept #x01)
(def rpc-proto-connect-reject #x02)
;; messages
(def rpc-proto-message        #x00)
(def rpc-proto-message-call   #x01)
(def rpc-proto-message-value  #x02)
(def rpc-proto-message-error  #x03)
(def rpc-message-event        #x04)
;; protocols
(def rpc-proto-null          #x00)
(def rpc-proto-cookie        #x01)
(def rpc-proto-cipher        #x02)
(def rpc-proto-cipher-cookie #x03)

