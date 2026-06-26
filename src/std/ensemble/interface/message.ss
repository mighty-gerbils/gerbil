;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble actor messages
(import :std/io/interface
        :std/serde/interface
        :std/serde/deserialize
        ./ucan)
(export #t)

;; a HostID identifies an actor host in the ensemble space
;; it is composed by two components:
;; - the did (distributed identifier), which is uniquely identifying
;;   public key.
;; - the name, which is a non uniquely identifying
;;   semantic (human meaningful) name in standard host dotted
;;   notation
(defstruct HostID
  ((name : :string)
   (did  : :string))
  final: #t)

(defobject-untaint HostID)

(defstruct Handle
  ((host  : HostID)    ; the host
   (actor : :string))  ; the name of the actor in the host
  final: #t)

(defobject-untaint Handle)

(defstruct ReplyTo
  ((handle : Handle)        ; the actor to reply to
   (auth   : Token)         ; UCAN authorization for the reply
   (method : :string))      ; the method to invoke in the reply
  final: #t)

(defobject-untaint ReplyTo)

(defstruct UnicastMessageHead
  ((source    : Handle)      ; source actor
   (dest      : Handle)))    ; recipient actor

(defstruct BroadcastMessageHead
  ((source    : Handle)      ; source actor
   (dest      : :string)))   ; destination group

(defclass MessageBody
  ((method    :  :string)      ; the method invoked by the message
   (body      :  :u8vector)    ; the message body
   (expire    :  :integer)     ; expiration of the message in UNIX seconds
   (replyto   :? ReplyTo)      ; (optional) replyto
   (auth      :  :list)        ; UCAN authorization tokens for the message
   (nonce     :- :u8vector)    ; message nonce
   (signature :- :u8vector)))  ; message signature

(defclass (Message MessageBody UnicastMessageHead) ()
  final: #t)

(defobject-untaint Message)

(defclass (BroadcastMessage MessageBody BroadcastMessageHead) ()
  final: #t)

(defobject-untaint BroadcastMessage)

;; context for security operations
(interface (SecurityContext Closer)
  ;; the capability context
  (capability-context)
  => CapabilityContext

  ;; sign a message
  (sign-message! (msg : Message))
  => :void

  ;; sign a broadcast message
  (sign-broadcast-message! (msg : BroadcastMessage))
  => :void

  ;; verify a message signature and capabilities
  (verify-message (msg : Message))
  => VerificationResult

  ;; verify a broadcast message and capabilities
  (verify-broadcast-message (msg : BroadcastMessage))
  => VerificationResult
  )
