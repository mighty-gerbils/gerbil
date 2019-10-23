;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; synchronous sockets -- socket server control

(import :gerbil/gambit/threads
        :std/misc/threads
        :std/net/socket/base
        :std/logger
        :std/sugar)
(export start-socket-server!
        stop-socket-server!)

(cond-expand
  (linux
   (import :std/net/socket/epoll-server))
  (bsd
   (import :std/net/socket/kqueue-server)))

;; start the socket server -- takes a server implementation, eg epoll-server
(def (start-socket-server! (impl (default-server-impl)))
  (cond
   ((current-socket-server) => values)
   (else
    (start-logger!)
    (let (srv (spawn/group 'socket-server impl))
      (current-socket-server srv)
      srv))))

(def (stop-socket-server! (srv (current-socket-server)))
  (server-shutdown! srv))

(def (server-shutdown! srv)
  (let (tgroup (thread-thread-group srv))
    (try
     (!!socket-server.shutdown! srv)
     (thread-join! srv)
     (finally
      (thread-group-kill! tgroup)))))

(def (default-server-impl)
  (cond-expand
    (linux epoll-socket-server)
    (bsd kqueue-socket-server)
    (else
     (error "No socket server implementation for this sytem" (system-type)))))
