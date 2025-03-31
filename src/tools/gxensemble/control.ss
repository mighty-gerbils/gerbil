;;; -*- Gerbil -*-
;;; © vyzo
;;; actor ensemble management tool
(import :std/actor
        :std/config
        :std/os/temporaries
        :std/misc/process
        ./util)
(export #t)

;;; gerbil ensemble control
(def (do-control-list-servers opt)
  (parameterize ((ensemble-domain (get-ensemble-domain opt)))
    (let ((supervisor (or (hash-get opt 'supervisor) (ensemble-domain-supervisor)))
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
    (let* ((supervisor (or (hash-get opt 'supervisor) (ensemble-domain-supervisor)))
           (domain (or (hash-get opt 'domain) (ensemble-domain)))
           (role (hash-ref opt 'role))
           (server-id (hash-ref opt 'server-id))
           (config-path
            (or (hash-get opt 'config)
                (let (config-path (ensemble-server-config-path server-id domain))
                  (and (file-exists? config-path) config-path))))
           (config (and config-path (load-ensemble-config-file config-path))))
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
    (let* ((supervisor (or (hash-get opt 'supervisor) (ensemble-domain-supervisor)))
           (domain (or (hash-get opt 'domain) (ensemble-domain)))
           (role (hash-ref opt 'role))
           (server-id (hash-ref opt 'server-id))
           (worker-count (hash-ref opt 'count))
           (config-path
            (or (hash-get opt 'config)
                (let (config-path (ensemble-server-config-path server-id domain))
                  (and (file-exists? config-path) config-path))))
           (config (and config-path (load-ensemble-config-file config-path))))
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
    (let* ((supervisor (or (hash-get opt 'supervisor) (ensemble-domain-supervisor)))
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
    (let* ((supervisor (or (hash-get opt 'supervisor) (ensemble-domain-supervisor)))
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
    (let* ((supervisor (or (hash-get opt 'supervisor) (ensemble-domain-supervisor)))
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
    (let* ((supervisor (or (hash-get opt 'supervisor) (ensemble-domain-supervisor)))
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
    (let* ((supervisor (or (hash-get opt 'supervisor) (ensemble-domain-supervisor)))
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
    (let (supervisor (or (hash-get opt 'supervisor) (ensemble-domain-supervisor)))
      (call-with-console-server opt
        (lambda (srv)
          (let (result (ensemble-supervisor-get-config
                        supervisor: supervisor
                        actor-server: srv))
            (write-result opt result)))))))

(def (do-control-update-config opt)
  (parameterize ((ensemble-domain (get-ensemble-domain opt)))
    (let* ((supervisor (or (hash-get opt 'supervisor) (ensemble-domain-supervisor)))
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
    (let (supervisor (or (hash-get opt 'supervisor) (ensemble-domain-supervisor)))
      (call-with-console-server opt
        (lambda (srv)
          (let (result (ensemble-supervisor-shutdown!
                        supervisor: supervisor
                        actor-server: srv))
            (write-result opt result)))))))

(def (do-control-restart opt)
  (parameterize ((ensemble-domain (get-ensemble-domain opt)))
    (let ((supervisor (or (hash-get opt 'supervisor) (ensemble-domain-supervisor)))
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
    (let ((supervisor  (or (hash-get opt 'supervisor) (ensemble-domain-supervisor)))
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
    (let ((supervisor  (or (hash-get opt 'supervisor) (ensemble-domain-supervisor)))
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
    (let ((supervisor (or (hash-get opt 'supervisor) (ensemble-domain-supervisor))))
      (call-with-console-server opt
       (lambda (srv)
         (let (result (ensemble-supervisor-list-processes
                       supervisor: supervisor
                       actor-server: srv))
           (write-result opt result)))))))

(def (do-control-exec-process opt)
  (parameterize ((ensemble-domain (get-ensemble-domain opt)))
    (let ((supervisor  (or (hash-get opt 'supervisor) (ensemble-domain-supervisor)))
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
    (let ((supervisor  (or (hash-get opt 'supervisor) (ensemble-domain-supervisor)))
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
    (let ((supervisor  (or (hash-get opt 'supervisor) (ensemble-domain-supervisor)))
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
    (let ((supervisor  (or (hash-get opt 'supervisor) (ensemble-domain-supervisor)))
          (pid (hash-ref opt 'pid)))
      (call-with-console-server opt
        (lambda (srv)
          (let (result (ensemble-supervisor-get-process-output
                        supervisor: supervisor
                        pid: pid
                        actor-server: srv))
            (displayln result)))))))