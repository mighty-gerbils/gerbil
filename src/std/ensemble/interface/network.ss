;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble network interface
(import :std/io/interface
        :std/net/address
        :std/net/ssl
        :std/time/timeout
        :std/time/precise
        :std/sync/channel
        (only-in :std/os/device
                 DIRECTION-IN
                 DIRECTION-OUT)
        ./ucan
        ./message
        ./address)
(export #t
        DIRECTION-IN
        DIRECTION-OUT)

(deftype @Network Network)
(deftype @Broadcast Broadcast)
(deftype @Connection Connection)
(deftype @Stream Stream)

;; incoming stream handlers
(interface StreamHandler
  (handle-stream! (stream : @Stream))
  => :void
  )

(interface (StreamMonitor StreamHandler)
  (on-close (stream : @Stream))
  => :void
  )

;; incoming connection handler
(interface ConnectionHandler
  (handle-connection! (conn : @Connection))
  => :void)

(interface (ConnectionMonitor ConnectionHandler)
  (on-close (conn : @Connection))
  => :void
)

;; broadcast handlers
(interface BroadcastHandler
  (receive! (msg : BroadcastMessage))
  => :void
  )

;; network connection abstraction
(interface (Connection NetworkTimeout Closer)
  ;; the address of the connection
  (address)
  => HostAddress

  ;; the peer address of the connection
  (peer)
  => HostAddress

  ;; the connection iniator direction
  ;; DIRECTION-IN or DIRECTION-OUT
  (direction)
  => :fixnum

  ;; opens an outbound stream
  (open-stream! (proto : :string)
                (auth  :? Token))
  => @Stream

  ;; set the connection's incoming stream monitor
  ;; the stream monitor is invoked every time a new
  ;; stream is opened or closed in this connection
  (set-stream-monitor! (monitor : StreamMonitor))
  )

;; low level data streams
(interface (Stream NetworkTimeout Closer)
  ;; the stream iniator direction
  ;; DIRECTION-IN or DIRECTION-OUT
  (direction)
  => :fixnum

  ;; the connection of the stream
  (connection)
  => Connection

  ;; the protocol of the stream
  (protocol)
  => :string

  ;; the stream data reader
  (reader)
  => Reader

  ;; the stream data writer
  (writer)
  => Writer
  )

;; broadcast system abstraction
(interface (Broadcast Closer)
  ;; broadcast a message
  (broadcast! (msg       : BroadcastMessage)
              (loopback? : :boolean := #f))
  => :void

  ;; join a broadcast group
  (join! (group : :string))
  => :void

  ;; leave a broadcast group
  (leave! (group : :string))
  => :void

  ;; subscribe to receive messages in a broadcast group
  ;; automatically joins if the group hasn't been joined
  ;; already.
  ;; returns an opaque subscription token that can
  ;; be used to unsubscribe later.
  (subscribe! (group : :string)
              (handler : BroadcastHandler))
  => :t

  ;; unsubscribe from a previously subscribed group
  (unsubscribe! (t : :t))
  => :void

  ;; the currently joined broadcast groups
  (groups)
  => :list
  )

;; the network abstraction
(interface (Network Closer)
  ;; current network peers
  ;; returns a list of HostAddress
  (peers)
  => :list

  ;; current network connections
  ;; returns a list of Connection
  (connections)
  => :list

  ;; retrieve connections to a peer, if any
  (peer-connections (peer : HostID))
  => :list

  ;; retrieve the network's listening addresses
  ;; return a list of HostAddress
  (listening)
  => :list

  ;; connect to a peer
  (connect! (peer        : HostAddress)
            (tls-context :~ (? (or not SSL_CTX?))))
  => Connection

  ;; connect to any one address (or reuse an existing connect)
  (connect-any! (addrs       :~ (list-of? HostAddress?)
                             :- :list)
                (tls-context :~ (? (or not SSL_CTX?))))
  => Connection

  ;; listen to an address
  (listen! (addr        :- HostAddress)
           (tls-context :~ (? (or not SSL_CTX?))))
  => :void

  ;; listen to all addresses in a list
  (listen-all! (addrs       :~ (list-of? HostAddress?)
                            :- :list)
               (tls-context :~ (? (or not SSL_CTX?))))
  => :void

  ;; set the network's connection monitor
  ;; the connection handler is invoked every time a new
  ;; connection is established or closed
  (set-connection-monitor! (monitor : ConnectionMonitor))
  )
