;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble actor implementation
(import :std/error
        :std/interface
        :std/io/interface
        :std/log
        :std/iter
        :std/serde/marshal
        :std/time/precise
        :std/sync/channel
        :std/sync/completion
        ../interface
        ../ucan/ext)
(export new-actor)

(def default-max-active-reactors 1024)

(deflogger log name: "/ensemble/actor")

(defclass basic-actor
  ((this           : Actor)
   (ctx            : ActorContext)
   (security       : SecurityContext)
   (capability     : CapabilityContext)
   (handle         : Handle)
   (emit           : Channel)
   (limit          : :fixnum)
   (mx             : :mutex)
   (registered?    : :boolean)
   (reactors       : HashTable) ; method string -> UnicastReactor
   (bcast-reactors : HashTable) ; method string -> BroadcastReactor
   (groups         : HashTable) ; group string set
   (active         : HashTable) ; active reactors; thread -> method
   (on-close       : :list)     ; on close thunks; list of thunk
   (next-reply     : :integer)) ; next reply counter
  transparent: #f
  print: (handle)
  final: #t
  constructor: :init!)

(defmethod {:init! basic-actor}
  (lambda (self limit)
    (set! self.limit limit)
    (set! self.mx    (make-mutex 'actor))
    (set! self.reactors       (make-hash-table-string))
    (set! self.bcast-reactors (make-hash-table-string))
    (set! self.groups         (make-hash-table-string))
    (set! self.active         (make-hash-table-eq))
    (set! self.on-close   [])
    (set! self.next-reply 0)))

(defclass Reactor
  ((method   : :string)
   (expire   : :integer)
   (one-shot : :boolean)))

(defclass (UnicastReactor Reactor)
  ((handler : MessageHandler))
  final: #t)

(defclass (BroadcastReactor Reactor)
  ((handler : BroadcastMessageHandler)
   (group   : :string))
  final: #t)

(def (new-actor (limit : :fixnum := default-max-active-reactors))
  => Actor
  (let* ((actor (basic-actor limit))
         (this (Actor actor)))
    (set! (basic-actor-this actor) this)
    this))

(implement Closer basic-actor
  (close
   (lambda (self)
     (let (on-close
           (reverse!
            (do-with-lock self.mx
              (begin0 self.on-close
                (set! self.on-close [])))))
       (for (thunk (in-list on-close) :- :procedure)
         (try (thunk)
              (catch (e)
                (log.warn "unhandled exception in on-close thunk"
                          exception: (exception->string e)))))))))

(implement ActorHandler basic-actor
  (receive!
   (lambda (self ctx msg)
     (let (result (self.security.verify-message msg self.handle.did))
       (if (!OK? result)
         (do-with-lock self.mx
           (cond
            ((fx>= (self.active.length) self.limit)
             (log.warn "active reactor limit exceeded; dropping message"
                       actor:   self.handle.name
                       message: msg))
            ((self.reactors.ref msg.method #f)
             => (lambda ((reactor :- UnicastReactor))
                  (let (thread
                        (spawn-reactor
                         self msg
                         (cut reactor.handler.handle-message! self.this msg)))
                    (self.active.set! thread msg.method)
                    (when reactor.one-shot
                      (self.reactors.delete! msg.method)))))
            (else
             (log.debug "no reactor for method"
                        actor:   self.handle.name
                        message: msg
                        method:  msg.method))))
         (log.warn "message verification failed"
                   actor:   self.handle.name
                   message: msg
                   reason:  (VerificationError-reason result))))))
 (receive-broadcast!
  (lambda (self ctx msg)
    (let (result (self.security.verify-broadcast-message msg self.handle.did))
      (if (!OK? result)
        (do-with-lock self.mx
          (cond
           ((fx>= (self.active.length) self.limit)
            (log.warn "active reactor limit exceeded; dropping message"
                      actor:   self.handle.name
                      message: msg))
           ((self.bcast-reactors.ref msg.method #f)
            => (lambda ((reactor :- BroadcastReactor))
                 (if (equal? reactor.group msg.dest)
                   (let (thread
                         (spawn-reactor
                          self msg
                          (cut reactor.handler.handle-message! self.this msg)))
                     (self.active.set! thread msg.method)
                     (when reactor.one-shot
                       (self.bcast-reactors.delete! msg.method)))
                   (log.warn "broadcast reactor group mismatch"
                             actor:    self.handle.name
                             message:  msg
                             method:   msg.method
                             group:    msg.dest
                             expected: reactor.group))))
           (else
            (log.debug "no reactor for method"
                       actor:   self.handle.name
                       message: msg
                       method:  msg.method))))
        (log.warn "message verification failed"
                  actor:   self.handle.name
                  message: msg
                  reaseon: (VerificationError-reason result))))))
  (on-register!
   (lambda (self ctx handle emit)
     (do-with-lock self.mx
       (when self.registered?
         (raise-contract-violation on-register! "actor is already registered" "unregistered actor"))
       (set! self.ctx ctx)
       (set! self.security (ctx.security-context))
       (set! self.capability (SecurityContext-capability-context self.security))
       (set! self.handle handle)
       (set! self.emit emit)
       (set! self.registered? #t))))
  (on-unregister!
   (lambda (self ctx handle)
     (do-with-lock self.mx
       (set! self.registered? #f)
       (for (group (in-hash-keys (self.groups)) :- :string)
         (self.ctx.leave! group))
       (self.groups.clear!)))))

(defrule (check! where self)
  (unless (basic-actor-registered? self)
    (raise-contract-violation where "actor is not registered" "registered actor")))

(defrule (check-replyto! where replyto-msg)
  (unless (MessageBody-replyto replyto-msg)
    (raise-contract-violation where "message not expecting reply" "message with replyto" replyto-msg)))

(implement Actor basic-actor
  (handle
   (lambda (self)
     (check! handle self)
     self.handle))
  (actor-context
   (lambda (self)
     (check! context self)
     self.ctx))
  (actor-space
   (lambda (self)
     (check! space self)
     (self.ctx.actor-space)))
  (send!
   (lambda (self dest method body ttl)
     (check! send! self)
     (let* ((body (marshal body))
            (expire (+ (CoarseTime-seconds (current-time-coarse))
                       ttl))
            (auth
             (self.capability.provide-invoke!
              self.handle.did
              dest.did
              method ""
              expire))
            (msg
             (Message
              source: self.handle
              dest:   dest
              method: method
              body:   body
              expire: expire
              auth:   auth)))
       (self.security.sign-message! msg)
       (self.ctx.send-message! msg))))
  (invoke!
   (lambda (self dest method body ttl)
     (check! invoke! self)
     (let* ((body (marshal body))
            (reply-method
             (next-reply-method! self))
            (expire (+ (CoarseTime-seconds (current-time-coarse))
                       ttl))
            (auth
             (self.capability.provide-invoke!
              self.handle.did
              dest.did
              method ""
              expire))
            (reply-auth
             (self.capability.grant!
              DELEGATE
              self.handle.did
              dest.did
              reply-method ""
              expire))
            (replyto
             (ReplyTo
              self.handle
              reply-auth
              reply-method))
            (msg
             (Message
              source:  self.handle
              dest:    dest
              method:  method
              body:    body
              expire:  expire
              replyto: replyto
              auth:    auth))
            (completion
             (Completion method)))
       (self.security.sign-message! msg)
       (do-with-lock self.mx
         (self.reactors.set!
          reply-method
          (new-reply-reactor self reply-method completion expire)))
       (self.ctx.send-message! msg)
       (: (completion-wait! completion)
          Message))))
  (reply!
   (lambda (self replyto-msg body)
     (check! send-reply! self)
     (check-replyto! send-reply! replyto-msg)
     (let* ((body (marshal body))
            (token
             (self.capability.invoke!
              replyto-msg.replyto.auth
              self.handle.did
              replyto-msg.replyto.actor.did
              replyto-msg.replyto.method ""
              replyto-msg.expire))
            (msg
             (Message
              source:  self.handle
              dest:    replyto-msg.replyto.actor
              method:  replyto-msg.replyto.method
              body:    body
              expire:  replyto-msg.expire
              auth:    [token])))
       (self.security.sign-message! msg)
       (self.ctx.send-message! msg))))
  (invoke-reply!
   (lambda (self replyto-msg body)
     (check! invoke-reply! self)
     (check-replyto! invoke-reply! replyto-msg)
     (let* ((body (marshal body))
            (reply-method
             (next-reply-method! self))
            (expire replyto-msg.expire)
            (token
             (self.capability.invoke!
              replyto-msg.replyto.auth
              self.handle.did
              replyto-msg.replyto.actor.did
              replyto-msg.replyto.method ""
              expire))
            (reply-auth
             (self.capability.grant!
              DELEGATE
              self.handle.did
              replyto-msg.replyto.actor.did
              reply-method ""
              expire))
            (replyto
             (ReplyTo
              self.handle
              reply-auth
              reply-method))
            (msg
             (Message
              source:  self.handle
              dest:    replyto-msg.replyto.actor
              method:  replyto-msg.replyto.method
              body:    body
              expire:  replyto-msg.expire
              replyto: replyto
              auth:    [token]))
            (completion
             (Completion replyto-msg.replyto.method)))
       (self.security.sign-message! msg)
       (do-with-lock self.mx
         (self.reactors.set!
          reply-method
          (new-reply-reactor self reply-method completion expire)))
       (self.ctx.send-message! msg)
       (: (completion-wait! completion)
          Message))))
  (send-with-replyto!
   (lambda (self dest method reply-method body ttl)
     (check! invoke! self)
     (let* ((body (marshal body))
            (expire (+ (CoarseTime-seconds (current-time-coarse))
                       ttl))
            (auth
             (self.capability.provide-invoke!
              self.handle.did
              dest.did
              method ""
              expire))
            (reply-auth
             (self.capability.grant!
              DELEGATE
              self.handle.did
              dest.did
              reply-method ""
              expire))
            (replyto
             (ReplyTo
              self.handle
              reply-auth
              reply-method))
            (msg
             (Message
              source:  self.handle
              dest:    dest
              method:  method
              body:    body
              expire:  expire
              replyto: replyto
              auth:    auth)))
       (self.security.sign-message! msg)
       (self.ctx.send-message! msg))))
  (broadcast!
   (lambda (self dest method body ttl)
     (check! broadcast! self)
     (let* ((body (marshal body))
            (expire (+ (CoarseTime-seconds (current-time-coarse))
                       ttl))
            (auth
             (self.capability.provide-broadcast!
              self.handle.did
              method dest
              expire))
            (msg
             (BroadcastMessage
              source: self.handle
              dest:   dest
              method: method
              body:   body
              expire: expire
              auth:   auth)))
       (self.security.sign-broadcast-message! msg)
       (self.ctx.broadcast-message! msg))))
  (broadcast-invoke!
   (lambda (self dest method body ttl limit)
     (check! broadcast-invoke! self)
     (let* ((body (marshal body))
            (reply-method
             (next-reply-method! self))
            (expire (+ (CoarseTime-seconds (current-time-coarse))
                       ttl))
            (auth
             (self.capability.provide-broadcast!
              self.handle.did
              method dest
              expire))
            (reply-auth
             (self.capability.grant!
              DELEGATE
              self.handle.did
              "*"
              reply-method ""
              expire))
            (replyto
             (ReplyTo
              self.handle
              reply-auth
              reply-method))
            (msg
             (BroadcastMessage
              source:  self.handle
              dest:    dest
              method:  method
              body:    body
              expire:  expire
              replyto: replyto
              auth:    auth))
            (channel
             (make-channel method)))
       (self.security.sign-broadcast-message! msg)
       (do-with-lock self.mx
         (self.reactors.set!
          reply-method
          (new-broadcast-reply-reactor self reply-method channel expire limit)))
       (self.ctx.broadcast-message! msg)
       channel)))
  (broadcast-reply!
   (lambda (self replyto-msg body)
     (check! send-reply! self)
     (check-replyto! broadcast-reply! replyto-msg)
     (let* ((body (marshal body))
            (token
             (self.capability.invoke!
              replyto-msg.replyto.auth
              self.handle.did
              replyto-msg.replyto.actor.did
              replyto-msg.replyto.method ""
              replyto-msg.expire))
            (msg
             (Message
              source:  self.handle
              dest:    replyto-msg.replyto.actor
              method:  replyto-msg.replyto.method
              body:    body
              expire:  replyto-msg.expire
              auth:    [token])))
       (self.security.sign-message! msg)
       (self.ctx.send-message! msg))))
  (broadcast-invoke-reply!
   (lambda (self replyto-msg body)
     (check! broadcast-invoke-reply! self)
     (check-replyto! invoke-reply! replyto-msg)
     (let* ((body (marshal body))
            (reply-method
             (next-reply-method! self))
            (expire replyto-msg.expire)
            (token
             (self.capability.invoke!
              replyto-msg.replyto.auth
              self.handle.did
              replyto-msg.replyto.actor.did
              replyto-msg.replyto.method ""
              expire))
            (reply-auth
             (self.capability.grant!
              DELEGATE
              self.handle.did
              replyto-msg.replyto.actor.did
              reply-method ""
              expire))
            (replyto
             (ReplyTo
              self.handle
              reply-auth
              reply-method))
            (msg
             (Message
              source:  self.handle
              dest:    replyto-msg.replyto.actor
              method:  replyto-msg.replyto.method
              body:    body
              expire:  replyto-msg.expire
              replyto: replyto
              auth:    [token]))
            (completion
             (Completion replyto-msg.replyto.method)))
       (self.security.sign-message! msg)
       (do-with-lock self.mx
         (self.reactors.set!
          reply-method
          (new-reply-reactor self reply-method completion expire)))
       (self.ctx.send-message! msg)
       (: (completion-wait! completion)
          Message))))
  (broadcast-with-replyto!
   (lambda (self dest method reply-method body ttl)
     (check! boarcast-with-replyto! self)
     (let* ((body (marshal body))
            (expire (+ (CoarseTime-seconds (current-time-coarse))
                       ttl))
            (auth
             (self.capability.provide-broadcast!
              self.handle.did
              method dest
              expire))
            (reply-auth
             (self.capability.grant!
              DELEGATE
              self.handle.did
              "*"
              reply-method ""
              expire))
            (replyto
             (ReplyTo
              self.handle
              reply-auth
              reply-method))
            (msg
             (BroadcastMessage
              source:  self.handle
              dest:    dest
              method:  method
              body:    body
              expire:  expire
              replyto: replyto
              auth:    auth)))
       (self.security.sign-broadcast-message! msg)
       (self.ctx.broadcast-message! msg))))
  (add-message-handler!
   (lambda (self method handler expire one-shot)
     (do-with-lock self.mx
       (self.reactors.set!
        method
        (new-message-reactor self method handler
                             expire one-shot)))))
  (add-broadcast-handler!
   (lambda (self group method handler expire one-shot)
     (do-with-lock self.mx
       (unless (self.groups.ref group #f)
         (self.ctx.join! group)
         (self.groups.set! group #t))
       (self.bcast-reactors.set!
        method
        (new-broadcast-reactor self method group handler
                               expire one-shot)))))
  (emit!
   (lambda (self notif)
     (check! emit! self)
     (unless (channel-try-put self.emit notif)
       (raise-io-error emit! "notification channel full" notif))))
  (add-close-thunk!
   (lambda (self thunk)
     (do-with-lock self.mx
       (set! self.on-close (cons thunk self.on-close))))))

(def (next-reply-method! (self : basic-actor))
  => :string
  (let (next-reply
        (do-with-lock self.mx
          (let (next self.next-reply)
            (set! self.next-reply (+ next 1))
            next)))
    (string-append "/tmp/reply/" (number->string next-reply))))

(def (new-reply-reactor (self       : basic-actor)
                        (method     : :string)
                        (completion : Completion)
                        (expire     : :integer))
  => UnicastReactor
  (let* ((timeout-thread
          (spawn/name ['timeout method]
           (lambda ()
             (unless (thread-receive (seconds->time expire) #f)
               (ignore-errors
                (completion-error!
                 completion
                 (Timeout "reply timeout"
                          where: method)))
               (do-with-lock self.mx
                 (self.reactors.delete! method))))))
         (handler
          (MessageHandler
           (unicast-reply-handler completion timeout-thread))))
    (UnicastReactor handler:  handler
                    method:   method
                    expire:   expire
                    one-shot: #t)))

(defstruct unicast-reply-handler
  ((completion     : Completion)
   (timeout-thread : :thread)))

(implement MessageHandler unicast-reply-handler
  (handle-message!
   (lambda (self actor msg)
     (ignore-errors (completion-post! self.completion msg))
     (thread-send self.timeout-thread 't))))

(def (new-broadcast-reply-reactor (self    : basic-actor)
                                  (method     : :string)
                                  (channel : Channel)
                                  (expire  : :integer)
                                  (limit   : :fixnum))
  => UnicastReactor
  (let* ((timeout-thread
          (spawn/name ['timeout method]
            (lambda ()
              (thread-receive (seconds->time expire) #f)
              (ignore-errors (channel-close channel))
              (do-with-lock self.mx
                (self.reactors.delete! method)))))
         (handler
          (MessageHandler
           (broadcast-reply-handler channel
                                    (make-mutex 'broadcast-reply)
                                    0 limit timeout-thread))))
    (UnicastReactor handler:  handler
                    method:   method
                    expire:   expire)))

(defstruct broadcast-reply-handler
  ((channel        :  Channel)
   (mx             :  :mutex)
   (count          :  :fixnum)
   (limit          :? :fixnum)
   (timeout-thread :  :thread)))

(implement MessageHandler broadcast-reply-handler
  (handle-message!
   (lambda (self actor msg)
     (if self.limit
       (do-with-lock self.mx
         (when (fx< self.count self.limit)
           (set! self.count (fx+ self.count 1))
           (ignore-errors (channel-put self.channel msg))
           (when (fx= self.count self.limit)
             (thread-send self.timeout-thread 't))))
       (ignore-errors (channel-put self.channel msg))))))

(def (new-message-reactor (self     :  basic-actor)
                          (method   :  :string)
                          (handler  :  MessageHandler)
                          (expire   :  :integer)
                          (one-shot :  :boolean))
  => UnicastReactor
  (let* ((timeout-thread
          (and (fx> expire 0)
               (spawn/name ['timeout method]
                 (lambda ()
                   (unless (thread-receive (seconds->time expire) #f)
                     (do-with-lock self.mx
                       (self.reactors.delete! method)))))))
         (handler
          (if timeout-thread
            (MessageHandler
             (unicast-message-handler handler one-shot timeout-thread))
            handler)))
    (UnicastReactor handler:  handler
                    method:   method
                    expire:   expire
                    one-shot: one-shot)))

(defstruct unicast-message-handler
  ((handler  : MessageHandler)
   (one-shot : :boolean)
   (thread   :? :thread)))

(implement MessageHandler unicast-message-handler
  (handle-message!
   (lambda (self actor msg)
     (when (and self.one-shot self.thread)
       (thread-send self.thread 't))
      (self.handler.handle-message! actor msg))))

(def (new-broadcast-reactor (self     :  basic-actor)
                            (method   :  :string)
                            (group    :  :string)
                            (handler  :  BroadcastMessageHandler)
                            (expire   :  :integer)
                            (one-shot :  :boolean))
  => BroadcastReactor
  (let* ((thread
          (and (fx> expire 0)
               (spawn/name ['timeout method]
                 (lambda ()
                   (unless (thread-receive (seconds->time expire) #f)
                     (do-with-lock self.mx
                       (self.bcast-reactors.delete! method)))))))
         (handler
          (if thread
            (BroadcastMessageHandler
             (broadcast-message-handler handler one-shot thread))
            handler)))
    (BroadcastReactor handler:  handler
                      method:   method
                      group:    group
                      expire:   expire
                      one-shot: one-shot)))

(defstruct broadcast-message-handler
  ((handler  : BroadcastMessageHandler)
   (one-shot : :boolean)
   (thread   :? :thread)))

(implement MessageHandler broadcast-message-handler
  (handle-message!
   (lambda (self actor msg)
     (when (and self.one-shot self.thread)
       (thread-send self.thread 't))
      (self.handler.handle-message! actor msg))))

(def (spawn-reactor (self   : basic-actor)
                    (msg    : MessageBody)
                    (thunk  : :procedure))
  => :thread
  (rec thread
    (spawn/name
     ['reactor msg.method]
     (lambda ()
       (try
        (log.debug "dispatch message"
                   actor: self.handle.name
                   method: msg.method
                   message: msg)
        (thunk)
        (catch (e)
          (log.error "unhandled exception in reactor"
                     actor: self.handle.name
                     method: msg.method
                     exception: (exception->string e)))
        (finally
         (do-with-lock self.mx
           (self.active.delete! thread))))))))
