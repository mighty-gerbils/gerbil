;;; -*- Gerbil -*-
;;; © vyzo
;;; actor ensemble management tool
(import :std/cli/getopt
        :std/sugar
        :std/actor-v18/path
        ./env
        ./gxensemble/opt
        ./gxensemble/cmd)
(export main)

(def (main . args)
  (call-with-getopt gxensemble-main args
    program: "gxensemble"
    help: "the Gerbil Actor Ensemble Manager"
    global-env-flag
    gerbil-path-option
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
    package-cmd
    config-cmd))

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
  (package          do-package)
  (config           do-config))

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

(defcommand-table config-commands
  (ensemble         do-config-ensemble)
  (role             do-config-role)
  (preload-server   do-config-preload-server)
  (preload-workers  do-config-preload-workers)
  (server           do-config-server))

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

(defcommand-nested do-admin admin-commands "gxensemble admin"
  admin-cookie-cmd
  admin-creds-cmd
  admin-authorize-cmd
  admin-retract-cmd)

(defcommand-nested do-env env-commands "gxensemble env"
  env-known-servers-cmd
  env-domain-cmd
  env-supervisor-cmd)

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

(defcommand-nested do-config config-commands "gxensemble config"
  config-ensemble-cmd
  config-role-cmd
  config-preload-server-cmd
  config-preload-workers-cmd
  config-server-cmd)

(defcommand-nested do-list list-commands "gxensemble list"
  list-servers-cmd
  list-actors-cmd
  list-connections-cmd)

(defcommand-nested do-ca ca-commands "gxensemble ca"
  ca-setup-cmd
  ca-cert-cmd)

(def (gxensemble-main cmd opt)
  (setup-local-env! opt)
  (let (domain-file (ensemble-domain-file-path))
    (when (file-exists? domain-file)
      (ensemble-domain (call-with-input-file domain-file read))))
  (dispatch-command cmd opt main-commands))
