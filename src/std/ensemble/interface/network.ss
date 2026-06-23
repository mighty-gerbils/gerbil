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
        ./message)
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

  (close (stream : @Stream))
  => :void
  )

;; incoming connection handler
(interface ConnectionHandler
  (handle-connection! (conn : @Connection))
  => :void

  (close (conn : @Connection))
  => :void
)

;; broadcast handlers
(interface BroadcastHandler
  (receive! (msg : BroadcastMessage))
  => :void
  )

(interface Peer
  ;; the name of the peer
  (peer-name)
  => :string

  ;; the did of the peer
  (peer-did)
  => :string

  ;; the address of the peer
  (peer-address)
  => Address
  )

;; network connections
(interface (Connection Peer Closer)
  ;; the address of the connection
  (address)
  => Address

  ;; the connection iniator direction
  ;; DIRECTION-IN or DIRECTION-OUT
  (direction)
  => :fixnum

  ;; opens an outbound stream
  (open-stream! (proto : :string)
                (auth  :? Token))
  => @Stream

  ;; set the connection's incoming stream handler
  ;; the stream handler is invoked every time a new
  ;; stream is opened in this connection
  (set-stream-handler! (handler : StreamHandler))
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
  ;; returns an alist of peer - did
  (peers)
  => :list

  ;; current network connections
  ;; returns a list of Connection
  (connections)
  => :list

  ;; retrieve the network's listening addresses
  (addresses)
  => :list

  ;; retrieve an existing connection to a peer, if any
  (peer-connection (peer : :string))
  => :t

  ;; connect to an inet peer in address
  (connect! (peer        : :string)
            (addr        :  Address)
            (tls-context :~ (? (or not SSL_CTX?))))
  => Connection

  ;; listen to an address
  (listen! (addr        : Address)
           (tls-context :~ (? (or not SSL_CTX?))))
  => :void

  ;; set the network's connection handler
  ;; the connection handler is invoked every time a new
  ;; connection is established.
  (set-connection-handler! (handler : ConnectionHandler))
  )
