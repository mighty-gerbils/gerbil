;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host interface
(import :std/io/interface
        :std/sync/channel
        :std/time/precise
        ./ucan
        ./message
        ./actor
        ./network
        ./address)
(export #t)

;; the current host parameterization
;; automatically set in host threads (actor handlers or stream reactors)
(def current-host
  (make-parameter #f))

;; notification event base type
(defstruct Event
  ((ts : CoarseTime)))

;; stream reaction interface
(interface (StreamReactor StreamHandler)
  (on-expire)
  => :void)

;; network address resolver
(interface (Resolver Closer)
  ;; resolve a peer host by name to a list of HostAddress
  ;; names in the ensemble are semantic, and not necessarily
  ;; unique which allows for trivial anycast.
  (resolve-by-name (peer : :string)
                   (limit :? :fixnum := #f))
  => :list

  ;; resolve a HostID to a list of HostAddress
  (resolve (peer : HostID))
  => :list
  )

;; the ensemble host
;; the host is the orchestrator of the ensemble actor system
;; it provides several views to the system and methods for
;; specifying reactions (stream reactions and actor registration)
(interface (Host Closer)
  ;; the host id
  (id)
  => HostID

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

  ;; register an actor
  (register-actor! (name : :string)
                   (handler : ActorHandler))
  => Handle

  ;; unregister an actor
  (unregister-actor! (handle : Handle))
  => :void

  ;; connect to a host
  (connect! (host : HostID))
  => :void

  ;; open a stream to a peer for a particular protocol
  (open-stream! (peer  : HostID)
                (proto : :string)
                (auth  :? Token := #f))
  => Stream

  ;; register a stream reactor for a protocol
  (set-stream-reactor! (proto     : :string)
                       (handler   : StreamReactor)
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
