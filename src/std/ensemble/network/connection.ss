;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble connections
(import :std/error
        :std/interface
        :std/io
        :std/io/bio/buffer
        :std/net/ssl
        :std/time/precise
        :std/time/timeout
        :std/serde/marshal
        :std/serde/unmarshal
        :std/sync/channel
        ../interface
        ../tls
        ../ucan/ext
        ./types)
(export new-connection)

(defmethod {:init! connection}
  (lambda (self (net       : network)
           (peer      : HostID)
           (sock      : StreamSocket)
           (reader    : BufferedReader)
           (writer    : BufferedWriter)
           (direction : :fixnum))
    (set! self.this (Connection self))
    (set! self.net net)
    (set! self.peer peer)
    (set! self.sock sock)
    (set! self.reader reader)
    (set! self.writer writer)
    (set! self.direction direction)
    (set! self.mx (make-mutex 'connection))
    (set! self.next-stream direction)
    (set! self.streams-in (make-hash-table-eqv))
    (set! self.streams-out (make-hash-table-eqv))
    (set! self.pending-out (make-hash-table-eqv))
    (set! self.write-queue (Channel))))

(def (new-connection (net       : network)
                     (peer      : HostID)
                     (sock      : StreamSocket)
                     (reader    : BufferedReader)
                     (writer    : BufferedWriter)
                     (direction : :fixnum))
  => Connection
  (try
   (using (conn (connection net peer sock reader writer direction)
                : connection)
     (net.monitor.on-open-connection conn.this)
     (net.event-bus.emit!
      (ConnectionEstablishedEvent
       (current-time-seconds)
       conn.this))
     (spawn-actor (cut connection-reader conn)
                  [] ['connection/reader peer] net.tgroup)
     (spawn-actor (cut connection-writer conn)
                  [] ['connection/writer peer] net.tgroup)
     conn.this)
   (catch (e)
     (ignore-errors (sock.close))
     (raise e))))

(def (connection-error (self : connection)
                       (e    : Error))
  (unless self.closed?
    (do-with-lock self.net.mx
      (if (fx= self.direction DIRECTION-IN)
        (self.net.incoming.delete! self.peer)
        (self.net.outgoing.delete! self.peer))
      (self.net.monitor.on-close-connection self.this))))

(def (connection-close (self : connection))
  => :void
  (TODO connection-close))

(def (connection-reader (self : connection))
  => :void
  (TODO connection-reader))

(def (connection-writer (self : connection))
  => :void
  (TODO connection-reader))

(def (connection-open-stream! (self  :  connection)
                              (proto :  :string)
                              (token :? Token))
  (TODO connection-open-stream!))

(implement Closer connection
  (close __connection-close))

(implement NetworkTimeout connection
  (set-input-timeout!
   (lambda (self timeo)
     (self.sock.set-input-timeout! timeo)))
  (set-output-timeout!
   (lambda (self timeo)
     (self.sock.set-output-timeout! timeo))))

(implement Connection connection
  (address
   (lambda (self)
     (HostAddress self.net.host (self.sock.address))))
  (peer
   (lambda (self)
     (HostAddress self.peer (self.sock.peer-address))))
  (direction &connection-direction)
  (open-stream! __connection-open-stream!))
