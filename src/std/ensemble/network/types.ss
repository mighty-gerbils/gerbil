;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble network types
(import :std/error
        :std/io
        :std/log
        :std/iter
        :std/net/ssl
        :std/sync/completion
        :std/sync/channel
        :std/sync/spinlock
        :std/struct/queue
        :std/serde/interface
        :std/serde/deserialize
        ../interface
        ../config)
(export #t)

(deflogger log name: "/ensemble/network")

(def async-linger-time 1)

(def (async-linger-deadline)
  => :time
  (seconds->time (+ (##current-time-point) async-linger-time)))

(defstruct network
  ((host        :  HostID)
   (tls-context :~ SSL_CTX? :- :foreign)
   (security    :  SecurityContext)
   (limits      :  Limits)
   (monitor     :  NetworkMonitor)
   (tgroup      :  :thread-group)
   (thread      :  :thread)
   (closed?     :  :boolean)
   ;; established outgoing peer connections
   ;; HostID -> Connection
   (outgoing    : HashTable)
   ;; established incoming peer connections
   ;; HostID -> Connection
   (incoming    : HashTable)
   ;; pending outgoing peer connections
   ;; HostAddress -> [Completion]
   (pending     : HashTable)
   ;; peer connection listeners
   ;; HostAddress -> ConnectionListener
   (listeners   :  HashTable)
   )
  transparent: #f
  print: (host)
  constructor: :init!
  final: #t)

(def (spawn/net (thunk : :procedure)
                (name  : :t)
                (net   : network))
  (spawn-actor
   (lambda ()
     (try (thunk)
          (catch (e)
            (log.error "unhandled exception in network thread"
                       thread: name
                       exception: (exception->string e)))))
   [] name net.tgroup))

(defstruct connection
  ((this           : Connection)
   (net            : network)
   (peer           : HostID)
   (sock           : StreamSocket)
   (reader         : BufferedReader)
   (writer         : BufferedWriter)
   (direction      : :fixnum)
   (closed?        : :boolean)
   (control-thread : :thread)
   (input-thread   : :thread)
   (output-thread  : :thread)
   ;; stream-id -> stream
   (streams        : HashTable)
   ;; pending streams
   ;; seqno -> [Completion . thread]
   (pending        : HashTable)
   ;; lock protecting indexes
   (next-lock      : SpinLock)
   ;; next stream id
   (next-stream    : :integer)
   ;; next mux message seqno
   (next-seqno     : :integer))
  constructor: :init!
  transparent: #f
  print: (peer)
  final: #t)

(def (connection-next-seqno! (self : connection))
  => :integer
  (do-with-spin-lock self.next-lock :- :integer
    (let (next self.next-seqno)
      (set! self.next-seqno (+ next 2))
      next)))

(def (connection-next-stream-id! (self : connection))
  => :integer
  (do-with-spin-lock self.next-lock :- :integer
    (let (next self.next-stream)
      (set! self.next-stream (+ next 2))
      next)))

(deftype @PendingInput PendingInput)
(deftype @PendingOutput PendingOutput)

(defstruct stream
  ((this                  : Stream)
   (conn                  : connection)
   (protocol              : :string)
   (id                    : :integer)
   (direction             : :fixnum)
   (open                  : :fixnum)
   (control-thread        : :thread)
   (input-timeout-thread  : :thread)
   (output-timeout-thread : :thread)
   (output-max-slice      : :fixnum)
   (output-window         : :fixnum)
   (input-window          : :fixnum)
   (available-input       : Queue)
   (pending-input         :? @PendingInput)
   (pending-output        :? @PendingOutput))
  transparent: #f
  print: (conn protocol id)
  constructor: :init!)

(defstruct stream-reader
  ((s : stream)))

(defstruct stream-writer
  ((s : stream)))

(defstruct Slice
  ((data  : :u8vector)
   (start : :fixnum)
   (end   : :fixnum)))

(defstruct PendingInput
  ((completion : Completion)
   (slice      : Slice)
   (need       : :fixnum)
   (read       : :fixnum)))

(defstruct PendingOutput
  ((completion : Completion)
   (slice      : Slice)
   (written    : :fixnum)))

(interface StreamControl
  (receive-data  (data : :u8vector))
  => :void
  (close-input)
  => :void
  (window-update (update : :fixnum))
  => :void
  )

(defstruct connection-listener
  ((net  : network)
   (sock : ServerSocket))
  final: #t)

(interface AddressConnector
  (connect! (net : network) (addr : HostAddress))
  => Completion)

(interface (ConnectionListener Iterator Closer))

(interface AddressListener
  (listen! (net : network) (addr : HostAddress))
  => ConnectionListener)

;; network actor messages
(defstruct NetworkOp ())

(defstruct (NetworkSync NetworkOp)
  ((completion : Completion)))

(defstruct (NetworkConnect NetworkSync)
  ((peer : HostAddress)))

(defstruct (NetworkConnectComplete NetworkOp)
  ((peer : HostAddress)
   (conn : Connection)))

(defstruct (NetworkConnectError NetworkOp)
  ((peer  : HostAddress)
   (error : :t)))

(defstruct (NetworkListen NetworkSync)
  ((addr : HostAddress)))

(defstruct (NetworkAccept NetworkOp)
  ((conn : Connection)))

(defstruct (NetworkConnectionClosed NetworkOp)
  ((conn : Connection)))

(defstruct (NetworkClose NetworkOp)
  ())

(interface NetworkDispatch
  (dispatch! (net : network)))

;; mux protocol messages
(defstruct MuxMessage
  ((seqno : :integer)
   (stream-id : :integer)))

(defstruct (OpenStream MuxMessage)
  ((protocol  : :string)
   (auth      :~ (list-of? Token?)
              :- :list)
   (stream-window : :fixnum)
   (message-size  : :fixnum))
  final: #t)

(defstruct (AckStream MuxMessage)
  ((stream-window : :fixnum)
   (message-size  : :fixnum)))

(defstruct (CloseStream MuxMessage)
  ()
  final: #t)

(defstruct (ResetStream MuxMessage)
  ((reason    : :string))
  final: #t)

(defstruct (Data MuxMessage)
  ((data      : :u8vector))
  final: #t)

(defstruct (WindowUpdate MuxMessage)
  ((window-update : :integer))
  final: #t)

(defobject-untaint
  OpenStream
  AckStream
  CloseStream
  ResetStream
  Data
  WindowUpdate)

;; connection actor control messages
(defstruct ConnectionOp ())

(defstruct (ConnectionSync ConnectionOp)
  ((completion : Completion)))

(defstruct (ConnectionClose ConnectionOp)
  ())

(defstruct (ConnectionIOError ConnectionOp)
  ((error : :t))
 final: #t)

(defstruct (ConnectionOpenStream ConnectionSync)
  ((protocol :  :string)
   (token    :? Token))
  final: #t)

(defstruct (ConnectionOpenStreamTimeout ConnectionOp)
  ((seqno : :integer))
  final: #t)

(defstruct (ConnectionStreamClosed ConnectionOp)
  ((stream : Stream)
   (error  : :t))
  final: #t)

(interface ConnectionControlDispatch
  (dispatch! (conn : connection)))

;; stream cator control messages
(defstruct StreamOp ())

(defstruct (StreamSync StreamOp)
  ((completion : Completion)))

(defstruct (StreamClose StreamOp)
  ()
  final: #t)

(defstruct (StreamCloseInput StreamOp)
  ()
  final: #t)

(defstruct (StreamCloseOutput StreamOp)
  ()
  final: #t)

(defstruct (StreamInputData StreamOp)
  ((data : :u8vector))
  final: #t)

(defstruct (StreamOutputWindowUpdate StreamOp)
  ((update : :fixnum))
  final: #t)

(defstruct (StreamWrite StreamSync)
  ((slice : Slice))
  final: #t)

(defstruct (StreamRead StreamSync)
  ((slice : Slice)
   (need  : :fixnum))
  final: #t)

(defstruct (StreamInputTimeout StreamOp)
  ()
  final: #t)

(defstruct (StreamOutputTimeout StreamOp)
  ()
  final: #t)

(interface StreamControlDispatch
  (dispatch! (s : stream)))
