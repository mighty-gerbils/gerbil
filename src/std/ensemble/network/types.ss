;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble network types
(import :std/io
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
   (event-bus   :  EventBus)
   (limits      :  Limits)
   (monitor     :  NetworkMonitor)
   (tgroup      :  :thread-group)
   (mx          :  :mutex)
   (closed?     :  :boolean)
   ;; established outgoing peer connections
   ;; HostID -> Connection
   (outgoing    : HashTable)
   ;; established incoming peer connections
   ;; HostID -> Connection
   (incoming    : HashTable)
   ;; pending outgoing peer connections
   ;; HostID -> Completion
   (pending     : HashTable)
   ;; peer connection listeners
   ;; HostAddress -> ConnectionListener
   (listeners   :  HashTable)
   )
  constructor: :init!
  final: #t)

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
  ((conn : connection)
   ))

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
