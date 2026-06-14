;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host interface
(import :std/io
        :std/net/address
        ./ucan
        ./actor)
(export #t)

;; context for security operations
(interface (SecurityContext Closer)
  ;; the capability context
  (capability-context)
  => CapabilityContext

  ;; sign a message
  (sign-message! (msg : Message))
  => :void

  ;; verify a message signature and capabilities
  (verify-message (msg    : Message)
                  (method : :string))
  => VerificationResult

  ;; verify a broadcast message and capabilities
  (verify-broadcast-message (msg    : BroadcastMessage)
                            (method : :string))
  => VerificationResult
  )

;; context for actor operations
(interface (ActorContext Closer)
  ;; the security context
  (security)
  => SecurityContext

  ;; send a message; if the message is unsigned it will be signed
  (send! (msg : Message))
  => :void

  ;; broadcast a message; if the message is unsigned it will be signed.
  (broadcast! (msg : BroadcastMessage))
  => :void

  ;; join a broadcast group
  (join! (group : :string))
  => :void

  ;; leave a broadcast group
  (leave! (group : :string))
  => :void
  )

;; actor message handling
(interface (ActorHandler Closer)
  ;; reveive a message
  (receive! (ctx : ActorContext) (msg : Message))
  => :void

  ;; receive a broadcast message
  (receive-broadcast! (ctx : ActorContext) (msg : BroadcastMessage))
  => :void

  ;; invoked when the actor is unregistered
  (unregister! (actor : Actor))
  => :void
  )

;; low level data streams
(interface (Stream Closer)
  ;; the path of the local host
  (path)
  => :string

  ;; the path of the peer
  (peer-path)
  => :string

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

  ;; invoked when the stream handler is unregistered
  (unregister! (proto : :string))
  => :void
  )

;; the network abstraction
(interface (Network Closer)
  ;; resolve a path to a list of addresses
  (resolve (path : :string))
  => :list

  ;; connect to a peer in address
  ;; returns the peer
  (connect! (peer :? :string)
            (addr :  Address))
  => :string

  ;; current network peers
  (peers)
  => :list

  ;; current network connections
  ;; returns an alist of peer address
  (connections)
  => :list

  ;; listen to an address
  (listen! (addr : Address))
  => :void

  ;; retrieve the host's listening addresses
  (addresses)
  => :list

  ;; join a broadcast group
  (join! (group : :string))
  => :void

  ;; leave a broadcast group
  (leave! (group : :string))
  => :void

  ;; the current broadcast groups
  (groups)
  => :list
  )

;; the ensemble host
(interface (Host Closer)
  ;; the path of the host in the ensemble space
  (path)
  => :string

  ;; the host's network interface
  (network)
  => Network

  ;; the actor context
  (actor-context)
  => ActorContext

  ;; register an actor in the host
  (register-actor! (actor : Actor)
                   (handler : ActorHandler))
  => :void

  ;; unregister an actor from the host
  (unregister-actor! (actor : Actor))
  => :void

  ;; open a stream to a peer for a particular protocol
  (open-stream (peer  : :string)
               (proto : :string))
  => Stream

  ;; register a stream handler for a protocol
  (register-stream-handler! (proto : :string)
                            (handler : StreamHandler))
  => :void

  ;; unregister a stream handler
  (unregister-stream-handler! (proto : :string))
  => :void
  )
