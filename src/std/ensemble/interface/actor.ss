;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble actor implementation interface
(import :std/io/interface
        :std/sync/channel
        ./message)
(export #t)

(def default-message-ttl 5)

(deftype @Actor Actor)

;; the actor space
(interface ActorSpace
  ;; resolve an actor by name in a host
  ;; if the host is #f then the actor is resolved
  ;; in the local host
  (resolve (name : :string)
           (host :? :string := #f))
  => Handle

  ;; list actors in a host
  ;; if the host is #f it lists actors in the local host
  ;; returns a list of Handles
  (list (host :? :string := #f))
  => :list
  )

;; context for actor operations
(interface (ActorContext Closer)
  ;; the actor space
  (actor-space)
  => ActorSpace

  ;; the security context
  (security-context)
  => SecurityContext

  ;; send a signd message
  (send! (msg : Message))
  => :void

  ;; broadcast a signed message
  (broadcast! (msg       : BroadcastMessage)
              (loopback? : :boolean := #f))
  => :void
  )

;; low level actor handler
(interface ActorHandler
  ;; receive a message
  (receive! (ctx : ActorContext)
            (msg : Message))
  => :void

  ;; receive a broadcast message
  (receive-broadcast! (ctx : ActorContext)
                      (msg : BroadcastMessage))
  => :void
  )

(interface MessageHandler
  (handle-message! (actor : @Actor)
                   (msg   : Message))
  => :void
  )

(interface BroadcastMessageHandler
  (handle-message! (actor : @Actor)
                   (msg   : BroadcastMessage))
  => :void
  )

(interface Actor
  (register! (name : :string))
  => Handle

  ;; the handle for this actor
  (handle)
  => Handle

  ;; the low level actor context
  (actor-context)
  => ActorContext

  ;; the actor space
  (actor-space)
  => ActorSpace

  ;; send a one way message
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
  (reply! (replyto : Message)
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
  (broadcast-invoke! (dest    :  :string)
                     (method  :  :string)
                     (msg     :  :t)
                     (ttl     :  :fixnum := default-message-ttl)
                     (limit   :? :fixnum := #f))
  => Channel

  ;; reply to a broadcast message
  (broadcast-reply! (replyto : BroadcastMessage)
                    (msg     : :t))
  => :void

  ;; invoke a reply to a broadcast message
  (broadcast-invoke-reply! (replyto : BroadcastMessage)
                           (msg     : :t))
  => Message

  ;; broadcast a message receiving replies in replyto
  (broadcast-with-replyto! (dest    : :string)
                           (method  : :string)
                           (replyto : :string)
                           (msg     : :t)
                           (ttl     : :fixnum := default-message-ttl))
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
                        (expire    :  :integer := 0)
                        (one-shot? :  :boolean := #f))
  => :void

  ;; add a message handler for a broadcast group
  ;; ttl, one-shot, and replace have the same semantics as
  ;; in add-message-handler! above
  (add-broadcast-handler! (group     : :string)
                          (method    : :string)
                          (handler   : BroadcastMessageHandler)
                          (expire    : :integer := 0)
                          (one-shot? : :boolean := #f))
  => :void

  ;; emit a notification to monitors
  (emit! (notification : :t))
  => :void

  ;; add a close thunk to be executed when the actor
  ;; is closed
  (add-close-thunk! (thunk : :procedure))
  => :void
  )
