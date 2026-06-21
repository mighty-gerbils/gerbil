;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host actor space
(import :std/interface
        ../interface
        ../actor
        ./types
        ./stream-cache)
(export new-actor-space)

(defprotocol ActorResolver
  ;; list all actors in the host
  ("/host/space/list"
   (list)))

(implement-protocol ActorResolver actor-space
  (list
   (lambda (self actor msg req)
     (actor.reply! msg (actor-space-list self #f)))))

(def (new-actor-space (host : basic-host))
  => ActorSpace
  (let (as (actor-space host #f))
    (set! as.actor
      (new-actor host.this))
    (actor-space::implement::ActorResolver
     as.actor as)
    (as.actor.register! actor:/host/space)
  (ActorSpace as)))

(def (actor-space-resolve (self : actor-space)
                          (name : :string)
                          (host :? :string))
  (if (or (not host)
          (equal? host self.host.name))
    (Handle self.host.did self.host.name name)
    (using (conn (self.host.connect! host) : Connection)
      (Handle (conn.peer-did) host name))))

(def (actor-space-list (self : actor-space)
                       (host :? :string))
  (if (or (not host)
          (equal? host self.host.name))
    (do-with-lock self.host.mx
      (hash-keys self.host.actor))
    (using (conn (self.host.connect! host) : Connection)
      (actor.invoke! (Handle (conn.peer-did) host actor:/host/space)
                     ActorResolver::method::list
                     (ActorResolver.list)))))

(implement Closer actor-space
  (close   void))

(implement ActorSpace actor-space
  (resolve __actor-space-resolve))
