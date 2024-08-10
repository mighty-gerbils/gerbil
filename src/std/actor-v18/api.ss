;;; -*- Gerbil -*-
;;; © vyzo
;;; actor v18 api
(import ./message
        ./proto
        ./server
        ./server-identifier
        ./ensemble
        ./ensemble-server
        ./ensemble-supervisor
        ./cookie
        ./tls
        ./admin
        ./path
        ./loader)
(export
  call-with-ensemble-server
  ;; ./message
  actor-error?
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
  ;; ./server-identifier
  (import: ./server-identifier)
  ;; ./admin
  (import: ./admin)
  ;; ./ensemble
  (import: ./ensemble)
  ;; ./ensemble-server
  (import: ./ensemble-server)
  ;; ./ensemble-supervisor
  (import: ./ensemble-supervisor)
  ;; ./path
  (import: ./path))
