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
        ../ucan/ext
        ./types
        ./reactor
        ./util)
(export new-actor)

(deflogger log name: "/ensemble/actor")

(defmethod {:init! basic-actor}
  (lambda (self)
    (set! self.mx              (make-mutex 'actor))
    (set! self.react-unicast   (unicast-reaction))
    (set! self.react-broadcast (broadcast-reaction))
    (set! self.groups          (make-hash-table-string))
    (set! self.on-close        [])
    (set! self.next-reply      0)))

(def (new-actor (host : Host) (name : :string))
  => Actor
  (using (actor (basic-actor) : basic-actor)
    (let (this (Actor actor))
      (set! actor.this this)
      (set! actor.host host)
      (set! actor.context    (host.actor-context))
      (set! actor.space      (actor.context.actor-space))
      (set! actor.security   (actor.context.security-context))
      (set! actor.capability (actor.security.capability-context))
      (set! actor.handle
        (host.register-actor! name (ActorHandler actor)))
      this)))

(implement Closer basic-actor
  (close
   (lambda (self)
     (let ((values on-close subs)
           (do-with-lock self.mx
             (begin0 (values self.on-close (hash-values self.groups))
               (set! self.on-close [])
               (self.groups.clear!))))
       (self.host.unregister-actor! self.handle)
       (for (sub subs)
         (self.broadcast.unsubscribe! sub))
       (for (thunk (in-list (reverse! on-close)) :- :procedure)
         (try (thunk)
              (catch (e)
                (log.warn "unhandled exception in on-close thunk"
                          exception: (exception->string e)))))
       (reaction-close self.react-unicast)
       (reaction-close self.react-broadcast)))))

(implement ActorHandler basic-actor
  (receive!
   (lambda (self ctx msg)
     (cond
      ((unicast-reactor-get self.react-unicast msg.method)
       => (lambda ((handler :- MessageHandler))
            (handler.handle-message! self.this msg)))
      (else
       (log.debug "no reactor for method"
                  actor:   self.handle.actor
                  message: msg
                  method:  msg.method)
       (ActorContext-send-error-reply!
        (self.host.actor-context)
        msg
        (!Error/c "no reactor for method"
                  'method: msg.method)))))))

(implement BroadcastHandler basic-actor
  (receive!
   (lambda (self msg)
     (cond
      ((broadcast-reactor-get self.react-broadcast msg.method msg.dest)
       => (lambda ((handler :- BroadcastMessageHandler))
            (parameterize ((current-host self.host))
              (handler.handle-message! self.this msg))))
      (else
       (log.debug "no broadcast reactor for method"
                  actor:   self.handle.actor
                  message: msg
                  method:  msg.method))))))

(defrule (check-replyto! where replyto-msg)
  (unless (MessageBody-replyto replyto-msg)
    (raise-contract-violation where "message not expecting reply" "message with replyto" replyto-msg)))

(implement Actor basic-actor
  (handle        &basic-actor-handle)
  (actor-context &basic-actor-context)
  (actor-space   &basic-actor-space)
  (send!
   (lambda (self dest method body ttl)
     (let* ((body (marshal-body body))
            (expire (message-expire ttl))
            (auth
             (self.capability.provide-invoke!
              self.handle.host.did
              dest.host.did
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
       (self.context.send! msg))))
  (invoke!
   (lambda (self dest method body ttl)
     (let* ((body (marshal-body body))
            (reply-method
             (next-reply-method! self))
            (expire (message-expire ttl))
            (auth
             (self.capability.provide-invoke!
              self.handle.host.did
              dest.host.did
              method ""
              expire))
            (reply-auth
             (self.capability.grant!
              DELEGATE
              self.handle.host.did
              dest.host.did
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
       (unicast-reactor-set-reply! self.react-unicast
                                   reply-method
                                   completion
                                   expire)
       (self.context.send! msg)
       (: (completion-wait! completion)
          Message))))
  (reply!
   (lambda (self replyto-msg body)
     (check-replyto! send-reply! replyto-msg)
     (let* ((body (marshal-body body))
            (token
             (self.capability.invoke!
              replyto-msg.replyto.auth
              self.handle.host.did
              replyto-msg.replyto.handle.host.did
              replyto-msg.replyto.method ""
              replyto-msg.expire))
            (msg
             (Message
              source:  self.handle
              dest:    replyto-msg.replyto.handle
              method:  replyto-msg.replyto.method
              body:    body
              expire:  replyto-msg.expire
              auth:    [token])))
       (self.security.sign-message! msg)
       (self.context.send! msg))))
  (invoke-reply!
   (lambda (self replyto-msg body)
     (check-replyto! invoke-reply! replyto-msg)
     (let* ((body (marshal-body body))
            (reply-method
             (next-reply-method! self))
            (expire replyto-msg.expire)
            (token
             (self.capability.invoke!
              replyto-msg.replyto.auth
              self.handle.host.did
              replyto-msg.replyto.handle.host.did
              replyto-msg.replyto.method ""
              expire))
            (reply-auth
             (self.capability.grant!
              DELEGATE
              self.handle.host.did
              replyto-msg.replyto.handle.host.did
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
              dest:    replyto-msg.replyto.handle
              method:  replyto-msg.replyto.method
              body:    body
              expire:  replyto-msg.expire
              replyto: replyto
              auth:    [token]))
            (completion
             (Completion replyto-msg.replyto.method)))
       (self.security.sign-message! msg)
       (unicast-reactor-set-reply! self.react-unicast
                                   reply-method
                                   completion
                                   expire)
       (self.context.send! msg)
       (: (completion-wait! completion)
          Message))))
  (send-with-replyto!
   (lambda (self dest method reply-method body ttl)
     (let* ((body (marshal-body body))
            (expire (message-expire ttl))
            (auth
             (self.capability.provide-invoke!
              self.handle.host.did
              dest.host.did
              method ""
              expire))
            (reply-auth
             (self.capability.grant!
              DELEGATE
              self.handle.host.did
              dest.host.did
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
       (self.context.send! msg))))
  (broadcast!
   (lambda (self dest method body ttl)
     (let* ((body (marshal-body body))
            (expire (message-expire ttl))
            (auth
             (self.capability.provide-broadcast!
              self.handle.host.did
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
       (self.context.broadcast! msg))))
  (broadcast-invoke!
   (lambda (self dest method body ttl limit)
     (let* ((body (marshal-body body))
            (reply-method
             (next-reply-method! self))
            (expire (message-expire ttl))
            (auth
             (self.capability.provide-broadcast!
              self.handle.host.did
              method dest
              expire))
            (reply-auth
             (self.capability.grant!
              DELEGATE
              self.handle.host.did
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
       (unicast-reactor-set-broadcast-reply! self.react-unicast
                                             reply-method
                                             channel limit
                                             expire)
       (self.context.broadcast! msg)
       channel)))
  (broadcast-reply!
   (lambda (self replyto-msg body)
     (check-replyto! broadcast-reply! replyto-msg)
     (let* ((body (marshal-body body))
            (token
             (self.capability.invoke!
              replyto-msg.replyto.auth
              self.handle.host.did
              replyto-msg.replyto.handle.host.did
              replyto-msg.replyto.method ""
              replyto-msg.expire))
            (msg
             (Message
              source:  self.handle
              dest:    replyto-msg.replyto.handle
              method:  replyto-msg.replyto.method
              body:    body
              expire:  replyto-msg.expire
              auth:    [token])))
       (self.security.sign-message! msg)
       (self.context.send! msg))))
  (broadcast-invoke-reply!
   (lambda (self replyto-msg body)
     (check-replyto! invoke-reply! replyto-msg)
     (let* ((body (marshal-body body))
            (reply-method
             (next-reply-method! self))
            (expire replyto-msg.expire)
            (token
             (self.capability.invoke!
              replyto-msg.replyto.auth
              self.handle.host.did
              replyto-msg.replyto.handle.host.did
              replyto-msg.replyto.method ""
              expire))
            (reply-auth
             (self.capability.grant!
              DELEGATE
              self.handle.host.did
              replyto-msg.replyto.handle.host.did
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
              dest:    replyto-msg.replyto.handle
              method:  replyto-msg.replyto.method
              body:    body
              expire:  replyto-msg.expire
              replyto: replyto
              auth:    [token]))
            (completion
             (Completion replyto-msg.replyto.method)))
       (self.security.sign-message! msg)
       (unicast-reactor-set-reply! self.react-unicast
                                   reply-method
                                   completion
                                   expire)
       (self.context.send! msg)
       (: (completion-wait! completion)
          Message))))
  (broadcast-with-replyto!
   (lambda (self dest method reply-method body ttl)
     (let* ((body (marshal-body body))
            (expire (message-expire ttl))
            (auth
             (self.capability.provide-broadcast!
              self.handle.host.did
              method dest
              expire))
            (reply-auth
             (self.capability.grant!
              DELEGATE
              self.handle.host.did
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
       (self.context.broadcast! msg))))
  (add-message-handler!
   (lambda (self method handler expire one-shot)
     (unicast-reactor-set! self.react-unicast
                           method handler
                           expire one-shot)))
  (add-broadcast-handler!
   (lambda (self group method handler expire one-shot)
     (do-with-lock self.mx
       (broadcast-reactor-set! self.react-broadcast
                               method group handler
                               expire one-shot)
       (do-with-lock self.mx
         (unless (self.groups.ref group #f)
           (let (sub (self.broadcast.subscribe! group
                                                (BroadcastHandler self)))
             (self.groups.set! group sub)))))))
  (on-close
   (lambda (self thunk)
     (do-with-lock self.mx
       (set! self.on-close (cons thunk self.on-close))))))


(def (new-reply-reactor (self       : basic-actor)
                        (method     : :string)
                        (completion : Completion)
                        (expire     : :integer))
  => unicast-reactor
  (let* ((timeout-thread
          (spawn/name ['timeout method]
           (lambda ()
             (unless (thread-receive (seconds->time expire) #f)
               (ignore-errors
                (completion-error!
                 completion
                 (Timeout "reply timeout"
                          where: method)))
               (unicast-reactor-delete! self.react-unicast method)))))
         (handler
          (MessageHandler
           (unicast-reply-handler completion timeout-thread))))
    (unicast-reactor handler:  handler
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
  => unicast-reactor
  (let* ((timeout-thread
          (spawn/name ['timeout method]
            (lambda ()
              (thread-receive (seconds->time expire) #f)
              (ignore-errors (channel-close channel))
              (unicast-reactor-delete! self.react-unicast method))))
         (handler
          (MessageHandler
           (broadcast-reply-handler channel
                                    (make-mutex 'broadcast-reply)
                                    0 limit timeout-thread))))
    (unicast-reactor handler:  handler
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
  => unicast-reactor
  (let* ((thread
          (and (fx> expire 0)
               (spawn/name ['timeout method]
                 (lambda ()
                   (unless (thread-receive (seconds->time expire) #f)
                     (unicast-reactor-delete! self.react-unicast method))))))
         (handler
          (if thread
            (MessageHandler
             (unicast-message-handler handler: handler
                                      one-shot: one-shot
                                      thread: thread))
            handler)))
    (unicast-reactor handler:  handler
                     expire:   expire
                     one-shot: one-shot)))

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
  => broadcast-reactor
  (let* ((thread
          (and (fx> expire 0)
               (spawn/name ['timeout method]
                 (lambda ()
                   (unless (thread-receive (seconds->time expire) #f)
                     (broadcast-reactor-delete! self.react-broadcast method group))))))
         (handler
          (if thread
            (BroadcastMessageHandler
             (broadcast-message-handler handler: handler
                                        one-shot: one-shot
                                        thread: thread))
            handler)))
    (broadcast-reactor handler:  handler
                       expire:   expire
                       one-shot: one-shot)))

(implement MessageHandler broadcast-message-handler
  (handle-message!
   (lambda (self actor msg)
     (when (and self.one-shot self.thread)
       (thread-send self.thread 't))
      (self.handler.handle-message! actor msg))))
