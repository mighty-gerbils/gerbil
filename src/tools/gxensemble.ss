;;; -*- Gerbil -*-
;;; © vyzo
;;; actor ensemble management tool
(import :gerbil/expander
        :std/config
        :std/actor
        :std/actor-v18/cookie
        :std/actor-v18/server
        :std/actor-v18/loader
        :std/actor-v18/registry
        :std/actor-v18/path
        :std/actor-v18/tls
        :std/cli/getopt
        :std/iter
        :std/logger
        :std/misc/ports
        :std/misc/process
        :std/os/hostname
        :std/sugar
        :std/text/hex
        :std/os/temporaries
        ./env)
(export main)

(def (main . args)
  (call-with-getopt gxensemble-main args
    program: "gxensemble"
    help: "the Gerbil Actor Ensemble Manager"
    global-env-flag

    supervisor-cmd
    registry-cmd
    run-cmd
    env-cmd

    control-cmd

    load-cmd
    eval-cmd
    repl-cmd
    ping-cmd
    lookup-cmd
    shutdown-cmd
    admin-cmd
    list-cmd
    ca-cmd
    package-cmd))

;;;
;;; getopt objects
;;;
(def ensemble-domain-option
  (option 'ensemble-domain "-D" "--ensemble-domain"
    value: string->symbol
    default: #f
    help: "specifies the ensemble domain"))

(def control-domain-option
  (option 'domain "-d" "--domain"
    value: string->symbol
    help: "specifies the control operation domain"))

(def supervisor-option
  (option 'ensemble-supervisor "-S" "--supervisor"
    help: "specifies the ensemble supervisor"))

(def config-option
  (option 'config "-C" "--config"
    help: "configuration file"))

(def exec-env-option
  (option 'env "--env"
    help: "execution GERBIL_PATH env"
    default: "default"))

(def exec-envvars-option
  (option 'envvars "--env-vars"
    help: "execution environment variables; as list of strings of the form ENV=value"
    value: string->object))

(def exec-path-argument
  (argument 'exe-path
    help: "executable path in the supervisor contextr"))

(def exec-rest-arguments
  (rest-arguments 'exe-args
    help: "executable arguments"))

(def logging-option
  (option 'logging "--log"
    value: string->symbol
    default: 'INFO
    help: "specifies the log level to run with"))

(def logging-file-option
  (option 'logging-file "--log-file"
    default: #f
    help: "specifies a log file instead of logging to stderr; if it is - then the log will be written into the ensemble server directory log"))

(def listen-option
  (option 'listen "-l" "--listen"
    value: string->object
    default: []
    help: "additional addresses to listen to; by default the server listens at unix /tmp/ensemble/<server-id>"))

(def announce-option
  (option 'announce "-a" "--announce"
    value: string->object
    default: #f
    help: "public addresses to announce to the registry; by default these are the listen addresses"))

(def console-option
  (option 'console "-c" "--console"
    value: string->object
    default: 'console
    help: "console server id"))

(def registry-option
  (option 'registry "-r" "--registry"
    value: string->object
    default: #f
    help: "additional registry addresses; by default the registry is reachable at unix /tmp/ensemble/registry"))

(def role-argument
  (argument 'role
    value: string->symbol
    help: "server role"))

(def role-option
  (option 'role "--role"
    value: string->symbol
    help: "server role; a symbol"))

(def roles-option
  (option 'roles "--roles"
    value: string->object
    default: []
    help: "server roles; a list of symbols"))

(def library-prefix-option
  (option 'library-prefix "--library-prefix"
    value: string->object
    default: '(gerbil scheme std)
    help: "list of package prefixes to consider as library modules installed in the server"))

(def config-argument
  (argument 'config
    help: "configuration file"))

(def server-id-argument
  (argument 'server-id
    help: "the server id"
    value: string->object))

(def server-id-optional-argument
  (optional-argument 'server-id
    help: "the server id"
    value: string->object))

(def server-id-rest-arguments
  (rest-arguments 'server-ids
    help: "server-id"
    value: string->object))

(def domain-optional-argument
  (optional-argument 'domain
    help: "the domain"
    value: string->symbol))

(def server-log-file-optional-argument
  (optional-argument 'file
    help: "the server log file to retrieve; default is server.log"
    default: "server.log"))

(def server-addresses-rest-arguments
  (rest-arguments 'server-addresses
    help: "server addresses"))

(def pid-argument
  (argument 'pid
    value: string->integer
    help: "process pid"))

(def signo-argument
  (argument 'signo
    value: string->integer
    help: "signal number"))

(def actor-id-optional-argument
  (optional-argument 'actor-id
    help: "the actor's registered name"
    value: string->symbol))

(def module-id-argument
  (argument 'module-id
    help: "the module id"
    value: string->symbol))

(def server-id-or-role-argument
  (argument 'server-or-role
    help: "the server or role to lookup"
    value: string->symbol))

(def worker-count-argument
  (argument 'count
    help: "number of workers"
    value: string->integer))

(def upload-file-argument
  (argument 'file
    help: "file to upload"))

(def upload-path-argument
  (argument 'path
    help: "upload path"))

(def shell-command-argument
  (argument 'command
    help: "command to execute"))

(def authorized-server-id-argument
  (argument 'authorized-server-id
    help: "the server to authorize capabilities for"
    value: string->symbol))

