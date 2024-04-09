;;; -*- Gerbil -*-
;;; © vyzo
;;; actor server
(import :gerbil/gambit
        :std/error
        :std/sugar
        :std/iter
        :std/io
        :std/net/ssl
        :std/net/address
        :std/crypto
        :std/text/hex
        :std/os/hostname
        :std/sort
        :std/misc/symbol
        (only-in :std/logger start-logger!)
        (only-in :std/srfi/1 reverse!)
        ./logger
        ./message
        ./proto
        ./cookie
        ./tls
        ./admin
        ./connection)
(export #t)

(def current-actor-server
  (make-parameter #f))

;; actor references
;; - server is the actor-server identifier: a symbol identifying the server in your
;;   ensemble
;; - id is the server-specific identifier of the actor; a symbol or a numeric id.
(defmessage reference (server id))

;; creates a proxy handle from a reference
(def (reference->handle ref (srv (current-actor-server)))
  (make-handle srv ref))

;; starts the actor server
;; - identifier is the server identifier in your ensemble; a symbol.
;;   defaults to a random identifier.
;; - cookie is a u8vector, used for authenticating local (and raw tcp) connections.
;; - tls-context is the actor server's tls context; it can be #f if the server will
;;   not be communicating with remote servers using tls
;; - admin is an _optional_ public key for authorizing administrative actions at the
;;   origin server level.
;;   If it is #f, then all servers in the ensemble are automatically authorized.
;; - auth is an _optional_ hash table for pre-authorized server capabilities.
;;   It is a map of server-id to a list of symbols denoting capabilities
;; - addresses is a list of addresses the server should listen; empty by default.
;;   Addresses can be:
;;   - [unix: hostname  path]: a path for a unix domain socket in a host
;;   - [tcp: addr]: an internet address; see :std/net/address
;;   - TODO: TLS address
;; - known-servers is the set of known servers.
;;   it is a hash table mapping server identifiers to list of addresses.
;;   all servers in the ensemble must share the same cookie.
;; Returns the server thread.
(def (start-actor-server! identifier:  (id (make-random-identifier))
                          tls-context: (tls-context (get-actor-tls-context id))
                          cookie:      (cookie (get-actor-server-cookie))
                          admin:       (admin (get-admin-pubkey))
                          auth:        (auth #f)
                          addresses:   (addrs [])
                          ensemble:    (known-servers (default-known-servers)))
  (start-logger!)
  (let* ((socks (actor-server-listen! addrs tls-context))
         (server (spawn/group 'actor-server actor-server id known-servers tls-context cookie admin auth socks)))
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
(defcall-actor (register-actor! name (srv (current-actor-server)))
  (->> srv (!register name))
  error: "error registering actor" name)

;; lists the registered actors with a server
;; returns a list of references
(defcall-actor (list-actors (srv (current-actor-server)))
  (->> srv (!list-actors #f))
  error:  "error listing actors")

;; ensures there is a connection to a server in the ensemble.
;; if the addresses are not specified, it is looked up in the registry.
;; Raises an error if the connection fails.
(defcall-actor (connect-to-server! id (addrs #f) (srv (current-actor-server)))
  (->> srv (!connect #f id addrs))
  error: "error connecting to server" id)

;; lists the server connections.
;; Returns a list [[id addr ...] ...]
(defcall-actor (list-connections (srv (current-actor-server)))
  (->> srv (!list-connections #f))
  error: "error retrieving server connections")

;; Default registry addresses: unix /tmp/ensemble/registry
(def +default-registry-addresses+
  [[unix: (hostname) "/tmp/ensemble/registry"]])

(def (default-registry-addresses)
  +default-registry-addresses+)

(def (set-default-registry-addresses! addrs)
  (set! +default-registry-addresses+ addrs))

;; Default known servers: registry at default address
(def +default-known-servers+
  (hash-eq (registry (default-registry-addresses))))

(def (default-known-servers)
  +default-known-servers+)

(def (set-default-known-servers! servers)
  (set! +default-known-servers+ servers))

;; Default server address cache ttl
(def +server-address-cache-ttl+ 300) ; 5min

(def (server-address-cache-ttl)
  +server-address-cache-ttl+)

(def (set-server-address-cache-ttl! ttl)
  (set! +server-address-cache-ttl+ ttl))

;; actor shutdown grace period
(def +actor-grace-period+ 1) ; 1s

(def (actor-grace-period)
  +actor-grace-period+)

(def (set-actor-grace-period! t)
  (set! +actor-grace-period+ t))

;;; Internals
(def (make-random-identifier)
  (string->symbol
   (string-append "actor-server-" (hex-encode (subu8vector (sha256 (random-bytes 32)) 0 8)))))

(def (actor-server-listen! addrs tls-context)
  (let lp ((rest addrs) (socks []))
    (defrules fail! ()
      ((_ exn)
       (begin
         (for-each ServerSocket-close socks)
         (raise exn)))
      ((_ msg arg ...) (stx-string? #'msg)
       (begin
         (for-each ServerSocket-close socks)
         (error msg arg ...))))

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
                (fail! maybe-sock)))
            (fail! "bad unix address; hostname mismatch" addr)))
         ([tcp: inet-addr]
          (let (maybe-sock (with-catch values (cut tcp-listen inet-addr)))
            (if (ServerSocket? maybe-sock)
              (lp rest (cons maybe-sock socks))
              (fail! maybe-sock))))
         ([tls: inet-addr]
          (if tls-context
            (let (maybe-sock (with-catch values (cut ssl-listen inet-addr context: tls-context)))
              (if (ServerSocket? maybe-sock)
                (lp rest (cons maybe-sock socks))
                (fail! maybe-sock)))
            (fail! "no TLS context" addr)))
         (else
          (fail! "unrecognized address" addr))))
      (else
       (reverse socks)))))

(def (actor-server id known-servers tls-context cookie admin auth socks)
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
  ;; server capability table: server-id -> [delegated|connected|preauth cap ...]
  (def capabilities
    (if auth
      (list->hash-table-eq (hash-map (lambda (k v) (cons k (cons 'preauth v))) auth ))
      (make-hash-table-eq)))
  ;; pending administrative server authorization: server-id -> [server-id cap challenge
  (def pending-admin-auth
    (make-hash-table-eq))
  ;; actor listener threads
  (def listeners
    (map (cut spawn/name 'actor-listener actor-listener (current-thread) <>  cookie) socks))

  (defrule (control-message? msg)
    (not (handle? (&envelope-dest msg))))

  (defrule (routed-message? msg)
    (handle? (&envelope-dest msg)))

  (defrule (expired? msg)
    (&envelope-expired? msg))

  (def (add-actor! actor)
    (cond
     ((hash-get actor-threads actor)
      => last)
     (else
      (let (actor-id next-actor-id)
        (set! next-actor-id (1+ next-actor-id))
        (hash-put! actor-threads actor [actor-id])
        (hash-put! actors actor-id actor)
        (spawn/name 'actor-monitor actor-monitor actor (current-thread) thread-send/check)
        actor-id))))

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
                   (expiry (timeout->expiry +default-reply-timeout+)))
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
               (update-server-addrs! srv-id (!ok-value result) +server-address-cache-ttl+))
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
     ((not (symbol? srv-id))
      (cont (!error "bad server identifier")))
     ((hash-get conns srv-id)
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
               (spawn/name 'actor-connector actor-connector (current-thread) srv-id addrs cookie tls-context))))
            (else
             (cont result))))))))

  (def (get-actors)
    (map
      (cut reference id <>)
      (sort
       (for/fold (r []) (actor-id (hash-keys actors))
         (if (symbol? actor-id)
           (cons actor-id r)
           r))
       symbol<?)))

  (def (get-conns)
    (sort
     (for/fold (r []) ([srv-id . notifications] (hash->list conns))
       (cons (cons srv-id (map !connected-addr notifications)) r))
     (lambda (a b)
       (symbol<? (car a) (car b)))))

  (def (send-remote-message! msg srv-id dest-actor-id actor-id)
    (using (msg :- envelope)
      (connect-to-server! srv-id
        (lambda (result)
          (unless (expired? msg)
            (match result
              ((!ok notification)
               (set! msg.dest dest-actor-id)
               (set! msg.source actor-id)
               (thread-send/check (!connected-writer notification)
                                  (!send msg)))
              ((!error what)
               (warnf "error sending message to ~a (~a): ~a" srv-id dest-actor-id what)
               (when msg.reply-expected?
                 (send-control-reply! msg result)))))))))

  (def (send-to-registry! actor-id msg)
    (using (msg :- envelope)
      (if (eq? id 'registry)
        ;; we are the registry
        (cond
         ((hash-get actors 'registry)
          => (lambda (actor)
               ;; rewrite the envelope and forward
               (set! msg.dest actor)
               (thread-send/check actor msg)))
         (else
          ;; but the registry actor isn't here!!!
          (send-control-reply! msg (!error "no registry actor"))))
        ;; reach out to the registry
        (send-remote-message! msg 'registry 'registry actor-id))))

  (def (send-remote-control-message! srv-id msg actor-id)
    (using (msg :- envelope)
      (connect-to-server! srv-id
        (lambda (result)
          (unless (expired? msg)
            (match result
              ((!ok notification)
               (set! msg.dest 0)
               (set! msg.source actor-id)
               (thread-send/check (!connected-writer notification)
                 (!send msg)))
              (else
               (send-control-reply! msg result))))))))

  (def (send-remote-control-reply! srv-id msg result)
    (using (msg :- envelope)
      (cond
       ((hash-get conns srv-id)
        => (lambda (notifications)
             (let ((source  msg.source)
                   (nonce   msg.nonce))
               (set! msg.message result)
               (set! msg.dest source)
               (set! msg.source 0)
               (set! msg.nonce (current-thread-nonce!))
               (set! msg.replyto nonce)
               (set! msg.reply-expected? #f)
               (verbosef "sending remote control reply to ~a: ~a" srv-id msg)
               (thread-send/check (!connected-writer (car notifications))
                 (!send msg))))))))

  (def (send-control-reply! msg result)
    (using (msg :- envelope)
      (let ((source  msg.source)
            (nonce   msg.nonce))
        (set! msg.message result)
        (set! msg.dest source)
        (set! msg.source (current-thread))
        (set! msg.nonce (current-thread-nonce!))
        (set! msg.replyto nonce)
        (set! msg.reply-expected? #f)
        (verbosef "sending control reply to ~a: ~a" source msg)
        (thread-send/check source msg))))

  (def is-shutdown-authorized?
    (if (or admin tls-context)
      (lambda (srv-id)
        (cond
         ((hash-get capabilities srv-id)
         => (lambda (state)
              (find (lambda (cap) (memq cap '(admin shutdown))) (cdr state))))
         (else #f)))
      (lambda (srv-id)
        #t)))

  (def is-retract-authorized?
    (if (or admin tls-context)
      (lambda (srv-id authorized-server-id)
        (cond
         ((eq? srv-id authorized-server-id))
         ((hash-get capabilities srv-id)
          => (lambda (state) (memq 'admin (cdr state))))
         (else #f)))
      (lambda (srv-id authorized-server-id)
        #t)))

  (def actor-capabilities
    (if (or admin tls-context)
      (lambda (srv-id)
        (cond
         ((hash-get capabilities srv-id) => cdr)
         (else #f)))
      (lambda (srv-id)
        '(admin))))

  (def (merge-capabilities new-cap cap)
    (cond
     ((memq 'admin cap)
      '(admin))
     ((memq 'admin new-cap)
      '(admin))
     (else
      (foldl
        (lambda (c r)
          (if (memq c r) r (cons c r)))
        cap new-cap))))

  (def (update-capabilities! server-id cap how)
    (hash-update! capabilities server-id
                  (lambda (existing-cap)
                    (cons how
                          (if existing-cap
                            (merge-capabilities cap (cdr existing-cap))
                            cap)))
                  #f))

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
      ;; give some grace period for actors to shutdown
      (for (actor (hash-keys actor-threads))
        (with-catch void (cut thread-join! actor +actor-grace-period+ #f)))
      ;; and exit
      (exit 'shutdown))

    (while #t
      (<<
       ;; envelope
       ((? envelope? msg)
        (using (msg :- envelope)
          (unless (expired? msg)
            (let* ((source  msg.source)
                   (actor-id (add-actor! source)))
              (cond
               ((routed-message? msg)
                (using ((dest msg.dest :- handle)
                        (dest-ref dest.ref :- reference))
                  (let* ((dest-srv-id dest-ref.server)
                         (dest-actor-id dest-ref.id))
                    (if (or (not dest-srv-id) (eq? dest-srv-id id))
                      ;; local send
                      (cond
                       ((hash-get actors dest-actor-id)
                        => (lambda (actor)
                             (thread-send/check actor msg)))
                       (else
                        (warnf "message for unknown actor ~a" dest-actor-id)
                        (when msg.reply-expected?
                          (send-control-reply! msg (!error "unknown actor")))))
                      ;; remote send
                      (send-remote-message! msg dest-srv-id dest-actor-id actor-id)))))

                  ((control-message? msg)
                   (debugf "control message from ~a: ~a" source msg)

                   (match msg.message
                     ;; shutdown notification
                     ((!shutdown)
                      (shutdown!))

                     ;; actor registration
                     ((!register name)
                      (if (hash-key? actors name)
                        (send-control-reply! msg (!error "actor already registered"))
                        (begin
                          (hash-put! actors name source)
                          (hash-update! actor-threads source (cut cons name <>))
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
                      (unless (eq? srv-id id)
                        ;; update our known address mapping
                        (update-server-addrs! srv-id addrs +server-address-cache-ttl+))
                      ;; update the registry
                      (send-to-registry! actor-id msg))

                     ((!ensemble-remove-server srv-id)
                      ;; update our known address mapping
                      (hash-remove! server-addrs srv-id)
                      ;; and our authorization table
                      (cond
                       ((hash-get capabilities srv-id)
                        => (lambda (state)
                             (when (eq? (car state) 'connected)
                               (hash-remove! capabilities srv-id)))))
                      (hash-remove! pending-admin-auth srv-id)
                      ;; update the registry
                      (send-to-registry! actor-id msg))

                     ((!ensemble-lookup-server srv-id role)
                      (send-to-registry! actor-id msg))

                     ((!ping)
                      (send-control-reply! msg (!ok 'OK)))

                     (else
                      (warnf "unexpected control message: ~a" msg)
                      (when msg.reply-expected?
                        (send-control-reply! msg (!error "unexpected control message"))))))

                  (else
                   (warnf "unexpected message: ~a" msg)))))))

       ;; internal control messages
       ((!recv src-id msg)
        ;; incoming message
        (using (msg :- envelope)
          (unless (expired? msg)
            (let (dest msg.dest)
              (cond
               ((eqv? dest 0)
                ;; remote control message
                (debugf "remote control message from ~a: ~a" src-id msg)
                (match msg.message
                  ((!shutdown)
                   (if (is-shutdown-authorized? src-id)
                     (begin
                       (infof "remote shutdown from ~a" src-id)
                       (send-remote-control-reply! src-id msg (!ok (void)))
                       (shutdown!))
                     (begin
                       (warnf "unauthorized shutdown request from ~a" src-id)
                       (send-remote-control-reply! src-id msg (!error "not authorized")))))

                  ((!admin-auth authorized-server-id cap)
                   (cond
                    ((and (not admin) tls-context)
                     (send-remote-control-reply! src-id msg (!error "no admin credentials")))
                    ((or (not admin)
                         (alet (state (hash-get capabilities src-id))
                           (andmap (cut memq <> (cdr state)) cap)))
                     (send-remote-control-reply! src-id msg (!ok (void))))
                    ((hash-get pending-admin-auth src-id)
                     (send-remote-control-reply! src-id msg (!error "challenge pending")))
                    (else
                     (let (bytes (random-bytes 32))
                       (hash-put! pending-admin-auth src-id [authorized-server-id cap bytes])
                       (send-remote-control-reply! src-id msg (!admin-auth-challenge bytes))))))

                  ((!admin-auth-response sig)
                   (cond
                    ((hash-get pending-admin-auth src-id)
                     => (lambda (state)
                          (with ([authorized-server-id cap bytes] state)
                            (hash-remove! pending-admin-auth src-id)
                            (if (admin-auth-challenge-verify admin id authorized-server-id bytes sig)
                              (begin
                                (infof "admin privileges authorized for ~a; capabilities: ~a" authorized-server-id cap)
                                (update-capabilities! authorized-server-id
                                                      cap
                                                      (if (eq? src-id authorized-server-id)
                                                        'connected
                                                        'delegated))
                                (send-remote-control-reply! src-id msg (!ok (void))))
                              (begin
                                (warnf "admin authorization failed for ~a" src-id)
                                (send-remote-control-reply! src-id msg (!error "challenge failed")))))))
                    (else
                     (send-remote-control-reply! src-id msg (!error "unexpected auth response")))))

                  ((!admin-retract authorized-server-id)
                   (if (is-retract-authorized? src-id authorized-server-id)
                     (begin
                       (infof "capabilities retracted for ~a from ~a" authorized-server-id src-id)
                       (hash-remove! capabilities authorized-server-id)
                       (send-remote-control-reply! src-id msg (!ok (void))))
                     (begin
                       (warnf "unauthorized retraction from ~a" src-id)
                       (send-remote-control-reply! src-id msg (!error "not authorized")))))

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

                  ((!ping)
                   (send-remote-control-reply! src-id msg (!ok 'OK)))

                  (else (warnf "unexpected control message from: ~a: ~a" src-id msg))))

               ((and (pair? dest) (eq? (car dest) 'lookup))
                ;; registry lookup result
                (let (srv-id (cdr dest))
                  (dispatch-lookup-result! srv-id msg.replyto msg.message)))

               ((hash-get actors dest)
                => (lambda (actor)
                     ;; rewrite the envelope and forward
                     (set! msg.source
                       (handle (current-thread)
                               (reference src-id msg.source)
                               (actor-capabilities src-id)))
                     (set! msg.dest actor)
                     (thread-send/check actor msg)))

               (else
                (warnf "incoming message from ~a for unknown actor ~a" src-id dest)
                (when msg.reply-expected?
                  (send-remote-control-reply! src-id msg (!error "unknown actor")))))))))

       ((and notification (!connected conn srv-id cert addr dir))
        (debugf "connected to server ~a at ~a [~a]" srv-id addr dir)
        (hash-update! conns srv-id (cut cons notification <>) [])
        (when cert
          (let (cap (actor-tls-certificate-cap cert))
            (when cap
              (update-capabilities! srv-id cap 'connected))))
        (dispatch-pending-conns! srv-id (!ok notification)))

       ((!disconnected conn srv-id)
        (cond
         ((hash-get conns srv-id)
          => (lambda (notifications)
               (let (remaining
                     (remf (lambda (notification) (eq? conn (!connected-conn notification)))
                           notifications))
                 (if (null? remaining)
                   (begin
                     (hash-remove! conns srv-id)
                     (cond
                      ((hash-get capabilities srv-id)
                       => (lambda (state)
                            (when (eq? (car state) 'connected)
                              (hash-remove! capabilities srv-id)))))
                     (hash-remove! pending-admin-auth srv-id))
                   (hash-put! conns srv-id remaining)))))))

       ((!connection-failed srv-id what)
        (debugf "connection to ~a failed: ~a" srv-id what)
        (dispatch-pending-conns! srv-id (!error what)))

       ((!actor-dead actor)
        (debugf "dead actor: ~a" actor)
        (cond
         ((hash-get actor-threads actor)
          => (lambda (ids)
               (verbosef "removing dead actor ~a; ids: ~a" actor ids)
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
