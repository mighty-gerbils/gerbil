;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host resolver
(import :std/error
        :std/interface
        ../interface
        ../actor
        ./types)
(export new-resolver)

(def resolver-address-ttl 3600)

(defprotocol HostResolver
  ;; broadcast lookup a host
  ("/host/resolver/lookup"
   (lookup (host   : :string) ; host for which addresses are requested
           (origin : :string) ; origin host for the request
           (addrs  : :list)))  ; list of addresses of origin host
  ;; unicast resolve a host
  ("/host/resolver/resolve"
   (resolve (host : :string)))
  )

(implement-protocol HostResolver host-resolver
  (lookup
   (lambda (self actor msg req)
     (host-resolver-add-addresses! self req.origin req.addrs)
     (when (server-host? self.host)
       (using (host self.host : server-host)
         (cond
          ((equal? req.host host.name)
           (actor.broadcast-reply! msg host.announce))
          ((host.children.ref req.host #f)
           => (lambda ((state :- child-host-state))
                (actor.broadcast-reply! msg state.announce)))))))
   broadcast: group:/host/resolver)
  (resolve
   (lambda (self actor msg req)
     (actor.reply! msg
                   (with-actor-error
                    (host-resolver-resolve self req.host)))))
  )

(def (new-resolver (host : basic-host) (remote-resolver :? :string))
  => Resolver
  (let (resolver (host-resolver host remote-resolver #f))
    (set! resolver.actor
      (new-actor host.this))
    (host-resolver::implement::HostResolver
     resolver.actor resolver)
    (resolver.actor.register! actor:/host/resolver)
    (Resolver resolver)))

(def (host-resolver-add-addresses! (self : host-resolver)
                                   (peer : :string)
                                   (addrs : :list))
  => :void
  (db-add-host-addresses! self.host.db peer addrs resolver-address-ttl))

(def (host-resolver-resolve (self : host-resolver)
                            (peer : :string))
  => :list
  (let (known (db-get-host-addresses self.host.db peer))
    (cond
     ((not (null? known))
      known)
     (self.resolver
      (let* ((resolver
              (self.host.actor-space.resolve actor:/host/resolver
                                             self.resolver))
             (result
              (with-actor-reply
               (self.actor.invoke! resolver
                                   HostResolver::method::resolve
                                   (HostResolver.resolve peer))
               :~ (list-of Address?)
               :- :list)))
        (host-resolver-add-addresses! self peer result)
        result))
     ((server-host? self.host)
      (using (host self.host : server-host)
        (let* ((chan (self.actor.broadcast-invoke!
                      group:/host/resolver
                      HostResolver::method::lookup
                      (HostResolver.lookup peer
                                           host.name
                                           host.announce)))
               (result
                (reverse!
                 (for/fold (r []) (lst chan)
                   (if ((list-of Address?) lst)
                     (foldl cons r lst)
                     r)))))
          (host-resolver-add-addresses! self peer result)
          result)))
     (else
      (raise-contract-violation host-resolver-resolve "client cannot resolve address; no resolver" peer: peer)))))

(implement Closer host-resolver
  (close   void))
(implement Resolver host-resolver
  (resolve __host-resolver-resolve))
