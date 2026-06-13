;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble actor interface
(import ./ucan)
(export #t)

(defstruct Actor
  ((identity : :string)   ; the DID of the actor
   (path     : :string))  ; the path of the actor in the ensemble space
  final: #t)

(defstruct Message
  ((source    : Actor)       ; source actor
   (recipient : Actor)       ; recipient actor
   (auth      : Token)       ; UCAN authorization of the message
   (method    : :string)     ; the method invoked by the message
   (body      : :u8vector)   ; the message body
   (epxire    : :integer)    ; expiration of the message in UNIX seconds
   (options   : :list)       ; message options
   (nonce     :- :u8vector)  ; message nonce
   (signature :- :u8vector)) ; signature by the source identity
  final: #t)

(defstruct BroadcastMessage
  ((source    : Actor)       ; source actor
   (auth      : Token)       ; UCAN authorization of the message
   (group     : :string)     ; destination group
   (method    : :string)     ; the method invoked by the message
   (body      : :u8vector)   ; the message body
   (epxire    : :integer)    ; expiration of the message in UNIX seconds
   (options   : :list)       ; message options
   (nonce     : :u8vector)   ; message nonce
   (signature : :u8vector))  ; signature by the source identity
  final: #t)

(defstruct MessageOpt ())
(defstruct (ReplyOpt MessageOpt)
  ((actor  : Actor)         ; the actor to reply to
   (auth   : Token)         ; UCAN authorization for the reply
   (method : :string))      ; the method to invoke in the reply
  final: #t)