(def capabilities-optional-argument
  (optional-argument 'capabilities
    help: "the server capabilities to authorize"
    value: string->object
    default: '()))

(def expr-argument
  (argument 'expr
    help: "the expression to eval"
    value: string->object))

(def main-arguments
  (rest-arguments 'main-args
    help: "arguments for the module's main procedure"))

(def supervised-flag
  (flag 'supervised "--supervised"
    help: "the operation is supervised by the ensemble supervisor"))

(def env-add-flag
  (flag 'add "--add"
    help: "add to the environment"))

(def env-set-flag
  (flag 'add "--set"
    help: "set the environment"))

(def env-remove-flag
  (flag 'add "--remove"
    help: "remove from the environment"))

(def pretty-flag
  (flag 'pretty "--pretty"
    help: "pretty print"))

(def restart-flag
  (option 'restart "--restart"
    help: "restart server(s) after update"))

(def replace-mode-flag
  (flag 'replace "--replace"
    help: "replace the configuration instead of upserting"))

(def restart-services-flag
  (flag 'restart-services "--services"
    help: "include supervisory services in the restart set"))

(def upload-executable-flag
  (flag 'exe "--exe"
    help: "file is executable"))

(def upload-env-flag
  (flag 'env "--env"
    help: "file is a (gzip) compressed tar archive for a gerbil environment"))

(def upload-fs-flag
  (flag 'fs "--fs"
    help: "file is a (gzip) compressed tar archive for a filesystem overlay"))

(def library-flag
  (flag 'library "--library"
    help: "loads the code as library module; the library must be in the servers load path"))

(def role-flag
  (flag 'role "--role"
    help: "lookup by role"))

(def force-flag
  (flag 'force "-f" "--force"
    help: "force the action"))

(def view-flag
  (flag 'view "--view"
    help: "inspect existing, don't generate"))

(def (subcommand help)
  (argument 'subcommand
    help: help
    value: string->symbol))

(def subcommand-env
  (subcommand "what to do: known-servers|domain|supervisor"))

(def subcommand-control
  (subcommand "what to do: list-servers|start-server|start-workers|stop-server|restart-server|get-server-log|update-server-config|get-server-config|update-ensemble-config|get-ensemble-config|upload|shell|exec-process|kill-process|restart-process|get-process-output|shutdown|restart"))

(def subcommand-list
  (subcommand "what to do: servers|actors|connections"))

(def subcommand-admin
  (subcommand "what to do: cookie|creds|authorize|retract"))

(def subcommand-ca
  (subcommand "what to do: setup|cert"))

(def subcommand-arguments
  (rest-arguments 'subcommand-args
    help: "arguments for the subcommand"))

(def supervisor-cmd
  (command 'supervisor
    help: "runs the ensemble supervisor"))

(def registry-cmd
  (command 'registry
    ensemble-domain-option
    logging-option
    logging-file-option
    listen-option
    announce-option
    server-id-optional-argument
    help: "runs the ensemble registry"))

(def run-cmd
  (command 'run
    supervised-flag
    ensemble-domain-option
    logging-option
    logging-file-option
    listen-option
    announce-option
    registry-option
    roles-option
    server-id-argument
    module-id-argument
    main-arguments
    help: "run a server in the ensemble"))

(def env-cmd
  (command 'env
    subcommand-env
    subcommand-arguments
    help: "ensemble environment operations"))

(def control-cmd
  (command 'control
    subcommand-control
    subcommand-arguments
    help: "ensemble supervisory control operations"))

(def load-cmd
  (command 'load
    console-option
    force-flag
    library-flag
    registry-option
    library-prefix-option
    server-id-argument
    module-id-argument
    help: "loads code in a running server"))

(def eval-cmd
  (command 'eval
    console-option
    registry-option
    server-id-argument
    expr-argument
    help: "evals code in a running server"))

(def repl-cmd
  (command 'repl
    console-option
    registry-option
    library-prefix-option
    server-id-argument
    help: "provides a repl for a running server"))

(def ping-cmd
  (command 'ping
    console-option
    registry-option
    server-id-argument
    actor-id-optional-argument
    help: "pings a server or actor in the server"))

(def shutdown-cmd
  (command 'shutdown
    console-option
    force-flag
    registry-option
    server-id-optional-argument
    actor-id-optional-argument
    help: "shuts down an actor, server, or the entire ensemble including the registry"))

(def lookup-cmd
  (command 'lookup
    console-option
    registry-option
    role-flag
    server-id-or-role-argument
    help: "looks up a server by id or role"))

(def list-cmd
  (command 'list
    subcommand-list
    subcommand-arguments
    help: "list server state"))

(def admin-cmd
  (command 'admin
    subcommand-admin
    subcommand-arguments
    help: "ensemble administrative operations"))

(def ca-cmd
  (command 'ca
    subcommand-ca
    subcommand-arguments
    help: "ensemble CA operations"))

;; env subcommands
(def env-known-servers-cmd
  (command 'known-servers
    env-add-flag
    env-set-flag
    env-remove-flag
    pretty-flag
    server-id-optional-argument
    server-addresses-rest-arguments
    help: "edit the known-servers for the ensemble environment"))

(def env-domain-cmd
  (command 'domain
    domain-optional-argument
    help: "edit the known-servers for the ensemble environment"))

(def env-supervisor-cmd
  (command 'supervisor
    server-id-optional-argument
    help: "edit the known-servers for the ensemble environment"))

;; control subcommands
(def control-list-servers-cmd
  (command 'list-servers
    ensemble-domain-option
    console-option
    supervisor-option
    control-domain-option
    pretty-flag
    role-option
    help: "list supervised servers in the ensemble"))

(def control-start-server-cmd
  (command 'start-server
    ensemble-domain-option
    supervisor-option
    console-option
    control-domain-option
    config-option
    role-argument
    server-id-argument
    help: "start a supervised ensemble server"))

(def control-start-workers-cmd
  (command 'start-workers
    ensemble-domain-option
    supervisor-option
    console-option
    config-option
    control-domain-option
    role-argument
    server-id-argument
    worker-count-argument
    help: "start supervised ensemble workers"))

(def control-stop-server-cmd
  (command 'stop-server
    ensemble-domain-option
    supervisor-option
    console-option
    control-domain-option
    role-option
    server-id-rest-arguments
    help: "stop some supervised ensemble servers"))

(def control-restart-server-cmd
  (command 'restart-server
    ensemble-domain-option
    supervisor-option
    console-option
    control-domain-option
    role-option
    server-id-rest-arguments
    help: "restart some supervised ensemble servers"))

(def control-get-server-log-cmd
  (command 'get-server-log
    ensemble-domain-option
    supervisor-option
    console-option
    server-id-argument
    server-log-file-optional-argument
    help: "retrieve a supervised server log"))

(def control-get-server-config-cmd
  (command 'get-server-config
    ensemble-domain-option
    supervisor-option
    console-option
    pretty-flag
    server-id-argument
    help: "retrieve a server configuration"))

(def control-update-server-config-cmd
  (command 'update-server-config
    ensemble-domain-option
    supervisor-option
    console-option
    restart-flag
    replace-mode-flag
    server-id-argument
    config-argument
    help: "update a supervisor server configuration"))

(def control-update-config-cmd
  (command 'update-ensemble-config
    ensemble-domain-option
    supervisor-option
    console-option
    replace-mode-flag
    config-argument
    help: "update the supervised ensemble configuration"))

(def control-get-config-cmd
  (command 'get-ensemble-config
    ensemble-domain-option
    supervisor-option
    console-option
    pretty-flag
    help: "retrieve the supervised ensemble configuration"))

(def control-upload-cmd
  (command 'upload
    ensemble-domain-option
    supervisor-option
    console-option
    upload-executable-flag
    upload-env-flag
    upload-fs-flag
    upload-file-argument
    upload-path-argument
    help: "upload an executable, environment overlay image, or file system overlay image as a tarball"))

(def control-shell-cmd
  (command 'shell
    ensemble-domain-option
    supervisor-option
    console-option
    shell-command-argument
    help: "execute a shell command in the context of an ensemble supervisor"))

(def control-list-processes-cmd
  (command 'list-processes
    ensemble-domain-option
    supervisor-option
    console-option
    help: "list processes running in the context of an ensemble supervisor"))

(def control-exec-process-cmd
  (command 'exec-process
    ensemble-domain-option
    supervisor-option
    console-option
    exec-env-option
    exec-envvars-option
    exec-path-argument
    exec-rest-arguments
    help: "execute a process in the context of an ensemble supervisor"))

(def control-kill-process-cmd
  (command 'kill-process
    ensemble-domain-option
    supervisor-option
    console-option
    pid-argument
    signo-argument
    help: "send a signal to a process"))

(def control-restart-process-cmd
  (command 'restart-process
    ensemble-domain-option
    supervisor-option
    console-option
    pid-argument
    help: "restart a process by pid"))

(def control-get-process-output-cmd
  (command 'get-process-output
    ensemble-domain-option
    supervisor-option
    console-option
    pid-argument
    help: "get a process's output"))

(def control-shutdown-cmd
  (command 'shutdown
    ensemble-domain-option
    supervisor-option
    console-option
    help: "shutdown a supervised ensemble, including the supervisor"))

(def control-restart-cmd
  (command 'restart
    ensemble-domain-option
    supervisor-option
    console-option
    restart-services-flag
    help: "mass restart servers in a supervised ensemble"))

;; list subcommands
(def list-servers-cmd
  (command 'servers
    console-option
    registry-option
    help: "lists known servers"))

(def list-actors-cmd
  (command 'actors
    console-option
    registry-option
    server-id-argument
    help: "list actors registered in a server"))

(def list-connections-cmd
  (command 'connections
    console-option
    registry-option
    server-id-argument
    help: "list a server's connections"))

;; admin subcommands
(def admin-authorize-cmd
  (command 'authorize
    console-option
    registry-option
    server-id-argument
    authorized-server-id-argument
    capabilities-optional-argument
    help: "authorize capabilities for a server as an administrator"))

(def admin-retract-cmd
  (command 'retract
    console-option
    registry-option
    server-id-argument
    authorized-server-id-argument
    help: "retract all capabilities granted to a server by an administrator"))

(def admin-cookie-cmd
  (command 'cookie
    force-flag
    view-flag
    help: "generate or inspect the ensemble cookie"))

(def admin-creds-cmd
  (command 'creds
    force-flag
    view-flag
    help: "generate or inspect ensemble administrator credentials"))

;; ca subcommands
(def ca-domain-option
  (option 'domain "--domain"
    default: "ensemble.local"
    help: "ensemble TLS domain"))

(def ca-subject/C-option
  (option 'subject/C "--subject/C"
     default: "UN"
     help: "ensemble TLS CA Country"))

(def ca-subject/O-option
  (option 'subject/O "--subject/O"
    default: "Mighty Gerbils"
    help: "ensemble TLS CA Organization"))

(def ca-subject/L-option
  (option 'subject/L "--subject/L"
    default: "Internet"
    help: "ensemble TLS certificate location"))

(def ca-setup-cmd
  (command 'setup
    view-flag
    ca-domain-option
    ca-subject/C-option
    ca-subject/O-option
    ca-subject/L-option
    help: "setup or inspect the ensemble CAs"))

(def ca-cert-cmd
  (command 'cert
    force-flag
    view-flag
    ensemble-domain-option
    ca-subject/C-option
    ca-subject/O-option
    ca-subject/L-option
    server-id-argument
    capabilities-optional-argument
    help: "generate or inspect an actor server certificate"))

(def package-output-option
  (option 'output "-o" "--output"
    default: "ensemble.tar.gz"
    help: "output file for the server package"))

(def package-cmd
  (command 'package
    package-output-option
    server-id-argument
    help: "package ensemble state to ship an actor server environment"))
;;;
;;; command implementation
;;;
(defrule (defcommand-table name body ...)
  (def name
    (delay
      (hash body ...))))

(defcommand-table main-commands
  (run              do-run)
  (registry         do-registry)
  (supervisor       do-supervisor)
  (env              do-env)
  (control          do-control)

  (load             do-load)
  (eval             do-eval)
  (repl             do-repl)
  (ping             do-ping)
  (lookup           do-lookup)
  (list             do-list)
  (shutdown         do-shutdown)
  (admin            do-admin)
  (ca               do-ca)
  (package          do-package))

(defcommand-table env-commands
  (known-servers do-env-known-servers)
  (domain        do-env-domain)
  (supervisor    do-env-supervisor))

(defcommand-table control-commands
  (list-servers           do-control-list-servers)
  (start-server           do-control-start-server)
  (start-workers          do-control-start-workers)
  (stop-server            do-control-stop-server)
  (restart-server         do-control-restart-server)
  (get-server-log         do-control-get-server-log)
  (update-server-config   do-control-update-server-config)
  (get-server-config      do-control-get-server-config)
  (update-ensemble-config do-control-update-config)
  (get-ensemble-config    do-control-get-config)
  (shutdown               do-control-shutdown)
  (restart                do-control-restart)
  (upload                 do-control-upload)
  (shell                  do-control-shell)
  (list-processes         do-control-list-processes)
  (exec-process           do-control-exec-process)
  (kill-process           do-control-kill-process)
  (restart-process        do-control-restart-process)
  (get-process-output     do-control-get-process-output))

(defcommand-table list-commands
  (servers     do-list-servers)
  (actors      do-list-actors)
  (connections do-list-connections))

(defcommand-table admin-commands
  (authorize        do-admin-authorize)
  (retract          do-admin-retract)
  (cookie           do-admin-cookie)
  (creds            do-admin-creds))

(defcommand-table ca-commands
  (setup   do-ca-setup)
  (cert    do-ca-cert))

(defrule (dispatch-command cmd opt commands)
  (let (table (force commands))
    (cond
     ((hash-get table cmd)
      => (cut <> opt))
     (else
      (error "Unexpected command" cmd (hash-keys table))))))

(defrule (defcommand-nested do-command commands name gopts ...)
  (def (do-command opt)
    (let* ((cmd  (hash-ref opt 'subcommand))
           (cmd-args (cons (symbol->string cmd) (hash-ref opt 'subcommand-args)))
           (cmd-main
            (lambda (cmd opt) (dispatch-command cmd opt commands))))
      (call-with-getopt cmd-main cmd-args
        program: name
        gopts ...))))

(def (gxensemble-main cmd opt)
  (setup-local-env! opt)
  (dispatch-command cmd opt main-commands))

(defcommand-nested do-admin admin-commands "gxensemble admin"
  admin-cookie-cmd
  admin-creds-cmd
  admin-authorize-cmd
  admin-retract-cmd)

(def (do-admin-cookie opt)
  (if (hash-get opt 'view)
    (let (cookie (get-actor-server-cookie))
      (displayln (hex-encode cookie)))
    (generate-actor-server-cookie! force: (hash-get opt 'force))))

(def (do-admin-creds opt)
  (if (hash-get opt 'view)
    (let* ((pubk-path (default-admin-pubkey-path))
           (pubk-raw (read-file-u8vector pubk-path)))
      (displayln (hex-encode pubk-raw)))
    (let* ((passphrase (read-password prompt: "Enter passphrase: "))
           (again      (read-password prompt: "Re-enter passphrase: ")))
      (unless (equal? passphrase again)
        (error "administrative passphrases don't match"))
      (generate-admin-keypair! passphrase force: (hash-get opt 'force)))))

(def (do-admin-authorize opt)
  (start-actor-server-with-options! opt)
  (let ((server-id (hash-ref opt 'server-id))
        (authorized-server-id (hash-ref opt 'authorized-server-id))
        (capabilities (hash-ref opt 'capabilities)))
    (admin-authorize (get-privkey) server-id authorized-server-id
                     capabilities: capabilities)))

(def (do-admin-retract opt)
  (start-actor-server-with-options! opt)
  (let ((server-id (hash-ref opt 'server-id))
        (authorized-server-id (hash-ref opt 'authorized-server-id)))
    (maybe-authorize! server-id)
    (admin-retract server-id authorized-server-id)))

(def (do-lookup opt)
  (start-actor-server-with-options! opt)
  (let (what (hash-ref opt 'server-or-role))
    (display-result-list
     (if (hash-get opt 'role)
       (ensemble-lookup-servers/role what)
       (ensemble-lookup-server what))))
  (stop-actor-server!))

(defcommand-nested do-env env-commands "gxensemble env"
  env-known-servers-cmd
  env-domain-cmd
  env-supervisor-cmd)

(def (do-env-known-servers opt)
  (def (write-known-servers! known-servers)
    (call-with-output-file [path: (ensemble-known-servers-path)
                                  create: 'maybe truncate: #t]
      (cut write (hash->list known-servers) <>)))
  (cond
   ((hash-get opt 'add)
    (let* ((server-id (hash-get opt 'server-id))
           (server-addrs (hash-get opt 'server-addresses))
           (server-addrs
            (if (null? server-addrs)
              [(ensemble-server-unix-addr server-id)]
              server-addrs)))
      (unless server-id
        (error "missing server id"))
      (let* ((known-servers
              (or (ensemble-known-servers)
                  (make-hash-table)))
             (current-addrs
              (hash-ref known-servers server-id [])))
        (for (addr server-addrs)
          (unless (member addr current-addrs)
            (set! current-addrs (append current-addrs [addr]))))
        (hash-put! known-servers server-id current-addrs)
        (write-known-servers! known-servers))))
   ((hash-get opt 'remove)
    (let ((server-id (hash-get opt 'server-id))
          (server-addrs (hash-get opt 'server-addresses)))
      (unless server-id
        (error "missing server id"))
      (alet (known-servers (ensemble-known-servers))
        (if server-addrs
          (let* ((current-addrs
                  (hash-ref known-servers server-id []))
                 (new-addrs
                  (filter (lambda (addr) (not (member addr current-addrs)))
                          current-addrs)))
            (if (null? new-addrs)
              (hash-remove! known-servers server-id)
              (hash-put! known-servers server-id new-addrs)))
          (hash-remove! known-servers server-id))
        (write-known-servers! known-servers))))
   ((hash-get opt 'set)
    (let ((server-id (hash-get opt 'server-id))
          (server-addrs (hash-get opt 'server-addresses)))
      (unless server-id
        (error "missing server id"))
      (let (known-servers
            (or (ensemble-known-servers)
                (make-hash-table)))
        (hash-put! known-servers server-id server-addrs)
        (write-known-servers! known-servers))))
   ((hash-get opt 'server-id)
    => (lambda (server-id)
         (unless (null? (hash-get opt 'server-addresses))
           (error "unexpected addresses"))
         (alet* ((known-servers (ensemble-known-servers))
                 (addrs (hash-get known-servers server-id)))
           (write-result opt addrs))))
   (else
    (alet (known-servers (ensemble-known-servers))
      (write-result opt (hash->list known-servers))))))

(def (do-env-domain opt)
  (let (path (ensemble-domain-file-path))
  (cond
   ((hash-get opt 'domain)
    => (lambda (domain)
         (call-with-output-file [path: path create: 'maybe truncate: #t]
           (cut write domain <>))))
   (else
    (displayln (get-ensemble-domain opt))))))

(def (do-env-supervisor opt)
  (let (path (ensemble-domain-supervisor-path))
    (cond
     ((hash-get opt 'server-id)
      => (lambda (server-id)
           (call-with-output-file [path: path create: 'maybe truncate: #t]
             (cut write server-id <>))))
     (else
      (displayln (ensemble-domain-supervisor))))))

(defcommand-nested do-control control-commands "gxensemble control"
  control-list-servers-cmd
  control-start-server-cmd
  control-start-workers-cmd
  control-stop-server-cmd
  control-restart-server-cmd
  control-get-server-log-cmd
  control-get-server-config-cmd
  control-update-server-config-cmd
  control-get-config-cmd
  control-update-config-cmd
  control-list-processes-cmd
  control-exec-process-cmd
  control-kill-process-cmd
  control-restart-process-cmd
  control-get-process-output-cmd
  control-upload-cmd
  control-shell-cmd
  control-shutdown-cmd
  control-restart-cmd)

(def (do-control-list-servers opt)
  (parameterize ((ensemble-domain (get-ensemble-domain opt)))
    (let ((supervisor (hash-ref opt 'supervisor (ensemble-domain-supervisor)))
          (domain (hash-get opt 'domain))
          (role (hash-get opt 'role)))
      (call-with-console-server opt
       (lambda (srv)
         (let (result (ensemble-supervisor-list-servers
                       supervisor: supervisor
                       domain: domain
                       role: role
                       actor-server: srv))
           (write-result opt result)))))))

(def (do-control-start-server opt)
  (parameterize ((ensemble-domain (get-ensemble-domain opt)))
    (let* ((supervisor (hash-ref opt 'supervisor (ensemble-domain-supervisor)))
           (domain (or (hash-get opt 'domain) (ensemble-domain)))
           (role (hash-ref opt 'role))
           (server-id (hash-ref opt 'server-id))
           (config-path (hash-get opt 'config))
           (config (and config-path (call-with-input-file config-path read-config))))
      (when config
        (check-ensemble-server-config! config))
      (call-with-console-server opt
        (lambda (srv)
          (let (result (ensemble-supervisor-start-server!
                        supervisor: supervisor
                        role: role
                        server-id: server-id
                        domain: domain
                        config: config
                        actor-server: srv))
            (write-result opt result)))))))

(def (do-control-start-workers opt)
  (parameterize ((ensemble-domain (get-ensemble-domain opt)))
    (let* ((supervisor (hash-ref opt 'supervisor (ensemble-domain-supervisor)))
           (domain (or (hash-get opt 'domain) (ensemble-domain)))
           (role (hash-ref opt 'role))
           (server-id (hash-ref opt 'server-id))
           (worker-count (hash-ref opt 'count))
           (config-path (hash-get opt 'config))
           (config (and config-path (call-with-input-file config-path read-config))))
      (when config
        (check-ensemble-server-config! config))
      (call-with-console-server opt
        (lambda (srv)
          (let (result (ensemble-supervisor-start-workers!
                        supervisor: supervisor
                        role: role
                        server-id-prefix: server-id
                        workers: worker-count
                        domain: domain
                        config: config
                        actor-server: srv))
            (write-result opt result)))))))

(def (do-control-stop-server opt)
  (parameterize ((ensemble-domain (get-ensemble-domain opt)))
    (let* ((supervisor (hash-ref opt 'supervisor (ensemble-domain-supervisor)))
           (domain (hash-get opt 'domain))
           (role (hash-get opt 'role))
           (server-ids (hash-get opt 'server-ids)))
      (call-with-console-server opt
        (lambda (srv)
          (let (result (ensemble-supervisor-stop-servers!
                        supervisor: supervisor
                        servers: server-ids
                        domain: domain
                        role: role
                        actor-server: srv))
            (write-result opt result)))))))

(def (do-control-restart-server opt)
  (parameterize ((ensemble-domain (get-ensemble-domain opt)))
    (let* ((supervisor (hash-ref opt 'supervisor (ensemble-domain-supervisor)))
           (domain (hash-get opt 'domain))
           (role (hash-get opt 'role))
           (server-ids (hash-get opt 'server-ids)))
      (call-with-console-server opt
        (lambda (srv)
          (let (result (ensemble-supervisor-restart-servers!
                        supervisor: supervisor
                        servers: server-ids
                        domain: domain
                        role: role
                        actor-server: srv))
            (write-result opt result)))))))

(def (do-control-get-server-log opt)
  (parameterize ((ensemble-domain (get-ensemble-domain opt)))
    (let* ((supervisor (hash-ref opt 'supervisor (ensemble-domain-supervisor)))
           (server-id (hash-ref opt 'server-id))
           (file      (hash-ref opt 'file "server.log")))
      (call-with-console-server opt
        (lambda (srv)
          (let (result (ensemble-supervisor-get-server-log
                        supervisor: supervisor
                        server: server-id
                        file: file
                        actor-server: srv))
            (displayln result)))))))

(def (do-control-get-server-config opt)
  (parameterize ((ensemble-domain (get-ensemble-domain opt)))
    (let* ((supervisor (hash-ref opt 'supervisor (ensemble-domain-supervisor)))
           (server-id (hash-ref opt 'server-id)))
      (call-with-console-server opt
        (lambda (srv)
          (let (result (ensemble-supervisor-get-server-config
                        supervisor: supervisor
                        server: server-id
                        actor-server: srv))
            (write-result opt result)))))))

(def (do-control-update-server-config opt)
  (parameterize ((ensemble-domain (get-ensemble-domain opt)))
    (let* ((supervisor (hash-ref opt 'supervisor (ensemble-domain-supervisor)))
           (server-id (hash-ref opt 'server-id))
           (restart?  (hash-get opt 'restart))
           (replace?  (hash-get opt 'replace))
           (config-path (hash-ref opt 'config))
           (config (call-with-input-file config-path read-config)))
      (check-ensemble-server-config! config)
      (call-with-console-server opt
        (lambda (srv)
          (let (result (ensemble-supervisor-update-server-config!
                        supervisor: supervisor
                        server: server-id
                        config: config
                        mode: (if replace? 'replace 'upsert)
                        restart: restart?
                        actor-server: srv))
            (write-result opt result)))))))

(def (do-control-get-config opt)
  (parameterize ((ensemble-domain (get-ensemble-domain opt)))
    (let (supervisor (hash-ref opt 'supervisor (ensemble-domain-supervisor)))
      (call-with-console-server opt
        (lambda (srv)
          (let (result (ensemble-supervisor-get-config
                        supervisor: supervisor
                        actor-server: srv))
            (write-result opt result)))))))

(def (do-control-update-config opt)
  (parameterize ((ensemble-domain (get-ensemble-domain opt)))
    (let* ((supervisor (hash-ref opt 'supervisor (ensemble-domain-supervisor)))
           (domain (or (hash-get opt 'domain) (ensemble-domain)))
           (replace?  (hash-get opt 'replace))
           (config-path (hash-ref opt 'config))
           (config (call-with-input-file config-path read-config)))
      (check-ensemble-config! config)
      (call-with-console-server opt
        (lambda (srv)
          (let (result (ensemble-supervisor-update-config!
                        supervisor: supervisor
                        config: config
                        mode: (if replace? 'replace 'upsert)
                        actor-server: srv))
            (write-result opt result)))))))

(def (do-control-shutdown opt)
  (parameterize ((ensemble-domain (get-ensemble-domain opt)))
    (let (supervisor (hash-ref opt 'supervisor (ensemble-domain-supervisor)))
      (call-with-console-server opt
        (lambda (srv)
          (let (result (ensemble-supervisor-shutdown!
                        supervisor: supervisor
                        actor-server: srv))
            (write-result opt result)))))))

(def (do-control-restart opt)
  (parameterize ((ensemble-domain (get-ensemble-domain opt)))
    (let ((supervisor (hash-ref opt 'supervisor (ensemble-domain-supervisor)))
          (restart-services? (hash-get opt 'restart-services)))
      (call-with-console-server opt
        (lambda (srv)
          (let (result (ensemble-supervisor-restart!
                        supervisor: supervisor
                        restart-services: restart-services?
                        actor-server: srv))
            (write-result opt result)))))))

(def (do-control-upload opt)
  (parameterize ((ensemble-domain (get-ensemble-domain opt)))
    (let ((supervisor  (hash-ref opt 'supervisor (ensemble-domain-supervisor)))
          (exe?        (hash-get opt 'exe))
          (env?        (hash-get opt 'env))
          (fs?         (hash-get opt 'fs))
          (file        (hash-ref opt 'file))
          (path        (hash-ref opt 'path)))
      (unless (file-exists? file)
        (error "upload file does not exist" file))
      (unless (= (+ (if exe? 1 0) (if env? 1 0) (if fs? 1 0)) 1)
        (error "exactly one of --exe, --env, --fs must be specified"))

      (call-with-console-server opt
        (lambda (srv)
          (let (result
                (cond
                 (exe?
                  ;; compress the executable first
                  (call-with-temporary-file-name "exe"
                    (lambda (tmp)
                      (copy-file file tmp)
                      (invoke "gzip" [tmp])
                      (ensemble-supervisor-upload-executable!
                       supervisor: supervisor
                       path: (string-append tmp ".gz")
                       deployment-path: path
                       actor-server: srv))))
                 (env?
                  (ensemble-supervisor-upload-environment!
                   supervisor: supervisor
                   path: file
                   deployment-path: path
                   actor-server: srv))
                 (fs?
                  (ensemble-supervisor-upload-filesystem-overlay!
                   supervisor: supervisor
                   path: file
                   deployment-path: path
                   actor-server: srv))))
            (write-result opt result)))))))

(def (do-control-shell opt)
  (parameterize ((ensemble-domain (get-ensemble-domain opt)))
    (let ((supervisor  (hash-ref opt 'supervisor (ensemble-domain-supervisor)))
          (command (hash-get opt 'command)))
      (call-with-console-server opt
        (lambda (srv)
          (let (result (ensemble-supervisor-shell-command
                        supervisor: supervisor
                        command: command
                        actor-server: srv))
            (write-result opt result)))))))

(def (do-control-list-processes opt)
  (parameterize ((ensemble-domain (get-ensemble-domain opt)))
    (let ((supervisor (hash-ref opt 'supervisor (ensemble-domain-supervisor))))
      (call-with-console-server opt
       (lambda (srv)
         (let (result (ensemble-supervisor-list-processes
                       supervisor: supervisor
                       actor-server: srv))
           (write-result opt result)))))))

(def (do-control-exec-process opt)
  (parameterize ((ensemble-domain (get-ensemble-domain opt)))
    (let ((supervisor  (hash-ref opt 'supervisor (ensemble-domain-supervisor)))
          (exe (hash-ref opt 'exe-path))
          (args (hash-ref opt 'exe-args))
          (env  (hash-get opt 'env))
          (envvars  (hash-get opt 'envvars)))
      (call-with-console-server opt
        (lambda (srv)
          (let (result (ensemble-supervisor-exec-process!
                        supervisor: supervisor
                        exe: exe
                        args: args
                        env: env
                        envvars: envvars
                        actor-server: srv))
            (write-result opt result)))))))

(def (do-control-kill-process opt)
  (parameterize ((ensemble-domain (get-ensemble-domain opt)))
    (let ((supervisor  (hash-ref opt 'supervisor (ensemble-domain-supervisor)))
          (pid (hash-ref opt 'pid))
          (signo (hash-ref opt 'signo)))
      (call-with-console-server opt
        (lambda (srv)
          (let (result (ensemble-supervisor-kill-process!
                        supervisor: supervisor
                        pid: pid
                        signo: signo
                        actor-server: srv))
            (write-result opt result)))))))

(def (do-control-restart-process opt)
  (parameterize ((ensemble-domain (get-ensemble-domain opt)))
    (let ((supervisor  (hash-ref opt 'supervisor (ensemble-domain-supervisor)))
          (pid (hash-ref opt 'pid)))
      (call-with-console-server opt
        (lambda (srv)
          (let (result (ensemble-supervisor-restart-process!
                        supervisor: supervisor
                        pid: pid
                        actor-server: srv))
            (write-result opt result)))))))

(def (do-control-get-process-output opt)
  (parameterize ((ensemble-domain (get-ensemble-domain opt)))
    (let ((supervisor  (hash-ref opt 'supervisor (ensemble-domain-supervisor)))
          (pid (hash-ref opt 'pid)))
      (call-with-console-server opt
        (lambda (srv)
          (let (result (ensemble-supervisor-get-process-output
                        supervisor: supervisor
                        pid: pid
                        actor-server: srv))
            (displayln result)))))))

(defcommand-nested do-list list-commands "gxensemble list"
  list-servers-cmd
  list-actors-cmd
  list-connections-cmd)

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

(defcommand-nested do-ca ca-commands "gxensemble ca"
  ca-setup-cmd
  ca-cert-cmd)

(def (do-ca-setup opt)
  (cond
   ((hash-get opt 'view)
    (let* ((base-path (ensemble-tls-base-path))
           (ca-certificates (path-expand "ca-certificates" base-path)))
      (for (subject '("root-ca" "sub-ca"))
        (let (cert (path-expand (string-append subject ".crt") ca-certificates))
          (invoke "openssl" ["-text" "-in" cert])))))
   ((file-exists? (path-expand "caroot.pem" (ensemble-tls-base-path)))
    (displayln "caroot.pem already exists"))
   (else
    (let* ((root-passphrase (read-password prompt: "Enter root CA passphrase: "))
           (again           (read-password prompt: "Re-enter passphrase: ")))
      (unless (equal? root-passphrase again)
        (error "root CA passphrases don't match"))
      (generate-actor-tls-root-ca! root-passphrase
                                   domain: (hash-ref opt 'domain)
                                   country-name: (hash-ref opt 'subject/C)
                                   organization-name: (hash-ref opt 'subject/O))
      (let* ((sub-passphrase (read-password prompt: "Enter subordinate CA passphrase: "))
             (again          (read-password prompt: "Re-enter passphrase: ")))
      (unless (equal? sub-passphrase again)
        (error "subordinate CA passphrases don't match"))
      (generate-actor-tls-sub-ca! root-passphrase sub-passphrase
                                  country-name: (hash-ref opt 'subject/C)
                                  organization-name: (hash-ref opt 'subject/O))
      (generate-actor-tls-cafiles!)
      (generate-actor-tls-cert! sub-passphrase
                                server-id: '(console . /)
                                capabilities: '(admin)
                                country-name: (hash-ref opt 'subject/C)
                                organization-name: (hash-ref opt 'subject/O)
                                location: (hash-ref opt 'subject/L)))))))

(def (do-ca-cert opt)
  (parameterize ((ensemble-domain (get-ensemble-domain opt)))
    (let* ((server-id (hash-ref opt 'server-id))
           (base-path (ensemble-tls-server-path server-id)))
      (cond
       ((hash-get opt 'view)
        (let (cert (path-expand "server.crt" base-path))
          (invoke "openssl" ["-text" "-in" cert])))
       ((and (not (hash-get opt 'force))
             (file-exists?  (path-expand "server.crt" base-path)))
        (displayln "server.crt already exists; use --force to force certificate generation"))
       (else
        (let (sub-passphrase (read-password prompt: "Enter subordinate CA passphprase: "))
          (generate-actor-tls-cert! sub-passphrase
                                    server-id: server-id
                                    ensemble-domain: (ensemble-domain)
                                    capabilities: (hash-ref opt 'capabilities)
                                    country-name: (hash-ref opt 'subject/C)
                                    organization-name: (hash-ref opt 'subject/O)
                                    location: (hash-ref opt 'subject/L))))))))

(def (do-package opt)
  (let* ((server-id (hash-ref opt 'server-id))
         (output    (hash-ref opt 'output))
         (output    (path-expand output (current-directory)))
         (ensemble-base "ensemble/")
         (ensemble-rebase
          (lambda files
            (map (cut string-append ensemble-base <>) files)))
         (server-base
          (string-append ensemble-base
                         "server/"
                         (symbol->string server-id) "/"))
         (server-rebase
          (lambda files
            (map (cut string-append server-base <>) files))))

    (current-directory (gerbil-path))
    (invoke "tar"
            ["cavf" output
             (ensemble-rebase
              "cookie"
              "admin.pub"
              "tls/ca-certificates"
              "tls/ca.pem"
              "tls/caroot.pem"
              "tls/domain") ...
             (server-rebase "tls/chain.pem" "tls/server.key") ...])))

(def (do-shutdown opt)
  (start-actor-server-with-options! opt)
  (cond
   ((hash-get opt 'server-id)
    => (lambda (server-id)
         (cond
          ((hash-get opt 'actor-id)
           => (lambda (actor-id)
                (maybe-authorize! server-id)
                (displayln "... shutting down " actor-id "@" server-id)
                (stop-actor! (reference server-id actor-id))))
          (else
           (maybe-authorize! server-id)
           (displayln "... shutting down " server-id)
           (remote-stop-server! server-id)))))
   (else
    (let/cc nope
      (unless (hash-get opt 'force)
        (displayln "This will shutdown every server in the ensemble, including the registry. Proceed? [y/n]")
        (unless (memq (read) '(y yes Y YES))
          (nope (void))))

      (let (servers (ensemble-list-servers))
        (for (server-id (map car servers))
          (maybe-authorize! server-id)
          (displayln "... shutting down " server-id)
          (with-catch void (cut remote-stop-server! server-id)))
        ;; wait a second before shutting down the registry, so that servers can remove
        ;; themselves.
        (unless (null? servers)
          (thread-sleep! 3)))
      (displayln "... shutting down registry")
      (maybe-authorize! 'registry)
      (remote-stop-server! 'registry))))
  (stop-actor-server!))

(def (do-ping opt)
  (start-actor-server-with-options! opt)
  (let (server-id (hash-ref opt 'server-id))
    (cond
     ((hash-get opt 'actor-id)
      => (lambda (actor-id)
           (displayln
            (ping-actor (reference server-id actor-id)))))
     (else
      (displayln
       (ping-server server-id))))))

(def (do-eval opt)
  (start-actor-server-with-options! opt)
  (let ((server-id (hash-ref opt 'server-id))
        (expr (hash-ref opt 'expr)))
    (maybe-authorize! server-id)
    (displayln
     (remote-eval server-id expr)))
  (stop-actor-server!))

(def (do-repl opt)
  (start-actor-server-with-options! opt)
  (let ((server-id (hash-ref opt 'server-id))
        (library-prefix (hash-ref opt 'library-prefix)))
    (maybe-authorize! server-id)
    (do-repl-for-server server-id library-prefix)
    (stop-actor-server!)))

(def (do-repl-for-server server-id library-prefix)
  (def (display-help)
    (displayln "Control commands: ")
    (displayln "  ,(import module-id)    -- import a module locally for expansion")
    (displayln "  ,(load module-id)      -- load the code and dependencies for a module")
    (displayln "  ,(load -f module-id)   -- forcibly load a module ignoring dependencies")
    (displayln "  ,(load -l module-id)   -- load a library module")
    (displayln "  ,(defined? id)         -- checks if an identifier is defined at the server")
    (displayln "  ,(thread-state)        -- display the thread state for the primordial thread group")
    (displayln "  ,(thread-state -g)     -- display the thread state for all thread groups recursively")
    (displayln "  ,(thread-state sn)     -- display the thread state for a thread or group identified by its serial number")
    (displayln "  ,(thread-backtrace sn) -- display a backtrace for a thread identified by its serial number")
    (displayln "  ,(shutdown)            -- shut down the server and exit the repl")
    (displayln "  ,q ,quit               -- quit the repl")
    (displayln "  ,h ,help               -- display this help message"))

  (def module-registry #f)
  (def loaded-object-files
    (make-hash-table))

  (def (library-module-loader module-id)
    (string-append (module-id->string module-id) "__rt"))

  (def (library-module-rt module-id)
    (string-append (module-id->string module-id) "__0"))

  (def (library-module-loaded? module-id)
    (or (hash-get module-registry (library-module-loader module-id))
        (hash-get module-registry (library-module-rt module-id))))

  (def (object-file-loaded? object-file)
    (hash-get loaded-object-files object-file))

  (def (bind-module-exports! ctx)
    (let lp ((rest (module-context-export ctx)))
      (match rest
        ([hd . rest]
         (cond
          ((module-export? hd)
           (when (= (module-export-phi hd) 0)
             (core-bind-import! (core-module-export->import hd)))
           (lp rest))
          ((export-set? hd)
           (lp (foldl cons rest (export-set-exports hd))))
          (else (lp rest))))
        (else (void)))))

  (def (load-object-file object-file)
    (unless (object-file-loaded? object-file)
      (displayln "loading code object file " object-file)
      (hash-put! loaded-object-files object-file #t)
      (remote-load-code server-id object-file)))

  (def (load-library-module lib)
    (unless (library-module-loaded? lib)
      (displayln "loading library module " lib)
      (remote-load-library-module server-id lib)
      (set! module-registry
        (remote-eval server-id '(current-module-registry)))))

  (def (eval-expr expr)
    (let* ((expanded-expr (core-expand expr))
           (compiled-expr (core-compile-top-syntax expanded-expr))
           (raw-compiled-expr (__compile compiled-expr))
           (result (remote-eval server-id raw-compiled-expr)))
      (unless (void? result)
        (if (##values? result)
          (display-result-list (values->list result))
          (display-result result)))))

  (gerbil-load-expander!)
  (connect-to-server! server-id)
  (remote-eval server-id '(##expand-source-set! identity))
  (set! module-registry
    (remote-eval server-id '(current-module-registry)))
  (let/cc exit
    (parameterize ((current-expander-context (make-top-context)))
      ;; prepare the context
      (eval '(import :gerbil/core))
      (eval '(import :gerbil/gambit))
      ;; and go!
      (while #t
        (display server-id)
        (display "> ")
        (try
         (match (read)
           ((? eof-object?)
            (exit (void)))
           (['unquote command]
            (match command
              (['import module-id]
               (bind-module-exports! (import-module module-id)))
              (['load module-id]
               (let ((values object-files library-modules)
                     (get-module-objects module-id library-prefix))
                 (when module-registry
                   (for (lib library-modules)
                     (load-library-module lib)))
                 (for (object-file object-files)
                   (load-object-file object-file))))
              (['load '-f module-id]
               (let (object-file (find-object-file (import-module module-id)))
                 (if object-file
                   (load-object-file object-file)
                   (displayln "cannot find object file"))))
              (['load -l module-id]
               (if module-registry
                 (load-library-module module-id)
                 (displayln "server does not support library loading")))
              (['defined? symbol]
               (eval-expr
                `(with-exception-catcher (lambda (_) #f) (lambda () ,symbol #t))))
              (['thread-state]
               (eval-expr
                '(call-with-output-string ""
                   (lambda (p) (##cmd-st (thread-thread-group ##primordial-thread) p)))))
              (['thread-state '-g]
               (eval-expr
                `(call-with-output-string ""
                   (lambda (p)
                     (let thread-state ((tg (thread-thread-group ##primordial-thread)))
                       (display "thread group: " p)
                       (display tg p)
                       (newline p)
                       (##cmd-st tg p)
                       (for-each thread-state (thread-group->thread-group-list tg)))))))
              (['thread-state (? integer? sn)]
               (eval-expr
                `(call-with-output-string ""
                   (lambda (p)
                     (let (thread-or-group (serial-number->object ,sn))
                       (if (or (thread? thread-or-group)
                               (thread-group? thread-or-group))
                         (##cmd-st thread-or-group p)))))))
              (['thread-backtrace (? integer? sn)]
               (eval-expr
                `(call-with-output-string ""
                   (lambda (p)
                     (let (thread (serial-number->object ,sn))
                       (if (thread? thread)
                         (display-continuation-backtrace
                          (##thread-continuation-capture thread)
                          p #t)))))))
              (['shutdown]
               (remote-stop-server! server-id)
               (exit (void)))
              ((or 'h 'help)
               (display-help))
              ((or 'q 'quit)
               (exit (void)))
              (else
               (displayln "unknown control command " command)
               (display-help))))
           (expr (eval-expr expr)))
         (catch (exn)
           (display "*** ERROR ")
           (display-exception exn)))))))

(extern namespace: #f __compile)

(def (do-load opt)
  (gerbil-load-expander!)
  (if (hash-get opt 'library)
    (do-load-library opt)
    (do-load-code opt)))

(def (do-load-library opt)
  (let ((module-id (hash-ref opt 'module-id))
        (server-id (hash-ref opt 'server-id)))
    (start-actor-server-with-options! opt)
    (maybe-authorize! server-id)
    (displayln "... loading library module " module-id)
    (displayln
     (remote-load-library-module server-id module-id))
    (stop-actor-server!)))

(def (do-load-code opt)
  (let ((module-id (hash-ref opt 'module-id))
        (library-prefix (hash-ref opt 'library-prefix))
        (server-id (hash-ref opt 'server-id)))
    (let ((values object-files library-modules)
          (get-module-objects module-id library-prefix))
      (start-actor-server-with-options! opt)
      (maybe-authorize! server-id)
      ;; when forcing, we don't load the library modules
      ;; useful for static executables
      (unless (hash-get opt 'force)
        (for (lib library-modules)
          (displayln "... loading library module " lib)
          (displayln
           (remote-load-library-module server-id lib))))
      (for (object-file object-files)
        (displayln "... loading code object file " object-file)
        (displayln
         (remote-load-code server-id object-file)))
      (stop-actor-server!))))

(def (find-object-file ctx-or-id)
  (if (module-context? ctx-or-id)
    (find-object-file (expander-context-id ctx-or-id))
    ;;(find-library-module (string-append (module-id->string ctx-or-id) "__0"))
    (error "FIXME")))

(def (module-id->string module-id)
  (let (mod-str (symbol->string module-id))
    (if (string-prefix? ":" mod-str)
      (substring mod-str 1 (string-length mod-str))
      mod-str)))

(def (get-module-objects module-id library-prefix)
  (def (fold-modules r q)
    (for/fold (r r) (in q)
      (cond
       ((module-context? in)
        (fold-modules (cons in r) (cons (core-context-prelude in) (module-context-import in))))
       ((prelude-context? in)
        (cons in r))
       ((module-import? in)
        (if (= (module-import-phi in) 0)
          (fold-modules r [(module-import-source in)])
          r))
       ((import-set? in)
        (if (= (import-set-phi in) 0)
          (fold-modules r [(import-set-source in)])
          r))
       (else r))))

  (let* ((library-prefix-str (map symbol->string library-prefix))
         (ctx (import-module module-id))
         (modules (fold-modules [] [ctx])))
    (let lp ((rest modules) (to-load []) (libraries []))
      (match rest
        ([ctx . rest]
         (let* ((ctx-id (expander-context-id ctx))
                (ctx-id-str (and ctx-id (symbol->string ctx-id))))
           (cond
            ((not ctx-id)
             (lp rest to-load libraries))
            ((string-prefix? "gerbil/" ctx-id-str)
             (lp rest to-load libraries))
            ((find (cut string-prefix? <> ctx-id-str) library-prefix-str)
             (lp rest to-load libraries))
            (else
             (if (member ctx-id to-load)
               (lp rest to-load libraries)
               (lp rest (cons ctx-id to-load) libraries))))))
        (else
         (let lp ((rest to-load) (object-files []))
           (match rest
             ([ctx-id . rest]
              (lp rest (cons (find-object-file ctx-id) object-files)))
             (else
              (values object-files (reverse libraries))))))))))

(def (do-registry opt)
  (let ((server-id (hash-get opt 'server-id))
        (domain    (get-ensemble-domain opt)))
    (if server-id
      ;; run as a supervisory process
      (let (cfg (load-ensemble-server-config (server-identifier-at-domain server-id domain)))
        (become-ensemble-server! cfg (cut start-ensemble-registry!)))
      ;; standalone registry mode
      (call-with-ensemble-server
       (cons 'registry domain)
       (cut start-ensemble-registry!)
       domain:    domain
       log-level: (hash-ref opt 'logging)
       log-file:  (hash-ref opt 'logging-file)
       listen:    (hash-ref opt 'listen)
       announce:  (hash-ref opt 'announce)
       registry:  #f
       roles:     #f
       cookie:    (get-actor-server-cookie)))))

(def (do-supervisor opt)
  (let (config (load-ensemble-config))
    (become-ensemble-supervisor! config)))

(def (do-run opt)
  (let ((module-main (get-module-main (hash-ref opt 'module-id)))
        (main-args (hash-ref opt 'main-args)))
    (if (hash-get opt 'supervised)
      (let* ((domain (get-ensemble-domain opt))
             (server-id (hash-ref opt 'server-id))
             (cfg (load-ensemble-server-config server-id domain)))
        (become-ensemble-server! cfg (cut apply module-main main-args)))
      (call-with-ensemble-server (hash-ref opt 'server-id)
                                 (cut apply module-main main-args)
                                 log-level: (hash-ref opt 'logging)
                                 log-file:  (hash-ref opt 'logging-file)
                                 listen:    (hash-ref opt 'listen)
                                 announce:  (hash-ref opt 'announce)
                                 registry:  (hash-ref opt 'registry)
                                 roles:     (hash-ref opt 'roles)
                                 domain:    (hash-ref opt 'ensemble-domain)
                                 cookie:    (get-actor-server-cookie)))))

(def (get-module-main module-id)
  (def (runtime-export? exported)
    (= (module-export-phi exported) 0))

  (gerbil-load-expander!)
  (let (ctx (import-module module-id #f #t))
    (let/cc return
      (for (exported (module-context-export ctx))
        (when (and (runtime-export? exported)
                   (eq? (module-export-name exported) 'main))
          (return (eval (binding-id (core-resolve-module-export exported))))))
      (error "module does not export main" module-id))))

;;; utilities
(def (write-result opt result)
  (unless (void? result)
    (if (hash-get opt 'pretty)
      (pretty-print result)
      (begin
        (write result)
        (newline)))))

(def (display-result-list lst)
  (for (result lst)
    (display-result result)))

(def (display-result result)
    (write result)
    (newline))

(def (string->object str)
  (call-with-input-string str read))

(def (string->integer str)
  (let (input (string->number str))
    (unless (integer? input)
      (error "expected integer" str))
    input))

(def (get-ensemble-domain opt)
  (cond
   ((hash-get opt 'ensemble-domain))
   ((file-exists? (ensemble-domain-file-path))
    (call-with-input-file (ensemble-domain-file-path) read))
   (else (ensemble-domain))))

(def (call-with-console-server opt proc)
  (parameterize ((ensemble-domain (get-ensemble-domain opt)))
    (let (srv (start-actor-server-with-options! opt))
      (maybe-authorize! (hash-ref opt 'supervisor (ensemble-domain-supervisor)))
      (with-catch display-exception (cut proc srv))
      (stop-actor-server! srv))))

(def (start-actor-server-with-options! opt)
  (parameterize ((ensemble-domain (get-ensemble-domain opt))
                 (current-logger-options (hash-ref opt 'logging 'WARN)))
    (let* ((known-servers (ensemble-known-servers))
           (known-servers
            (cond
             ((hash-get opt 'registry)
              => (lambda (addrs)
                   (let ((key (default-registry-server))
                         (addrs (append (default-registry-addresses) addrs)))
                     (if known-servers
                       (begin
                         (hash-put! known-servers key addrs)
                         known-servers)
                       (hash (,key addrs))))))
             ((not known-servers)
              (hash (,(default-registry-server) (default-registry-addresses))))
             (else known-servers)))
           (server-id
            (server-identifier (hash-ref opt 'console)))
           (listen-addrs
            (hash-ref opt 'listen []))
           (cookie (get-actor-server-cookie)))
      (start-actor-server! identifier: server-id
                           cookie: cookie
                           addresses: listen-addrs
                           known-servers: known-servers))))

(def +admin-privkey+ #f)
(def (get-privkey)
  (or +admin-privkey+
      (if (file-exists? (default-admin-privkey-path))
        (let* ((passphrase (read-password prompt: "Enter administrative passphrase: "))
               (privk (get-admin-privkey passphrase)))
          (set! +admin-privkey+ privk)
          privk)
        (error "no administrative private key"))))

(def (maybe-authorize! server-id)
  (let (addr (connect-to-server! server-id))
    (unless (eq? tls: (car addr))
      (when (file-exists? (default-admin-privkey-path))
        (let (privk (get-privkey))
          (admin-authorize +admin-privkey+ server-id (actor-server-identifier)))))))
