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
        :std/serde/interface
        :std/serde/deserialize
        ../interface
        ../config)
(export #t)

(deflogger log name: "/ensemble/network")

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
  ((this        : Connection)
   (net         : network)
   (peer        : HostID)
   (sock        : StreamSocket)
   (reader      : BufferedReader)
   (writer      : BufferedWriter)
   (direction   : :fixnum)
   (mx          : :mutex)
   (closed?     : :boolean)
   (next-seqno  : :integer)
   (next-stream : :integer)
   (streams     : HashTable)
   (pending     : HashTable)
   (write-queue : Channel))
  constructor: :init!
  transparent: #f
  print: (peer)
  final: #t)

(defstruct stream
  ((this      : Stream)
   (conn      : connection)
   (id        : :integer)
   (direction : :fixnum)
   (open      : :fixnum)
   )
  constructor: :init!)

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

(defstruct (NetworkConnectionClose NetworkOp)
  ((conn : Connection)))

(defstruct (NetworkClose NetworkOp)
  ())

(interface NetworkDispatch
  (dispatch! (net : network)))

;; mux messages
(defstruct MuxMessage
  ((seqno : :integer)))

(defstruct (OpenStream MuxMessage)
  ((stream-id : :integer)
   (protocol  : :string)
   (auth      :~ (list-of? Token?)
              :- :list)
   (stream-window : :fixnum)
   (message-size  : :fixnum))
  final: #t)

(defstruct (AckStream MuxMessage)
  ((stream-id     : :integer)
   (stream-window : :fixnum)
   (message-size  : :fixnum)))

(defstruct (CloseStream MuxMessage)
  ((stream-id : :integer))
  final: #t)

(defstruct (ResetStream MuxMessage)
  ((stream-id : :integer)
   (reason    : :string))
  final: #t)

(defstruct (Data MuxMessage)
  ((stream-id : :integer)
   (data      : :u8vector))
  final: #t)

(defstruct (AckData MuxMessage)
  ((stream-id     : :integer)
   (window-update : :integer))
  final: #t)

(defobject-untaint
  OpenStream
  AckStream
  CloseStream
  ResetStream
  Data
  AckData)

(defstruct SyncMuxMessage
  ((msg        : MuxMessage)
   (completion : Completion))
  final: #t)

(interface MuxInputDispatch
  (dispatch! (conn : connection)))
