;;; -*- Gerbil -*-
;;; © vyzo
;;; embedded HTTP/1.1 server

(import :std/sugar
        :std/error
        :std/contract
        (only-in :std/logger start-logger!)
        :std/io
        :std/actor
        :std/net/ssl
        :std/os/socket
        :std/misc/threads
        :gerbil/gambit
        ./base
        ./handler
        ./mux)
(export start-http-server!
        stop-http-server!)

(def (start-http-server! mux: (mux (make-default-http-mux))
                         backlog: (backlog 10)
                         sockopts: (sockopts [SO_REUSEADDR])
                         request-logger: (request-logger #f)
                         . addresses)
  (start-logger!)
  (let (socks (map (cut http-listen <> backlog: backlog sockopts: sockopts) addresses))
    (let (srv (spawn/group 'http-server http-server socks (Mux mux) request-logger))
      (current-http-server srv)
      srv)))

(def (stop-http-server! (server (current-http-server)))
  (unless (thread-dead? server)
    (->> server (!shutdown)))
  (thread-join! server))

;;; implementation
(def (http-listen addr backlog: backlog sockopts: sockopts)
  (match addr
    ([ssl: addr ssl-context]
     (ssl-listen addr context: ssl-context backlog: backlog sockopts: sockopts))
    (else
     (tcp-listen addr backlog: backlog sockopts: sockopts))))

(def (http-server socks mux request-logger)
  (using (mux :- Mux)
    (def acceptors
      (parameterize ((current-http-server (current-thread)))
        (map
          (lambda (sock)
            (spawn/name 'http-server-accept
                        http-server-accept sock
                        (cut mux.get-handler <> <>)
                        request-logger))
          socks)))

    (def (shutdown!)
      (for-each ServerSocket-close socks))

    (def (monitor thread)
      (spawn/name 'http-server-monitor actor-monitor thread (current-thread)))

    (def (loop)
      (let/cc exit
        (while #t
          (<-
           ((!register-handler host path handler)
            (if (actor-authorized? @source)
              (begin
                (infof "registering handler in host ~a: ~a" (or host '(any)) path)
                (try
                 (mux.put-handler! host path handler)
                 (--> (!ok (void)))
                 (catch (e)
                   (--> (!error (error-message e))))))
              (--> (!error "not authorized"))))

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
     (parameterize ((current-http-server (current-thread)))
       (loop))
     (catch (e)
       (errorf "unhandled exception: ~a" e)
       (raise e))
     (finally
      (shutdown!)))))

(def (http-server-accept sock get-handler request-logger)
  (using (sock :- ServerSocket)
    (def (loop)
      (let (clisock (sock.accept))
        (spawn/name 'http-request-handler
                    http-request-handler (StreamSocket clisock)
                    get-handler request-logger)
        (loop)))

    (let again ()
      (try
       (loop)
       (catch (os-exception? e)
         (errorf "error accepting connection: ~a" e)
         (again))))))
