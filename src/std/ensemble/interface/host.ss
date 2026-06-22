;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host interface
(import :std/io/interface
        :std/sync/channel
        :std/time/precise
        ./ucan
        ./message
        ./actor
        ./network)
(export #t)

;; the current host
(def current-host
  (make-parameter #f))

;; notification event base type
(defstruct Event
  ((ts : CoarseTime)))

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

  ;; unregister an actor
  (unregister-actor! (handle : Handle))
  => :void

  ;; connect to a host
  (connect! (host : :string))
  => Connection

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
  (notify)
  => Channel

  ;; emit a notification in the host notification bus
  (emit! (evt : Event))
  => :void
  )
