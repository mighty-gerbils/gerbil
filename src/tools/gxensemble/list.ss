;;; -*- Gerbil -*-
;;; © vyzo
;;; actor ensemble management tool
(import :std/actor
        ./util)
(export #t)

;;; gerbil ensemble list
(def (do-list-connections opt)
  (start-actor-server-with-options! opt)
  (display-result-list
   (remote-list-connections (hash-ref opt 'server-id)))
  (stop-actor-server!))

(def (do-list-actors opt)
  (start-actor-server-with-options! opt)
  (display-result-list
   (map reference-actor (remote-list-actors (hash-ref opt 'server-id))))
  (stop-actor-server!))

(def (do-list-servers opt)
  (start-actor-server-with-options! opt)
  (display-result-list
   (ensemble-list-servers))
  (stop-actor-server!))
