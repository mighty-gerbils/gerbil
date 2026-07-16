;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble connection streams
(import :std/error
        :std/interface
        :std/io
        :std/time/timeout
        :std/struct/queue
        :std/sync/completion
        (only-in :std/os/device
                 DIRECTION-INOUT)
        ../interface
        ./types)
(export new-stream
        stream-control-receive-data
        stream-control-window-update
        stream-control-close-input)

(defmethod {:init! stream}
  (lambda (self (conn         : connection)
           (protocol     : :string)
           (direction    : :fixnum)
           (id           : :integer)
           (window-size  : :fixnum)
           (message-size : :fixnum))
    (set! self.this (Stream self))
    (set! self.conn conn)
    (set! self.protocol protocol)
    (set! self.id id)
    (set! self.direction direction)
    (set! self.open DIRECTION-INOUT)
    (set! self.output-max-slice (fx- message-size 256))
    (set! self.output-window window-size)
    (set! self.input-window conn.net.limits.network.stream-window)
    (set! self.available-input (Queue))
    (set! self.control-thread
      (spawn/net (cut stream-control self)
                 ['stream/control id]
                 conn.net))
    (set! self.input-timeout-thread
      (spawn/net (cut stream-input-timeout self)
                 ['stream/input-timeout id]
                 conn.net))
    (set! self.output-timeout-thread
      (spawn/net (cut stream-output-timeout self)
                 ['stream/output-timeout id]
                 conn.net))))

(def (new-stream (conn         : connection)
                 (protocol     : :string)
                 (direction    : :fixnum)
                 (id           : :integer)
                 (window-size  : :fixnum)
                 (message-size : :fixnum))
  (let (s (stream conn protocol direction id window-size message-size))
    (stream-this s)))

(def (stream-open? (s : stream) (dir : :fixnum))
  => :boolean
  (fx= (fxand s.open dir) dir))

(def (stream-control (s : stream))
  (while (fx> s.open 0)
    (let (op (thread-receive))
      (stream-control-dispatch! op s)))

  (thread-send s.conn.control-thread
               (ConnectionStreamClosed s.this (Closed "stream closed")))
  (thread-yield!)

  ;; linger until all external ops see the stream closed
  (let (deadline (async-linger-deadline))
    (let loop ()
      (alet (op (thread-receive deadline #f))
        (stream-control-dispatch! op s)
        (loop))))

  (thread-send s.input-timeout-thread 'closed)
  (thread-send s.output-timeout-thread 'closed))

(def (stream-input-timeout (s : stream))
  (TODO stream-input-timeout))

(def (stream-output-timeout (s : stream))
  (TODO stream-output-timeout))

(def (stream-dispatch-close (op : StreamClose) (s : stream))
  (unless (fx= s.open 0)
    (set! s.open 0)
    (when s.pending-input
      (if (fx> s.pending-input.need 0)
        (completion-error! s.pending-input.completion (Closed "stream closed"))
        (completion-post! s.pending-input.completion s.pending-input.read))
      (set! s.pending-input #f))
    (when s.pending-output
      (completion-error! s.pending-output.completion (Closed "stream closed"))
      (set! s.pending-output #f))))

(def (stream-dispatch-close-input (op : StreamCloseInput) (s : stream))
  (when (stream-open? s DIRECTION-IN)
    (stream-close-direction! s DIRECTION-IN)
    (when s.pending-input
      (if (fx> s.pending-input.need 0)
        (completion-error! s.pending-input.completion (Closed "stream input closed"))
        (completion-post! s.pending-input.completion s.pending-input.read))
      (set! s.pending-input #f))
    (thread-send s.input-timeout-thread 'close)))

(def (stream-dispatch-close-output (op : StreamCloseOutput) (s : stream))
  (when (stream-open? s DIRECTION-OUT)
    (stream-close-direction! s DIRECTION-OUT)
    (when s.pending-output
      (completion-error! s.pending-output.completion (Closed "stream closed"))
      (set! s.pending-output #f))
    (thread-send s.conn.output-thread
               (CloseStream (connection-next-seqno! s.conn)
                            s.id))
    (thread-send s.output-timeout-thread 'close)))

(def (stream-close-direction! (s : stream) (dir : :fixnum))
  (set! s.open (fxand s.open (fxnot dir))))

(def (stream-dispatch-input-data (op : StreamInputData) (s : stream))
  (when (stream-open? s DIRECTION-IN)
    (thread-send s.input-timeout-thread 'reset)
    (set! s.input-timestamp (##current-time-point))
    (if s.pending-input
      (let* ((want (fx- s.pending-input.slice.end s.pending-input.slice.start))
             (have (u8vector-length op.data)))
        (if (fx> have want)
          (begin
            (subu8vector-move! op.data 0 want
                               s.pending-input.slice.data
                               s.pending-input.slice.start)
            (set! s.pending-input.read
              (fx+ s.pending-input.read want))
            (set! s.pending-input.need
              (fx- s.pending-input.need want))
            (if (fx> s.pending-input.need 0)
              ;; this can only happen from user error
              (completion-error! s.pending-input.completion
                                 (IOError "insufficient buffer size for needed input"))
              (completion-post! s.pending-input.completion
                                s.pending-input.read))
            (set! s.pending-input #f)

            (set! s.input-window
              (fx- s.input-window (fx- have want)))
            (if (fx< s.input-window 0)
              ;; contract violation from sender, did not respect
              ;; our window
              (begin
                (log.warn "sender violated input window; closing stream")
                (stream-close-direction! s DIRECTION-INOUT))
              (begin
                (enqueue! s.available-input (Slice op.data want have))
                (stream-send-window-update! s want))))
          (begin
            (subu8vector-move! op.data 0 have
                               s.pending-input.slice.data
                               s.pending-input.slice.start)
            (set! s.pending-input.read
              (fx+ s.pending-input.read have))
            (set! s.pending-input.need
              (fx- s.pending-input.need have))
            (if (fx> s.pending-input.need 0)
              (set! s.pending-input.slice.start
                (fx+ s.pending-input.slice.start have))
              (begin
                (completion-post! s.pending-input.completion
                                  s.pending-input.read)
                (set! s.pending-input #f)))
            (stream-send-window-update! s have)
            (thread-send s.input-timeout-thread 'reset))))
      (let (data-len (u8vector-length op.data))
        (set! s.input-window
          (fx- s.input-window data-len))
        (if (fx< s.input-window 0)
          ;; contract violation from sender, did not respect
          ;; our window
          (begin
            (log.warn "sender violated input window; closing stream")
            (stream-close-direction! s DIRECTION-INOUT))
          (enqueue! s.available-input
                    (Slice op.data 0 data-len)))))))

(def (stream-send-window-update! (s : stream) (update : :fixnum))
  (thread-send s.conn.output-thread
               (WindowUpdate (connection-next-seqno! s.conn)
                             s.id
                             update)))

(def (stream-dispatch-output-window-update (op : StreamOutputWindowUpdate) (s : stream))
  (when (stream-open? s DIRECTION-OUT)
    (thread-send s.output-timeout-thread 'reset)
    (set! s.output-timestamp (##current-time-point))
    (set! s.output-window (fx+ s.output-window op.update))
    (when s.pending-output
      (let (have (fxmin (fx- s.pending-output.slice.end
                             s.pending-output.slice.start)
                        s.output-max-slice))
        (if (fx<= have s.output-window)
          (let (end (fx+ s.pending-output.slice.start have))
            (thread-send s.conn.output-thread
                         (Data (connection-next-seqno! s.conn)
                               s.id
                               (subu8vector s.pending-output.slice.data
                                            s.pending-output.slice.start
                                            end)))
            (set! s.pending-output.written
              (fx+ s.pending-output.written have))
            (set! s.pending-output.slice.start end)
            (when (fx= s.pending-output.slice.start
                       s.pending-output.slice.end)
              (completion-post! s.pending-output.completion
                                s.pending-output.written)
              (set! s.pending-output #f))
            (set! s.output-window (fx- s.output-window have)))
          (let (end (fx+ s.pending-output.slice.start s.output-window))
            (thread-send s.conn.output-thread
                         (Data (connection-next-seqno! s.conn)
                               s.id
                               (subu8vector s.pending-output.slice.data
                                            s.pending-output.slice.start
                                            end)))
            (set! s.pending-output.written
              (fx+ s.pending-output.written s.output-window))
            (set! s.pending-output.slice.start end)
            (set! s.output-window 0)))))))

(def (stream-dispatch-write (op : StreamWrite) (s : stream))
  (if (stream-open? s DIRECTION-OUT)
    (cond
     (s.pending-output
      (completion-error! op.completion (IOError "output pending")))
     ((fx> s.output-window 0)
      (let (have (fxmin (fx- op.slice.end op.slice.start)
                        s.output-max-slice))
        (if (fx<= have s.output-window)
          (begin
            (thread-send s.conn.output-thread
                         (Data (connection-next-seqno! s.conn)
                               s.id
                               (subu8vector op.slice.data
                                            op.slice.start
                                            op.slice.end)))
            (completion-post! op.completion have)
            (set! s.output-window (fx- s.output-window have)))
          (let (end (fx+ op.slice.start s.output-window))
            (thread-send s.conn.output-thread
                         (Data (connection-next-seqno! s.conn)
                               s.id
                               (subu8vector op.slice.data
                                            op.slice.start
                                            end)))
            (set! op.slice.start end)
            (set! s.pending-output
              (PendingOutput op.completion
                             op.slice
                             s.output-window))
            (set! s.output-window 0)))))
     (else
      (set! s.pending-output
        (PendingOutput op.completion
                       op.slice
                       0))))
    (completion-error! op.completion (Closed "stream output closed"))))

(def (stream-dispatch-read (op : StreamRead) (s : stream))
  (TODO stream-dispatch-read))

(def (stream-dispatch-input-timeout (op : StreamInputTimeout) (s : stream))
  (TODO stream-dispatch-input-timeout))

(def (stream-dispatch-output-timeout (op : StreamOutputTimeout) (s : stream))
  (TODO stream-dispatch-output-timeout))

(defcall-interface-method StreamControlDispatch dispatch!
  (stream-control-dispatch! op s))

(implement StreamControlDispatch
  (StreamClose
   (dispatch! __stream-dispatch-close))
  (StreamCloseInput
   (dispatch! __stream-dispatch-close-input))
  (StreamCloseOutput
   (dispatch! __stream-dispatch-close-output))
  (StreamInputData
   (dispatch! __stream-dispatch-input-data))
  (StreamOutputWindowUpdate
   (dispatch! __stream-dispatch-output-window-update))
  (StreamWrite
   (dispatch! __stream-dispatch-write))
  (StreamRead
   (dispatch! __stream-dispatch-read))
  (StreamInputTimeout
   (dispatch! __stream-dispatch-input-timeout))
  (StreamOutputTimeout
   (dispatch! __stream-dispatch-output-timeout)))

(defcall-interface-method StreamControl receive-data
  (stream-control-receive-data s data))

(defcall-interface-method StreamControl close-input
  (stream-control-close-input s data))

(defcall-interface-method StreamControl window-update
  (stream-control-window-update s data))

(implement StreamControl stream
  (receive-data
   (lambda (self data)
     (when (stream-open? self DIRECTION-IN)
       (thread-send self.control-thread
                    (StreamInputData data)))))
  (close-input
   (lambda (self)
     (when (stream-open? self DIRECTION-IN)
       (thread-send self.control-thread
                    (StreamCloseInput)))))
  (window-update
   (lambda (self update)
     (when (stream-open? self DIRECTION-OUT)
       (thread-send self.control-thread
                    (StreamOutputWindowUpdate update))))))

(implement Closer stream
  (close
   (lambda (self)
     (unless (fx= self.open 0)
       (thread-send self.control-thread (StreamClose))))))

(implement NetworkTimeout stream
  (set-input-timeout!
   (lambda (self timeo)
     (when (stream-open? self DIRECTION-IN)
       (thread-send self.input-timeout-thread timeo))))
  (set-output-timeout!
   (lambda (self timeo)
     (when (stream-open? self DIRECTION-OUT)
       (thread-send self.output-timeout-thread timeo)))))

(implement Stream stream
  (id        &stream-id)
  (direction &stream-direction)
  (connection
   (lambda (self)
     self.conn.this))
  (protocol &stream-protocol)
  (reader
   (lambda (self)
     (Reader (stream-reader self))))
  (writer
   (lambda (self)
     (Writer (stream-writer self)))))

(implement Closer stream-reader
  (close
   (lambda (self)
     (when (stream-open? self.s DIRECTION-IN)
       (thread-send self.s.control-thread
                    (StreamCloseInput))))))

(implement Reader stream-reader
  (read
   (lambda (self buffer start end need)
     (cond
      ((stream-open? self.s DIRECTION-IN)
       (let (completion (Completion 'read))
         (thread-send self.s.control-thread
                      (StreamRead completion
                                  (Slice buffer start end)
                                  need))
         (: (completion-wait! completion) :fixnum)))
      ((fx> need 0)
       (raise-premature-end-of-input stream-read))
      (else 0)))))

(implement Closer stream-writer
  (close
   (lambda (self)
     (when (stream-open? self.s DIRECTION-OUT)
       (thread-send self.s.control-thread
                    (StreamCloseOutput))))))

(implement Writer stream-writer
  (write
   (lambda (self buffer start end)
     (cond
      ((stream-open? self.s DIRECTION-OUT)
       (let (completion (Completion 'write))
         (thread-send self.s.control-thread
                      (StreamWrite completion
                                  (Slice buffer start end)))
         (: (completion-wait! completion) :fixnum)))
      (else
       (raise-io-closed stream-write "stream output closed"))))))
