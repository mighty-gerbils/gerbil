;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host interface
(import :std/io
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
        ./actor)
(export #t
        DIRECTION-IN
        DIRECTION-OUT)

(deftype @Host Host)
(deftype @Network Network)
(deftype @Broadcast Broadcast)
(deftype @Connection Connection)
(deftype @Stream Stream)

;; the current host
(def current-host
  (make-parameter #f))

;; notification event base type
(defstruct Event
  ((ts : CoarseTime)))

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
                (auth  : Token))
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
  (usnsubscribe (t : :t))
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
  (connect-inet! (peer        : :string)
                 (addr        :  InetAddress)
                 (tls-context :~ SSL_CTX? :- :foreign))
  => Connection

  ;; connect to a local peer in address
  (connect-local! (peer : :string)
                  (addr :  UnixAddress)
                  (host : :string)
                  (did  : :string))
  => Connection

  ;; listen to an InetAddress
  (listen-inet! (addr        : InetAddress)
                (tls-context :~ SSL_CTX? :- :foreign))
  => :void

  ;; listen to UNIX address
  (listen-local! (addr    : UnixAddress)
                 (host    : :string)
                 (did     : :string))
  => :void

  ;; set the network's connection handler
  ;; the connection handler is invoked every time a new
  ;; connection is established.
  (set-connection-handler! (handler : ConnectionHandler))
  )

;; network address resolver
(interface (Resolver Closer)
  ;; resolve a peer host to a list of addresses
  (resolve (peer : :string))
  => :list
  )

;; the ensemble host
(interface (Host Closer)
  ;; the name of the host in the ensemble space
  (name)
  => :string

  ;; the did of the host, as contained in the TLS certificate
  (did)
  => :string

  ;; the host's network interface
  (network)
  => Network

  ;; the host's address resolver
  (resolver)
  => Resolver

  ;; the host's broadcast interface
  (broadcast)
  => Broadcast

  ;; the ensemble's actor space
  (actor-space)
  => ActorSpace

  ;; the actor context
  (actor-context)
  => ActorContext

  ;; register an actor in the host
  (register-actor! (name : :string)
                   (handler : ActorHandler))
  => Handle

  ;; open a stream to a peer for a particular protocol
  (open-stream! (peer  : :string)
                (proto : :string)
                (auth  :? Token := #f))
  => Stream

  ;; register a stream handler for a protocol
  (set-stream-handler! (proto     : :string)
                       (handler   : StreamHandler)
                       (expire    : :integer := 0)
                       (one-shot? : :boolean := #f))
  => :void

  ;; receive notifications about changes in the host
  ;; returns a channel to receive Events
  (notify!)
  => Channel

  ;; emit a notification in the host notification bus
  (emit! (evt : Event))
  => :void
  )
