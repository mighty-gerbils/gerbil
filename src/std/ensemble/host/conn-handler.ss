;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host connection handler
(import :std/interface
        :std/log
        ../interface
        ./types
        ./stream-handler)
(export new-host-connection-handler)

(deflogger log name: "/ensemble/host/connection")

(def (new-host-connection-handler (host : basic-host))
  => ConnectionHandler
  (ConnectionHandler
   (host-connection-handler
    host
    (new-host-stream-handler host))))

(def (connection-handler-handle-connection! (self : host-connection-handler)
                                            (conn : Connection))
  => :void
  (def (accept! message)
    (conn.set-stream-handler! self.stream-handler)
    (log.debug message
               address: (conn.address)
               peer:    (conn.peer-address)))
  (def (reject! message)
    (ignore-errors (conn.close))
    (log.warn message
              address: (conn.address)
              peer:    (conn.peer-address)))

  (do-with-lock self.host.mx
    (if (fx= (conn.direction) DIRECTION-IN)
      (if (fx< self.host.connections-in self.host.limit.connections-in)
        (begin
          (set! self.host.connections-in
            (fx+ self.host.connections-in 1))
          (accept! "accepted incoming connection"))
        (reject! "rejected incoming connection; limit exceeded"))
      (if (fx< self.host.connections-out self.host.limit.connections-out)
        (begin
          (set! self.host.connections-out
            (fx+ self.host.connections-out 1))
          (accept! "new outgoing connection"))
        (reject! "rejected outgoing connection; limit exceeded")))))

(def (connection-handler-close (self : host-connection-handler)
                               (conn : Connection))
  => :void
  (do-with-lock self.host.mx
    (if (fx= (conn.direction) DIRECTION-IN)
      (set! self.host.connections-in
        (fx- self.host.connections-in 1))
      (set! self.host.connections-out
        (fx- self.host.connections-out 1)))))

(implement ConnectionHandler host-connection-handler
  (handle-connection! __connection-handler-handle-connection!)
  (close              __connection-handler-close))
