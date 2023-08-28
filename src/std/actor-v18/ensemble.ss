;;; -*- Gerbil -*-
;;; © vyzo
;;; actor ensemble utilities
(import (only-in :std/misc/ports read-file-u8vector)
        ./message
        ./proto
        ./server
        ./admin)
(export #t)

;; stops (shuts down) an actor by reference
(defcall-actor (stop-actor! ref (srv (current-actor-server)))
  (->> (handle srv ref) (!shutdown))
  error: "error shutting down actor" ref)

;; stops a remote actor server
(defcall-actor (remote-stop-server! srv-id (srv (current-actor-server)))
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
  error: "error retrieving server connections" srv-id)

;; loads a library module in a remote server
(defcall-actor (remote-load-library-module srv-id mod (srv (current-actor-server)))
  (let (mod-str
        (cond
         ((string? mod) mod)
         ((symbol? mod)
          (let* ((mod-str (symbol->string mod))
                 (mod-str
                  (if (string-prefix? ":" mod-str)
                    (substring mod-str 1 (string-length mod-str))
                    mod-str)))
            (string-append mod-str "__rt")))
         (else
          (error "Bad argument; expected string or symbol" mod))))
    (->> (handle srv (reference srv-id 'loader))
         (!load-library-module mod-str)))
  error: "error remotely loading library module" srv-id mod)

;; loads code in a remote server
(defcall-actor (remote-load-code srv-id object-file-path (srv (current-actor-server)))
  (let ((code
         (cond
          ((string? object-file-path)
           (read-file-u8vector object-file-path))
          (else
           (error "Bad argument; path to code object file" object-file-path))))
        (linker (path-strip-directory object-file-path)))
    (->> (handle srv (reference srv-id 'loader))
         (!load-code code linker)))
  error: "error remotely load code" srv-id)

;; evals an expression in a remote server
(defcall-actor (remote-eval srv-id expr (srv (current-actor-server)))
  (->> (handle srv (reference srv-id 'loader))
       (!eval expr))
  error: "error remotely evaluating expression" srv-id)

;; pings a remote server
(defcall-actor (ping-server srv-id (srv (current-actor-server)))
  (->> (handle srv (reference srv-id 0))
       (!ping))
  error: "error pinging server" srv-id)

;; pings an actor by reference
(defcall-actor (ping-actor ref (srv (current-actor-server)))
  (->> (handle srv ref)
       (!ping))
  error: "error pinging actor" ref)

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

;; authorizes the current server for administrative privileges with the given remote server,
;; using the administative private key.
(defcall-actor (admin-authorize privk srv-id authorized-server-id
                                (srv (current-actor-server))
                                capabilities: (cap '(admin)))
  (let (remote-root (handle srv (reference srv-id 0)))
    (unless (and (list? cap) (andmap symbol? cap))
      (error "Bad argument; expected list of symbols" cap))
    (match (->> remote-root (!admin-auth authorized-server-id cap))
      ((!admin-auth-challenge bytes)
       (let (sig (admin-auth-challenge-sign privk srv-id authorized-server-id bytes))
         (->> remote-root (!admin-auth-response sig))))
      (result result)))
  error: "error authorizing with administrative privileges" srv-id)

;; retract capabilities confered to a server; the current server must be authorized with
;; admin capabilities
(defcall-actor (admin-retract srv-id authorized-server-id (srv (current-actor-server)))
  (let (remote-root (handle srv (reference srv-id 0)))
    (->> remote-root (!admin-retract authorized-server-id)))
  error: "error retracting capabilities" srv-id authorized-server-id)
