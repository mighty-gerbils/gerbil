;;; -*- Gerbil -*-
;;; © vyzo
;;; actor server identifier
(import ./path)
(export #t)

(def current-actor-server
  (make-parameter #f))

;; returns the actor server's identifier
(def (actor-server-identifier (srv (current-actor-server)))
  (cons (thread-specific srv)
        (or (ensemble-domain) '/)))
