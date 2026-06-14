;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble actor implementation interface
(import :std/sync/channel
        ./actor-base
        ./host)
(export #t)

(def default-message-ttl 5)

(deftype @Actor Actor)

(interface MessageHandler
  (handle-message! (actor : @Actor)
                   (msg   : Message))
  => :void

  (handle-broadcast! (actor : @Actor)
                     (msg   : BroadcastMessage))
  => :void
  )

(interface Actor
  ;; the actor for this engine
  (handle)
  => Handle

  ;; the low level actor context
  (context)
  => ActorContext

  ;; send a message
  (send! (dest   : Handle)
         (method : :string)
         (msg    : :t)
         (ttl    : :fixnum := default-message-ttl))
  => :void

  ;; make a method invocation and block for the reply using
  ;; a temporary one shot message handler.
  (invoke! (dest   : Handle)
           (method : :string)
           (msg    : :t)
           (ttl    : :fixnum := default-message-ttl))
  => Message

  ;; reply to a message
  (send-reply! (replyto : Message)
               (msg     : :t))
  => :void

  ;; reply to a message with a nested invocation
  (invoke-reply! (replyto : Message)
                 (msg     : :t))
  => Message

  ;; send a message expecting a reply to an explicit method
  (send-with-replyto! (dest    : Handle)
                      (method  : :string)
                      (replyto : :string)
                      (msg     : :t)
                      (ttl     : :fixnum := default-message-ttl))
  => :void

  ;; broadcast a message without expecting a reply
  (broadcast! (dest    : :string)
              (method  : :string)
              (msg     : :t)
              (ttl     : :fixnum := default-message-ttl))
  => :void

  ;; broadcast an invocation with a temporary replyto method,
  ;; receiving the reply messages in the returned channel
  (broadcast-invoke! (dest    : :string)
                     (method  : :string)
                     (msg     : :t)
                     (ttl     : :fixnum := default-message-ttl))
  => Channel

  ;; broadcast a message receiving replies in replyto
  (broadcast-with-replyto! (dest    : :string)
                           (method  : :string)
                           (replyto : :string)
                           (msg     : :t)
                           (ttl     : :fixnum := default-message-ttl))
  => :void


  ;; reply to a broadcast message
  (broadcast-reply! (to  : Message)
                    (msg : :t))
  => :void

  ;; add a handler for a method
  ;; if the ttl is > 0 handler will be automatically removed
  ;; after ttl seconds.
  ;; if one-shot? is #t then the handler will only be used
  ;; for a single message reaction.
  ;; if replace? is #t then an existing handler is replaced,
  ;; otherwise it is an error if a handler for the method
  ;; only exists
  (add-message-handler! (method    : :string)
                        (handler   : MessageHandler)
                        ttl:      (ttl       : :fixnum := 0)
                        one-shot: (one-shot? : :boolean := #f)
                        replace:  (replace?  : :boolean := #f))
  => :void

  ;; remove a message handler
  (remove-message-handler! (method : :string))
  => :void

  ;; add a message handler for a broadcast group
  ;; ttl, one-shot, and replace have the same semantics as
  ;; in add-message-handler! above
  (add-broadcast-handler! (group   : :string)
                          (method  : :string)
                          (handler : MessageHandler)
                          ttl:      (ttl       : :fixnum := 0)
                          one-shot: (one-shot? : :boolean := #f)
                          replace:  (replace?  : :boolean := #f))
  => :void

  ;; remove a broadcast message handler
  (remove-broadcast-handler! (group  : :string)
                             (method : :string))
  => :void

  )
