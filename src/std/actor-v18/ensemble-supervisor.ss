;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble supervisor api
(import :std/config
        :std/sugar
        :std/iter
        :std/io
        ./path
        ./ensemble
        ./ensemble-config
        ./ensemble-util
        ./ensemble-server
        ./supervisor
        ./executor
        ./filesystem
        ./message
        ./proto
        ./server-identifier
        ./logger)
(export #t)

;;; cfg: <ensemble-config>
(def (become-ensemble-supervisor! cfg (thunk void))
  (check-ensemble-config! cfg)
  (let* ((root     (: (config-get! cfg root:)     :string))
         (domain   (: (config-get! cfg domain:)   :symbol))
         (services (: (config-get! cfg services:) :list)))
    (create-directory* root)
    (parameterize ((current-directory root)
                   (ensemble-domain domain))
      (let (supervisor-cfg (config-get! services supervisor:))
        (become-ensemble-server! supervisor-cfg
          (lambda ()
            (start-ensemble-filesystem!)
            (wait-for-actor! 'filesystem)
            (start-ensemble-executor!)
            (wait-for-actor! 'executor)
            (start-ensemble-supervisor! cfg)
            (wait-for-actor! 'supervisor)
            (thunk)))))))

(def (@supervisor super-id srv)
  (handle srv (reference super-id 'supervisor)))
(def (@executor super-id srv)
  (handle srv (reference super-id 'executor)))
(def (@filesystem super-id srv)
  (handle srv (reference super-id 'filesystem)))

;; lookup all known supervisors by role
;; returns a list of supervisor server ids known to the (current) actor server
(def (ensemble-lookup-supervisors (srv (current-actor-server)))
  (cond
   ((ensemble-lookup-servers/role 'supervisor srv)
    => (cut map car <>))
   (else
    (raise-actor-error ensmeble-lookup-supervisors "cannot find any supervisors"))))

(defsyntax (ensemble-supervisors-collect stx)
  (syntax-case stx ()
    ((_ srv collect1)
     (with-syntax ((super (syntax-local-introduce 'super)))
       #'(let ((supervisors (ensemble-lookup-supervisors srv))
               (try1
                (lambda (super)
                  (try
                   (cons super collect1)
                   (catch (e)
                     (errorf "error listing domain servers for supervisor: ~a: ~a"
                             super e)
                     (cons super (cons 'error e)))))))
           (case (length supervisors)
             ((0) [])
             ((1) (try1 (car supervisors)))
             (else
              (map thread-join!
                   (map (lambda (super) (spawn try1 super))
                        supervisors)))))))))

;; list all supervised servers in a domain (and it's subdomains)
;; returns alist, associating a servisor with a list of servers
(def (ensemble-list-domain-servers
      domain: (domain (ensemble-domain))
      role: (role #f)
      actor-server: (srv (current-actor-server)))
  (ensemble-supervisors-collect srv
    (ensemble-supervisor-list-servers
     supervisor: super
     domain: domain
     role: role
     actor-server: srv)))

(defcall-actor (ensemble-supervisor-list-servers
                supervisor: (super (ensemble-domain-supervisor))
                domain: (domain #f)
                role: (role #f)
                actor-server: (srv (current-actor-server)))
  (->> (@supervisor super srv)
       (!supervisor-list-servers role domain))
  error: "error listing domain servers"
  supervisor: super
  role: role
  domain: domain)

;; start a new server for a (primary) role
;; returns the server identifier
(defcall-actor (ensemble-supervisor-start-server!
                supervisor: super
                role: role
                server-id: server-id
                domain: (domain (ensemble-domain))
                config: (config #f)
                actor-server: (srv (current-actor-server)))
  (->> (@supervisor super srv)
       (!supervisor-start-server role domain server-id config))
  error: "error starting server"
  supervisor: super
  role: role
  domain: domain
  config: config
  server-id: server-id)

;; start a number of worker servers
;; returns a list of server identifiers
(defcall-actor (ensemble-supervisor-start-workers!
                supervisor: super
                role: role
                server-id-prefix: prefix
                workers: count
                domain: (domain (ensemble-domain))
                config: (config #f)
                actor-server: (srv (current-actor-server)))
  (->> (@supervisor super srv)
       (!supervisor-start-workers role domain prefix count config))
  error: "error starting workers"
  supervisor: super
  role: role
  domain: domain
  server-id-prefix: prefix
  workers: count)

;; stop some servers and remove them from the ensemble
;; servers: is an optional list of server ids
;; domain: is an optional domain to stop
;; roles: is a list of roles for the servers to stop
;; at least one of servers or roles should be specified to have any effect.
;; when specifying a domain, the roles select servers in the domain to stop.
;; if a domain but no roles or server-ids are specified, the entire domain
;; is shutdown
(defcall-actor (ensemble-supervisor-stop-servers!
                supervisor: super
                servers: (server-ids #f)
                domain: (domain #f)
                role: (role #f)
                actor-server: (srv (current-actor-server)))
  (->> (@supervisor super srv)
       (!supervisor-stop-servers role domain server-ids))
  error: "error stopping servers"
  supervisor: super
  servers: server-ids
  domain: domain
  role: role)

;; restart some servers
;; semantics as in stop-servers! above
(defcall-actor (ensemble-supervisor-restart-servers!
                supervisor: super
                servers: (server-ids #f)
                domain: (domain #f)
                role: (role #f)
                actor-server: (srv (current-actor-server)))
  (->> (@supervisor super srv)
       (!supervisor-restart-servers role domain server-ids))
  error: "error restarting servers"
  supervisor: super
  servers: server-ids
  domain: domain
  role: role)

;; get the log for some server
(defcall-actor (ensemble-supervisor-get-server-log
                supervisor: super
                server: server-id
                file: (logf "server.log")
                actor-server: (srv (current-actor-server)))
  (->> (@supervisor super srv)
       (!supervisor-get-server-log server-id logf))
  error: "error restarting servers"
  supervisor: super
  server: server-id)

;; shutdown the entire ensemble, including the supervisor(s)
(def (ensemble-shutdown! actor-server: (srv (current-actor-server)))
  (ensemble-supervisors-collect srv
    (ensemble-supervisor-shutdown! supervisor: super actor-server: srv)))

;; shutdown the (part of the) ensemble managed by a specific supervisor
(defcall-actor (ensemble-supervisor-shutdown!
                supervisor: super
                actor-server: (srv (current-actor-server)))
  (let (result (->> (@supervisor super srv) (!shutdown)))
    (when (!error? result)
      (warnf "error shutting down supervisor ~a: ~a" super (!error-message result)))
    (remote-stop-server! super srv))
  error: "error shutting down supervisor"
  supervisor: super)

;; restart the entire ensemble
(def (ensemble-restart!
      restart-services: (restart-services? #f)
      actor-server: (srv (current-actor-server)))
  (ensemble-supervisors-collect srv
    (ensemble-supervisor-restart!
     supervisor: super
     restart-services: restart-services?
     actor-server: srv)))

(defcall-actor (ensemble-supervisor-restart!
                supervisor: super
                restart-services: (restart-services? #f)
                actor-server: (srv (current-actor-server)))
  (->> (@supervisor super srv)
       (!supervisor-restart restart-services?))
  error: "error restarting supervisor ensemble"
  supervisor: super)

;; update a server configuration for a supervisor
(defcall-actor (ensemble-supervisor-update-server-config!
                supervisor: super
                server: server-id
                config: cfg
                mode: (mode 'upsert)
                restart: (restart? #t)
                actor-server: (srv (current-actor-server)))
  (->> (@supervisor super srv)
       (!supervisor-update-server server-id cfg mode restart?))
  error: "error updating supervisor srever configuration"
  supervisor: super
  server: server-id
  config: cfg)

(defcall-actor (ensemble-supervisor-get-server-config
                supervisor: super
                server: server-id
                actor-server: (srv (current-actor-server)))
  (->> (@supervisor super srv)
       (!supervisor-get-server-config server-id))
  error: "error retrieving server configuration"
  supervisor: super
  server: server-id)

;; update the ensemble configuration
(def (ensemble-update-config!
      config: config
      mode: (mode 'upsert)
      actor-server: (srv (current-actor-server)))
  (ensemble-supervisors-collect srv
    (ensemble-supervisor-update-config!
     supervisor: super
     config: config
     mode: mode
     actor-server: srv)))

(defcall-actor (ensemble-supervisor-update-config!
                supervisor: super
                config: config
                mode: (mode 'upsert)
                actor-server: (srv (current-actor-server)))
  (->> (@supervisor super srv)
       (!supervisor-update-config config mode))
  error: "error updating supervisor configuration"
  supervisor: super
  config: config)

(def (ensemble-get-config
      actor-server: (srv (current-actor-server)))
  (ensemble-supervisors-collect srv
    (ensemble-supervisor-get-config
     supervisor: super
     actor-server: srv)))

(defcall-actor (ensemble-supervisor-get-config
                supervisor: super
                actor-server: (srv (current-actor-server)))
  (->> (@supervisor super srv)
       (!supervisor-get-config))
  error: "error retrieving supervisor configuration"
  supervisor: super)

;; upload a new server executable to the ensemble supervisor executor
(def (ensemble-upload-executable!
      path: executable-gz-path
      deployment-path: deployment-path
      actor-server: (srv (current-actor-server)))
  (ensemble-supervisors-collect srv
    (ensemble-supervisor-upload-executable!
     supervisor: super
     path: executable-path
     deployment-path: deployment-path
     actor-server: srv)))

(def (ensemble-supervisor-upload-executable!
      supervisor: super
      path: executable-gz-path
      deployment-path: deployment-path
      actor-server: (srv (current-actor-server)))
  (ensemble-supervisor-filesystem-upload!
   supervisor: super
   type: '(exe . gz)
   path: executable-gz-path
   deployment-path: deployment-path
   actor-server: srv))

;; upload a new (GERBIL_PATH) enviornment as a tarball
(def (ensemble-upload-environment!
      path: env-targz-path
      deployment-path: deployment-path
      actor-server: (srv (current-actor-server)))
  (ensemble-supervisors-collect srv
    (ensemble-supervisor-upload-environment!
     supervisor: super
     path: env-targz-path
     deployment-path: deployment-path
     actor-server: srv)))

(def (ensemble-supervisor-upload-environment!
      supervisor: super
      path: env-targz-path
      deployment-path: deployment-path
      actor-server: (srv (current-actor-server)))
  (ensemble-supervisor-filesystem-upload!
   supervisor: super
   type: '(env . tar.gz)
   path: env-targz-path
   deployment-path: deployment-path
   actor-server: srv))


;; upload a new (server accessible) filesystem structure
(def (ensemble-upload-filesystem-overlay!
      fs: fs-targz-path
      path: deployment-path
      actor-server: (srv (current-actor-server)))
  (ensemble-supervisors-collect srv
    (ensemble-supervisor-upload-filesystem-overlay!
     supervisor: super
     path: fs-targz-path
     deployment-path: deployment-path
     actor-server: srv)))

(def (ensemble-supervisor-upload-filesystem-overlay!
      supervisor: super
      path: fs-targz-path
      deployment-path: deployment-path
      actor-server: (srv (current-actor-server)))
  (ensemble-supervisor-filesystem-upload!
   supervisor: super
   type: '(fs . tar.gz)
   path: fs-targz-path
   deployment-path: deployment-path
   actor-server: srv))


;; generic upload functionality
(defcall-actor (ensemble-supervisor-filesystem-upload!
                supervisor: super
                type: type
                path: path
                deployment-path: deployment-path
                actor-server: (srv (current-actor-server)))
  (let ((fs (@filesystem super srv))
        (cksum (file-digest path)))
    (match (->> fs (!filesystem-upload-begin type deployment-path cksum))
      ((!filesystem-upload-continue token start)
       (using (input (open-file-reader path) : Reader)
         (when (fx> start 0)
           (using (seeker input : Seeker)
             (seeker.seek start)))
         (let (buf (make-u8vector filesystem-upload-chunk-size))
           (let loop ((i 0))
             (let (in (input.read buf))
               (if (fx= in 0)
                 (begin
                   (input.close)
                   (->> fs (!filesystem-upload-end token)))
                 (begin
                   (-> fs (!filesystem-upload-chunk token i (subu8vector buf 0 in)))
                   (thread-yield!)
                   (loop (fx+ i in)))))))))
      (result result)))
  error: "error uploading to supervisor"
  supervisor: super
  type: type
  path: path
  deployment-path: deployment-path)

;; command execution funcionality
(def (ensemble-shell-command
      command: cmd
      actor-server: (srv (current-actor-server)))
  (ensemble-supervisors-collect srv
    (ensemble-supervisor-shell-command
     supervisor: super
     command: cmd
     actor-server: srv)))

(defcall-actor (ensemble-supervisor-shell-command
                supervisor: super
                command: cmd
                actor-server: (srv (current-actor-server)))
  (->> (@executor super srv)
       (!executor-shell-command cmd))
  error: "error executing shell command"
  supervisor: super
  command: cmd)

(def (ensemble-list-processes actor-server: (srv (current-actor-server)))
  (ensemble-supervisors-collect srv
    (ensemble-supervisor-list-processes
     supervisor: super
     actor-server: srv)))

(defcall-actor (ensemble-supervisor-list-processes
                supervisor: super
                actor-server: (srv (current-actor-server)))
  (->> (@executor super srv)
       (!executor-list-processes))
  error: "error listing processes"
  supervisor: super)

(defcall-actor (ensemble-supervisor-kill-process!
                supervisor: super
                pid: pid
                signo: signo
                actor-server: (srv (current-actor-server)))
  (->> (@executor super srv)
       (!executor-kill pid signo))
  error: "error killing process"
  supervisor: super
  pid: pid)

(defcall-actor (ensemble-exec-process!
                exe: exe
                args: args
                env: (env "default")
                envvars: (envvars #f)
                actor-server: (srv (current-actor-server)))
  (ensemble-supervisors-collect srv
    (ensemble-supervisor-exec-process!
     supervisor: super
     exe: exe
     env: env
     envvars: envvars
     actor-server: srv)))

(defcall-actor (ensemble-supervisor-exec-process!
                supervisor: super
                exe: exe
                args: args
                env: (env "default")
                envvars: (envvars #f)
                actor-server: (srv (current-actor-server)))
  (->> (@executor super srv)
       (!executor-exec exe args env envvars))
  error: "error executing process"
  supervisor: super
  exe: exe
  args: args)


(defcall-actor (ensemble-supervisor-get-process-output
                supervisor: super
                pid: pid
                actor-server: (srv (current-actor-server)))
  (->> (@executor super srv)
       (!executor-get-process-output pid))
  error: "error executing process"
  supervisor: super
  pid: pid)

(defcall-actor (ensemble-supervisor-restart-process!
                supervisor: super
                pid: pid
                actor-server: (srv (current-actor-server)))
  (->> (@executor super srv)
       (!executor-restart pid))
  error: "error executing process"
  supervisor: super
  pid: pid)

;;; priviledged message invocations
(defcall-actor (ensemble-supervisor-invoke!
                supervisor: super
                actor: actor
                message: msg
                actor-server: (srv (current-actor-server)))
  (->> (@supervisor super srv)
       (!supervisor-invoke actor msg))
  error: "error invoking actor"
  supervisor: super
  actor: actor
  message: msg)
