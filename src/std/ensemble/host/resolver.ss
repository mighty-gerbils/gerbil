;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host resolver
(import :std/error
        :std/interface
        :std/io/interface
        :std/net/address
        :std/iter
        :std/serde/deserialize
        ../interface
        ../actor
        ./types
        ./db
        ./util)
(export new-resolver)

(def resolver-address-ttl 300)

;; the host resolver protocol allows hosts to map names or host ids
;; to addresses they can connect to.
;; the protocol has two mode of operations:
;; 1. broadcast resolution
;;    In this mode, an interested party broadcasts a resolution request
;;    (by name or host id). The hosts that receive the broadcast and
;;    match the criterion reply with a unicast message to the origin.
;;    The origin must be an inet capable server (perhaps via relay)
;;    so that it can receive the replies.
;; 2. delegated unicast resoltion
;;    In this mode, an origin host acting as a client asks another
;;    host to perform resolution, using either its local host database
;;    or via broadcast.
(defprotocol HostResolver
  ;; broadcast lookup for a host id.
  ;; the host itself is expected to reply, although caching
  ;; resolvers may also (probabilistically) reply.
  ("/host/resolver/lookup"
   (lookup (host   : HostID)
           (origin :~ (list-of? HostAddress?) :- :list)))
  ;; broadcast lookup for a host by name.
  ;; any host that has the requested name may reply, and
  ;; similarly caching resolvers may also (probabilistically) reply
  ("/host/resolver/lookup-by-name"
   (lookup-by-name (name   : :string)
                   (origin :~ (list-of? HostAddress?) :- :list)))
  ;; unicast resolve a host id through a resolver
  ;; returns a list of host addresses
  ("/host/resolver/resolve"
   (resolve (host : HostID)))
  ;; unicast resolve a host by name
  ;; returns a list of host addresses
  ("/host/resolver/resolve-by-name"
   (resolve-by-name (name : :string)))
  )

(implement-protocol HostResolver host-resolver
  (lookup
   (lambda (self actor msg req)
     (host-resolver-add-addresses! self req.origin)
     (when (server-host? self.host)
       (using (host self.host : server-host)
         (when (equal? req.host host.id)
           (actor.broadcast-reply! msg host.announce)))))
   broadcast: group:/host/resolver)
  (lookup-by-name
   (lambda (self actor msg req)
     (host-resolver-add-addresses! self req.origin)
     (when (server-host? self.host)
       (using (host self.host : server-host)
         (when (equal? req.name host.id.name)
           (actor.broadcast-reply! msg host.announce)))))
   broadcast: group:/host/resolver)
  (resolve
   (lambda (self actor msg req)
     (actor.reply! msg
                   (with-actor-error
                    (host-resolver-resolve self req.host)))))
  (resolve-by-name
   (lambda (self actor msg req)
     (actor.reply! msg
                   (with-actor-error
                    (host-resolver-resolve-by-name self req.name #f)))))
  )

(def (new-resolver (host : basic-host) (remote-resolver :? :string))
  => Resolver
  (using (resolver (host-resolver host remote-resolver #f)
                   : host-resolver)
    (set! resolver.actor
      (new-actor host.this actor:/host/resolver))
    (HostResolver::host-resolver resolver.actor resolver)
    Resolver resolver))

(def (host-resolver-add-addresses! (self  : host-resolver)
                                   (addrs : :list))
  => :void
  (let (expire (+ (coarse-time-now) resolver-address-ttl))
    (for (a addrs :- HostAddress)
      (host-db-add-host-address! self.host.db a expire))))

(def (host-resolver-resolve (self : host-resolver)
                            (peer : HostID))
  => :list
  (let (known (host-db-get-host-addresses self.host.db peer))
    (cond
     ((not (null? known))
      known)
     (self.resolver
      (let* ((resolver (Handle self.resolver actor:/host/resolver))
             (result
              (with-actor-reply
               (self.actor.invoke! resolver
                                   HostResolver::resolve
                                   (HostResolver.resolve peer))
               :~ (list-of? HostAddress?)
               :- :list)))
        (host-resolver-add-addresses! self result)
        result))
     ((server-host? self.host)
      (using (host self.host : server-host)
        (let* ((chan (self.actor.broadcast-invoke!
                      group:/host/resolver
                      HostResolver::lookup
                      (HostResolver.lookup peer host.announce)
                      default-message-ttl
                      1))
               (result
                (reverse!
                 (for/fold (r []) (lst chan)
                   (if ((list-of? HostAddress?) lst)
                     (foldl (lambda (a r) (if (member a r) r (cons a r)))
                            r lst)
                     r)))))
          (host-resolver-add-addresses! self result)
          result)))
     (else
      (raise-contract-violation host-resolver-resolve "client cannot resolve address; no resolver" peer: peer)))))

(def (host-resolver-resolve-by-name (self  : host-resolver)
                                    (name  : :string)
                                    (limit :? :fixnum))
  => :list
  (let (known (host-db-get-host-addresses-by-name self.host.db name))
    (cond
     ((not (null? known))
      known)
     (self.resolver
      (let* ((resolver (Handle self.resolver actor:/host/resolver))
             (result
              (with-actor-reply
               (self.actor.invoke! resolver
                                   HostResolver::resolve-by-name
                                   (HostResolver.resolve-by-name name))
               :~ (list-of? HostAddress?)
               :- :list)))
        (host-resolver-add-addresses! self result)
        result))
     ((server-host? self.host)
      (using (host self.host : server-host)
        (let* ((chan (self.actor.broadcast-invoke!
                      group:/host/resolver
                      HostResolver::lookup-by-name
                      (HostResolver.lookup-by-name name host.announce)
                      default-message-ttl
                      limit))
               (result
                (reverse!
                 (for/fold (r []) (lst chan)
                   (if ((list-of? HostAddress?) lst)
                     (foldl (lambda (a r) (if (member a r) r (cons a r)))
                            r lst)
                     r)))))
          (host-resolver-add-addresses! self result)
          result)))
     (else
      (raise-contract-violation host-resolver-resolve-by-name "client cannot resolve address; no resolver" name: name)))))

(implement Closer host-resolver
  (close   void))
(implement Resolver host-resolver
  (resolve         __host-resolver-resolve)
  (resolve-by-name __host-resolver-resolve-by-name))
