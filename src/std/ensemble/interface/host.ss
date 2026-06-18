;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host interface
(import :std/io
        :std/net/address
        :std/net/ssl
        :std/time/timeout
        :std/sync/channel
        ./ucan
        ./message
        ./actor)
(export #t)

(deftype @Host Host)
(deftype @Network Network)
(deftype @Broadcast Broadcast)
(deftype @Connection Connection)
(deftype @Stream Stream)

;; the current host
(def current-host
  (make-parameter #f))

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

  ;; the connection direction
  ;; DIRECTION-IN (1) or DIRECTION-OUT (2)
  (direction)
  => :fixnum

  ;; opens an outbound stream
  (open! (proto : :string))
  => @Stream

  ;; accepts the next stream
  (accept!)
  => @stream
  )

;; low level data streams
(interface (Stream NetworkTimeout Closer)
  ;; the connection of the stream
  (connection)
  => Connection

  ;; the protocol of the stream
  (proto)
  => :string

  ;; the stream data reader
  (reader)
  => Reader

  ;; the stream data writer
  (writer)
  => Writer
  )

;; incoming stream handlers
(interface (StreamHandler Closer)
  ;; handle an incoming stream
  (handle-stream! (stream : Stream))
  => :void

  ;; invoked when the stream handler is registered
  (on-register! (host : @Host) (proto : :string))
  => :void

  ;; invoked when the stream handler is unregistered
  (on-unregister! (host : @Host) (proto : :string))
  => :void
  )

;; broadcast handlers
(interface (BroadcastHandler Closer)
  ;; receive a broadcast message
  (receive! (msg : BroadcastMessage))
  => :void

  ;; invoked when a group is subscribed
  (on-subscribe! (bcast : @Broadcast)
                 (group : :string)
                 (subscription-token : :t))
  => :void

  ;; invoked when a group is unsubscribed
  (on-unsubscribe! (group : :string))
  => :void
  )

;; broadcast system abstraction
(interface (Broadcast Closer)
  ;; join a broadcast group
  (join! (group : :string))
  => :void

  ;; leave a broadcast group
  (leave! (group : :string))
  => :void

  ;; subscribe to receive messages in a broadcast group
  ;; automatically joins if the group hasn't been joined
  ;; already.
  ;; returns a subsciption opaque token that can be
  ;; used to unsubscribe
  (subscribe! (group : :string)
              (handler : BroadcastHandler))
  => :t

  ;; unsubscribe from a previous subscription
  (unsubscribe! (subscription-token : :t))
  => :void

  ;; the currently joined broadcast groups
  (groups)
  => :list

  ;; receive notifications about broadcast changes
  (notify!)
  => Channel
  )

;; the network abstraction
(interface (Network Closer)
  ;; resolve a host to a list of addresses
  (resolve (host : :string))
  => :list

  ;; connect to a peer in address
  (connect! (peer : :string)
            (addr :  Address))
  => Connection

  ;; current network peers
  ;; returns an alist of peer - did
  (peers)
  => :list

  ;; current network connections
  ;; returns a list of Connection
  (connections)
  => :list

  ;; listen to an InetAddress
  ;; returns a channel to receive connections
  (listen-inet! (addr : InetAddress)
                (tls-context :~ SSL_CTX? :- :foreign))
  => Channel

  ;; listen to UNIX address
  ;; returns a channel to receive connections
  (listen-local! (add : UnixAddress))
  => Channel

  ;; retrieve the host's listening addresses
  (addresses)
  => :list

  ;; receive notifications about network changes
  (notify!)
  => Channel
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

  ;; unregister an actor from the host
  (unregister-actor! (name : :string))
  => :void

  ;; open a stream to a peer for a particular protocol
  ;; and optionally a specific actor subject (a did)
  (open-stream (peer  : :string)
               (proto : :string))
  => Stream

  ;; register a stream handler for a protocol
  (register-stream-handler! (proto     : :string)
                            (handler   : StreamHandler)
                            (expire    : :integer := 0)
                            (one-shot? : :boolean := #f))
  => :void

  ;; unregister a stream handler
  (unregister-stream-handler! (proto : :string))
  => :void

  ;; receive notifications about changes in the host
  (notify!)
  => Channel
  )
