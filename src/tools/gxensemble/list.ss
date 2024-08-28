;;; -*- Gerbil -*-
;;; © vyzo
;;; actor ensemble management tool
(import :std/actor
        ./util)
(export #t)

;;; gerbil ensemble list
(def (do-list-connections opt)
  (error "FIXME: do-list-connections")
  (start-actor-server-with-options! opt)
  (display-result-list
   (remote-list-connections (hash-ref opt 'server-id)))
  (stop-actor-server!))

(def (do-list-actors opt)
  (error "FIXME: do-list-actors")
  (start-actor-server-with-options! opt)
  (display-result-list
   (map reference-actor (remote-list-actors (hash-ref opt 'server-id))))
  (stop-actor-server!))

(def (do-list-servers opt)
  (error "FIXME: do-list-servers")
  (start-actor-server-with-options! opt)
  (display-result-list
   (ensemble-list-servers))
  (stop-actor-server!))
