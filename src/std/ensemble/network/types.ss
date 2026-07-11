;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble network types
(import :std/io
        :std/log
        :std/iter
        :std/net/ssl
        :std/sync/completion
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
   (next-stream : :fixnum)
   (streams-in  : HashTable)
   (streams-out : HashTable)
   (pending-out : HashTable))
  constructor: :init!
  final: #t)

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
