;;; -*- Gerbil -*-
;;; (C) vyzo
;;; actor rpc

;;; --- DEPRECATED ---

(import :gerbil/gambit
        :std/error
        :std/sugar
        :std/logger
        :std/misc/threads
        :std/net/address
        :std/net/socket
        :std/os/socket
        :std/misc/uuid
        ../message
        ../proto
        ./base
        ./connection
        ./proto/null
        ./proto/cookie
        ./proto/cipher
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
  bind-protocol!
  )

(deflogger rpc)

(def current-rpc-server
  (make-parameter #f))

;;; rpc-server
(def (start-rpc-server! proto: (proto (rpc-null-proto)) . addresses)
  (start-logger!)
  (spawn/group 'rpc-server rpc-server proto addresses))

(def (stop-rpc-server! rpcd)
  (let (tgroup (thread-thread-group rpcd))
    (try
     (!!rpc.shutdown rpcd)
     (thread-join! rpcd)
     (finally
      (thread-group-kill! tgroup)))))

(def (rpc-connect rpcd id address (proto #f))
  (cond
   ((rpc-canonical-address address)
    => (lambda (address)
         (!!rpc.connect rpcd id address proto)))
   (else
    (error "Bad rpc address" address))))

(def (rpc-register rpcd id (proto #f))
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
  (let* ((sas     (map socket-address addresses))
         (_       (for-each rpc-unlink-unix-socket sas))
         (socks   (map ssocket-listen sas)))
    (parameterize ((current-rpc-server (current-thread)))
      (try
       (rpc-server-loop socks sas proto)
       (catch (e)
         (unless (eq? e 'shutdown)
           (errorf "unhandled exception: ~a" e)
           (raise e)))))))

(def (rpc-unlink-unix-socket sa)
  (when (eq? (socket-address-family sa) AF_UNIX)
    (with-catch void (cut delete-file (socket-address->string sa)))))

(def (rpc-server-loop socks sas proto)
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
           (spawn/name 'rpc-server-accept
             rpc-server-accept (current-thread) sock (socket-address-family sa)))
         socks sas))
  (def server-connection 0)

  (def (accept-connection cli clisa)
    (let* ((cliaddr (socket-address->address clisa))
           (address (list cliaddr server-connection))
           (thr (spawn/name 'rpc-connection
                  rpc-server-connection (current-thread) actors cli clisa address accept-e)))
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
          (let (thr (spawn/name 'rpc-connection
                      rpc-client-connection (current-thread) actors address connect-e))
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
           (warnf "Unexpected protocol message ~a" msg))))
        ((!rpc.connect id address proto k)
         (let* ((uuid (UUID id))
                (proto (or proto (lookup-protocol uuid))))
           (if (!protocol? proto)
             (let (handler (open-connection address))
               (if handler
                 (!!value src (make-remote handler id address proto) k)
                 (!!error src (make-rpc-error 'rpc-server "invalid address") k)))
             (!!error src "bad protocol" k))))
        ((!rpc.register id proto k)
         (let (uuid (UUID id))
           (if (actor-table-key? actors uuid)
             (!!error src "duplicate registration" k)
             (let (proto (or proto (lookup-protocol uuid)))
               (if (!protocol? proto)
                 (let (thread (actor-thread-e src))
                   (actor-table-put! actors uuid src proto)
                   (hash-update! actor-threads thread (cut cons uuid <>) [])
                   (rpc-monitor thread)
                   (!!value src uuid k))
                 (!!error src "bad protocol" k))))))
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
         (let* ((uuid (UUID id))
                (actor
                 (cond
                  ((actor-table-get actors uuid)
                   => (match <> ((values actor _) actor)))
                  (else #f))))
           (!!value src actor k)))
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
             (hash-update! monitors thread (cut remove1 [src . remote] <>) []))))
        ((!rpc.shutdown)
         (raise 'shutdown))
        (else
         (warnf "Unexpected message ~a" msg)))))

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
               (cond
                ((actor-table-get actors uuid)
                 => (match <> ((values actor _) (send actor msg))))
                (else
                 (rpc-send-error-response msg "unknown actor")))))
            (else
             (warnf "bad destination ~a" dest)
             (rpc-send-error-response msg "bad destination")))))
        ((? thread? thread)
         (cond
          ((memq thread acceptors)
           (warnf "acceptor thread has exited abnormally ~a" thread))
          (else
           (remove-thread! thread))))
        ;; DEBUG
        ('dump
         (dump! (current-error-port)))
        (['dump port]
         (dump! port))
        (value
         (warnf "unexepected message ~a"  value)))
    (loop))

  (def (dump! port)
    (parameterize ((current-output-port port))
      (displayln "=== rpc-server ===")
      (actor-table-do actors
        (lambda (ht)
          (displayln "actors: " (hash-length ht))
          (hash-for-each
           (lambda (uuid actor-state)
             (with ((values actor proto) actor-state)
               (displayln (uuid->string uuid) " -> " [actor proto])))
           ht)))
      (displayln "actor-threads: " (hash-length actor-threads))
      (hash-for-each
       (lambda (thread uuids)
         (displayln thread " -> " (map uuid->string uuids)))
       actor-threads)
      (displayln "connections: " (hash-length conns))
      (hash-for-each
       (lambda (address conn)
         (displayln address " -> " conn))
       conns)
      (displayln "monitors: " (hash-length monitors))
      (hash-for-each
       (lambda (conn mons)
         (displayln conn " -> " mons))
       monitors)))

  (for-each rpc-monitor acceptors)
  (try
   (loop)
   (catch (e)
     (for-each (cut !!rpc.shutdown <>) (hash-keys actor-threads))
     (for-each ssocket-close socks)
     (for-each (lambda (thread)
                 (thread-send thread 'shutdown)
                 (!!rpc.connection-close thread))
               (hash-keys threads))
     (for-each thread-join! (hash-keys threads))
     (rpc-send-error-responses "server shutdown")
     (raise e))))

(def (rpc-server-accept rpc-server sock safamily)
  (def (loop)
    (let* ((cliaddr (make-socket-address safamily))
           (clisock (ssocket-accept sock cliaddr)))
      (debugf "accepted connection from ~a"
              (let (clistr (socket-address->string cliaddr))
                (if (string-empty? clistr) ; UNIX client
                  "?" clistr)))
      (!!rpc.connection-accept rpc-server clisock cliaddr)
      (loop)))

  (let again ()
    (try
     (loop)
     (catch (os-exception? e)
       (errorf "error accepting connection: ~a" e)
       (again)))))
