;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble connections
(import :std/error
        :std/interface
        :std/io
        :std/time/timeout
        :std/sync/channel
        :std/encoding/zlib
        ../interface
        ./types
        ./mux)
(export new-connection)

(defmethod {:init! connection}
  (lambda (self (net       : network)
           (peer      : HostID)
           (sock      : StreamSocket)
           (direction : :fixnum))
    (set! self.this (Connection self))
    (set! self.net net)
    (set! self.peer peer)
    (set! self.sock sock)
    (set! self.reader
      (open-buffered-reader
       (open-inflate-reader (sock.reader))))
    (set! self.writer
      (open-buffered-writer
       (open-deflate-writer (sock.writer)
                            flush: #t)))
    (set! self.direction direction)
    (set! self.mx (make-mutex 'connection))
    (set! self.next-stream direction)
    (set! self.streams-in (make-hash-table-eqv))
    (set! self.streams-out (make-hash-table-eqv))
    (set! self.write-queue (Channel))))

(def (new-connection (net       : network)
                     (peer      : HostID)
                     (sock      : StreamSocket)
                     (direction : :fixnum))
  => Connection
  (try
   (using (conn (connection net peer sock direction)
                : connection)
     (net.monitor.on-open-connection conn.this)
     (spawn-actor (cut connection-mux-reader conn)
                  [] ['connection/reader peer] net.tgroup)
     (spawn-actor (cut connection-mux-writer conn)
                  [] ['connection/writer peer] net.tgroup)
     conn.this)
   (catch (e)
     (ignore-errors (sock.close))
     (raise e))))

(def (connection-close (self : connection))
  => :void
  (TODO connection-close))

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
