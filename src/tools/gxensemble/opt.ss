;;; -*- Gerbil -*-
;;; © vyzo
;;; actor ensemble management tool
(import :std/cli/getopt
        :std/config)
(export #t)
;;;
;;; getopt objects
;;;

(def ensemble-domain-option
  (option 'ensemble-domain "-D" "--ensemble-domain"
    value: string->symbol
    default: #f
    help: "specifies the ensemble domain"))

(def ensemble-public-address-option
  (option 'ensemble-public-address "--public"
    help: "specifies the ensemble supervisor public address for TLS"))

(def ensemble-root-option
  (option 'ensemble-root "--root"
    help: "specifies the ensemble root directory"))

(def control-domain-option
  (option 'domain "-d" "--domain"
    value: string->symbol
    help: "specifies the control operation domain"))

(def supervisor-option
  (option 'supervisor "-S" "--supervisor"
    value: string->object
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
    value: string->object
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
  (flag 'supervised "-s" "--supervised"
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

(def role-exe-option
  (option 'exe "--exe"
    help: "role executable path"))

(def role-exe-prefix-option
  (option 'prefix "--prefix"
    value: string->object
    help: "role executable arguments prefix; a list"))

(def role-exe-suffix-option
  (option 'suffix "--suffix"
    value: string->object
    help: "role executable arguments suffix; a list"))

(def supervisor-policy-option
  (option 'policy "--policy"
    value: string->symbol
    help: "role supervisory policy"))

(def server-env-option
  (option 'env "--env"
    help: "role server environment"))

(def server-envvars-option
  (option 'envvars "--envvars"
    value: string->object
    help: "role server environment variables"))

(def server-known-servers-option
  (option 'known-servers "--known-servers"
    value: string->object
    help: "role server known servers for external communication"))

(def server-application-option
  (option 'application "--application"
    value: string->symbol
    help: "role server application name"))

(def server-application-config-option
  (option 'config "-C" "--config"
    help: "role server application configuration"))

(def (subcommand help)
  (argument 'subcommand
    help: help
    value: string->symbol))

(def subcommand-env
  (subcommand "see gerbil ensemble env help"))

(def subcommand-control
  (subcommand "see gerbil ensemble control help"))

(def subcommand-list
  (subcommand "see gerbil ensemble list help"))

(def subcommand-admin
  (subcommand "see gerbil ensemble admin help"))

(def subcommand-ca
  (subcommand "see gerbil ensemble ca help"))

(def subcommand-config
  (subcommand "see gerbil ensemble config help"))

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

(def config-cmd
  (command 'config
    subcommand-config
    subcommand-arguments
    help: "configure the ensemble"))

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
    pretty-flag
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

;; config
(def config-ensemble-cmd
  (command 'ensemble
    view-flag
    pretty-flag
    ensemble-domain-option
    ensemble-root-option
    ensemble-public-address-option
    help: "configure the ensemble as a whole"))

(def config-role-cmd
  (command 'role
    role-option
    role-exe-option
    role-exe-prefix-option
    role-exe-suffix-option
    supervisor-policy-option
    server-env-option
    server-envvars-option
    server-known-servers-option
    server-application-option
    server-application-config-option
    help: "configure an ensemble role"))

(def config-preload-server-cmd
  (command 'server
    help: "TODO: configure a preloaded server"))

(def config-preload-workers-cmd
  (command 'workers
    help: "TODO: configure preloaded workers"))

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
    default: "ensemble.internal"
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
    ensemble-domain-option
    package-output-option
    config-option
    server-id-argument
    help: "package ensemble state to ship an actor server environment"))
