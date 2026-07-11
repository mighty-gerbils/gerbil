;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble connection multiplexer
(import :std/error
        :std/interface
        :std/io
        ../interface
        ./types)
(export connection-mux-reader
        connection-mux-writer)

(def (connection-mux-reader (self : connection))
  => :void
  (TODO connection-reader))

(def (connection-mux-writer (self : connection))
  => :void
  (TODO connection-writer))

(def (on-connection-error (self : connection)
                          (e    : Error))
  (unless self.closed?
    (do-with-lock self.net.mx
      (if (fx= self.direction DIRECTION-IN)
        (self.net.incoming.delete! self.peer)
        (self.net.outgoing.delete! self.peer))
      (self.net.monitor.on-close-connection self.this))))
