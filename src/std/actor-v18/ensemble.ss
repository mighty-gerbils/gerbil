;;; -*- Gerbil -*-
;;; © vyzo
;;; actor ensemble utilities
(import :gerbil/gambit/threads
        :gerbil/gambit/os
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
(defcall-actor (remote-load-code srv-id code-or-path (srv (current-actor-server)))
  (let (code
        (cond
         ((u8vector? code-or-path)
          code-or-path)
         ((string? code-or-path)
          (let* ((finfo (file-info code-or-path #t))
                 (size  (file-info-size finfo))
                 (code  (make-u8vector size)))
            (call-with-input-file code-or-path
              (lambda (in) (read-subu8vector code 0 size in)))
            code))
         (else
          (error "Bad argument; expected u8vector or path to code object file" code-or-path))))
    (->> (handle srv (reference srv-id 'loader))
         (!load-code code)))
  error: "error remotely load code" srv-id)

;; loads existing code by hash in a remote server
(defcall-actor (remote-load-code-by-hash srv-id code-hash (srv (current-actor-server)))
  (if (string? code-hash)
    (->> (handle srv (reference srv-id 'loader))
         (!load-code-by-hash code-hash))
    (error "Bad argument; expected hex encoded code hash" code-hash))
  error: "error remotely loading code by hash" srv-id code-hash)

;; evals an expression in a remote server
(defcall-actor (remote-eval srv-id expr (srv (current-actor-server)))
  (->> (handle srv (reference srv-id 'loader))
       (!eval expr))
  error: "error remotely evaluating expression" srv-id)

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
