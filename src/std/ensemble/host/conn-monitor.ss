;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host connection monitor
(import :std/error
        :std/interface
        :std/log
        ../interface
        ./types
        ./stream-monitor)
(export new-host-connection-monitor)

(deflogger log name: "/ensemble/host/connection")

(def (new-host-connection-monitor (host : basic-host))
  => ConnectionMonitor
  (ConnectionMonitor
   (host-connection-monitor
    host
    (new-host-stream-monitor host))))

(def (connection-monitor-handle-connection! (self : host-connection-monitor)
                                            (conn : Connection))
  => :void
  (def (accept! message)
    (conn.set-stream-monitor! self.stream-monitor)
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
      (if (fx< self.host.connections-in self.host.limits.host.connections-in)
        (begin
          (set! self.host.connections-in
            (fx+ self.host.connections-in 1))
          (accept! "accepted incoming connection"))
        (reject! "rejected incoming connection; limit exceeded"))
      (if (fx< self.host.connections-out self.host.limits.host.connections-out)
        (begin
          (set! self.host.connections-out
            (fx+ self.host.connections-out 1))
          (accept! "new outgoing connection"))
        (reject! "rejected outgoing connection; limit exceeded")))))

(def (connection-monitor-on-close (self : host-connection-monitor)
                                  (conn : Connection))
  => :void
  (do-with-lock self.host.mx
    (if (fx= (conn.direction) DIRECTION-IN)
      (set! self.host.connections-in
        (fx- self.host.connections-in 1))
      (set! self.host.connections-out
        (fx- self.host.connections-out 1)))))

(implement ConnectionMonitor host-connection-monitor
  (handle-connection! __connection-monitor-handle-connection!)
  (on-close           __connection-monitor-on-close))
