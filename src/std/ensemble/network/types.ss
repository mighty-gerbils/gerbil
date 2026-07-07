;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble network types
(import :std/io
        :std/iter
        :std/sync/channel
        ../interface
        ../config)
(export #t)

(defstruct network
  ((tls-context :- :foreign)
   (security    :  SecurityContext)
   (event-bus   :  EventBus)
   (limits      :  Limits)
   (monitor     :  NetworkMonitor)
   (mx          :  :mutex))
  constructor: :init!
  final: #t)

(interface AddressConnector
  (connect! (net : network) (addr : HostAddress))
  => Connection)

(interface (ConnectionListener Iterator Closer))

(interface AddressListener
  (listen! (net : network) (addr : HostAddress))
  => ConnectionListener)
