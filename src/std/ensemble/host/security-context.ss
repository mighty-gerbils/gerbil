;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host security context
(import :std/interface
        :std/serde/marshal
        :std/crypto/pkey
        :std/crypto/random
        ../interface
        ../ucan/cap
        ./types
        ./util)
(export new-security-context)

(def nonce-length 16)

(def (new-security-context (host : basic-host))
  => SecurityContext
  (SecurityContext
   (security-context host host.capability-context)))

(defsyntax-case sign-message! ()
  ((_ self msg)
   (with-identifiers ((self.cap.get-principal
                       #'self #'self ".cap.get-principal")
                      (msg.source.did
                       #'msg #'msg ".source.did")
                      (msg.signature
                       #'msg #'msg ".signature"))
     #'(let* ((privk (self.cap.get-principal msg.source.did))
              (nonce (random-bytes nonce-length))
              (_ (set! msg.nonce nonce))
              (blob  (marshal msg))
              (sig   (digest-sign! privk blob)))
         (set! msg.signature sig)
         #!void))))

(def (security-context-sign-message! (self : security-context)
                                     (msg  : Message))
  => :void
  (sign-message! self msg))

(def (security-context-verify-message (self : security-context)
                                      (msg  : Message))
  => VerificationResult
  (let (now (coarse-time now))
    (if (<= now msg.expire)
      !MessageExpiredVerificationError
      (let loop ((rest msg.auth))
        => VerificationResult
        (match rest
          ([token . rest]
           (using (token : Token)
             (cond
              ((not (eq? token.type INVOKE))
               (loop rest))
              ((not (equal? token.issuer msg.source.did))
               (loop rest))
              ((not (equal? token.audience msg.dest.did))
               (loop rest))
              ((not (capability-includes? token.method msg.method))
               (loop rest))
              (else
               (let (result (self.cap.verify token msg.dest.did))
                 (if (!VerificationOK? result)
                   !VerificationOK
                   (loop rest)))))))
          (else
           !NoTokenForMessageVerificationError))))))

(def (security-context-sign-broadcast-message! (self : security-context)
                                               (msg  : BroadcastMessage))
  => :void
  (sign-message! self msg))

(def (security-context-verify-broadcast-message (self : security-context)
                                                (msg  : BroadcastMessage))
  => VerificationResult
  (let (now (coarse-time now))
    (if (<= now msg.expire)
      !MessageExpiredVerificationError
      (let loop ((rest msg.auth))
        => VerificationResult
        (match rest
          ([token . rest]
           (using (token : Token)
             (cond
              ((not (eq? token.type BROADCAST))
               (loop rest))
              ((not (equal? token.issuer msg.source.did))
               (loop rest))
              ((not (equal? token.audience "*"))
               (loop rest))
              ((not (capability-includes? token.group msg.dest))
               (loop rest))
              ((not (capability-includes? token.method msg.method))
               (loop rest))
              (else
               (let (result (self.cap.verify token))
                 (if (!VerificationOK? result)
                   !VerificationOK
                   (loop rest)))))))
          (else
           !NoTokenForMessageVerificationError))))))

(implement Closer security-context
  (close void))

(implement SecurityContext security-context
  (capability-context       &security-context-cap)
  (sign-message!            __security-context-sign-message!)
  (verify-message           __security-context-verify-message)
  (sign-broadcast-message!  __security-context-sign-broadcast-message!)
  (verify-broadcast-message __security-context-verify-broadcast-message))
