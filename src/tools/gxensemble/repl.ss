;;; -*- Gerbil -*-
;;; © vyzo
;;; actor ensemble management tool
(import :gerbil/expander
        :std/actor
        :std/iter
        :std/sugar
        ./util)
(export #t)

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