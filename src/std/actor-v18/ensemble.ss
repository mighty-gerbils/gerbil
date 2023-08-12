;;; -*- Gerbil -*-
;;; © vyzo
;;; actor ensemble utilities
(import :gerbil/gambit/threads
        ./message
        ./proto
        ./server)
(export #t)

;; stops a remote actor server
(defcall-actor (remote-stop-actor-server! srv-id (srv (current-actor-server)))
  (->> (handle srv (reference srv-id 0)) (!shutdown))
  error: "error shutting down remote server" srv-id)

;; lists the registered actors in a remote server
(defcall-actor (remote-list-actors srv-id (srv (current-actor-server)))
  (->> srv (!list-actors srv-id))
  error: "error listing actors" srv-id)

;; ensures there is a connection to a server in the ensemble.
;; if the addresses are not specified, it is looked up in the registry.
;; Raises an error if the connection fails.
(defcall-actor (remote-connect-to-server! from-id to-id (addrs #f) (srv (current-actor-server)))
  (->> srv (!connect from-id to-id addrs))
  error: "error remotely connecting to server" from-id to-id)

;; list the server connections for a remote server
(defcall-actor (remote-list-connections srv-id (srv (current-actor-server)))
  (->> srv (!list-connections srv-id))
  error: "error retrieving server connections")

;; adds a server to the ensemble
(defcall-actor (ensemble-add-server! id addrs roles (srv (current-actor-server)))
  (->> srv (!ensemble-add-server id addrs roles))
  error: "error adding server")

;; removes a server from the ensemble
(defcall-actor (ensemble-remove-server! id (srv (current-actor-server)))
  (->> srv (!ensemble-remove-server id))
  error: "error removing server")

;; lists all known servers in the ensemble.
;; returns a list [[id roles addr ...] ...]
(defcall-actor (ensemble-list-servers (srv (current-actor-server)))
  (->> srv (!ensemble-lookup-server #f #f))
  error: "error listing servers")

;; looks up a server in the ensemble through the registry
;; returns the server addresses: [addr ...]
(defcall-actor (ensemble-lookup-server id (srv (current-actor-server)))
  (->> srv (!ensemble-lookup-server id #f))
  error: "error looking up server" id)

;; looks up servers in the ensemble registry that fullfill a role.
;; returns a list [[id addr ...] ...]
(defcall-actor (ensemble-lookup-servers/role role (srv (current-actor-server)))
  (->> srv (!ensemble-lookup-server #f role))
  error: "error looking up servers")
