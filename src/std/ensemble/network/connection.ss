;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble connections
(import :std/error
        :std/interface
        :std/io
        :std/io/bio/buffer
        :std/iter
        :std/time/precise
        :std/time/timeout
        :std/encoding/zlib
        :std/sync/completion
        :std/sync/spinlock
        :std/serde/marshal
        :std/serde/unmarshal
        ../interface
        ../ucan/ext
        ./base
        ./stream)
(export new-connection)

(def open-stream-timeout 5)

(def (direction->next-integer (dir : :fixnum))
  => :integer
  (if (fx= dir DIRECTION-OUT)
    0 1))

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
    (set! self.streams (make-hash-table-eqv))
    (set! self.pending (make-hash-table-eqv))
    (set! self.next-lock (SpinLock))
    (set! self.next-seqno (direction->next-integer direction))
    (set! self.next-stream(direction->next-integer direction))
    (set! self.control-thread
      (spawn/net (cut connection-control self)
                 ['connection/control peer]
                 self.net))
    (set! self.input-thread
      (spawn/net (cut connection-input self)
                 ['connection/input peer]
                 net))
    (set! self.output-thread
      (spawn/net (cut connection-output self)
                 ['connection/output peer]
                 net))))

(def (new-connection (net       : network)
                     (peer      : HostID)
                     (sock      : StreamSocket)
                     (direction : :fixnum))
  => Connection
  (using (conn (connection net peer sock direction)
                : connection)
     conn.this))

(def (connection-close (self : connection))
  => :void
  (thread-send self.control-thread (ConnectionClose))
  (thread-join! self.control-thread))

(def (connection-open-stream! (self  :  connection)
                              (proto :  :string)
                              (token :? Token))
  => Stream
  (let (completion (make-completion 'stream))
    (thread-send self.control-thread
                 (ConnectionOpenStream
                  completion
                  proto
                  token))
    (: (completion-wait! completion) Stream)))

(def (connection-input (self : connection))
  (try
   (until self.closed?
     (let (size (self.reader.read-varuint))
       (when (> size self.net.limits.network.message-size)
         (log.warn "oversize message from peer"
                   peer: self.peer)
         (raise-io-error connection-input "oversize message"))
       (using ((delim (self.reader.delimit size) : BufferedReader)
               (msg (delim.deserialize (unmarshal-environment dag: #t))
                    : MuxMessage))
         (buffer-detach! delim)
         (thread-send self.control-thread msg))))
   (catch (e)
     (thread-send self.control-thread (ConnectionIOError e)))))

(def (connection-output (self : connection))
  (try
   (until self.closed?
     (alet (msg (thread-receive async-linger-time #f))
       (let (blob (marshal msg))
         (when (fx> (u8vector-length blob) self.net.limits.network.message-size)
           (raise-io-error connection-output "message too large"))
         (self.writer.write-varuint (u8vector-length blob))
         (self.writer.write blob)
         (self.writer.flush))))
   (catch (e)
     (thread-send self.control-thread (ConnectionIOError e)))))

(def (connection-control (conn : connection))
  (until conn.closed?
    (let (op (thread-receive))
      (connection-control-dispatch! op conn)))

  (thread-send conn.net.thread
               (NetworkConnectionClosed conn.this))
  (thread-yield!)

  ;; linger until all external ops see the connection closed
  (let (deadline (async-linger-deadline))
    (let loop ()
      (alet (op (thread-receive deadline #f))
        (connection-control-dispatch! op conn)
        (loop)))))

(def (connection-dispatch-close (op   : ConnectionClose)
                                (conn : connection))
  (unless conn.closed?
    (set! conn.closed? #t)
    (log.debug "closing connection"
               peer: conn.peer)
    (ignore-errors (conn.sock.close))
    (for (s (in-hash-values conn.streams) : Stream)
      (ignore-errors (s.close))
      (conn.net.monitor.on-close-stream s))
    (conn.streams.clear!)
    (for (next (in-hash-values conn.pending) : :pair)
      (with ([c . thread] next)
        (completion-error! c (Closed "connection closed"))
        (thread-send thread 'closed)))
    (conn.pending.clear!)))

(def (connection-dispatch-io-error (op   : ConnectionIOError)
                                   (conn : connection))
  (unless conn.closed?
    (unless (Closed? op.error)
      (log.debug "connection error"
                 peer: conn.peer
                 exception: (exception->string op.error)))
    (connection-dispatch-close (ConnectionClose) conn)))

(def (connection-dispatch-open-stream (op   : ConnectionOpenStream)
                                      (conn : connection))
  (if conn.closed?
    (completion-error! op.completion (Closed "connection closed"))
    (let* ((seqno (connection-next-seqno! conn))
           (stream-id (connection-next-stream-id! conn))
           (expire (+ (current-time-seconds) open-stream-timeout))
           (auth
            (if op.token
              [op.token]
              (using (cap (SecurityContext-capability-context conn.net.security)
                          : CapabilityContext)
                (cap.provide! INVOKE
                              conn.net.host.did
                              conn.peer.did
                              op.protocol ""
                              expire))))
           (msg
            (OpenStream seqno
                        stream-id
                        op.protocol
                        auth
                        conn.net.limits.network.stream-window
                        conn.net.limits.network.message-size))
           (thread
            (spawn/net (cut connection-open-stream-timeout conn seqno expire)
                       'timeout conn.net)))
      (conn.pending.set! seqno (cons op.completion thread))
      (thread-send conn.output-thread msg))))

(def (connection-open-stream-timeout (conn   : connection)
                                     (seqno  : :integer)
                                     (expire : :integer))
  (unless (thread-receive (seconds->time expire) #f)
    (thread-send conn.control-thread (ConnectionOpenStreamTimeout seqno))))

(def (connection-dispatch-open-stream-timeout (op   : ConnectionOpenStreamTimeout)
                                              (conn : connection))
  (unless conn.closed?
    (alet (entry (conn.pending.ref op.seqno #f))
      (with ([c . _] entry)
        (completion-error! c (Timeout "open stream timeout"))))))

(def (connection-dispatch-stream-closed (op   : ConnectionStreamClosed)
                                        (conn : connection))
  (unless conn.closed?
    (alet (s (conn.streams.ref (op.stream.id) #f))
      (when (eq? s op.stream)
        (log.debug "stream closed"
                   peer: conn.peer
                   id: (op.stream.id)
                   exception: (exception->string op.error))
        (conn.streams.delete! (op.stream.id))
        (conn.net.monitor.on-close-stream op.stream)
        (thread-send conn.output-thread
                     (ResetStream
                      (op.stream.id)
                      (error-message op.error)))))))

(def (connection-dispatch-input-open-stream (msg  : OpenStream)
                                            (conn : connection))
  (TODO connection-dispatch-input-open-stream))

(def (connection-dispatch-input-accept-stream (msg  : AcceptStream)
                                              (conn : connection))
  (TODO connection-dispatch-input-ack-stream))

(def (connection-dispatch-input-reject-stream (msg  : RejectStream)
                                              (conn : connection))
  (TODO connection-dispatch-input-ack-stream))

(def (connection-dispatch-input-close-stream (msg  : CloseStream)
                                             (conn : connection))
  (TODO connection-dispatch-input-close-stream))

(def (connection-dispatch-input-reset-stream (msg  : ResetStream)
                                             (conn : connection))
  (TODO connection-dispatch-input-reset-stream))

(def (connection-dispatch-input-data (msg  : Data)
                                     (conn : connection))
  (TODO connection-dispatch-input-data))

(def (connection-dispatch-input-window-update (msg  : WindowUpdate)
                                              (conn : connection))
  (TODO connection-dispatch-input-window-update))

(defcall-interface-method ConnectionControlDispatch dispatch!
  (connection-control-dispatch! op conn))

(implement ConnectionControlDispatch
  (ConnectionClose
   (dispatch! __connection-dispatch-close))
  (ConnectionIOError
   (dispatch! __connection-dispatch-io-error))
  (ConnectionOpenStream
   (dispatch! __connection-dispatch-open-stream))
  (ConnectionOpenStreamTimeout
   (dispatch! __connection-dispatch-open-stream-timeout))
  (ConnectionStreamClosed
   (dispatch! __connection-dispatch-stream-closed))
  (OpenStream
   (dispatch! __connection-dispatch-input-open-stream))
  (AcceptStream
   (dispatch! __connection-dispatch-input-accept-stream))
  (RejectStream
   (dispatch! __connection-dispatch-input-reject-stream))
  (CloseStream
   (dispatch! __connection-dispatch-input-close-stream))
  (ResetStream
   (dispatch! __connection-dispatch-input-reset-stream))
  (Data
   (dispatch! __connection-dispatch-input-data))
  (WindowUpdate
   (dispatch! __connection-dispatch-input-window-update)))

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
  (direction    &connection-direction)
  (open-stream! __connection-open-stream!))
