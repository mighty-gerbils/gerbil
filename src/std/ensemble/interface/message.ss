;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble actor messages
(import ./ucan)
(export #t)

(defstruct Handle
  ((did  : :string)   ; the DID of the actor
   (host : :string)   ; the path of the host in the ensemble space
   (name : :string))  ; the path of the actor in the actor space
  final: #t)

(defstruct UnicastMessageHead
  ((source    : Handle)      ; source actor
   (dest      : Handle)))      ; recipient actor

(defstruct BroadcastMessageHead
  ((source    : Handle)      ; source actor
   (dest      : :string)))   ; destination group

(defclass MessageBody
  ((method    : :string)      ; the method invoked by the message
   (body      : :u8vector)    ; the message body
   (expire    : :integer)     ; expiration of the message in UNIX seconds
   (options   : :list)        ; message options
   (auth      : :list)        ; UCAN authorization tokens for the message
   (nonce     :- :u8vector)   ; message nonce
   (signature :- :u8vector))) ; message signature

(defclass (Message MessageBody UnicastMessageHead) ()
  final: #t)

(defclass (BroadcastMessage MessageBody BroadcastMessageHead) ()
  final: #t)

(defstruct MessageOpt ())
(defstruct (ReplyOpt MessageOpt)
  ((actor  : Handle)        ; the actor to reply to
   (auth   : Token)         ; UCAN authorization for the reply
   (method : :string))      ; the method to invoke in the reply
  final: #t)
