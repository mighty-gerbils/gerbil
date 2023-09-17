;;; -*- Gerbil -*-
;;; ̧© vyzo
;;; embedded HTTP/1.1 server

(import :gerbil/gambit/threads
        :std/sugar
        :std/error
        (only-in :std/logger start-logger!)
        :std/io
        :std/actor
        :std/net/ssl
        :std/os/socket
        :std/misc/threads
        ./base
        ./handler
        ./mux)
(export start-http-server!
        stop-http-server!)

(def (start-http-server! mux: (mux (make-default-http-mux))
                         backlog: (backlog 10)
                         sockopts: (sockopts [SO_REUSEADDR])
                         . addresses)
  (start-logger!)
  (let (socks (map (cut http-listen <> backlog: backlog sockopts: sockopts) addresses))
    (let (srv (spawn/group 'http-server http-server socks mux))
      (current-http-server srv)
      srv)))

(def (stop-http-server! httpd)
  (let (tgroup (thread-thread-group httpd))
    (try
     (->> httpd (!shutdown))
     (thread-join! httpd)
     (finally
      (thread-group-kill! tgroup)))))

;;; implementation
(def (http-listen addr backlog: backlog sockopts: sockopts)
  (match addr
    ([ssl: addr ssl-context]
     (ssl-listen addr context: ssl-context backlog: backlog sockopts: sockopts))
    (else
     (tcp-listen addr))))

(def (http-server socks mux)
  (with-methods mux get-handler put-handler!)

  (def acceptors
    (parameterize ((current-http-server (current-thread)))
      (map
        (lambda (sock)
          (spawn/name 'http-server-accept
                      http-server-accept sock (cut get-handler mux <> <>)))
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
               (put-handler! mux host path handler)
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
     (with-exception-stack-trace loop))
   (catch (e)
     (errorf "unhandled exception: ~a" e)
     (raise e))
   (finally
    (shutdown!))))

(def (http-server-accept sock get-handler)
  (def (loop)
    (let (clisock (ServerSocket-accept sock))
      (spawn/name 'http-request-handler
                  http-request-handler (StreamSocket clisock) get-handler)
      (loop)))

  (let again ()
    (try
     (loop)
     (catch (os-exception? e)
       (errorf "error accepting connection: ~a" e)
       (again)))))
