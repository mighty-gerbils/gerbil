;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host types
(import :std/db
        ../interface)
(export #t)

(defstruct host-db
  ((mx : :mutex)
   (db : DB))
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
   ;; the stream handler table
   ;; proto -> StreamReactor
   (reactors : HashTable)
   ;; notification monitors
   ;; a list of channels
   (monitors : :list)
   ;; active stats for limits
   (limits          : NetworkLimits)
   (connections-in  : :fixnum)
   (connections-out : :fixnum)
   (steams-in       : :fixnum)
   (streams-out     : :fixnum)
   (actor-threads   : :fixnum)
   )
  transparent: #f
  print: (name did)
  constructor: :init!)

(defstruct child-host-state
  (;; list of relay addresses to announce in response to resolver queries
   (announce : :list)
   )
  final: #t)

(defstruct (server-host basic-host)
  (;; list of addresses to announce in response to resolver queries
   (announce : :list)
   ;; host childer; name string -> child-host-state
   (children : HashTable)))

(defstruct (inet-server-host server-host)
  ((cfg : InetServerHostConfig))
  final: #t)

(defstruct (local-server-host server-host)
  ((cfg : LocalServerHostConfig))
  final: #t)

(defstruct (inet-client-host basic-host)
  ((cfg : InetClientHostConfig))
  final: #t)

(defstruct (local-client-host basic-host)
  ((cfg : LocalClientHostConfig))
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

(defstruct stream-reactor
  ()
  final: #t)

(defstruct security-context
  ((host : basic-host))
  final: #t)

(defstruct actor-context
  ((host    : basic-host)
   (mx      : :mutex)
   (streams : HashTable)
   (thread  : :thread)
   (closed? : :boolean))
  final: #t)

(defstruct actor-space
  ((host : basic-host))
  final: #t)

(defstruct host-resolver
  ((host     : basic-host)
   (resolver :? :string)
   (actor    : Actor))
  final: #t)
