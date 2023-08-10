;;; -*- Gerbil -*-
;;; © vyzo
;;; actor ensemble utilities
(import :gerbil/gambit/threads
        ./message
        ./proto
        ./server)
(export #t)

;; lists the registered actors in a remote server
(def (remote-list-actors srv-id (srv (current-actor-server)))
  (match (->> srv (!list-actors srv-id))
    ((!ok value) value)
    ((!error what)
     (raise-actor-error 'list-actors "error listing actors" srv-id what))))

;; ensures there is a connection to a server in the ensemble.
;; if the addresses are not specified, it is looked up in the registry.
;; Raises an error if the connection fails.
(def (remote-connect! from-id to-id (addrs #f) (srv (current-actor-server)))
  (match (->> srv (!connect from-id to-id addrs))
    ((!ok value) value)
    ((!error what)
     (raise-actor-error 'connect! "error remotely connecting to server" from-id to-id what))))

;; list the server connections for a remote server
(def (remote-list-connections srv-id (srv (current-actor-server)))
  (match (->> srv (!list-connections srv-id))
    ((!ok value) value)
    ((!error what)
     (raise-actor-error 'list-connections "error retrieving server connections" what))))

;; adds a server to the ensemble
(def (ensemble-add-server! id addrs roles (srv (current-actor-server)))
  (-> srv (!ensemble-add-server id addrs roles)))

;; removes a server from the ensemble
(def (ensemble-remove-server! id (srv (current-actor-server)))
  (-> srv (!ensemble-remove-server id)))

;; lists all known servers in the ensemble.
;; returns a list [[id roles addr ...] ...]
(def (ensemble-list-servers (srv (current-actor-server)))
  (match (->> srv (!ensemble-lookup-server #f #f))
    ((!ok value) value)
    ((!error what)
     (raise-actor-error 'ensemble-list-servers "error listing servers" what))))

;; looks up a server in the ensemble through the registry
;; returns the server addresses: [addr ...]
(def (ensemble-lookup-server id (srv (current-actor-server)))
  (match (->> srv (!ensemble-lookup-server id #f))
    ((!ok value) value)
    ((!error what)
     (raise-actor-error 'ensemble-lookup-server "error looking up server" id what))))

;; looks up servers in the ensemble registry that fullfill a role.
;; returns a list [[id addr ...] ...]
(def (ensemble-lookup-servers/role role (srv (current-actor-server)))
  (match (->> srv (!ensemble-lookup-server #f role))
    ((!ok value) value)
    ((!error what)
     (raise-actor-error 'ensemble-lookup-server "error looking up servers" what))))
