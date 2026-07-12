;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble connection multiplexer
(import :std/error
        :std/interface
        :std/io
        :std/io/bio/buffer
        :std/sync/channel
        :std/iter
        :std/serde/marshal
        :std/serde/unmarshal
        ../interface
        ./types)
(export connection-mux-reader
        connection-mux-writer)

(def (connection-mux-reader (self : connection))
  => :void
  (try
   (while #t
     (let (size (self.reader.read-varuint))
        (when (> size self.net.limits.network.message-size)
          (log.warn "oversize message from peer"
                    peer: self.peer)
          (raise-io-error connection-mux-reader "oversize message"))
       (using ((delim (self.reader.delimit size) : BufferedReader)
               (msg (delim.deserialize (unmarshal-environment dag: #t))
                    : MuxMessage))
         (buffer-detach! delim)
         (do-with-lock self.mx
           (mux-input-dispatch! msg self)))))
   (catch (e)
     (on-connection-error self e))))

(def (connection-mux-writer (self : connection))
  => :void
  (try
   (for (msg self.write-queue)
     (do-with-lock self.mx
       (mux-output-dispatch! msg self)))
   (catch (e)
     (on-connection-error self e))))

(def (connection-write-message (self : connection)
                               (msg  : MuxMessage))
  (let (blob (marshal msg))
    (when (fx> (u8vector-length blob) self.net.limits.network.message-size)
      (raise-io-error connection-write-message "message too large"))
    (self.writer.write-varuint (u8vector-length blob))
    (self.writer.write blob)
    (self.writer.flush)))

(def (on-connection-error (self : connection)
                          (e    : :t))
  (ignore-errors (self.sock.close))
  (ignore-errors (channel-close (self.write-queue)))
  (let (notify
        (do-with-lock self.mx
          (if self.closed?
            #f
            (begin
              (set! self.closed? #t)
              #t))))
    (when notify
      (do-with-lock self.net.mx
        (if (fx= self.direction DIRECTION-IN)
          (self.net.incoming.delete! self.peer)
          (self.net.outgoing.delete! self.peer))
        (self.net.monitor.on-close-connection self.this)))))

(defcall-interface-method MuxInputDispatch dispatch!
  (mux-input-dispatch! msg conn))

(defcall-interface-method MuxOutputDispatch dispatch!
  (mux-output-dispatch! msg conn))

(implement MuxInputDispatch
  (OpenStream
   (dispatch!
    (lambda (self conn)
      (TODO dispatch!))))
  (AckStream
   (dispatch!
    (lambda (self conn)
      (TODO dispatch!))))
  (CloseStream
   (dispatch!
    (lambda (self conn)
      (TODO dispatch!))))
  (ResetStream
   (dispatch!
    (lambda (self conn)
      (TODO dispatch!))))
  (Data
   (dispatch!
    (lambda (self conn)
      (TODO dispatch!))))
  (AckData
   (dispatch!
    (lambda (self conn)
      (TODO dispatch!)))))

(implement MuxOutputDispatch
  (OpenStream
   (dispatch!
    (lambda (self conn)
      (connection-write-message conn self))))
  (AckStream
   (dispatch!
    (lambda (self conn)
      (connection-write-message conn self))))
  (CloseStream
   (dispatch!
    (lambda (self conn)
      (connection-write-message conn self))))
  (ResetStream
   (dispatch!
    (lambda (self conn)
      (connection-write-message conn self))))
  (Data
   (dispatch!
    (lambda (self conn)
      (connection-write-message conn self))))
  (AckData
   (dispatch!
    (lambda (self conn)
      (connection-write-message conn self))))
  (SyncMuxMessage
   (dispatch!
    (lambda (self conn)
      (conn.pending-out.set! self.msg.seqno self.completion)
      (mux-output-dispatch! self.msg conn)))))
