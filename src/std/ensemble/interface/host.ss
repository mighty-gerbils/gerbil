;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host interface
(import :std/io
        :std/net/address
        :std/crypto/pkey
        ./ucan
        ./actor)
(export #t)

(deftype @VerificationResult VerificationResult)

(interface SecurityContext
  (add-private-key! (priv : PrivKey))
  => :string

  (get-public-key (did : :string))
  => PubKey

  (sign-message! (msg : Message))
  => :void

  (verify-message (msg : Message))
  => @VerificationResult

  (verify-broadcast-message (msg : BroadcastMessage))
  => @VerificationResult

  (sign-token! (token : Token))
  => :void

  (verify-token)
  => VerificationResult

  (add-trust-anchor! (token : token))
  => :void

  (remove-trust-anchor! (token : token))
  => :void

  (list-trust-anchors)
  => :list
  )

(interface ActorContext
  (security)
  => SecurityContext

  (send! (msg : Message))
  => :void

  (broadcast! (msg : BroadcastMessage))
  => :void

  (join! (group : :string))
  => :void

  (leave! (group : :string))
  => :void
  )

(interface ActorHandler
  (receive! (ctx : ActorContext) (msg : Message))
  => :void

  (receive-broadcast! (ctx : ActorContext) (msg : BroadcastMessage))
  => :void
  )

(interface Stream
  (path)
  => :string

  (peer-path)
  => :string

  (proto)
  => :string

  (reader)
  => Reader

  (writer)
  => Writer

  (close)
  => :void
  )

(interface StreamHandler
  (handle-stream! (stream : Stream))
  => :void
  )

(interface Network
  ;; resolve a path to a list of addresses
  (resolve (path : string))
  => :list

  ;; connect to an address
  ;; returns the path of the peer host
  (connect! (addr : Address))
  => :string

  ;; listen to an address
  (listen! (addr : Address))
  => :void

  ;; retrieve the host's listening addresses
  (addresses)
  => :list
  )

(interface Host
  (path)
  => :string

  (network)
  => Network

  (actor-context)
  => ActorContext

  (register-actor! (actor : Actor)
                   (handler : ActorHandler))
  => :void

  (unregister-actor! (actor : Actor))
  => :void

  (open-stream (peer  : :string)
               (proto : :string))
  => Stream

  (register-stream-handler! (proto : :string)
                            (handler : StreamHandler))
  => :void

  (unregister-stream-handler! (proto : :string))
  => :void

  (shutdown!)
  => :void
  )

(defstruct VerificationResult ())
(defstruct (VerficationOK VerificationResult) ())
(defstruct (VerificationError VerificationResult)
  ((reason : :string)))

(def !OK (VerificationOK))
