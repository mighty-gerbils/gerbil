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
;; issuer to subject for method and sign it/remember it
(defcap-ext (grant! ctx
                    (type     :~ (one-of DELEGATE INVOKE BROADCAST)
                              :- :fixnum)
                    (issuer   :  :string)
                    (subject  :  :string)
                    (method   :  :string)
                    (duration :  :integer))
  => Token
  (let* ((now (current-time-coarse))
         (nbf (CoarseTime-seconds now))
         (expire (+ nbf duration))
         (token
          (Token type
                 issuer
                 subject
                 method
                 nbf
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
                       (subject  : :string)
                       (method   : :string)
                       (duration : :integer))
  (unless (fx= t.type DELEGATE)
    (raise-bad-argument delegate! "token does not allow delegation" t))
  (let* ((now (current-time-coarse))
         (nbf (CoarseTime-seconds now))
         (expire (+ nbf duration))
         (token
          (Token type
                 t.subject
                 subject
                 method
                 (max t.nbf nbf)
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
;; to a subject for method, chained in appropriate output anchors
;; and sign it/remember it
(defcap-ext (provide! ctx
                      (type     :~ (one-of DELEGATE INVOKE BROADCAST)
                                :- :fixnum)
                      (issuer   : :string)
                      (subject  : :string)
                      (method   : :string)
                      (duration : :integer))
  => :list
  (let* ((anchors
          (ctx.list-output-anchors
           (lambda ((t :- Token))
             (and (equal? t.subject issuer)
                  (capability-includes? t.method method)))))
         (now (current-time-coarse))
         (nbf (CoarseTime-seconds now))
         (expire (+ nbf duration))
         (tokens
          (map (lambda ((t :- Token))
                 (Token type
                        issuer
                        subject
                        method
                        (max t.nbf nbf)
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
                 subject
                 method
                 nbf
                 expire
                 #f
                 #f #f)
                tokens)))
    (for-each (lambda ((t :- Token)) (ctx.sign! t))
              tokens)
    tokens))

;; provide tokens delegating capabilities from issuer to subject
(defcap-ext (provide-delegate! ctx
                               (issuer   : :string)
                               (subject  : :string)
                               (method   : :string)
                               (duration : :integer))
  => :list
  (ctx.provide! DELEGATE issuer subject method duration))

;; provide tokens granting invoke capabilities from issuer to subject
(defcap-ext (provide-invoke! ctx
                             (issuer   : :string)
                             (subject  : :string)
                             (method   : :string)
                             (duration : :integer))
  => :list
  (ctx.provide! INVOKE issuer subject method duration))

;; provide tokens granting broadcast capabilities from issuer to subject
(defcap-ext (provide-broadcast! ctx
                                (issuer   :  :string)
                                (subject  :  :string)
                                (method   :  :string)
                                (duration :  :integer))
  => :list
  (ctx.provide! BROADCAST issuer subject method duration))

;; revoke a token
(defcap-ext (revoke! ctx (token : Token))
  => Token
  (TODO revoke!))
