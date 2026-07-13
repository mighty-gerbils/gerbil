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
        ../ucan/cap
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
         (when self.closed?
           (raise-io-closed connection-mux-reader "connection closed"))
         (mux-input-dispatch! msg self))))
   (catch (e)
     (connection-close! self e))))

(def (connection-mux-writer (self : connection))
  => :void
  (try
   (for (msg self.write-queue)
     (mux-output-dispatch! msg self))
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
          (stream-abandon! s e)
          (self.net.monitor.on-close-stream s))
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
          (do-with-lock conn.mx
            (conn.pending.set! sm.msg.seqno sm.completion))
          (connection-write-message conn sm.msg))))
    (unless conn.closed?
      (connection-write-message conn msg))))

(def (mux-dispatch-open-stream (msg : OpenStream) (conn : connection))
  (def (valid-stream-id?)
    (if (fx= conn.direction DIRECTION-IN)
      (even? msg.stream-id)
      (odd?  msg.stream-id)))

  (def (existing-stream-id?)
    (do-with-lock conn.mx
      (conn.streams.ref msg.stream-id #f)))

  (def (stream-authorized?)
    (using (cap (conn.net.security.capability-context) : CapabilityContext)
      (let loop ((rest msg.auth))
        (match rest
          ([token . rest]
           (using (token : Token)
             (or (and (!VerificationOK? (cap.verify token conn.net.host.did))
                    (equal? token.type INVOKE)
                    (equal? token.issuer conn.peer.did)
                    (equal? token.audience conn.net.host.did)
                    (capability-includes? token.method msg.protocol))
               (loop rest))))
          (else #f)))))

  (def (reset! reason)
    (log.debug "rejecting stream"
               message: msg
               reason: reason
               peer: conn.peer)
    (channel-put conn.write-queue
                 (ResetStream msg.seqno
                              msg.stream-id
                              reason)))
  (cond
   ((not (valid-stream-id?))
    (reset! "invalid stream id"))
   ((existing-stream-id?)
    (reset! "duplicate stream id"))
   ((not (stream-authorized?))
    (reset! "not authorized"))
   (else
    (using (s (stream conn DIRECTION-IN
                      msg.stream-id
                      msg.stream-window
                      msg.message-size)
              : stream)
      (try
       (do-with-lock conn.mx
         (if conn.closed?
           (stream-abandon! s (Closed "connection closed"))
           (begin
             (conn.net.monitor.on-open-stream s.this)
             (conn.streams.set! msg.stream-id s)
             (channel-put conn.write-queue
                    (AckStream msg.seqno
                               msg.stream-id
                               conn.net.limits.network.stream-window
                               conn.net.limits.network.message-size)))))
       (catch (e)
         (log.error "error accepting stream"
                    exception: (exception->string e))
         (stream-abandon! s e)
         (reset! (error-message e))))))))

(def (mux-dispatch-close-stream (msg : CloseStream) (conn : connection))
  (do-with-lock conn.mx
    (cond
     ((conn.streams.ref msg.stream-id #f)
      => (lambda ((s :- stream))
           (if (fx= s.open DIRECTION-IN)
             (begin
               (stream-abandon! s (Closed "stream closed"))
               (conn.streams.delete! s.id)
               (conn.net.monitor.on-close-stream s))
             (stream-close-input s))))
     (else
      (log.debug "close for unknown stream"
                 peer: conn.peer
                 stream-id: msg.stream-id)))))

(def (mux-dispatch-reset-stream (msg : ResetStream) (conn : connection))
  (TODO mux-dispatch-reset-stream))

(def (mux-dispatch-data (msg : Data) (conn : connection))
  (TODO mux-dispatch-data))

(def (mux-dispatch-completion (msg  : MuxMessage)
                              (conn : connection))
  (let (dispatch
        (do-with-lock conn.mx
          (alet (c (conn.pending.ref msg.seqno #f))
            (conn.pending.delete! msg.seqno)
            c)))
    (if dispatch
      (using (c dispatch : Completion)
        (completion-post! c msg))
      (log.warn "missing completion"
                peer: conn.peer
                seqno: msg.seqno
                message: msg))))

(defcall-interface-method MuxInputDispatch dispatch!
  (mux-input-dispatch! msg conn))

(implement MuxInputDispatch
  (OpenStream
   (dispatch! __mux-dispatch-open-stream))
  (AckStream
   (dispatch! __mux-dispatch-completion))
  (CloseStream
   (dispatch! __mux-dispatch-close-stream))
  (ResetStream
   (dispatch! __mux-dispatch-reset-stream))
  (Data
   (dispatch! __mux-dispatch-data))
  (AckData
   (dispatch! __mux-dispatch-completion)))
