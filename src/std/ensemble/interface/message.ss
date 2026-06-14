;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble actor messages
(import ./ucan)
(export #t)

(defstruct Handle
  ((did  : :string)   ; the DID of the actor
   (host : :string)   ; the path of the host in the ensemble space
   (path : :string))  ; the path of the actor in the actor space
  final: #t)

(defstruct Message
  ((source    : Handle)      ; source actor
   (dest      : Handle)      ; recipient actor
   (auth      : :list)       ; UCAN authorization tokens for the message
   (method    : :string)     ; the method invoked by the message
   (body      : :u8vector)   ; the message body
   (expire    : :integer)    ; expiration of the message in UNIX seconds
   (options   : :list)       ; message options
   (nonce     :- :u8vector)  ; message nonce
   (signature :- :u8vector)) ; signature by the source identity
  final: #t)

(defstruct BroadcastMessage
  ((source    : Handle)      ; source actor
   (dest      : :string)     ; destination group
   (auth      : :list)       ; UCAN authorization tokens for the message
   (method    : :string)     ; the method invoked by the message
   (body      : :u8vector)   ; the message body
   (expire    : :integer)    ; expiration of the message in UNIX seconds
   (options   : :list)       ; message options
   (nonce     : :u8vector)   ; message nonce
   (signature : :u8vector))  ; signature by the source identity
  final: #t)

(defstruct MessageOpt ())
(defstruct (ReplyOpt MessageOpt)
  ((actor  : Handle)        ; the actor to reply to
   (auth   : Token)         ; UCAN authorization for the reply
   (method : :string))      ; the method to invoke in the reply
  final: #t)
