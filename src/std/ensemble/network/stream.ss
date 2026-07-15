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
  (TODO stream-control))

(def (stream-input-timeout (s : stream))
  (TODO stream-input-timeout))

(def (stream-output-timeout (s : stream))
  (TODO stream-output-timeout))

(def (stream-dispatch-close (op : StreamClose) (s : stream))
  (TODO stream-dispatch-close))

(def (stream-dispatch-close-input (op : StreamCloseInput) (s : stream))
  (TODO stream-dispatch-close-input))

(def (stream-dispatch-close-output (op : StreamCloseOutput) (s : stream))
  (TODO stream-dispatch-close-output))

(def (stream-dispatch-input-data (op : StreamInputData) (s : stream))
  (TODO stream-dispatch-input-data))

(def (stream-dispatch-output-window-update (op : StreamOutputWindowUpdate) (s : stream))
  (TODO stream-dispatch-output-window-update))

(def (stream-dispatch-write (op : StreamWrite) (s : stream))
  (TODO stream-dispatch-write))

(def (stream-dispatch-read (op : StreamRead) (s : stream))
  (TODO stream-dispatch-read))

(def (stream-dispatch-input-timeout (op : StreamInputTimeout) (s : stream))
  (TODO stream-dispatch-input-timeout))

(def (stream-dispatch-output-timeout (op : StreamOutputTimeout) (s : stream))
  (TODO stream-dispatch-output-timeout))

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
