;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble actor types
(import :std/sync/completion
        :std/sync/channel
        ../interface)
(export #t)

(defstruct reactor
  ((expire   : :integer)
   (one-shot : :boolean)
   (thread   :? :thread)))

(defclass (unicast-reactor reactor)
  ((handler : MessageHandler))
  final: #t)

(defclass (broadcast-reactor reactor)
  ((handler : BroadcastMessageHandler))
  final: #t)

(defstruct unicast-reply-reactor
  ((completion : Completion))
  final: #t)

(defstruct broadcast-reply-reactor
  ((channel : Channel)
   (limit   :? :fixnum))
  final: #t)

(defstruct reaction
  ((mx    : :mutex)
   (table : HashTable)))

(defclass (unicast-reaction reaction)
  ()
  constructor: :init!
  final: #t)

(defclass (broadcast-reaction reaction)
  ()
  constructor: :init!
  final: #t)

(defstruct message-handler
  ((one-shot : :boolean)
   (thread   :? :thread)))

(defclass (unicast-message-handler message-handler)
  ((handler  : MessageHandler))
  final: #t)

(defclass (broadcast-message-handler message-handler)
  ((handler  : BroadcastMessageHandler))
  final: #t)

(defclass basic-actor
  ((this            : Actor)
   (host            : Host)
   (context         : ActorContext)
   (space           : ActorSpace)
   (security        : SecurityContext)
   (capability      : CapabilityContext)
   (broadcast       : Broadcast)
   (handle          : Handle)
   (react-unicast   : unicast-reaction)
   (react-broadcast : broadcast-reaction)
   (mx              : :mutex)
   (groups          : HashTable) ; group string -> sub token
   (on-close        : :list)     ; on close thunks; list of thunk
   (next-reply      : :integer)) ; next reply counter
  transparent: #f
  print: (handle)
  final: #t
  constructor: :init!)
