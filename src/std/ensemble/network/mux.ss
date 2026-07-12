;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble connection multiplexer
(import :std/error
        :std/interface
        :std/io
        :std/io/bio/buffer
        :std/sync/channel
        :std/sync/completion
        :std/iter
        :std/serde/marshal
        :std/serde/unmarshal
        ../interface
        ./types
        ./stream)
(export connection-mux-reader
        connection-mux-writer
        close-connection!)

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
     (close-connection! self e))))

(def (connection-mux-writer (self : connection))
  => :void
  (try
   (for (msg self.write-queue)
     (do-with-lock self.mx
       (mux-output-dispatch! msg self)))
   (catch (e)
     (close-connection! self e))))

(def (connection-write-message (self : connection)
                               (msg  : MuxMessage))
  (unless self.closed?
   (let (blob (marshal msg))
    (when (fx> (u8vector-length blob) self.net.limits.network.message-size)
      (raise-io-error connection-write-message "message too large"))
    (self.writer.write-varuint (u8vector-length blob))
    (self.writer.write blob)
    (self.writer.flush)) ))

(def (close-connection! (self : connection)
                          (e    : :t))
  (let (just-closed?
        (do-with-lock self.mx
          (if self.closed?
            #f
            (begin
              (set! self.closed? #t)
              #t))))
    (when just-closed?
      (log.debug "closing connection"
                 peer: self.peer
                 exception: (exception->string e))
      (ignore-errors (self.sock.close))
      (ignore-errors (channel-close (self.write-queue)))
      (for (m self.write-queue)
        (when (SyncMuxMessage? m)
          (completion-error! (SyncMuxMessage-completion m) e)))
      (do-with-lock self.mx
        (for (c (in-hash-values self.pending))
          (completion-error! c e))
        (self.pending.clear!)
        (for (s (in-hash-values self.streams))
          (abandon-stream! s e))
        (self.streams.clear!))
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
      (if conn.closed?
        (completion-error! self.completion (Closed "connection closed"))
        (begin
          (conn.pending.set! self.msg.seqno self.completion)
          (mux-output-dispatch! self.msg conn)))))))
