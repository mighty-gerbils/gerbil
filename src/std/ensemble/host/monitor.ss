;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host stream handler
(import :std/error
        :std/interface
        :std/log
        ../interface
        ./types)

(deflogger log name: "/ensemble/host/monitor")

(def (basic-host-on-open-connection (self : basic-host)
                                    (conn : Connection))
  => :void
  (def (accept! message)
    (log.debug message
               address: (conn.address)
               peer:    (conn.peer)))
  (def (reject! message)
    (ignore-errors (conn.close))
    (log.warn message
              address: (conn.address)
              peer:    (conn.peer))
    (raise-io-closed on-open-connection message))

  (do-with-lock self.mx
    (if (fx= (conn.direction) DIRECTION-IN)
      (if (fx< self.connections-in self.limits.host.connections-in)
        (begin
          (set! self.connections-in
            (fx+ self.connections-in 1))
          (accept! "accepted incoming connection"))
        (reject! "rejected incoming connection; limit exceeded"))
      (if (fx< self.connections-out self.limits.host.connections-out)
        (begin
          (set! self.connections-out
            (fx+ self.connections-out 1))
          (accept! "new outgoing connection"))
        (reject! "rejected outgoing connection; limit exceeded")))))

(def (basic-host-on-close-connection (self : basic-host)
                                     (conn : Connection))
  => :void
  (do-with-lock self.mx
    (if (fx= (conn.direction) DIRECTION-IN)
      (set! self.connections-in
        (fx- self.connections-in 1))
      (set! self.connections-out
        (fx- self.connections-out 1)))))

(def (basic-host-on-open-stream (self   : basic-host)
                                (stream : Stream))
  => :void
  (using (conn (stream.connection) : Connection)

    (def (accept! message dispatch?)
      (log.debug message
                 protocol: (stream.protocol)
                 address:  (conn.address)
                 peer:     (conn.peer))
      dispatch?)

    (def (reject! message)
      (ignore-errors (stream.close))
      (log.warn message
                protocol: (stream.protocol)
                address:  (conn.address)
                peer:     (conn.peer))
      (raise-io-closed on-open-stream message))

    (let (dispatch?
          (do-with-lock self.mx
            (if (fx= (conn.direction) DIRECTION-IN)
              (if (fx< self.streams-in self.limits.host.streams-in)
                (begin
                  (set! self.streams-in
                    (fx+ self.streams-in 1))
                  (accept! "accepted incoming stream" #t))
                (reject! "rejected incoming stream; limit exceeded"))
              (if (fx< self.streams-out self.limits.host.streams-out)
                (begin
                  (set! self.streams-out
                    (fx+ self.streams-out 1))
                  (accept! "new outgoing stream" #f))
                (reject! "rejected outgoing stream; limit exceeded")))))
      (when dispatch?
        (cond
         ((basic-host-get-reactor self (stream.protocol))
          => (lambda ((reactor :- stream-reactor))
               (spawn-actor
                (cut reactor.handler.handle-stream! stream)
                [] 'host/stream self.tgroup)))
         (else
          (ignore-errors (stream.close))
          (basic-host-on-close-stream self stream)
          (log.warn "no reactor for stream"
                    protocol: (stream.protocol)
                    address:  (conn.address)
                    peer:     (conn.peer))
          (raise-io-closed on-open-stream "no reactor for steram")))))))

(def (basic-host-get-reactor (self  : basic-host)
                             (proto : :string))
  => :t
  (do-with-lock self.mx
    (cond
     ((self.reactors.ref proto #f)
      => (lambda ((reactor :- stream-reactor))
           (when reactor.one-shot
             (when reactor.thread
               (thread-send reactor.thread 't))
             (self.reactors.delete! proto))
           reactor))
     (else #f))))

(def (basic-host-on-close-stream (self   : basic-host)
                                 (stream : Stream))
  => :void
  (do-with-lock self.mx
    (if (fx= (stream.direction) DIRECTION-IN)
      (set! self.streams-in
        (fx- self.streams-in 1))
      (set! self.streams-out
        (fx- self.streams-out 1)))))

(implement NetworkMonitor basic-host
  (on-open-connection  __basic-host-on-open-connection)
  (on-close-connection __basic-host-on-close-connection)
  (on-open-stream      __basic-host-on-open-stream)
  (on-close-stream     __basic-host-on-close-stream))
