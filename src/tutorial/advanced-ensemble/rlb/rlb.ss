(import :std/cli/getopt
        :std/actor
        :std/config
        :std/logger
        :std/sugar
        :std/io
        :std/misc/shuffle
        :std/os/socket)
(export main)

(deflogger rlb)

(def (main . args)
  (call-with-getopt rlb-main args
    program: "rlb"
    help: "A simple random selection load balancer"
    (argument 'server-id
      help: "the server id")))

(def (rlb-main opt)
  (let* ((server-id (hash-ref opt 'server-id))
         (cfg (load-ensemble-server-config (string->server-identifier server-id))))
    (become-ensemble-server! cfg (cut start-rlb! cfg))))

(def (start-rlb! cfg)
  (let* ((app-config  (config-get! cfg application:))
         (rlb-config  (agetq 'rlb app-config))
         (listen      (config-get! rlb-config listen:))
         (proxies     (config-get! rlb-config proxies:))
         (server-sock (tcp-listen listen sockopts: [SO_REUSEADDR SO_REUSEPORT])))
    (when (null? proxies)
      (error "No proxies specified"))
    (spawn/name 'rlb-proxy rlb-proxy server-sock proxies)
    (spawn/name 'rlb   rlb-actor server-sock)))

(def (rlb-actor server-sock)
  (let/cc exit
      (while #t
        (<-
         ,(@shutdown
           (infof "shutting down...")
           (using (closer server-sock : Closer)
             (closer.close))
           (exit 'shutdown))
         ,(@ping)
         ,(@unexpected warnf)))))

(def (rlb-proxy (server-sock : ServerSocket) proxies)
  (while #t
    (using (client (server-sock.accept) : StreamSocket)
      (let (proxy (car (shuffle proxies)))
        (infof "forwarding ~a to ~a" (client.peer-address) proxy)
        (spawn/name 'rlb-forward rlb-forward client proxy)))))

(def (rlb-forward (client : StreamSocket) proxy)
  (try
   (using (server (tcp-connect proxy) : StreamSocket)
     (let ((thr1 (spawn/name 'io-copy io-copy! (client.reader) (server.writer)))
           (thr2 (spawn/name 'io-copy io-copy! (server.reader) (client.writer))))
       (with-catch void (cut thread-join! thr1))
       (with-catch void (cut thread-join! thr2)))
     (with-catch void (cut client.close))
     (with-catch void (cut server.close)))
   (catch (e)
     (errorf "error forwarding ~a to ~a: ~a" (client.peer-address) proxy e))))
