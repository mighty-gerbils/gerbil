;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host stream handler
(import :std/interface
        :std/log
        ../interface
        ./types)
(export new-host-stream-handler)

(deflogger log name: "/ensemble/host/stream")

(def (new-host-stream-handler (host : basic-host))
  => StreamHandler
  (StreamHandler
   (host-stream-handler host)))

(def (stream-handler-handle-stream! (self   : host-stream-handler)
                                    (stream : Stream))
  => :void
  (def (accept! message dispatch?)
    (using (conn (stream.connection) : Connection)
      (log.debug message
                 protocol: (stream.protocol)
                 address:  (conn.address)
                 peer:     (conn.peer-address)))
    dispatch?)
  (def (reject! message)
    (ignore-errors (stream.close))
    (using (conn (stream.connection) : Connection)
      (log.warn message
                protocol: (stream.protocol)
                address:  (conn.address)
                peer:     (conn.peer-address)))
    #f)

  (let (dispatch?
        (do-with-lock self.mx
          (if (fx= (conn.direction) DIRECTION-IN)
            (if (fx< self.host.streams-in self.host.limit.streams-in)
              (begin
                (set! self.host.streams-in
                  (fx+ self.host.streams-in 1))
                (accept! "accepted incoming stream" #t))
              (reject! "rejected incoming stream; limit exceeded"))
            (if (fx< self.host.streams-out self.host.limit.streams-out)
              (begin
                (set! self.host.streams-out
                  (fx+ self.host.streams-out 1))
                (accept! "new outgoing stream" #f))
              (reject! "rejected outgoing stream; limit exceeded")))))
    (when dispatch?
      (cond
       ((stream-handler-get-reactor self (stream.protocol))
        => (lambda ((reactor :- stream-reactor))
             (spawn-actor
              (cut reactor.handler.handle-stream! stream)
              [] 'host/stream self.host.tgroup)))
       (else
        (using (conn (stream.connection) : Connection)
          (ignore-errors (stream.close))
          (stream-handler-close self stream)
          (log.warn "no reactor for stream"
                    protocol: (stream.protocol)
                    address:  (conn.address)
                    peer:     (conn.peer-address))))))))

(def (stream-handler-get-reactor (self  : host-stream-handler)
                                 (proto : :string))
  => :t
  (do-with-lock self.host.mx
    (cond
     ((self.host.reactors.ref proto #f)
      => (lambda ((reactor :- stream-reactor))
           (when (and reactor.one-shot
                      reactor.thread)
             (thread-send reactor.thread 't))
           reactor))
     (else #f))))

(def (stream-handler-close (self   : host-stream-handler)
                           (stream : Stream))
  => :void
  (do-with-lock self.host.mx
    (if (fx= (stream.direction) DIRECTION-IN)
      (set! self.host.streams-in
        (fx- self.host.streams-in 1))
      (set! self.host.streams-out
        (fx- self.host.streams-out 1)))))

(implement StreamHandler host-stream-handler
  (handle-stream! __stream-handler-handle-stream!)
  (close          __stream-handler-close))
