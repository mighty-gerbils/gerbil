;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host types
(import :std/db
        :std/net/address
        :std/net/ssl
        ../interface
        ../config)
(export #t)

(defstruct host-db
  ((mx : :mutex)
   (db : DB)
   (statements : StatementCache)
   (thread : :thread)
   (closed? : :boolean))
  constructor: :init!
  final: #t)

(defstruct event-bus
  ((mx : :mutex)
   (channels : :list))
  constructor: :init!
  final: #t)

(defstruct basic-host
  ((this : Host)
   ;; thread group for host threads
   (tgroup : :thread-group)
   ;; access mutex for state
   (mx : :mutex)
   ;; has the host been closed?
   (closed? : :boolean)
   ;; the host name
   (name : :string)
   ;; the host did
   (did : :string)
   ;; the host persistent db
   (db : host-db)
   ;; the host capability context
   (capability-context : CapabilityContext)
   ;; the host security context
   (security-context : SecurityContext)
   ;; the host network
   (network : Network)
   ;; the host broadcast system
   (broadcast : Broadcast)
   ;; the host resolver
   (resolver : Resolver)
   ;; the host actor space
   (actor-space : ActorSpace)
   ;; the host actor context
   (actor-context : ActorContext)
   ;; the actor table
   ;; handle -> ActorHandler
   (actors : HashTable)
   ;; the stream reactor table
   ;; proto string -> steam-reactor
   (reactors : HashTable)
   ;; bus for event notifications
   (bus : event-bus)
   ;; tls context for inet hosts
   (tls-context :~ (? (or not SSL_CTX?)) :- :foreign)
   ;; active stats for limits
   (limits          : Limits)
   (connections-in  : :fixnum)
   (connections-out : :fixnum)
   (streams-in      : :fixnum)
   (streams-out     : :fixnum)
   (actor-threads   : :fixnum)
   )
  transparent: #f
  print: (name did)
  constructor: :init!)

(defstruct (server-host basic-host)
  (;; list of addresses to announce in response to resolver queries
   (announce :~ (list-of? Address?) :- :list)))

(defstruct (inet-server-host server-host)
  ()
  final: #t)

(defstruct (local-server-host server-host)
  ()
  final: #t)

(defstruct (inet-client-host basic-host)
  ()
  final: #t)

(defstruct (local-client-host basic-host)
  ()
  final: #t)

(defstruct host-connection-handler
  ((host : basic-host)
   (stream-handler : StreamHandler))
  final: #t)

(defstruct host-stream-handler
  ((host : basic-host))
  final: #t)

(defstruct host-actor-stream-handler
  ((host   : basic-host))
  final: #t)

(defclass stream-reactor
  ((handler  : StreamHandler)
   (proto    : :string)
   (one-shot : :boolean)
   (thread   :? :thread))
  final: #t)

(defstruct security-context
  ((host : basic-host)
   (cap  : CapabilityContext))
  final: #t)

(defstruct host-resolver
  ((host     : basic-host)
   (resolver :? :string)
   (actor    : Actor))
  final: #t)

(defstruct actor-space
  ((host : basic-host)
   (actor : Actor))
  final: #t)

(defstruct stream-cache
  ((host    : basic-host)
   (proto   : :string)
   (mx      : :mutex)
   (closed? : :boolean)
   (table   : HashTable)
   (thread  : :thread))
  constructor: :init!
  final: #t)

(defstruct cached-stream
  ((stream    : Stream)
   (mx        : :mutex)
   (last-use  : :integer))
  final: #t)

(defstruct actor-context
  ((host    : basic-host)
   (streams : stream-cache))
  final: #t)
