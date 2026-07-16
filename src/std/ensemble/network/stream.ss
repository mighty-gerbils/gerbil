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
        ./base)
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
    (set! self.input-timeout !NoTimeout)
    (set! self.output-timeout !NoTimeout)
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

  (thread-send s.input-timeout-thread '(closed))
  (thread-send s.output-timeout-thread '(closed)))

(defsyntax-case stream-timeout-thread ()
  ((_ s timeout make-timeout direction)
   (with-identifiers ((s.timeout
                       #'s #'s "." #'timeout)
                      (s.control-thread
                       #'s #'s ".control-thread"))
     #'(let ((deadline absent-obj)
             (opid -1))
         (let/cc break
           (while (stream-open? s direction)
             (match (thread-receive deadline #f)
               (['start id]
                (set! deadline (timeout->abs-timeout s.timeout))
                (set! opid id))
               (['end id]
                (when (eq? opid id)
                  (set! deadline absent-obj)
                  (set! opid -1)))
               (['reset id]
                (when (eq? opid id)
                  (set! deadline absent-obj)))
               ('(closed)
                (break 'closed))
               (#f
                (thread-send s.control-thread (make-timeout opid))
                (set! deadline absent-obj)
                (set! opid -1)))))))))

(def (stream-input-timeout (s : stream))
  (stream-timeout-thread s input-timeout StreamInputTimeout DIRECTION-IN))

(def (stream-output-timeout (s : stream))
  (stream-timeout-thread s output-timeout StreamOutputTimeout DIRECTION-OUT))

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
    (thread-send s.input-timeout-thread '(closed))))

(def (stream-dispatch-close-output (op : StreamCloseOutput) (s : stream))
  (when (stream-open? s DIRECTION-OUT)
    (stream-close-direction! s DIRECTION-OUT)
    (when s.pending-output
      (completion-error! s.pending-output.completion (Closed "stream closed"))
      (set! s.pending-output #f))
    (thread-send s.conn.output-thread
               (CloseStream s.id))
    (thread-send s.output-timeout-thread '(closed))))

(def (stream-close-direction! (s : stream) (dir : :fixnum))
  (set! s.open (fxand s.open (fxnot dir))))

(def (stream-dispatch-input-data (op : StreamInputData) (s : stream))
  (when (stream-open? s DIRECTION-IN)
    (set! s.input-window
      (fx- s.input-window (u8vector-length op.data)))
    (cond
     ((fx< s.input-window 0)
      ;; contract violation from sender, did not respect our window
      (log.warn "sender violated input window; closing stream"
                stream: s.id
                protocol: s.protocol
                peer: s.conn.peer)
      (stream-dispatch-close (StreamClose) s))
     (s.pending-input
      (thread-send s.input-timeout-thread `(reset ,s.pending-input.id))
      (let* ((want (fx- s.pending-input.slice.end s.pending-input.slice.start))
             (have (u8vector-length op.data)))
        (if (fx> have want)
          (begin
            (subu8vector-move! op.data 0 want
                               s.pending-input.slice.data
                               s.pending-input.slice.start)
            (set! s.pending-input.read
              (fx+ s.pending-input.read want))
            (completion-post! s.pending-input.completion
                              s.pending-input.read)
            (set! s.pending-input #f)
            (enqueue! s.available-input (Slice op.data want have))
            (stream-send-window-update! s want))
          (begin
            (subu8vector-move! op.data 0 have
                               s.pending-input.slice.data
                               s.pending-input.slice.start)
            (set! s.pending-input.read
              (fx+ s.pending-input.read have))
            (set! s.pending-input.need
              (fx- s.pending-input.need have))
            (cond
             ((fx> s.pending-input.need 0)
              (set! s.pending-input.slice.start
                (fx+ s.pending-input.slice.start have)))
             ((fx> s.pending-input.read 0)
              (completion-post! s.pending-input.completion
                                s.pending-input.read)
              (set! s.pending-input #f)))
            (stream-send-window-update! s have)))))
     (else
      (enqueue! s.available-input
                (Slice op.data 0 (u8vector-length op.data)))))))

(def (stream-send-window-update! (s : stream) (update : :fixnum))
  (set! s.input-window (fx+ s.input-window update))
  (thread-send s.conn.output-thread
               (WindowUpdate s.id update)))

(def (stream-dispatch-output-window-update (op : StreamOutputWindowUpdate) (s : stream))
  (when (stream-open? s DIRECTION-OUT)
    (set! s.output-window (fx+ s.output-window op.update))
    (when s.pending-output
      (thread-send s.output-timeout-thread `(reset ,s.pending-output.id))
      (let (have (fxmin (fx- s.pending-output.slice.end
                             s.pending-output.slice.start)
                        s.output-max-slice))
        (if (fx<= have s.output-window)
          (let (end (fx+ s.pending-output.slice.start have))
            (thread-send s.conn.output-thread
                         (Data s.id
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
                         (Data s.id
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
                         (Data s.id
                               (subu8vector op.slice.data
                                            op.slice.start
                                            op.slice.end)))
            (completion-post! op.completion have)
            (set! s.output-window (fx- s.output-window have)))
          (let (end (fx+ op.slice.start s.output-window))
            (thread-send s.conn.output-thread
                         (Data s.id
                               (subu8vector op.slice.data
                                            op.slice.start
                                            end)))
            (set! op.slice.start end)
            (set! s.pending-output
              (PendingOutput op.id
                             op.completion
                             op.slice
                             s.output-window))
            (set! s.output-window 0)))))
     (else
      (set! s.pending-output
        (PendingOutput op.id
                       op.completion
                       op.slice
                       0))))
    (completion-error! op.completion (Closed "stream output closed"))))

(def (stream-dispatch-read (op : StreamRead) (s : stream))
  (if (stream-open? s DIRECTION-IN)
    (if s.pending-input
      (completion-error! op.completion (IOError "pending input"))
      (let loop ((read 0       :- :fixnum)
                 (need op.need :- :fixnum))
        (if (queue-empty? s.available-input)
          (begin
            (if (or (fx> need 0)
                    (fx= read 0))
              (set! s.pending-input
                (PendingInput op.id
                              op.completion
                              op.slice
                              need read))
              (completion-post! op.completion read))
            (when (fx> read 0)
              (stream-send-window-update! s read)))
          (using (input (queue-peek s.available-input) :- Slice)
            (let ((have (fx- input.end input.start))
                  (want (fx- op.slice.end op.slice.start)))
              (if (fx< have want)
                (let ((read (fx+ read have))
                      (need (fx- need have)))
                  (dequeue! s.available-input)
                  (subu8vector-move! input.data input.start input.end
                                     op.slice.data op.slice.start)
                  (set! op.slice.start (fx+ op.slice.start have))
                  (if (or (fx> need 0)
                          (fx= read 0))
                    (loop read need)
                    (begin
                      (completion-post! op.completion read)
                      (stream-send-window-update! s read))))
                (let ((read (fx+ read want))
                      (end  (fx+ input.start want)))
                  (subu8vector-move! input.data input.start end
                                     op.slice.data op.slice.start)
                  (set! input.start end)
                  (when (fx= input.start input.end)
                    (dequeue! s.available-input))
                  (completion-post! op.completion read)
                  (stream-send-window-update! s read))))))))
    (if (fx> op.need 0)
      (completion-error! op.completion (Closed "stream input closed"))
      (completion-post! op.completion 0))))

(def (stream-dispatch-input-timeout (op : StreamInputTimeout) (s : stream))
  (when (stream-open? s DIRECTION-IN)
    (when (and s.pending-input (= s.pending-input.id op.id))
      (completion-error! s.pending-input.completion (Timeout "input timeout"))
      (let (partial-read s.pending-input.read)
        (set! s.pending-input #f)
        ;; if there was a partial read, the stream is now unusable
        (when (fx> partial-read 0)
          (log.warn "input timeout with partial read; stream is unusable"
                    stream: s.id
                    protocol: s.protocol
                    peer: s.conn.peer)
          (stream-dispatch-close (StreamClose) s))))))

(def (stream-dispatch-output-timeout (op : StreamOutputTimeout) (s : stream))
  (when (stream-open? s DIRECTION-OUT)
    (when (and s.pending-output (eq? s.pending-output.id op.id))
      (completion-error! s.pending-output.completion (Timeout "output timeout"))
      (let (partial-write s.pending-output.written)
        (set! s.pending-output #f)
        ;; if there was a partial read, the stream is now unusable
        (when (fx> partial-write 0)
          (log.warn "output timeout with partial write; stream is unusable"
                    stream: s.id
                    protocol: s.protocol
                    peer: s.conn.peer)
          (stream-dispatch-close (StreamClose) s))))))

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
     (set! self.input-timeout timeo)))
  (set-output-timeout!
   (lambda (self timeo)
     (set! self.output-timeout timeo))))

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
       (do-with-lock self.mx :- :fixnum
         (let (id self.next-id)
           (set! self.next-id (+ id 1))
           (completion-reset! self.c)
           (thread-send self.s.input-timeout-thread `(start ,id))
           (thread-send self.s.control-thread
                        (StreamRead id
                                    self.c
                                    (Slice buffer start end)
                                    need))
           (unwind-protect
             (completion-wait! self.c)
             (thread-send self.s.input-timeout-thread `(end ,id))))))
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
       (do-with-lock self.mx :- :fixnum
         (let (id self.next-id)
           (set! self.next-id (+ id 1))
           (completion-reset! self.c)
           (thread-send self.s.output-timeout-thread `(start ,id))
           (thread-send self.s.control-thread
                        (StreamWrite id
                                     self.c
                                     (Slice buffer start end)))
           (unwind-protect
             (completion-wait! self.c)
             (thread-send self.s.output-timeout-thread `(end ,id))))))
      (else
       (raise-io-closed stream-write "stream output closed"))))))
