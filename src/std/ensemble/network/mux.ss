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
