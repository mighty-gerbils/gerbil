;;; -*- Gerbil -*-
;;; © vyzo
;;; SOCKS v4/4a/5 server
(import :std/error
        :std/contract
        :std/os/error
        :std/io
        :std/actor
        :std/net/address
        :std/text/utf8
        :std/misc/threads
        :std/sugar
        (only-in :std/logger start-logger! deflogger)
        (only-in :std/os/socket SO_REUSEADDR)
        (only-in :std/srfi/1 reverse!))
(export start-socks-server! stop-socks-server! current-socks-server)

(deflogger socks)

(def default-connect-timeout 1)

(def current-socks-server
  (make-parameter #f))

(def (start-socks-server! allow-bind: (allow-bind? #f)
                          backlog: (backlog 10)
                          sockopts: (sockopts [SO_REUSEADDR])
                          . addresses)
  (start-logger!)
  (let (socks (map (cut tcp-listen <> backlog: backlog sockopts: sockopts) addresses))
    (let (srv (spawn/group 'socks-server socks-server socks allow-bind?))
      (current-socks-server srv)
      srv)))

(def (stop-socks-server! (server (current-socks-server)))
  (unless (thread-dead? server)
    (->> server (!shutdown)))
  (thread-join! server))

(def (socks-server socks allow-bind?)
  (def acceptors
    (map (lambda (sock)
           (spawn/name 'socks-server-accept socks-server-accept sock allow-bind?))
         socks))

  (def (monitor thread)
    (spawn/name 'socks-server-monitor actor-monitor thread (current-thread)))

  (def (shutdown!)
    (for-each ServerSocket-close socks))

  (def (loop)
    (let/cc exit
      (while #t
        (<-
         ((!actor-dead thread)
          (try
           (thread-join! thread)
           (warnf "acceptor thread ~a exited unexpectedly" (thread-name thread))
           (catch (uncaught-exception? e)
             (errorf "acceptor error: ~a" (uncaught-exception-reason e)))
           (catch (e)
             (errorf "acceptor error: ~a" e))))

         ,(@shutdown
           (infof "httpd shutting down...")
           (exit 'shutdown))
         ,(@ping)
         ,(@unexpected warnf)))))

  (try
   (for-each monitor acceptors)
   (when (current-actor-server)
     (register-actor! 'httpd))
   (loop)
   (catch (e)
     (errorf "unhandled exception: ~a" e)
     (raise e))
   (finally
    (shutdown!))))

(def (socks-server-accept sock allow-bind?)
  (using (sock :- ServerSocket)
    (def (loop)
      (let (clisock (sock.accept))
        (spawn/name 'socks-request-handler
                    socks-request-handler (StreamSocket clisock) allow-bind?)
        (loop)))

    (let again ()
      (try
       (loop)
       (catch (os-exception? e)
         (errorf "error accepting connection: ~a" e)
         (again))))))

(def (socks-request-handler sock allow-bind?)
  (using ((sock :- StreamSocket)
          (reader (open-buffered-reader (sock.reader) 384) :- BufferedReader)
          (writer (open-buffered-writer (sock.writer) 384) :- BufferedWriter))
    (let (vn (reader.read-u8!))
      (try
       (case vn
         ((4) (socks4-request-handler sock reader writer allow-bind?))
         ((5) (socks5-request-handler sock reader writer allow-bind?))
         (else
          (warnf "SOCKS request for unknown protocol version ~a" vn)))
       (catch (e)
         (sock.close))))))

(def (socks4-request-handler sock reader writer allow-bind?)
  (using ((sock :- StreamSocket)
          (reader :- BufferedReader)
          (writer :- BufferedWriter))
    (def (reject!)
      (writer.write-u8 0)
      (writer.write-u8 91)
      (writer.write '#u8(0 0 0 0 0 0))
      (writer.close)
      (reader.close))

    (let (cmd (reader.read-u8!))
      (case cmd
        ((1)                            ; CONNECT
         (try
          (socks4-connect sock reader writer)
          (catch (e)
            (debugf "SOCKS4 connect failed: ~a" e)
            (reject!))))
        ((2)                            ; BIND
         (if allow-bind?
           (try
            (socks4-bind sock reader writer)
            (catch (e)
              (debugf "SOCKS4 bind failed: ~a" e)
              (reject!)))
           (begin
             (warnf "SOCKS4 bind request from ~a rejected" (sock.peer-address))
             (reject!))))
        (else
         (warnf "SOCKS4 request with unknown command from ~a: ~a" (sock.peer-address) cmd)
         (reject!))))))

(def (socks4-connect sock reader writer)
  (using ((reader :- BufferedReader)
          (writer :- BufferedWriter))
    (let* ((port (reader.read-u16))
           (host (make-u8vector 4))
           (_ (reader.read host 0 4 4)))
      (def (accept! host port)
        (writer.write-u8 0)
        (writer.write-u8 90)
        (writer.write-u16 port)
        (writer.write host)
        (writer.flush))
      (cond
       ((equal? host '#u8(0 0 0 1))     ; SOCKS4a bit
        (let lp ((rd 0))                ; skip USERID
          (if (fx< rd 255)
            (when (not (fx= (reader.read-u8!) 0))
              (lp (fx+ rd 1)))
            (raise-io-error socks4-connect "userid too long")))
        (let lp ((bytes []) (rd 0))     ; read DOMAINNAME
          (if (fx< rd 255)
            (let (next (reader.read-u8!))
              (if (fx= next 0)
                (let* ((host (list->u8vector (reverse! bytes)))
                       (host (utf8->string host))
                       (resolved (resolve-address (cons host port))))
                  (when (sensitive-host? (car resolved))
                    (raise-io-error socks4-connect "attempt to connect to local host"))
                  (using (proxy-sock (tcp-connect resolved default-connect-timeout) :- StreamSocket)
                    (let* ((peer-address (proxy-sock.peer-address))
                           (host (car peer-address))
                           (port (cdr peer-address)))
                      (accept! host port))
                    (socks-proxy-pump sock proxy-sock)))
                (lp (cons next bytes) (fx+ rd 1)))))))
       ((sensitive-host? host)
        (raise-io-error socks4-connect "attempt to connect to local host"))
       (else
        (let (proxy-sock (tcp-connect (cons host port) default-connect-timeout))
          (accept! host port)
          (socks-proxy-pump sock proxy-sock)))))))

(def (socks-proxy-pump in out)
  (using ((in :- StreamSocket)
          (out :- StreamSocket))
    (spawn/name 'socks-proxy-io (cut socks-proxy-io (in.reader) (out.writer)))
    (spawn/name 'socks-proxy-io (cut socks-proxy-io (out.reader) (in.writer)))))

(def (socks-proxy-io reader writer)
  (using ((reader :- Reader)
          (writer :- Writer))
    (try
     (io-copy! reader writer)
     (finally
      (reader.close)
      (writer.close)))))

(def (socks4-bind sock reader writer)
  (using ((reader :- BufferedReader)
          (writer :- BufferedWriter))
    (def (accept! host port)
      (writer.write-u8 0)
      (writer.write-u8 90)
      (writer.write-u16 port)
      (writer.write host)
      (writer.flush))
    (let* ((port (reader.read-u16))
           (host (make-u8vector 4))
           (_ (reader.read host 0 4 4)))
      (cond
       ((not (fx= port 0))
        (raise-io-error socks4-bind "bad port binding" port))
       ((not (equal? host inaddr-any4))
        (raise-io-error socks4-bind "bad host binding" host))
       (else
        (using (srv-sock (tcp-listen (cons inaddr-any4 0) backlog: 1) :- ServerSocket)
          (let* ((binding-address (srv-sock.address))
                 (host (car binding-address))
                 (port (cdr binding-address)))
            (accept! host port)
            (try
             (using (proxy-sock (srv-sock.accept) :- StreamSocket)
               (let* ((binding-address (proxy-sock.peer-address))
                      (host (car binding-address))
                      (port (cdr binding-address)))
                 (accept! host port)
                 (socks-proxy-pump sock proxy-sock)))
             (finally
              (srv-sock.close))))))))))

(def (socks5-request-handler sock reader writer allow-bind?)
  (socks5-handshake sock reader writer)
  (using ((sock :- StreamSocket)
          (reader :- BufferedReader)
          (writer :- BufferedWriter))
    (def (reject!)
      (writer.write-u8 5)
      (writer.write-u8 1)
      (writer.write '#u8(0 0 0 0 0 0 0 0))
      (writer.close)
      (reader.close))
    (let (vn (reader.read-u8!))
      (unless (fx= vn 5)
        (raise-io-error socks5-request-handler "bad socks protocol version"  vn)))
    (let (cmd (reader.read-u8!))
      (case cmd
        ((1)                            ; CONNECT
         (try
          (socks5-connect sock reader writer)
          (catch (e)
            (debugf "SOCKS5 connect failed: ~a" e)
            (reject!))))
        ((2)                            ; BIND
         (if allow-bind?
           (try
            (socks5-bind sock reader writer)
            (catch (e)
              (debugf "SOCKS5 bind failed: ~a" e)
              (reject!)))
           (begin
             (warnf "SOCKS5 bind request from ~a rejected" (sock.peer-address))
             (reject!))))
        (else
         (warnf "SOCKS5 request with unknown command from ~a: ~a" (sock.peer-address) cmd)
         (reject!))))))

(def (socks5-handshake sock reader writer)
  (using ((reader :- BufferedReader)
          (writer :- BufferedWriter))
    (let (methods (reader.read-u8!))
      (let lp ((i 0) (accept? #f))
        (cond
         ((fx< i methods)
          (let (method (reader.read-u8!))
            (lp (fx+ i 1) (or accept? (fx= method 0)))))
         (accept?
          (writer.write-u8 5)
          (writer.write-u8 0)
          (writer.flush))
         (else
          (writer.write-u8 5)
          (writer.write-u8 #xff)
          (writer.flush)
          (raise-io-error socks5-handshake "no acceptable authentication method")))))))

(def (socks5-connect sock reader writer)
  (using ((reader :- BufferedReader)
          (writer :- BufferedWriter))
    (def (accept! host port)
      (writer.write-u8 5)
      (writer.write-u8 0)
      (writer.write-u8 0)
      (writer.write-u8
       (if (fx= (u8vector-length host) 4) 1 4))
      (writer.write host)
      (writer.write-u16 port)
      (writer.flush))

    (let* ((_ (reader.read-u8!))        ; RSV
           (atyp (reader.read-u8!)))    ; ATYP
      (case atyp
        ((1)                            ; IPv4
         (let* ((host (make-u8vector 4))
                (_ (reader.read host 0 4 4))
                (_ (when (sensitive-host? host)
                     (raise-io-error socks5-connect "attempt to connect to local host")))
                (port (reader.read-u16))
                (proxy-sock (tcp-connect (cons host port) default-connect-timeout)))
           (accept! host port)
           (socks-proxy-pump sock proxy-sock)))
        ((3)                            ; DOMAINNAME
         (let* ((len (reader.read-u8!))
                (host (make-u8vector len))
                (_ (reader.read host 0 len len))
                (host (utf8->string host))
                (port (reader.read-u16))
                (resolved (resolve-address (cons host port))))
           (when (sensitive-host? (car resolved))
             (raise-io-error socks4-connect "attempt to connect to local host"))
           (using (proxy-sock (tcp-connect resolved default-connect-timeout) :- StreamSocket)
             (let* ((peer-address (proxy-sock.peer-address))
                    (host (car peer-address))
                    (port (cdr peer-address)))
               (accept! host port)
               (socks-proxy-pump sock proxy-sock)))))
        ((4)                            ; IPv6
         (let* ((host (make-u8vector 16))
                (_ (reader.read host 0 16 16))
                (_ (when (sensitive-host? host)
                     (raise-io-error socks5-connect "attempt to connect to local host")))
                (port (reader.read-u16))
                (proxy-sock (tcp-connect (cons host port) default-connect-timeout)))
           (accept! host port)
           (socks-proxy-pump sock proxy-sock)))
        (else
         (raise-io-error socks4-connect "unknwon address type" atyp))))))

(def (socks5-bind sock reader writer)
  (using ((reader :- BufferedReader)
          (writer :- BufferedWriter))
    (def (accept! host port)
      (writer.write-u8 5)
      (writer.write-u8 0)
      (writer.write-u8 0)
      (writer.write-u8
       (if (fx= (u8vector-length host) 4) 1 4))
      (writer.write host)
      (writer.write-u16 port)
      (writer.flush))

    (def (listen! host)
      (using (srv-sock (tcp-listen (cons host 0) backlog: 1) :- ServerSocket)
        (let* ((binding-address (srv-sock.address))
               (host (car binding-address))
               (port (cdr binding-address)))
          (accept! host port))
        (try
         (using (proxy-sock (srv-sock.accept) :- StreamSocket)
           (let* ((binding-address (srv-sock.address))
                  (host (car binding-address))
                  (port (cdr binding-address)))
             (accept! host port))

           (socks-proxy-pump sock proxy-sock))
         (finally
          (srv-sock.close)))))

    (def (check! host port expected-host)
      (unless (equal? host expected-host)
        (raise-io-error socks5-bind "bad host binding" host))
      (unless (equal? port 0)
        (raise-io-error socks5-bind "bad port binding" port)))

    (let* ((_ (reader.read-u8!))        ; RSV
           (atyp (reader.read-u8!)))    ; ATYP
      (case atyp
        ((1)                            ; IPv4
         (let* ((host (make-u8vector 4 0))
                (_ (reader.read host 0 4 4))
                (port (reader.read-u16)))
           (check! host port inaddr-any4)
           (listen! inaddr-any4)))
        ((4)                            ; IPv6
         (let* ((host (make-u8vector 16 0))
                (_ (reader.read host 0 16 16))
                (port (reader.read-u16)))
           (check! host port inaddr-any6)
           (listen! inaddr-any6)))
        (else
         (raise-io-error socks5-bind "bad binding" atyp))))))

(def (sensitive-host? ip)
  (if (fx= (u8vector-length ip) 4)
    (fx= (u8vector-ref ip 0) 127)
    (equal? ip localhost6)))
