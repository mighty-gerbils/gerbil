;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble actor messages
(import :std/io/interface
        :std/serde/interface
        :std/serde/deserialize
        ./ucan)
(export #t)

(defstruct Handle
  ((did  : :string)   ; the DID of the actor
   (host : :string)   ; the path of the host in the ensemble space
   (name : :string))  ; the path of the actor in the actor space
  final: #t)

(defobject-untaint Handle)

(defstruct ReplyTo
  ((actor  : Handle)        ; the actor to reply to
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
