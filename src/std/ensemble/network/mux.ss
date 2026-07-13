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
        connection-close!)

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
     (connection-close! self e))))

(def (connection-mux-writer (self : connection))
  => :void
  (try
   (for (msg self.write-queue)
     (do-with-lock self.mx
       (mux-output-dispatch! msg self)))
   (catch (e)
     (connection-close! self e))))

(def (connection-write-message (self : connection)
                               (msg  : MuxMessage))
  (let (blob (marshal msg))
    (when (fx> (u8vector-length blob) self.net.limits.network.message-size)
      (raise-io-error connection-write-message "message too large"))
    (self.writer.write-varuint (u8vector-length blob))
    (self.writer.write blob)
    (self.writer.flush)))

(def (connection-close! (self : connection)
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
          (stream-abandon! s e))
        (self.streams.clear!))
      (do-with-lock self.net.mx
        (if (fx= self.direction DIRECTION-IN)
          (self.net.incoming.delete! self.peer)
          (self.net.outgoing.delete! self.peer))
        (self.net.monitor.on-close-connection self.this)))))

(def (mux-output-dispatch! msg (conn : connection))
  (if (SyncMuxMessage? msg)
    (using (sm msg : SyncMuxMessage)
      (if conn.closed?
        (completion-error! sm.completion (Closed "connection closed"))
        (begin
          (conn.pending.set! sm.msg.seqno sm.completion)
          (connection-write-message conn sm.msg))))
    (unless conn.closed?
      (connection-write-message conn msg))))

(defcall-interface-method MuxInputDispatch dispatch!
  (mux-input-dispatch! msg conn))

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
