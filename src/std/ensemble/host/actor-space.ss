;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host actor space
(import :std/interface
        ../interface
        ./types)
(export new-actor-space)

(def (new-actor-space (host : basic-host))
  => ActorSpace
  (ActorSpace
   (actor-space host)))
