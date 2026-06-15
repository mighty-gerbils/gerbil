;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host interface
(import :std/io
        :std/net/address
        :std/time/timeout
        ./ucan
        ./message)
(export #t)

(deftype @Host Host)
(deftype @Network Network)

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
                            (method : :string)
                            (group  : :string))
  => VerificationResult
  )

;; the actor space
(interface ActorSpace
  ;; resolve an actor by name in a host
  ;; if the host is #f then the actor is resolved
  ;; in the local host
  (resolve (name : :string)
           (host :? :string := #f))
  => Handle

  ;; list actors in a host
  ;; if the host is #f it lists actors in the local host
  ;; returns a list of Handles
  (list (host :? :string := #f))
  => :list
  )

;; context for actor operations
(interface (ActorContext Closer)
  ;; the actor which this context pertains to
  (handle)
  => Handle

  ;; the actor space
  (actor-space)
  => ActorSpace

  ;; the security context
  (security-context)
  => SecurityContext

  ;; the actor host
  (host)
  => @Host

  ;; send a signd message
  (send-message! (msg : Message))
  => :void

  ;; broadcast a signed message
  (broadcast-message! (msg : BroadcastMessage))
  => :void

  ;; join a broadcast group
  (join! (group : :string))
  => :void

  ;; leave a broadcast group
  (leave! (group : :string))
  => :void
  )

;; low level actor handler
(interface (ActorHandler Closer)
  ;; receive a message
  (receive! (ctx : ActorContext) (msg : Message))
  => :void

  ;; receive a broadcast message
  (receive-broadcast! (ctx : ActorContext) (msg : BroadcastMessage))
  => :void
  ;; invoked when an actor is registered
  (on-register! (ctx : ActorContext) (actor : Handle))
  => :void

  ;; invoked when an actor is unregistered
  (on-unregister! (ctx : ActorContext) (actor : Handle))
  => :void
  )

;; low level data streams
(interface (Stream NetworkTimeout Closer)
  ;; the local host
  (host)
  => @Host

  ;; the name of the peer
  (peer)
  => :string

  ;; the protocol of the stream
  (proto)
  => :string

  ;; the stream's ucan auth token
  (auth)
  => Token

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
  (on-subscribe! (net   : @Network)
                 (group : :string)
                 (subscription-token : :t))
  => :void

  ;; invoked when a group is unsubscribed
  (on-unsubscribe! (net   : @Network)
                   (group : :string)
                   (subscription-token : :t))
  => :void
  )

;; the network abstraction
(interface (Network Closer)
  ;; resolve a host to a list of addresses
  (resolve (host : :string))
  => :list

  ;; connect to a peer in address
  ;; returns the peer host name
  (connect! (addr :  Address)
            (peer :? :string := #f))
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
  )

;; the ensemble host
(interface (Host Closer)
  ;; the name of the host in the ensemble space
  (name)
  => :string

  ;; the host's network interface
  (network)
  => Network

  ;; the ensemble's actor space
  (actor-space)
  => ActorSpace

  ;; retrieve a registered actor's context
  (actor-context (name : :string))
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
               (proto : :string)
               (subject :? :string := #f))
  => Stream

  ;; register a stream handler for a protocol
  (register-stream-handler! (proto : :string)
                            (handler : StreamHandler))
  => :void

  ;; unregister a stream handler
  (unregister-stream-handler! (proto : :string))
  => :void
  )
