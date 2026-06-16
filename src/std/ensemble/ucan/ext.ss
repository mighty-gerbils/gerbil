;;; -*- Gerbil -*-
;;; © vyzo
;;; ucan interface utility extension methods
(import :std/error
        :std/crypto/pkey
        :std/time/precise
        ../interface/ucan
        ./cap)
(export #t)

(defrule (defcap-ext head body rest ...)
  (definterface-extension-method CapabilityContext
    head body rest ...))

;; generate a new private key and add it to the context
;; returns the identity did
(defcap-ext (generate-identity! ctx)
  => :string
  (let (pkey (keygen-ed25519))
    (ctx.add-principal! pkey)))

;; generate a root token of type, granting capabilities from
;; issuer to audience for method and sign it/remember it
(defcap-ext (grant! ctx
                    (type     :~ (one-of DELEGATE INVOKE BROADCAST)
                              :- :fixnum)
                    (issuer   :  :string)
                    (audience :  :string)
                    (method   :  :string)
                    (group    :  :string)
                    (expire   :  :integer))
  => Token
  (let* ((token
          (Token type
                 issuer
                 audience
                 method
                 group
                 []
                 expire
                 #f
                 #f #f)))
    (ctx.sign! token)
    token))

;; delegate from a token as chain root
(defcap-ext (delegate! ctx
                       (t        : Token)
                       (type     :~ (one-of DELEGATE INVOKE BROADCAST)
                                 :- :fixnum)
                       (issuer   : :string)
                       (audience : :string)
                       (method   : :string)
                       (group    : :string)
                       (expire   : :integer))
  (unless (fx= t.type DELEGATE)
    (raise-bad-argument delegate! "token does not allow delegation" t))
  (unless (or (equal? t.audience "*")
              (equal? t.audience issuer))
    (raise-bad-argument delegate! "token audience does not allow delegation to issuer" t issuer))
  (unless (capability-includes? t.method method)
    (raise-bad-argument delegate! "token does not include method capability" t method))
  (unless (capability-includes? t.group group)
    (raise-bad-argument delegate! "token does not include group capability" t group))
  (let* ((token
          (Token type
                 issuer
                 audience
                 method
                 group
                 []
                 (cond
                  ((fx= t.expire 0)
                   expire)
                  ((fx= expire 0)
                   t.expire)
                  (else
                   (min t.expire expire)))
                 t #f #f)))
    (ctx.sign! token)
    token))

;; invoke from a token as chain root
(defcap-ext (invoke! ctx
                     (t        : Token)
                     (issuer   : :string)
                     (audience : :string)
                     (method   : :string)
                     (group    : :string)
                     (expire   : :integer))
  (unless (fx= t.type DELEGATE)
    (raise-bad-argument invoke! "token does not allow delegation" t))
  (unless (or (equal? t.audience "*")
              (equal? t.audience issuer))
    (raise-bad-argument invoke! "token audience does not allow delegation to issuer" t issuer))
  (unless (capability-includes? t.method method)
    (raise-bad-argument invoke! "token does not include method capability" t method))
  (unless (capability-includes? t.group group)
    (raise-bad-argument invoke! "token does not include group capability" t group))
  (let* ((token
          (Token INVOKE
                 issuer
                 audience
                 method
                 group
                 []
                 (cond
                  ((fx= t.expire 0)
                   expire)
                  ((fx= expire 0)
                   t.expire)
                  (else
                   (min t.expire expire)))
                 t #f #f)))
    (ctx.sign! token)
    token))

;; broadcast from a token as chain root
(defcap-ext (broadcast! ctx
                        (t        : Token)
                        (issuer   : :string)
                        (audience : :string)
                        (method   : :string)
                        (group    : :string)
                        (expire   : :integer))
  (unless (fx= t.type DELEGATE)
    (raise-bad-argument broadcast! "token does not allow delegation" t))
  (unless (or (equal? t.audience "*")
              (equal? t.audience issuer))
    (raise-bad-argument broadcast! "token audience does not allow delegation to issuer" t issuer))
  (unless (capability-includes? t.method method)
    (raise-bad-argument broadcast! "token does not include method capability" t method))
  (unless (capability-includes? t.group group)
    (raise-bad-argument broadcast! "token does not include group capability" t group))
  (let* ((token
          (Token BROADCAST
                 issuer
                 audience
                 method
                 group
                 []
                 (cond
                  ((fx= t.expire 0)
                   expire)
                  ((fx= expire 0)
                   t.expire)
                  (else
                   (min t.expire expire)))
                 t #f #f)))
    (ctx.sign! token)
    token))

;; generate a list of output tokens of type from an issuer
;; to a audience for method, chained in appropriate output anchors
;; and sign it/remember it
(defcap-ext (provide! ctx
                      (type     :~ (one-of DELEGATE INVOKE BROADCAST)
                                :- :fixnum)
                      (issuer   : :string)
                      (audience : :string)
                      (method   : :string)
                      (group    : :string)
                      (expire   : :integer))
  => :list
  (let* ((anchors
          (ctx.list-output-anchors
           (lambda ((t :- Token))
             (and (or (equal? t.audience "*")
                      (equal? t.audience issuer))
                  (expiration-before? expire t.expire)
                  (capability-includes? t.method method)
                  (capability-includes? t.group group)))
           issuer))
         (tokens
          (map (lambda ((t :- Token))
                 (Token type
                        issuer
                        audience
                        method
                        group
                        []
                        (cond
                         ((fx= t.expire 0)
                          expire)
                         ((fx= expire 0)
                          t.expire)
                         (else
                          (min t.expire expire)))
                        t
                        #f #f))
               anchors))
         (tokens
          ;; grant
          (cons (Token type
                 issuer
                 audience
                 method
                 group
                 []
                 expire
                 #f
                 #f #f)
                tokens)))
    (for-each (lambda ((t :- Token)) (ctx.sign! t))
              tokens)
    tokens))

;; provide tokens delegating capabilities from issuer to audience
(defcap-ext (provide-delegate! ctx
                               (issuer   : :string)
                               (audience : :string)
                               (method   : :string)
                               (group    : :string)
                               (expire   : :integer))
  => :list
  (ctx.provide! DELEGATE issuer audience method group expire))

;; provide tokens granting invoke capabilities from issuer to audience
(defcap-ext (provide-invoke! ctx
                             (issuer   : :string)
                             (audience : :string)
                             (method   : :string)
                             (group    : :string)
                             (expire   : :integer))
  => :list
  (ctx.provide! INVOKE issuer audience method group expire))

;; provide tokens granting broadcast capabilities from issuer to audience
(defcap-ext (provide-broadcast! ctx
                                (issuer   : :string)
                                (method   : :string)
                                (group    : :string)
                                (expire   : :integer))
  => :list
  (ctx.provide! BROADCAST issuer "*" method group expire))

;; revoke a token
(defcap-ext (revoke! ctx (token : Token))
  => Token
  (TODO revoke!))
