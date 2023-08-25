;;; -*- Gerbil -*-
;;; © vyzo
;;; actor v18 api
(import :gerbil/gambit/threads
        :gerbil/gambit/exceptions
        :std/sugar
        :std/iter
        :std/logger
        :std/os/hostname
        ./message
        ./proto
        ./server
        ./ensemble
        ./cookie
        ./admin
        ./path
        ./loader)
(export
  call-with-ensemble-server
  ;; ./message
  (struct-out actor-error)
  raise-actor-error
  (struct-out envelope)
  defmessage
  message?
  make-handle handle? handle-proxy handle-ref
  actor-authorized?
  send-message
  -> ->> --> -->?
  <- <<
  @envelope
  @message
  @dest
  @source
  @nonce
  @replyto
  @expiry
  @reply-expected?
  current-thread-nonce!
  default-reply-timeout
  set-default-reply-timeout!
  ;; ./proto
  (struct-out !ok
              !error
              !shutdown
              !actor-dead
              !tick
              !ping)
  actor-monitor
  ticker ticker-after after
  with-result defcall-actor
  @ping
  @unexpected
  @shutdown
  ;; ./server
  (struct-out reference)
  reference->handle
  current-actor-server
  start-actor-server!
  stop-actor-server!
  actor-server-identifier
  register-actor!
  connect-to-server!
  list-actors
  list-connections
  default-known-servers
  set-default-known-servers!
  default-registry-addresses
  set-default-registry-addresses!
  server-address-cache-ttl
  set-server-address-cache-ttl!
  ;; ./admin
  (import: ./admin)
  ;; ./ensemble
  (import: ./ensemble)
  ;; ./path
  ensemble-base-path
  ensemble-server-path)

;; call a thunk in the context of an ensemble server
;; this is the programmatic equivalent of gxensemble run
(def (call-with-ensemble-server server-id thunk
                                log-level: (log-level 'INFO)
                                log-file:  (log-file #f)
                                listen:    (listen-addrs [])
                                announce:  (public-addrs #f)
                                registry:  (registry-addrs #f)
                                roles:     (roles [])
                                cookie:    (cookie (get-actor-server-cookie))
                                admin:     (admin (get-admin-pubkey)))
  (current-logger-options log-level)
  (when log-file
    (let (path
          (if (equal? log-file "-")
            (path-expand "log" (ensemble-server-path server-id))
            (path-expand log-file)))
      (create-directory* (path-strip-directory path))
      (start-logger! path)))
  (let* ((known-servers
          (cond
           ((eq? server-id 'registry)
            (hash-eq))
           (registry-addrs
            (hash-eq (registry (append (default-registry-addresses) registry-addrs))))
           (else
            (hash-eq (registry (default-registry-addresses))))))
         (unix-addr [unix: (hostname) (string-append "/tmp/ensemble/" (symbol->string server-id))])
         (listen-addrs
          (cons unix-addr listen-addrs))
         (public-addrs
          (if public-addrs
            (cons unix-addr public-addrs)
            listen-addrs)))
    ;; start the actor server
    (start-actor-server! cookie: cookie
                         admin:  admin
                         addresses: listen-addrs
                         identifier: server-id
                         ensemble: known-servers)
    ;; start the loader
    (start-loader!)
    ;; add the server to the ensemble
    (unless (eq? server-id 'registry)
      (ensemble-add-server! server-id public-addrs roles))
    ;; run it!
    (try
     (with-exception-stack-trace thunk)
     (catch (e)
       (display "*** ERROR " (current-error-port))
       (display-exception e (current-error-port))))
    (thread-join! (current-actor-server))
    ;; clean up unix sockets
    (for (addr listen-addrs)
      (match addr
        ([unix: _ path]
         (delete-file path))
        (else (void))))
    ;; remove the server from the ensemble
    (unless (eq? server-id 'registry)
      (remove-from-registry! cookie known-servers server-id))))

(def (remove-from-registry! cookie known-servers server-id)
  (start-actor-server! cookie: cookie ensemble: known-servers identifier: server-id)
  (with-catch void (cut ensemble-remove-server! server-id))
  (stop-actor-server!))
