;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble network types
(import :std/io
        :std/iter
        :std/sync/completion
        ../interface
        ../config)
(export #t)

(defstruct network
  ((tls-context :- :foreign)
   (security    :  SecurityContext)
   (event-bus   :  EventBus)
   (limits      :  Limits)
   (monitor     :  NetworkMonitor)
   (tgroup      :  :thread-group)
   (mx          :  :mutex)
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

(interface AddressConnector
  (connect! (net : network) (addr : HostAddress))
  => Completion)

(interface (ConnectionListener Iterator Closer))

(interface AddressListener
  (listen! (net : network) (addr : HostAddress))
  => ConnectionListener)
