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

  (def library-prefix-option
    (option 'library-prefix #f "--library-prefix"
      value: string->object
      default: '(gerbil scheme std)
      help: "list of package prefixes to consider as library modules installed in the server"))

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
      announce-option
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
      announce-option
      help: "runs the ensemble registry"))

  (def load-cmd
    (command 'load
      force-flag
      library-flag
      registry-option
      library-prefix-option
      server-id-argument
      module-id-argument
      help: "loads code in a running server"))

  (def eval-cmd
    (command 'eval
      registry-option
      server-id-argument
      expr-argument
      help: "evals code in a running server"))

  (def repl-cmd
    (command 'repl
      registry-option
      library-prefix-option
      server-id-argument
      help: "provides a repl for a running server"))

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

  (call-with-getopt gxensemble-main args
    program: "gxensemble"
    help: "the Gerbil Actor Ensemble Manager"
    run-cmd
    registry-cmd
    load-cmd
    eval-cmd
    repl-cmd
    ping-cmd
    shutdown-cmd
    list-servers-cmd
    list-actors-cmd
    list-connections-cmd
    lookup-cmd
    cookie-cmd))


(def (gxensemble-main cmd opt)
  (def commands
    (hash (run              do-run)
          (registry         do-registry)
          (load             do-load)
          (eval             do-eval)
          (repl             do-repl)
          (ping             do-ping)
          (shutdown         do-shutdown)
          (list-servers     do-list-servers)
          (list-actors      do-list-actors)
          (list-connections do-list-connections)
          (lookup           do-lookup)
          (cookie           do-cookie)))
  (cond
   ((hash-get commands cmd)
    => (cut <> opt))
   (else
    (error "Unexpected command" cmd))))

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

      (let (servers (ensemble-list-servers))
        (for (server-id (map car servers))
          (displayln "... shutting down " server-id)
          (with-catch void (cut remote-stop-server! server-id)))
        ;; wait a second before shutting down the registry, so that servers can remove
        ;; themselves.
        (unless (null? servers)
          (thread-sleep! 3)))
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

(def (do-repl opt)
  (start-actor-server-with-options! opt)
  (let ((server-id (hash-ref opt 'server-id))
        (library-prefix (hash-ref opt 'library-prefix)))
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
        (remote-eval server-id '(&current-module-registry)))))

  (def (eval-expr expr)
    (let* ((expanded-expr (core-expand expr))
           (compiled-expr (core-compile-top-syntax expanded-expr))
           (raw-compiled-expr (_gx#compile compiled-expr))
           (result (remote-eval server-id raw-compiled-expr)))
      (unless (void? result)
        (if (##values? result)
          (for-each displayln (values->list result))
          (displayln result)))))

  (_gx#load-expander!)
  (connect-to-server! server-id)
  (set! module-registry
    (remote-eval server-id '(&current-module-registry)))
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
               (displayln "uknown control command " command)
               (display-help))))
           (expr (eval-expr expr)))
         (catch (exn)
           (display "*** ERROR ")
           (display-exception exn)))))))

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

(def (find-object-file ctx-or-id)
  (if (module-context? ctx-or-id)
    (find-object-file (expander-context-id ctx-or-id))
    (find-library-module (string-append (module-id->string ctx-or-id) "__0"))))

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
  (##expand-source-set! ##identity)
  (call-with-ensemble-server 'registry
                             (cut start-ensemble-registry!)
                             log-level: (hash-ref opt 'logging)
                             log-file:  (hash-ref opt 'logging-file)
                             listen:    (hash-ref opt 'listen)
                             announce:  (hash-ref opt 'announce)
                             registry:  #f
                             roles:     #f
                             cookie:    (get-actor-server-cookie)))

(def (do-run opt)
  ;; unhook the expander for consistent eval
  (##expand-source-set! ##identity)
  (let ((module-main (get-module-main (hash-ref opt 'module-id)))
        (main-args (hash-ref opt 'main-args)))
    (call-with-ensemble-server (hash-ref opt 'server-id)
                               (cut apply module-main main-args)
                               log-level: (hash-ref opt 'logging)
                               log-file:  (hash-ref opt 'logging-file)
                               listen:    (hash-ref opt 'listen)
                               announce:  (hash-ref opt 'announce)
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
