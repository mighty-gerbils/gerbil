;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble ucan envelopes
(export #t)

(deftype @Token Token)

(defstruct Token
  ((type      :  :fixnum)     ; the type of the token
   (principal :  :string)     ; the issuing principal did
   (recipient :  :string)     ; the recipient did
   (path      :  :string)     ; the actor path allowed by the token
   (methods   :  :list)       ; the method capabilities granted; List :string
   (expire    :  :integer)    ; token expiration time in UNIX seconds
   (depth     :? :fixnum)     ; the maximum depth in the token chain
   (chain     :? @Token)      ; the next token in the chain
   (nonce     :- :u8vector)   ; the token nonce
   (signature :- :u8vector))  ; the token signature by the principal
  final: #t)

;; token types
(def DELEGATE  0)
(def INVOKE    1)
(def BROADCAST 2)
(def REVOKE    3)
