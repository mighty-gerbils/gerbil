;;; -*- Gerbil -*-
;;; © vyzo
;;; actor server connections
(import :gerbil/gambit/threads
        :std/error
        :std/sugar
        :std/sort
        :std/io
        :std/net/ssl
        :std/text/utf8
        :std/crypto
        :std/os/error
        :std/os/hostname
        (only-in :std/os/socket AF_UNIX SOL_SOCKET SO_KEEPALIVE)
        (only-in :std/srfi/1 partition)
        ./logger
        ./message
        ./proto
        ./io
        ./tls)
(export #t)

(def version-magic 18)
(def default-handshake-timeout 60) ; 1min

(def (peer-address sock)
  (let (addr (StreamSocket-peer-address sock))
    (if (eqv? (StreamSocket-domain sock) AF_UNIX)
      (if (string-empty? addr)
        "(local)"
        addr)
      addr)))

(def (actor-listener srv sock cookie)
  (with-exception-stack-trace (cut actor-listener-main srv cookie sock)))

(def (actor-listener-main srv cookie sock)
  (let/cc exit
    (while #t
      (try
       (let (clisock (ServerSocket-accept sock))
         (debugf "accepted connection from ~a [TLS: ~a]"
                 (peer-address clisock)
                 (is-TLS? clisock))
         (spawn/name 'actor-acceptor actor-acceptor srv clisock cookie))
       (catch (io-closed-error? e)
         ;; socket was closed
         (exit 'shutdown))
       (catch (os-error? e)
         (let (errno (os-error-errno e))
           (match errno
             ((eqv? ECONNABORTED)
              ;; connection was aborted
              (void))
             (else
              ;; log that one
              (warnf "error accepting connection: ~a [~a]" (strerror errno) errno)))))))))

(def (actor-acceptor srv sock cookie)
  (with-exception-stack-trace (cut actor-acceptor-main srv sock cookie)))

(def (actor-acceptor-main srv sock cookie)
  (if (is-TLS? sock)
    ;; no handshake needed; TLS authenticated
    (let ((reader (open-buffered-reader (StreamSocket-reader sock)))
          (writer (open-buffered-writer (StreamSocket-writer sock)))
          (peer-id (actor-tls-certificate-id (TLS-peer-certificate sock))))
      (if peer-id
        (spawn/name 'actor-connection actor-connection srv peer-id sock reader writer 'in)
        (begin
          (warnf "no peer id for TLS authenticated peer ~a" (peer-address sock))
          (with-catch void (cut StreamSocket-close sock))
          (exit 'unknown-peer))))
    ;; no TLS; do cookie authentication handshake
    (let/cc exit
      (def (fail! what)
        (warnf "incomplete handshake with ~a: ~a"(peer-address sock) what)
        (with-catch void (cut StreamSocket-close sock))
        (exit 'incomplete-handshake))

      (try
       (let* ((reader (StreamSocket-reader sock))
              (reader (open-buffered-reader reader))
              (writer (StreamSocket-writer sock))
              (writer (open-buffered-writer writer))
              (srv-id (thread-specific srv)))
         ;; set handshake timeouts
         (let (expiry (timeout->expiry default-handshake-timeout))
           (StreamSocket-set-input-timeout! sock expiry)
           (StreamSocket-set-output-timeout! sock expiry))
         (when (eof-object? (&BufferedReader-peek-u8 reader))
           (fail! "client socket closed"))
         (let (version (&BufferedReader-read-u16 reader))
           (unless (fx= version version-magic)
             (fail! "protocol version mismatch")))
         (match (read-delimited reader)
           ((!hello peer-id)
            (cond
             ((not peer-id)
              (fail! "bad hello; no server id"))
             ((eq? srv-id peer-id)
              (fail! "bad hello; client claims to be our server"))
             (else
              (let (salt (random-bytes (u8vector-length cookie)))
                (write-delimited writer (!challenge srv-id salt))
                (match (read-delimited reader)
                  ((!response auth cli-salt)
                   (unless (equal? auth (digest srv-id peer-id salt cookie))
                     (fail! "authentication failed"))
                   (write-delimited writer (!accepted (digest srv-id peer-id cli-salt cookie)))
                   (infof "authenticated client ~a at ~a" peer-id (peer-address sock))
                   ;; reset timeouts
                   (StreamSocket-set-input-timeout! sock #f)
                   (StreamSocket-set-output-timeout! sock #f)
                   ;; and go!
                   (spawn/name 'actor-connection actor-connection srv peer-id sock reader writer 'in))
                  ((? eof-object?)
                   (fail! "incomplete handshake"))
                  (unexpected
                   (warnf "unexpected message from ~a: ~a" (peer-address sock) unexpected)
                   (fail! "bad response")))))))
           ((? eof-object?)
            (fail! "incomplete handshake"))
           (unexpected
            (warnf "unexpected message from ~a: ~a" (peer-address sock) unexpected)
            (fail! "bad hello"))))
       (catch (exn)
         (warnf "unhandled exception: ~a" exn)
         (fail! (error-message exn)))))))

(def (actor-connector srv peer-id addrs cookie tls-context)
  (with-exception-stack-trace (cut actor-connector-main srv peer-id addrs cookie tls-context)))

(def (actor-connector-main srv peer-id addrs cookie tls-context)
  ;; try UNIX addresses first, TLS addresses second
  (let* (((values unix-addrs other-addrs)
          (partition (lambda (a) (eq? (car a) unix:)) addrs))
         ((values tls-addrs other-addrs)
          (partition (lambda (a) (eq? (car a) tls:)) addrs))
         (addrs (append unix-addrs tls-addrs other-addrs)))
    (let lp ((rest addrs))
      (match rest
        ([addr . rest]
         (cond
          ((try-connect peer-id addr tls-context)
           => (cut actor-connector-handshake srv peer-id cookie <>))
          (else
           (lp rest))))
        (else
         (thread-send/check srv (!connection-failed peer-id "no usable addresses")))))))

(def (actor-connector-handshake srv peer-id cookie sock)
  (if (is-TLS? sock)
    ;; no handshake needed; TLS authenticated
    (let ((reader (open-buffered-reader (StreamSocket-reader sock)))
          (writer (open-buffered-writer (StreamSocket-writer sock)))
          (cert-peer-id (actor-tls-certificate-id (TLS-peer-certificate sock))))
      (if (eq? peer-id cert-peer-id)
        (spawn/name 'actor-connection actor-connection srv peer-id sock reader writer 'out)
        (begin
          (warnf "peer id mismatch for TLS authenticated peer ~a" (peer-address sock))
          (with-catch void (cut StreamSocket-close sock))
          'error)))
    ;; no TLS; do cookie authentication handshake
    (let/cc exit
      (def (fail! what)
        (warnf "handshake with ~a failed: ~a" peer-id what)
        (with-catch void (cut StreamSocket-close sock))
        (thread-send/check srv (!connection-failed peer-id what))
        (exit 'error))

      (try
       (let* ((reader (StreamSocket-reader sock))
              (reader (open-buffered-reader reader))
              (writer (StreamSocket-writer sock))
              (writer (open-buffered-writer writer))
              (srv-id (thread-specific srv)))
         ;; set handshake timeouts
         (let (expiry (timeout->expiry default-handshake-timeout))
           (StreamSocket-set-input-timeout! sock expiry)
           (StreamSocket-set-output-timeout! sock expiry))
         ;; send hello
         (&BufferedWriter-write-u16 writer version-magic)
         (write-delimited writer (!hello srv-id))
         (when (eof-object? (&BufferedReader-peek-u8 reader))
           (fail! "incomplete handshake"))
         (match (read-delimited reader)
           ((!challenge remote-id salt)
            (cond
             ((not remote-id)
              (fail! "bad challenge; no server id"))
             ((eq? remote-id srv-id)
              (fail! "bad challenge; server claims to be our server"))
             ((not (eq? remote-id peer-id))
              (fail! "bad challenge; server id mismatch"))
             (else
              (let (cli-salt (random-bytes (u8vector-length cookie)))
                (write-delimited writer (!response (digest peer-id srv-id salt cookie) cli-salt))
                (match (read-delimited reader)
                  ((!accepted auth)
                   (unless (equal? auth (digest peer-id srv-id cli-salt cookie))
                     (fail! "server authentication failed"))
                   (infof "connected to server: ~a" peer-id)
                   ;; reset timeouts
                   (StreamSocket-set-input-timeout! sock #f)
                   (StreamSocket-set-output-timeout! sock #f)
                   ;; and go!
                   (spawn/name 'actor-connection actor-connection srv peer-id sock reader writer 'out))
                  ((? eof-object?)
                   (fail! "incomplete handshake"))
                  (unexpected
                   (fail! "bad response")))))))
           ((? eof-object?)
            (fail! "incomplete handshake"))))
       (catch (exn)
         (warnf "unhandled exception: ~a" exn)
         (fail! (error-message exn)))))))

(def (try-connect peer-id addr tls-context)
  (try
   (match addr
     ([unix: host path]
      (if (or (not host) (equal? host (hostname)))
        (unix-connect path)
        #f))
     ([tcp: inet-addr]
      (tcp-connect inet-addr))
     ([tls: inet-addr]
      (ssl-connect inet-addr host: (actor-tls-host peer-id) context: tls-context))
     (else
      (warnf "unrecognized address ~a for ~a:" addr peer-id)
      #f))
   (catch (exn)
     (warnf "error connecting to ~a at ~a: ~a" peer-id addr exn)
     #f)))

(def (actor-connection srv peer-id sock reader writer direction)
  (with-exception-stack-trace (cut actor-connection-main srv peer-id sock reader writer direction)))

(def (actor-connection-main srv peer-id sock reader writer direction)
  (with-error-close sock
    ;; first order of business: set KEEPALIVE for tcp
    (unless (eqv? (StreamSocket-domain sock) AF_UNIX)
      (StreamSocket-setsockopt sock SOL_SOCKET SO_KEEPALIVE 1))
    (let/cc exit
      ;; spawn the reader and writer threads
      (let ((reader (spawn/name 'actor-connection-reader actor-connection-reader srv peer-id reader))
            (writer (spawn/name 'actor-connection-writer actor-connection-writer srv peer-id writer)))

        (def (shutdown! how)
          ;; try to gracefully shutdown the writer; give it a reply's worth of time
          ;; to drain its queue
          (thread-send/check writer (!shutdown))
          (with-catch void (cut thread-join! writer +default-reply-timeout+))
          (with-catch void (cut StreamSocket-close sock))
          (with-catch void (cut thread-join! reader))
          (exit how))

        (def (connection-notification)
          (!connected (current-thread)
                      peer-id
                      (and (is-TLS? sock)
                           (TLS-peer-certificate sock))
                      (let (addr (peer-address sock))
                        (cond
                         ((eqv? (StreamSocket-domain sock) AF_UNIX)
                          [unix: (hostname) addr])
                         ((is-TLS? sock)
                          [tls: addr])
                         (else
                          [tcp: addr])))
                      direction
                      reader
                      writer))

        ;; notify the server; we exit if it has died in the meantime
        (unless (thread-send/check srv (connection-notification))
          (shutdown! 'server-dead))

        ;; spawn monitors
        (spawn/name 'connection-monitor actor-monitor reader (current-thread) thread-send/check)
        (spawn/name 'connection-monitor actor-monitor writer (current-thread) thread-send/check)
        ;; and loop
        (while #t
          (<<
           ((!shutdown)
            (shutdown! 'shutdown))
           ((!actor-dead)
            (thread-send/check srv (!disconnected (current-thread) peer-id))
            (shutdown! 'disconnected))
           (unexpected
            (warnf "unexpected message: ~a" unexpected))))))))

(def (actor-connection-reader srv peer-id reader)
  (with-exception-stack-trace (cut actor-connection-reader-main srv peer-id reader)))

(def (actor-connection-reader-main srv peer-id reader)
  (let/cc exit
    (while #t
      (try
       (let (msg (read-delimited reader))
         (when (eof-object? msg)
           (exit 'eof))
         (unless (envelope? msg)
           (warnf "unexpected message from ~a: not an envelope:" peer-id msg)
           (exit 'error))
         (unless (thread-send/check srv (!recv peer-id msg))
           (exit 'server-dead)))
       (catch (io-closed-error? e)
         (exit 'shutdown))
       (catch (e)
         (warnf "error reading message from ~a: ~a" peer-id e)
         (exit e))))))

(def (actor-connection-writer srv peer-id writer)
  (with-exception-stack-trace (cut actor-connection-writer-main srv peer-id writer)))

(def (actor-connection-writer-main srv peer-id writer)
  (let/cc exit
    (while #t
      (<<
       ((!send msg)
        (try
         (write-delimited writer msg)
         (catch (io-closed-error? e)
           (exit 'shutdown))
         (catch (e)
           (warnf "error writing message to ~a: ~a" peer-id e)
           (exit e))))
       ((!shutdown)
        (exit 'shutdown))
       (unexpected
        (warnf "unexpected message: ~a" unexpected))))))

(def (digest srv-id cli-id salt cookie)
  (sha256 (u8vector-append salt
                           '#u8(#x3a)
                           (string->utf8 (symbol->string srv-id))
                           '#u8(#x3a)
                           (string->utf8 (symbol->string cli-id))
                           '#u8(#x3a)
                           cookie)))

(def (read-delimited reader)
  (if (eof-object? (&BufferedReader-peek-u8-inline reader))
    '#!eof
    (&BufferedReader-read-delimited reader &BufferedReader-unmarshal)))

(def (write-delimited writer obj)
  (&BufferedWriter-write-delimited writer (cut &BufferedWriter-marshal <> obj))
  (&BufferedWriter-flush writer))

(defrule (with-error-close sock body ...)
  (let (E (current-exception-handler))
    (with-exception-handler
     (lambda (exn)
       (with-catch void (cut Socket-close sock))
       (E exn))
     (lambda () body ...))))
