;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble actor interface
(import XXX)
(export #t)

(defstruct Actor
  ((identity : :string)   ; the DID of the actor
   (entity   : :string)   ; the DID of the controlling entity
   (host     : :string)   ; the host of the actor in the ensemble space
   (path     : :string))) ; the path of the actor in the ensemble space

(defstruct Message
  ((source    : Actor)       ; source actor
   (recipient : Actor)       ; recipient actor
   (method    : :string)     ; the method invoked by the message
   (body      : :u8vector)   ; the message body
   (auth      : :u8vector)   ; UCAN authorization of the message
   (epxire    : :integer)    ; expiration of the message in UNIX seconds
   (options   : :list)       ; message options
   (nonce     : :u8vector)   ; message nonce
   (signature : :u8vector))) ; signature by the source identity

(defstruct BroadcastMessage
  ((source    : Actor)       ; source actor
   (group     : :string)     ; destination group
   (method    : :string)     ; the method invoked by the message
   (body      : :u8vector)   ; the message body
   (auth      : :u8vector)   ; UCAN authorization of the message
   (epxire    : :integer)    ; expiration of the message in UNIX seconds
   (options   : :list)       ; message options
   (nonce     : :u8vector)   ; message nonce
   (signature : :u8vector))) ; signature by the source identity

(defclass MessageOpt ())
(defclass (ReplyOpt MessageOpt)
  ((actor  : Actor)         ; the actor to reply to
   (method : :string)       ; the method to invoke in the reply
   (auth   : :u8vector))    ; UCAN authorization for the reply
  final: #t)
