;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host stream monitor
(import :std/error
        :std/interface
        :std/log
        ../interface
        ./types)
(export new-host-stream-monitor)

(deflogger log name: "/ensemble/host/stream")

(def (new-host-stream-monitor (host : basic-host))
  => StreamMonitor
  (StreamMonitor
   (host-stream-monitor host)))

(def (stream-monitor-handle-stream! (self   : host-stream-monitor)
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
         ((stream-monitor-get-reactor self (stream.protocol))
          => (lambda ((reactor :- stream-reactor))
               (spawn-actor
                (cut reactor.reactor.handle-stream! stream)
                [] 'host/stream self.host.tgroup)))
         (else
          (ignore-errors (stream.close))
          (stream-monitor-on-close self stream)
          (log.warn "no reactor for stream"
                    protocol: (stream.protocol)
                    address:  (conn.address)
                    peer:     (conn.peer-address))))))))

(def (stream-monitor-get-reactor (self  : host-stream-monitor)
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

(def (stream-monitor-on-close (self   : host-stream-monitor)
                              (stream : Stream))
  => :void
  (do-with-lock self.host.mx
    (if (fx= (stream.direction) DIRECTION-IN)
      (set! self.host.streams-in
        (fx- self.host.streams-in 1))
      (set! self.host.streams-out
        (fx- self.host.streams-out 1)))))

(implement StreamMonitor host-stream-monitor
  (handle-stream! __stream-monitor-handle-stream!)
  (on-close       __stream-monitor-on-close))
