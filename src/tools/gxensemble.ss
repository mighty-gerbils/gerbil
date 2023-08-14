;;; -*- Gerbil -*-
;;; © vyzo
;;; actor ensemble management tool
(import :gerbil/gambit/threads
        :gerbil/gambit/exceptions
        :gerbil/expander
        :std/sugar
        :std/iter
        :std/getopt
        :std/logger
        :std/actor
        :std/actor-v18/cookie
        :std/actor-v18/server
        :std/actor-v18/loader
        :std/actor-v18/registry
        :std/actor-v18/path
        :std/os/hostname)
(export main)

(def (main . args)
  (def logging-option
    (option 'logging #f "--log"
      value: string->symbol
      default: 'INFO
      help: "specifies the log level to run with"))

  (def logging-file-option
    (option 'logging-file #f "--log-file"
      default: #f
      help: "specifies a log file instead of logging to stderr; if it is - then the log will be written into the ensemble server director log"))

  (def listen-option
    (option 'listen "-l" "--listen"
      value: string->object
      default: []
      help: "additional addresses to listen to; by default the server listens at unix /tmp/ensemble/<server-id>"))

  (def registry-option
    (option 'registry #f "--registry"
      value: string->object
      default: #f
      help: "additional registry addresses; by default the registry is reachable at unix /tmp/ensemble/registry"))

  (def roles-option
    (option 'roles #f "--roles"
      value: string->object
      default: []
      help: "server role(s); a list of symbols"))

  (def server-id-argument
    (argument 'server-id
      help: "the server id"
      value: string->symbol))

  (def server-id-optional-argument
    (optional-argument 'server-id
      help: "the server id"
      value: string->symbol))

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

  (def library-prefix-argument
    (optional-argument 'library-prefix
      help: "list of package prefixes to consider as library modules installed in the server"
      value: string->object
      default: '(gerbil scheme std)))

  (def expr-argument
    (argument 'expr
      help: "the expression to eval"
      value: string->object))

  (def main-arguments
    (rest-arguments 'main-args
      help: "arguments for the module's main procedure"))

  (def library-flag
    (flag 'library #f "--library"
      help: "loads the code as library module; the library must be in the servers load path"))

  (def role-flag
    (flag 'role #f "--role"
      help: "lookup by role"))

  (def force-flag
    (flag 'force "-f" "--force"
      help: "force the action"))

  (def run-cmd
    (command 'run
      logging-option
      logging-file-option
      listen-option
      registry-option
      roles-option
      server-id-argument
      module-id-argument
      main-arguments
      help: "run a server in the ensemble"))

  (def registry-cmd
    (command 'registry
      logging-option
      logging-file-option
      listen-option
      help: "runs the ensemble registry"))

  (def load-cmd
    (command 'load
      force-flag
      registry-option
      library-flag
      server-id-argument
      module-id-argument
      library-prefix-argument
      help: "loads code in a running server"))

  (def eval-cmd
    (command 'eval
      registry-option
      server-id-argument
      expr-argument
      help: "evals code in a running server"))

  (def ping-cmd
    (command 'ping
      registry-option
      server-id-argument
      actor-id-optional-argument
      help: "pings a server or actor in the server"))

  (def shutdown-cmd
    (command 'shutdown
      force-flag
      registry-option
      server-id-optional-argument
      actor-id-optional-argument
      help: "shuts down an actor, server, or the entire ensemble including the registry"))

  (def list-servers-cmd
    (command 'list-servers
      registry-option
      help: "lists known servers"))

  (def list-actors-cmd
    (command 'list-actors
      registry-option
      server-id-argument
      help: "list actors registered in a server"))

  (def list-connections-cmd
    (command 'list-connections
      registry-option
      server-id-argument
      help: "list a server's connection"))

  (def lookup-cmd
    (command 'lookup
      registry-option
      role-flag
      server-id-or-role-argument
      help: "looks up a server by id or role"))

  (def cookie-cmd
    (command 'cookie
      force-flag
      help: "generate a new ensemble cookie"))

  (def help-cmd
    (command 'help help: "display help; help <command> for command help"
             (optional-argument 'command value: string->symbol)))

  (def gopt
    (getopt
     help: "the Gerbil Actor Ensemble Manager"
     run-cmd
     registry-cmd
     load-cmd
     eval-cmd
     ping-cmd
     shutdown-cmd
     list-servers-cmd
     list-actors-cmd
     list-connections-cmd
     lookup-cmd
     cookie-cmd
     help-cmd))

  (def (do-help opt)
    (getopt-display-help-topic gopt (hash-get opt 'command) "gxensemble"))

  (def commands
    (hash (run              do-run)
          (registry         do-registry)
          (load             do-load)
          (eval             do-eval)
          (ping             do-ping)
          (shutdown         do-shutdown)
          (list-servers     do-list-servers)
          (list-actors      do-list-actors)
          (list-connections do-list-connections)
          (lookup           do-lookup)
          (cookie           do-cookie)
          (help             do-help)))
  (try
   (let ((values cmd opt) (getopt-parse gopt args))
     (cond
      ((hash-get commands cmd)
       => (cut <> opt))
      (else
       (error "Unexpected command" cmd))))
   (catch (getopt-error? exn)
     (getopt-display-help exn "gxensemble" (current-error-port))
     (exit 1))
   (catch (e)
     (display-exception e (current-error-port))
     (exit 2))))

(def (do-cookie opt)
  (generate-actor-server-cookie! force: (hash-get opt 'force)))

(def (do-lookup opt)
  (start-actor-server-with-options! opt)
  (let (what (hash-ref opt 'server-or-role))
    (display-result-list
     (if (hash-get opt 'role)
       (ensemble-lookup-servers/role what)
       (ensemble-lookup-server what))))
  (stop-actor-server!))

(def (do-list-connections opt)
  (start-actor-server-with-options! opt)
  (display-result-list
   (remote-list-connections (hash-ref opt 'server-id)))
  (stop-actor-server!))

(def (do-list-actors opt)
  (start-actor-server-with-options! opt)
  (display-result-list
   (map reference-id (remote-list-actors (hash-ref opt 'server-id))))
  (stop-actor-server!))

(def (do-list-servers opt)
  (start-actor-server-with-options! opt)
  (display-result-list
   (ensemble-list-servers))
  (stop-actor-server!))

(def (do-shutdown opt)
  (start-actor-server-with-options! opt)
  (cond
   ((hash-get opt 'server-id)
    => (lambda (server-id)
         (cond
          ((hash-get opt 'actor-id)
           => (lambda (actor-id)
                (displayln "... shutting down " actor-id "@" server-id)
                (stop-actor! (reference server-id actor-id))))
          (else
           (displayln "... shutting down " server-id)
           (remote-stop-server! server-id)))))
   (else
    (let/cc nope
      (unless (hash-get opt 'force)
        (displayln "This will shutdown every server in the ensemble, including the registry. Proceed? [y/n]")
        (unless (memq (read) '(y yes Y YES))
          (nope (void))))

      (for (server-id (map car (ensemble-list-servers)))
        (displayln "... shutting down " server-id)
        (with-catch void (cut remote-stop-server! server-id)))
      (displayln "... shutting down registry")
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
    (displayln
     (remote-eval server-id expr)))
  (stop-actor-server!))

(def (do-load opt)
  (_gx#load-expander!)
  (if (hash-get opt 'library)
    (do-load-library opt)
    (do-load-code opt)))

(def (do-load-library opt)
  (let ((module-id (hash-ref opt 'module-id))
        (server-id (hash-ref opt 'server-id)))
    (start-actor-server-with-options! opt)
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

(extern namespace: #f find-library-module)
(def (get-module-objects module-id library-prefix)
  (def (fold-modules r q)
    (for/fold (r r) (in q)
      (cond
       ((module-context? in)
        (fold-modules (cons in r) (cons (core-context-prelude in) (module-context-import in))))
       ((prelude-context? in)
        (cons in r))
       ((module-import? in)
        (fold-modules r [(module-import-source in)]))
       ((import-set? in)
        (fold-modules r [(import-set-source in)]))
       (else r))))

  (def (find-object-file ctx-id)
    (find-library-module (string-append (symbol->string ctx-id) "__0")))

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
            ((string-prefix? "gerbil/core" ctx-id-str)
             (lp rest to-load libraries))
            ((find (cut string-prefix? <> ctx-id-str) library-prefix-str)
             (if (member ctx-id libraries)
               (lp rest to-load libraries)
               (lp rest to-load (cons ctx-id libraries))))
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
  (call-with-ensemble-server 'registry
                             (cut start-ensemble-registry!)
                             log-level: (hash-ref opt 'logging)
                             log-file:  (hash-ref opt 'logging-file)
                             addresses: (hash-ref opt 'listen)
                             registry:  #f
                             roles:     #f
                             cookie:    (get-actor-server-cookie)))

(def (do-run opt)
  (let ((module-main (get-module-main (hash-ref opt 'module-id)))
        (main-args (hash-ref opt 'main-args)))
    (call-with-ensemble-server (hash-ref opt 'server-id)
                               (cut apply module-main main-args)
                               log-level: (hash-ref opt 'logging)
                               log-file:  (hash-ref opt 'logging-file)
                               addresses: (hash-ref opt 'listen)
                               registry:  (hash-ref opt 'registry)
                               roles:     (hash-ref opt 'roles)
                               cookie:    (get-actor-server-cookie))))

(def (get-module-main module-id)
  (def (runtime-export? exported)
    (= (module-export-phi exported) 0))

  (_gx#load-expander!)
  (let (ctx (import-module module-id #f #t))
    (let/cc return
      (for (exported (module-context-export ctx))
        (when (and (runtime-export? exported)
                   (eq? (module-export-name exported) 'main))
          (return (eval (binding-id (core-resolve-module-export exported))))))
      (error "module does not export main" module-id))))

;;; utilities
(def (display-result-list lst)
  (for-each displayln lst))

(def (string->object str)
  (call-with-input-string str read))

(def (start-actor-server-with-options! opt)
  (cond
   ((hash-get opt 'logging)
    => current-logger-options))
  (let* ((known-servers
         (cond
          ((hash-get opt 'registry)
           => (lambda (addrs)
                (hash-eq (registry (append (default-registry-addresses) addrs)))))
          (else
           (hash-eq (registry (default-registry-addresses))))))
         (server-id
          (make-random-identifier))
        (listen-addrs
         (hash-ref opt 'listen []))
        (cookie (get-actor-server-cookie)))
    (start-actor-server! cookie: cookie
                         addresses: listen-addrs
                         identifier: server-id
                         ensemble: known-servers)))
