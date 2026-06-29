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
   ;; the host id
   (id   : HostID)
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
   ;; the event bus
   (event-bus : EventBus)
   ;; the actor table
   ;; handle -> ActorHandler
   (actors : HashTable)
   ;; the stream reactor table
   ;; proto string -> steam-reactor
   (reactors : HashTable)
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
   (announce :~ (list-of? HostAddress?) :- :list)))

(defstruct (inet-server-host server-host)
  ()
  final: #t)

(defstruct (local-server-host server-host)
  ()
  final: #t)

(defstruct (inet-clent-host basic-host)
  ()
  final: #t)

(defstruct (local-client-host basic-host)
  ()
  final: #t)

(defstruct host-connection-monitor
  ((host : basic-host)
   (stream-monitor : StreamMonitor))
  final: #t)

(defstruct host-stream-monitor
  ((host : basic-host))
  final: #t)

(defstruct host-actor-stream-reactor
  ((host   : basic-host))
  final: #t)

(defclass stream-reactor
  ((reactor  : StreamReactor)
   (proto    : :string)
   (one-shot : :boolean)
   (thread   :? :thread))
  final: #t)

(defstruct host-resolver
  ((host     : basic-host)
   (resolver :? HostID)
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
