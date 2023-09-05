;;; -*- Gerbil -*-
;;; © vyzo
;;; actor server
(import :gerbil/gambit/threads
        :gerbil/gambit/os
        :std/sugar
        :std/iter
        :std/io
        :std/net/address
        :std/crypto
        :std/text/hex
        :std/os/hostname
        (only-in :std/logger start-logger!)
        (only-in :std/srfi/1 reverse!)
        ./logger
        ./message
        ./proto
        ./cookie
        ./connection)
(export #t)

(def current-actor-server
  (make-parameter #f))

;; actor references
;; - server is the actor-server identifier: a symbol identifying the server in your
;;   ensemble
;; - id is the server-specific identifier of the actor; a symbol or a numeric id.
(defmessage reference (server id)
  unchecked: #t)

;; handles for actors proxied by the server
(defstruct (proxy handle) (reference)
  final: #t unchecked: #t print: (reference))

;; creates a proxy handle from a reference
(def (reference->handle ref (srv (current-actor-server)))
  (make-proxy srv ref))

;; starts the actor server
;; - cookie is a u8vector, used for authenticating connections.
;; - addresses is a list of addresses the server should listen; empty by default.
;;   Addresses can be:
;;   - [unix: hostname  path]: a path for a unix domain socket in a host
;;   - [tcp: addr]: an internet address; see :std/net/address
;;   - TODO: TLS address
;; - identifier is the server identifier in your ensemble; a symbol.
;;   defaults to a random identifier.
;; - knonw-servers is the set of known servers.
;;   it is a hash table mapping server identifiers to list of addresses.
;;   all servers in the ensemble must share the same cookie.
;; Returns the server thread.
(def (start-actor-server! cookie:     (cookie (get-actor-server-cookie))
                          addresses:  (addrs [])
                          identifier: (id (make-random-identifier))
                          ensemble:   (known-servers (default-known-servers)))
  (start-logger!)
  (let* ((socks (actor-server-listen! addrs))
         (server (spawn/group 'actor-server actor-server id known-servers cookie socks)))
    (current-actor-server server)
    (set! (thread-specific server) id)
    server))

;; stops the actor server
(def (stop-actor-server! (srv (current-actor-server)))
  (-> srv (!shutdown))
  (thread-join! srv))

;; returns the actor server's identifier
(def (actor-server-identifier (srv (current-actor-server)))
  (thread-specific srv))

;; registers the current thread as an actor with the actor server
;; - name is a symbol; the actor's name in the server
;; returns a a reference to the actor in the server.
;; raises an error if an actor is already registered with the same name.
(def (register-actor! name (srv (current-actor-server)))
  (match (->> srv (!register name))
    ((!ok value) value)
    ((!error what)
     (raise-actor-error 'register-actor! "error registering actor" name what))))

;; lists the registered actors with a server
;; returns a list of references
(def (list-actors (srv (current-actor-server)))
  (match (->> srv (!list-actors #f))
    ((!ok value) value)
    ((!error what)
     (raise-actor-error 'list-actors "error listing actors" what))))

;; ensures there is a connection to a server in the ensemble.
;; if the addresses are not specified, it is looked up in the registry.
;; Raises an error if the connection fails.
(def (connect! id (addrs #f) (srv (current-actor-server)))
  (match (->> srv (!connect #f id addrs))
    ((!ok value) value)
    ((!error what)
     (raise-actor-error 'connect! "error connecting to server" id what))))

;; lists the server connections.
;; Returns a list [[id addr ...] ...]
(def (list-connections (srv (current-actor-server)))
  (match (->> srv (!list-connections #f))
    ((!ok value) value)
    ((!error what)
     (raise-actor-error 'list-connections "error retrieving server connections" what))))

;; Default known servers: registry at default address
(def (default-known-servers)
  (hash-eq (registry (default-registry-addresses))))

;; Default registry addresses: unix /tmp/ensemble/registry
(def (default-registry-addresses)
  [[unix: (hostname) "/tmp/ensemble/registry"]])

;;; Internals
(def (make-random-identifier)
  (string->symbol
   (string-append "actor-server-" (hex-encode (subu8vector (sha256 (random-bytes 32)) 0 8)))))

(def (actor-server-listen! addrs)
  (let lp ((rest addrs) (socks []))
    (defrule (fail! msg arg ...)
      (begin
        (for-each ServerSocket-close socks)
        (error msg arg ...)))

    (match rest
      ([addr . rest]
       (match addr
         ([unix: host path]
          (if (or (not host) (equal? host (hostname)))
            (let* ((path (path-expand path))
                   (_ (create-directory* (path-directory path)))
                   (maybe-sock (with-catch values (cut unix-listen path))))
              (if (ServerSocket? maybe-sock)
                (lp rest (cons maybe-sock socks))
                (fail! "failed to listen" path)))
            (fail! "bad unix address; hostname mismatch" addr)))
         ([tcp: inet-addr]
          (let (maybe-sock (with-catch values (cut tcp-listen inet-addr)))
            (if (ServerSocket? maybe-sock)
              (lp rest (cons maybe-sock socks))
              (fail! "failed to listen" addr))))
         (else
          (fail! "unrecognized address" addr))))
      (else
       (reverse socks)))))

(def (actor-server id known-servers cookie socks)
  (with-exception-stack-trace (cut actor-server-main id known-servers cookie socks)))

(def (actor-server-main id known-servers cookie socks)
  ;; next actor numeric id; 0 is self
  (def next-actor-id 1)
  ;; server address cache
  (def server-addrs
    (let (server-addrs (make-hash-table-eq))
      (for ([srv-id . addrs] (hash->list known-servers))
        ;; user supplied addrs don't expire
        (hash-put! server-addrs srv-id (cons +inf.0 addrs)))
      server-addrs))
  ;; server connections:  server identifier -> [!connected ...] notification
  (def conns (make-hash-table-eq))
  ;; pending outbound conns; server id -> [contiuation ...]
  (def pending-conns (make-hash-table-eq))
  ;; pending registry lookups; server id -> [continuation ...]
  (def pending-lookups (make-hash-table-eq))
  ;; pending lookup timeout nonces
  (def pending-lookup-nonce (make-hash-table-eqv))
  ;; actor table: actor-id [name or numeric identifier] -> actor thread
  (def actors (make-hash-table-eqv))
  ;; reverse actor table: actor thread -> [actor-id ...]
  (def actor-threads (make-hash-table-eq))
  ;; actor listener threads
  (def listeners
    (map (cut spawn/name 'actor-listener actor-listener (current-thread) <>  cookie) socks))

  (defrule (control-message? msg)
    (not (handle? (&envelope-dest msg))))

  (defrule (routed-message? msg)
    (proxy? (&envelope-dest msg)))

  (def (add-actor! actor)
    (cond
     ((hash-get actor-threads actor)
      => last)
     (else
      (let (actor-id next-actor-id)
        (set! next-actor-id (1+ next-actor-id))
        (hash-put! actor-threads actor [actor-id])
        (hash-put! actors actor-id actor)
        (spawn/name 'actor-monitor actor-monitor actor (current-thread))
        actor-id))))

  (def (expired? msg)
    (&envelope-expired? msg))

  (def (update-server-addrs! srv-id addrs ttl)
    (let (ttl (if (eq? srv-id 'registry)
                ;; don't expire the registry!
                +inf.0
                ttl))
      (hash-put! server-addrs srv-id (cons (+ (##current-time-point) ttl) addrs))))

  (def (get-server-addrs srv-id cont)
    (cond
     ((hash-get server-addrs srv-id)
      => (lambda (entry)
           (if (< (car entry) (##current-time-point))
             ;; expired; note: registry addrs never expire
             (begin
               (hash-remove! server-addrs srv-id)
               (get-server-addrs-from-registry srv-id cont))
             (cont (!ok (cdr entry))))))
     ((eq? srv-id 'registry)
      (cont (!error "no registry server")))
     (else
      (get-server-addrs-from-registry srv-id cont))))

  (def (get-server-addrs-from-registry srv-id cont)
    (cond
     ((hash-get pending-lookups srv-id)
      => (lambda (continuations)
           (hash-put! pending-lookups srv-id (cons cont continuations))))
     (else
      (debugf "looking up server in registry: ~a" srv-id)
      (hash-put! pending-lookups srv-id [cont])
      (connect-to-server! 'registry
        (lambda (result)
          (match result
            ((!ok notification)
             (let ((nonce (current-thread-nonce!))
                   (expiry (timeout->expiry default-reply-timeout)))
               (hash-put! pending-lookup-nonce srv-id nonce)
               (spawn/name 'registry-lookup-timeout
                           registry-lookup-timeout (current-thread) expiry srv-id nonce)
               (thread-send/check (!connected-writer notification)
                 (!send
                  (envelope (!ensemble-lookup-server srv-id #f) 'registry (cons 'lookup srv-id)
                            nonce #f expiry #t)))))
            (else
             (let (continuations (hash-get pending-lookups srv-id))
               (hash-remove! pending-lookups srv-id)
               (for (cont (reverse! continuations))
                 (cont result))))))))))

  (def (dispatch-lookup-result! srv-id nonce result)
    (cond
     ((hash-get pending-lookup-nonce srv-id)
      => (lambda (pending-nonce)
           (when (eqv? pending-nonce nonce)
             (debugf "server lookup result: ~a ~a" srv-id result)
             (when (!ok? result)
               (update-server-addrs! srv-id (!ok-value result) address-cache-ttl))
             (hash-remove! pending-lookup-nonce srv-id)
             (cond
              ((hash-get pending-lookups srv-id)
               => (lambda (continuations)
                    (hash-remove! pending-lookups srv-id)
                    (for (cont (reverse! continuations))
                      (cont result))))))))))

  (def (dispatch-pending-conns! srv-id result)
    (cond
     ((hash-get pending-conns srv-id)
      => (lambda (continuations)
           (hash-remove! pending-conns srv-id)
           (for (cont (reverse! continuations))
             (cont result))))))

  (def (connect-to-server! srv-id cont)
    (cond
     ((hash-get cons srv-id)
      => (lambda (notifications)
           (cont (!ok (car notifications)))))
     ((hash-get pending-conns srv-id)
      => (lambda (continuations)
           (hash-put! pending-conns srv-id (cons cont continuations))))
     (else
      (get-server-addrs srv-id
        (lambda (result)
          (match result
            ((!ok addrs)
             (cond
              ((hash-get pending-conns srv-id)
               => (lambda (continuations)
                    (hash-put! pending-conns srv-id (cons cont continuations))))
              (else
               (debugf "connecting to server ~a at ~a" srv-id addrs)
               (hash-put! pending-conns srv-id [cont])
               (spawn/name 'actor-connector actor-connector (current-thread) srv-id addrs cookie))))
            (else
             (cont result))))))))

  (def (get-actors)
    (for/fold (r []) (actor-id (hash-keys actors))
      (if (symbol? actor-id)
        (cons (reference id actor-id) r)
        r)))

  (def (get-conns)
    (for/fold (r []) ([srv-id notifications] (hash->list conns))
      (cons (cons srv-id (map !connected-addr notifications)) r)))

  (def (send-remote-message! msg srv-id dest-actor-id actor-id)
    (connect-to-server! srv-id
      (lambda (result)
        (unless (expired? msg)
          (match result
            ((!ok notification)
             (set! (&envelope-dest msg)
               dest-actor-id)
             (set! (&envelope-source msg)
               actor-id)
             (thread-send/check (!connected-writer notification)
               (!send msg)))
            ((!error what)
             (warnf "error sending message to ~a (~a): ~a" srv-id dest-actor-id what)
             (when (&envelope-reply-expected? msg)
               (send-control-reply! msg result))))))))

  (def (send-to-registry! actor-id msg)
    (if (eq? id 'registry)
      ;; we are the registry
      (cond
       ((hash-get actors 'registry)
        => (lambda (actor)
             ;; rewrite the envelope and forward
             (set! (&envelope-dest msg) actor)
             (thread-send/check actor msg)))
       (else
        ;; but the registry actor isn't here!!!
        (send-control-reply! msg (!error "no registry actor"))))
      ;; reach out to the registry
      (send-remote-message! msg 'registry 'registry actor-id)))

  (def (send-remote-control-message! srv-id msg actor-id)
    (connect-to-server! srv-id
      (lambda (result)
        (unless (expired? msg)
          (match result
            ((!ok notification)
             (set! (&envelope-dest msg) 0)
             (set! (&envelope-source msg) actor-id)
             (thread-send/check (!connected-writer notification)
               (!send msg)))
            (else
             (send-control-reply! msg result)))))))

  (def (send-remote-control-reply! srv-id msg result)
    (cond
     ((hash-get conns srv-id)
      => (lambda (notifications)
           (let ((source  (&envelope-source msg))
                 (nonce   (&envelope-nonce msg)))
             (set! (&envelope-dest msg)
               source)
             (set! (&envelope-source msg)
               0)
             (set! (&envelope-nonce msg)
               (current-thread-nonce!))
             (set! (&envelope-replyto msg)
               nonce)
             (set! (&envelope-reply-expected? msg)
               #f)
             (thread-send/check (!connected-writer (car notifications))
               (!send msg)))))))

  (def (send-control-reply! msg result)
    (let ((source  (&envelope-source msg))
          (nonce   (&envelope-nonce msg)))
      (set! (&envelope-dest msg)
        source)
      (set! (&envelope-source msg)
        (current-thread))
      (set! (&envelope-nonce msg)
        (current-thread-nonce!))
      (set! (&envelope-replyto msg)
        nonce)
      (set! (&envelope-reply-expected? msg)
        #f)
      (thread-send/check source msg)))

  ;; main loop
  (let/cc exit
    (def (shutdown!)
      (infof "shutting down...")
      ;; notify all registered actors of the shutdown
      (for (actor (hash-keys actor-threads))
        (-> actor (!shutdown)))
      ;; notify all connections to shutdown
      (for (notifications (hash-values conns))
        (for ((!connected conn) notifications)
          (thread-send/check conn (!shutdown))))
      ;; close all the server sockets
      (for (sock socks)
        (with-catch void (cut ServerSocket-close sock)))
      ;; wait for all listeners to terminate
      (for (listener listeners)
        (with-catch void (cut thread-join! listener)))
      ;; wait for all conns to terminate
      (for (notifications (hash-values conns))
        (for ((!connected conn) notifications)
          (with-catch void (cut thread-join! conn))))
      ;; process and shutdown all incoming connections that were in flight
      (let lp ()
        (<< ((!connected conn)
             (thread-send/check conn (!shutdown))
             (with-catch void (cut thread-join! conn))
             (lp))
            (_ (lp))
            (else (void))))
      ;; and exit
      (exit 'shutdown))

    (while #t
      (<<
       ;; envelope
       ((and msg (? envelope?))
        (unless (expired? msg)
          (let* ((source  (&envelope-source msg))
                 (actor-id (add-actor! source)))
            (cond
             ((routed-message? msg)
              (let* ((dest (&envelope-dest msg))
                     (dest-ref (&proxy-reference dest))
                     (dest-srv-id (&reference-server dest-ref))
                     (dest-actor-id (&reference-id dest-ref)))
                (if (or (not dest-srv-id) (eq? dest-srv-id id))
                  ;; local send
                  (cond
                   ((hash-get actors dest-actor-id)
                    => (lambda (actor)
                         (thread-send/check actor msg)))
                   (else
                    (warnf "message for unknown actor ~a" dest-actor-id)
                    (when (&envelope-reply-expected? msg)
                      (send-control-reply! msg (!error "unknown actor")))))
                  ;; remote send
                  (send-remote-message! msg dest-srv-id dest-actor-id actor-id))))

             ((control-message? msg)
              (debugf "control message from ~a: ~a" source msg)
              (match (&envelope-message msg)
                ;; shutdown notification
                ((!shutdown)
                 (shutdown!))

                ;; actor registration
                ((!register name)
                 (if (hash-key? actors name)
                   (send-control-reply! msg (!error "actor already registered"))
                   (begin
                     (hash-put! actors name source)
                     (let (names (hash-ref actor-threads source))
                       (unless (pair? (cdr names))
                         (spawn/name 'actor-monitor
                                     actor-monitor source (current-thread) thread-send/check))
                       (hash-put! actor-threads source (cons name names)))
                     (let (result (!ok (reference id name)))
                       (send-control-reply! msg result)))))

                ;; actor listing
                ((!list-actors srv)
                 (if (or (not srv) (eq? srv id))
                   (let (result (!ok (get-actors)))
                     (send-control-reply! msg result ))
                   ;; remote list
                   (send-remote-control-message! srv msg actor-id)))

                ;; connection listing
                ((!list-connections srv)
                 (if (or (not srv) (eq? srv id))
                   (let (result (!ok (get-conns)))
                     (send-control-reply! msg result))
                   ;; remote list
                   (send-remote-control-message! srv msg actor-id)))

                ;; make a connection
                ((!connect srv other-srv addrs)
                 (if (or (not srv) (eq? srv id))
                   (cond
                    ((eq? id other-srv)
                     ;; don't self connect
                     (let (result (!error "cannot connect to self"))
                       (send-control-reply! msg result)))
                    ((hash-get conns other-srv)
                     ;; we already have one or more connections
                     => (lambda (notifications)
                          (let (result (!ok (map !connected-addr notifications)))
                            (send-control-reply! msg result))))
                    (else
                     ;; update our known address mapping -- user supplied addrs don't expire.
                     (when (and addrs (not (null? addrs)))
                       (update-server-addrs! other-srv addrs +inf.0))
                     ;; and connect
                     (connect-to-server! other-srv
                       (lambda (result)
                         (unless (expired? msg)
                           (match result
                             ((!ok notification)
                              (let (result (!ok [(!connected-addr notification)]))
                                (send-control-reply! msg result)))
                             (else
                              (send-control-reply! msg result))))))))
                   ;; remote connect
                   (send-remote-control-message! srv msg actor-id)))

                ;; ensemble control
                ((!ensemble-add-server srv-id addrs roles)
                 ;; update our known address mapping
                 (update-server-addrs! srv-id addrs address-cache-ttl)
                 ;; update the registry
                 (send-to-registry! actor-id msg))

                ((!ensemble-remove-server srv-id)
                 ;; update our known address mapping
                 (hash-remove! server-addrs srv-id)
                 ;; update the registry
                 (send-to-registry! actor-id msg))

                ((!ensemble-lookup-server srv-id role)
                 (send-to-registry! actor-id msg))

                (else (warnf "unexpected control message: ~a" msg))))

             (else
              (warnf "unexpected message: ~a" msg))))))

       ;; internal control messages
       ((!recv src-id msg)
        ;; incoming message
        (unless (expired? msg)
          (let (dest (&envelope-dest msg))
            (cond
             ((eqv? dest 0)
              ;; remote control message
              (debugf "remote control message from ~a: ~a" src-id msg)
              (match (&envelope-message msg)
                ((!shutdown)
                 (infof "remote shutdown from ~a" src-id)
                 (shutdown!))

                ((!list-actors srv-id)
                 (send-remote-control-reply! src-id msg
                   (if (or (not srv-id) (eq? srv-id id))
                     (!ok (get-actors))
                     (!error "server id mismatch"))))

                ((!list-connections srv-id)
                 (send-remote-control-reply! src-id msg
                   (if (or (not srv-id) (eq? srv-id id))
                     (!ok (get-conns))
                     (!error "server id mismatch"))))

                ((!connect from-id to-id addrs)
                 (if (or (not from-id) (eq? from-id id))
                   (cond
                    ((eq? id to-id)
                     ;; don't self connect
                     (let (result (!error "cannot connect to self"))
                       (send-remote-control-reply! src-id msg result)))
                    ((hash-get conns to-id)
                     ;; we already have one or more connections
                     => (lambda (notifications)
                          (let (result (!ok (map !connected-addr notifications)))
                            (send-remote-control-reply! src-id msg result))))
                    (else
                     ;; update our known address mapping -- user supplied addrs don't expire.
                     (when (and addrs (not (null? addrs)))
                       (update-server-addrs! to-id addrs +inf.0))
                     ;; and connect
                     (connect-to-server! to-id
                       (lambda (result)
                         (unless (expired? msg)
                           (match result
                             ((!ok notification)
                              (let (result (!ok [(!connected-addr notification)]))
                                (send-remote-control-reply! src-id msg result)))
                             (else
                              (send-remote-control-reply! src-id msg result))))))))
                   (send-remote-control-reply! src-id msg
                     (!error "server id mismatch"))))

                (else
                 (warnf "unexpected control message from: ~a: ~a" src-id msg))))

             ((and (pair? dest) (eq? (car dest) 'lookup))
              ;; registry lookup result
              (let ((srv-id (cdr dest))
                    (replyto (&envelope-replyto msg))
                    (result (&envelope-message msg)))
                (dispatch-lookup-result! srv-id replyto result)))

             ((hash-get actors dest)
              => (lambda (actor)
                   ;; rewrite the envelope and forward
                   (set! (&envelope-source msg)
                     (proxy (current-thread) (reference src-id (&envelope-source msg))))
                   (set! (&envelope-dest msg) actor)
                   (thread-send/check actor msg)))

             (else
              (warnf "incoming message from ~a for uknown actor ~a" src-id dest)
              (when (&envelope-reply-expected? msg)
                (send-remote-control-reply! src-id msg (!error "unknown actor"))))))))

       ((and notification (!connected conn srv-id addr dir))
        (debugf "connected to server ~a at ~a [~a]" srv-id addr dir)
        (hash-update! conns srv-id (cut cons notification <>) [])
        (dispatch-pending-conns! srv-id (!ok notification)))

       ((!disconnected conn srv-id)
        (cond
         ((hash-get conns srv-id)
          => (lambda (notifications)
               (let (remaining
                     (remf (lambda (notification) (eq? conn (!connected-conn notification)))
                           notifications))
                 (if (null? remaining)
                   (hash-remove! conns srv-id)
                   (hash-put! conns srv-id remaining)))))))

       ((!connection-failed srv-id what)
        (debugf "connection to ~a failed: ~a" srv-id what)
        (dispatch-pending-conns! srv-id (!error what)))

       ((!actor-dead actor)
        (debugf "dead actor: ~a" actor)
        (cond
         ((hash-get actor-threads actor)
          => (lambda (ids)
               (hash-remove! actor-threads actor)
               (for (actor-id ids)
                 (hash-remove! actors actor-id))))))

       ((!lookup-timeout srv-id nonce)
        (dispatch-lookup-result! srv-id nonce (!error "registry lookup timeout")))

       (unexpected
        (warnf "unexpected message: ~a" unexpected))))))

(def (registry-lookup-timeout srv expiry srv-id nonce)
  (thread-sleep! expiry)
  (thread-send/check srv (!lookup-timeout srv-id nonce)))

(def address-cache-ttl 300) ; 5min
