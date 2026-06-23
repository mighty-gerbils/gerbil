;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host stream handler
(import :std/error
        :std/interface
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
  (using (conn (stream.connection) : Connection)

    (def (accept! message dispatch?)
      (log.debug message
                 protocol: (stream.protocol)
                 address:  (conn.address)
                 peer:     (conn.peer-address))
      dispatch?)

    (def (reject! message)
      (ignore-errors (stream.close))
      (log.warn message
                protocol: (stream.protocol)
                address:  (conn.address)
                peer:     (conn.peer-address))
      #f)

    (let (dispatch?
          (do-with-lock self.host.mx
            (if (fx= (conn.direction) DIRECTION-IN)
              (if (fx< self.host.streams-in self.host.limits.host.streams-in)
                (begin
                  (set! self.host.streams-in
                    (fx+ self.host.streams-in 1))
                  (accept! "accepted incoming stream" #t))
                (reject! "rejected incoming stream; limit exceeded"))
              (if (fx< self.host.streams-out self.host.limits.host.streams-out)
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
           (when reactor.one-shot
             (when reactor.thread
               (thread-send reactor.thread 't))
             (self.host.reactors.delete! proto))
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
