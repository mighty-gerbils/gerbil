;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host interface
(import :std/io
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

  (proto)
  => :string

  (peer)
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

(interface Host
  (path)
  => :string

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
