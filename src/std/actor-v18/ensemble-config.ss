;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble configuration
(import :std/config
        ./path)
(export #t)

;;; <ensemble-config> configures the ensemble supervisory domain
;;; ------------------------------------------------------------------------
;;; ;;; config: config versioned type, current is ensemble-v0
;;; config: ensemble-v0
;;; ;;; supervisory domain for the ensemble
;;; domain: <domain>
;;; ;;; [optional] root path for ensemble executions
;;; root: <path>
;;; ;;; supervisory services
;;; services: (
;;;  ;;; supervisor config
;;;  supervisor: <ensemble-server-config>
;;;  ;;; registry config for the local ensemble
;;;  registry: <ensemble-server-config>
;;;  ;;; [optional] resolver config for distributed ensemble name resolution
;;;  resolver: <ensemble-server-config>
;;;  ;;; [optional] broadcast config
;;;  broadcast: <ensemble-server-config>
;;; )
;;;
;;;  ;;; roles -> execution mapping
;;; roles:
;;;  ((<role>  ; symbol
;;;    ;;; for each role define an execution rule:
;;;    ;;; the program is started as <exec> <prefix> ... <server-identifier>
;;;    ;;; the server configuration will be in the <ensemble-server-path>/config
;;;    ;;; <program>: the symbol 'self for single binary deployments
;;;    ;;; or an executable path (string)
;;;    exe: <program>
;;;    ;;; optional executable argument prefix
;;;    prefix: (<string> ...)
;;;    ;;; optional executable argument suffix
;;;    suffix: (<string> ...)
;;;    ;;; supervision policy
;;;    policy: <supervisory-policy>
;;;    ;;; optional role server configuration template
;;;    server-config: <ensemble-server-config>
;;;    )
;;;  ...)
;;;
;;; ;;; [optional] preloaded server configuration; the supervisor on its own is capable
;;; ;;; of receiving remote updates, executables, and server execution instructions.
;;; preload: (
;;;  ;;; static preloaded server configuration
;;;  servers:
;;;  ((<server-identifier>
;;;    ;;; domain
;;;    domain: <domain>
;;;    ;;; primary role
;;;    role: <role>
;;;    ;;; [optional] server configuration, the role template is overlayed
;;;    server-config: <ensemble-server-config>
;;;   )
;;;   ... )
;;;
;;;  ;;; dynamic preloaded worker server configuration
;;;  workers:
;;;  ((<domain>
;;;    ;;; server id prefix; the actual server id will be <prefix>-<seqno>
;;;    prefix: <id>
;;;    ;;; number of servers
;;;    servers: <fixnum>
;;;    ;;; primary role
;;;    role: <role>
;;;    ;;; [optional] server configuration, the role template is overlayed
;;;    server-config: <ensemble-server-config>
;;;   )
;;;  ...)
;;; )

;;; <ensemble-server-config> configures a server within a supervisory domain
;;; ------------------------------------------------------------------------
;;; config: ensemble-server-v0
;;;
;;; ;;; ensemble
;;; domain: <symbol>
;;; identifier: <server-identifier>
;;; supervisor: <server-identifier>
;;; registry:   <server-identifier>
;;; cookie:     <path>
;;; admin:      <path>
;;;
;;; ;;; execution
;;; role:    <symbol>
;;; secondary-roles: (<symbol> ...)
;;; exe:     <string>
;;; args:    (<string> ...)
;;; policy:  <symbol>
;;; env:     <string>
;;; envvars: (<string> ...)
;;;
;;; ;;; logging
;;; log-level: <symbol>
;;; log-file:  <path>
;;; log-dir:   <path>
;;;
;;; ;;; bindings
;;; addresses: (<address> ...)
;;; auth: ((<server-identifier> <capability>) ...)
;;; known-servers: ((<server-identifier> <address> ...) ...)
;;;
;;; ;;; application specific configuration
;;; application: ((<symbol> config ...) ...)

(def (check-ensemble-config! cfg)
  ;; TODO config validation
  (config-check! cfg 'ensemble-v0))

(def (check-ensemble-server-config! cfg)
  ;; TODO config validation
  (config-check! cfg 'ensemble-server-v0))

(def (merge-select old new key)
  (cond
   ((or (config-get new key) (config-get old key))
    => (cut list key <>))
   (else [])))

(def (merge-list old new key (memf member))
  (let ((left (config-get old key))
        (right (config-get new key)))
    (cond
     ((and (not left) (not right))
      [])
     ((not left)
      [key right])
     ((not right)
      [key left])
     (else
      (let loop ((rest left) (result right))
        (match rest
          ([val . rest]
           (if (memf val result)
             (loop rest result)
             (loop rest (cons val result))))
          (else
           [key result])))))))

(def (memvar x lst)
  (let (prefix (substring x 0 (fx1+ (string-index x #\=))))
    (find (lambda (y) (string-prefix? prefix y)) lst)))

(def (merge-alist old new key (assf assoc))
  (let ((left (config-get old key))
        (right (config-get new key)))
    (cond
     ((and (not left) (not right))
      [])
     ((not left)
      [key right])
     ((not right)
      [key left])
     (else
      (let loop ((rest left) (result right))
        (match rest
          ([[k . val] . rest]
           (if (assf k result)
             (loop rest result)
             (loop rest (cons (cons k val) result))))
          (else
           [key result])))))))

(def (merge-plist old new key (pgetf pget))
  (let ((left (config-get old key))
        (right (config-get new key)))
    (cond
     ((and (not left) (not right))
      [])
     ((not left)
      [key right])
     ((not right)
      [key left])
     (else
      (let loop ((rest left) (result right))
        (match rest
          ([k val . rest]
           (if (pgetf k result)
             (loop rest result)
             (loop rest (cons* k val result))))
          (else
           [key result])))))))

(def (ensemble-config-merge old new)
  (cond
   ((not old) new)
   ((not new) old)
   (else
    (check-ensemble-config! old)
    (check-ensemble-config! new)
    [config: 'ensemble-v0
     (merge-select old new domain:) ...
     (merge-select old new root:) ...
     (merge-plist old new services:) ...
     (merge-alist old new roles:) ...
     (merge-plist old new preload:) ...
     ])))

(def (ensemble-server-config-merge old new)
  (cond
   ((not old) new)
   ((not new) old)
   (else
    (check-ensemble-server-config! old)
    (check-ensemble-server-config! new)
    [config: 'ensemble-server-v0
     (merge-select old new domain:) ...
     (merge-select old new identifier:) ...
     (merge-select old new supervisor:) ...
     (merge-select old new registry:) ...
     (merge-select old new cookie:) ...
     (merge-select old new admin:) ...
     (merge-select old new role:) ...
     (merge-list old new secondary-roles: memq) ...
     (merge-select old new exe:) ...
     (merge-select old new args:) ...
     (merge-select old new policy:) ...
     (merge-select old new env:) ...
     (merge-list old new envvars: memvar) ...
     (merge-select old new log-level:) ...
     (merge-select old new log-file:) ...
     (merge-select old new log-dir:) ...
     (merge-list old new addresses:) ...
     (merge-alist old new auth:) ...
     (merge-alist old new known-servers:) ...
     (merge-alist old new application:) ...
     ])))

(def (load-ensemble-config-file path)
  (let (cfg (load-config path 'ensemble-v0))
    (check-ensemble-config! cfg)
    cfg))

(def (load-ensemble-config (base (gerbil-path)))
  (load-ensemble-config-file (ensemble-config-path base)))

(def (load-ensemble-server-config server-id
                                  (domain (ensemble-domain))
                                  (base (gerbil-path)))
  (let (cfg (load-config (ensemble-server-config-path server-id domain base)
                         'ensemble-server-v0))
    (check-ensemble-server-config! cfg)
    cfg))

(def (empty-ensemble-config)
  [config: 'ensemble-v0])

(def (empty-ensemble-server-config)
  [config: 'ensemble-server-v0])
