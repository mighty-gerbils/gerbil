;;; -*- Gerbil -*-
;;; © vyzo
;;; actor ensemble management tool
(import :gerbil/expander
        :std/actor
        :std/actor-v18/registry
        :std/iter
        ./util)
(export #t)

(def (do-registry opt)
  (let* ((domain    (get-ensemble-domain opt))
         (server-id (or (hash-get opt 'server-id)
                        (cons 'registry domain))))
    (if (hash-get opt 'supervised)
      ;; run as a supervisory process
      (let (cfg (load-ensemble-server-config (server-identifier-at-domain server-id domain)))
        (become-ensemble-server! cfg (cut start-ensemble-registry!)))
      ;; standalone registry mode
      (call-with-ensemble-server
       server-id
       (cut start-ensemble-registry!)
       domain:    domain
       log-level: (hash-ref opt 'logging)
       log-file:  (hash-ref opt 'logging-file)
       listen:    (hash-ref opt 'listen)
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
