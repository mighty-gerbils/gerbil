;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host actor space
(import :std/interface
        :std/io/interface
        :std/serde/unmarshal
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
  (using (as (actor-space host #f) : actor-space)
    (set! as.actor
      (new-actor host.this actor:/host/space))
    (ActorResolver::actor-space as.actor as)
  (ActorSpace as)))

(def (actor-space-list (self : actor-space)
                       (host :? HostID))
  => :list
  (if (or (not host)
          (equal? host self.host.id))
    (do-with-lock self.host.mx
      (hash-keys self.host.actors))
    (using (conn (self.host.this.connect! host)
                 : Connection)
      (with-actor-reply
       (self.actor.invoke! (Handle (HostAddress-host (conn.peer))
                                   actor:/host/space)
                           ActorResolver::list
                           (ActorResolver.list))
       :~ (list-of? Handle?)
       :- :list))))

(implement Closer actor-space
  (close   void))
(implement ActorSpace actor-space
  (list    __actor-space-list))
