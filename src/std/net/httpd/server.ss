;;; -*- Gerbil -*-
;;; (C) vyzo
;;; embedded HTTP/1.1 server

(import :gerbil/gambit/threads
        :gerbil/gambit/exceptions
        :std/sugar
        :std/logger
        :std/io
        :std/os/socket
        :std/actor
        :std/misc/threads
        :std/net/httpd/handler
        :std/net/httpd/mux)
(export start-http-server!
        stop-http-server!
        http-register-handler
        current-http-server)

(deflogger httpd)

;; handler registration
(defmessage !register-handler (host path handler))

(def current-http-server
  (make-parameter #f))

(def (start-http-server! mux: (mux (make-default-http-mux))
                         backlog: (backlog 10)
                         sockopts: (sockopts [SO_REUSEADDR])
                         . addresses)
  (start-logger!)
  (let (socks (map (cut tcp-listen <> backlog: backlog sockopts: sockopts) addresses))
    (spawn/group 'http-server http-server socks mux)))

(def (stop-http-server! httpd)
  (let (tgroup (thread-thread-group httpd))
    (try
     (-> httpd (!shutdown))
     (thread-join! httpd)
     (finally
      (thread-group-kill! tgroup)))))

;; handler: lambda (request response)
(defcall-actor (http-register-handler httpd path handler (host #f))
  (if (string? path)
    (if (procedure? handler)
      (->> httpd (!register-handler host path handler))
      (error "Bad handler; expected procedure" handler))
    (error "Bad path; expected string" path))
  error: "error registering handler" path)

;;; implementation
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
          (try
           (put-handler! mux host path handler)
           (--> (!ok (void)))
           (catch (e)
             (--> (!error (error-message e))))))

         ((!shutdown)
          (exit 'shutdown))

         ((!actor-dead thread)
          (try
           (thread-join! thread)
           (warnf "acceptor thread ~a exited unexpectedly" (thread-name thread))
           (catch (uncaught-exception? e)
             (errorf "acceptor error: ~a" (uncaught-exception-reason e)))
           (catch (e)
             (errorf "acceptor error: ~a" e))))

         (bogus
          (warnf "unexpected message from ~a: ~a" @source bogus))))))

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
                  http-request-handler clisock get-handler)
      (loop)))

  (let again ()
    (try
     (loop)
     (catch (os-exception? e)
       (errorf "error accepting connection: ~a" e)
       (again)))))
