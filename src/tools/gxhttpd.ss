;;; -*- Gerbil -*-
;;; © vyzo
;;; The Gerbil HTTP Daemon
;;;
(import :std/cli/getopt
        :std/sugar
        :std/config
        :std/actor
        ./env
        ./gxhttpd/opt
        ./gxhttpd/config
        ./gxhttpd/server)
(export main)

(def (main . args)
  (call-with-getopt gxhttpd-main args
    program: "gxhttpd"
    help: "The Gerbil HTTP Daemon"
    global-env-flag
    gerbil-path-option
    server-cmd
    ensemble-cmd
    config-cmd))

(def (gxhttpd-main cmd opt)
  (setup-local-env! opt)
  (let-hash opt
    (case cmd
      ;; run a server
      ((server)
       (if .?server-id
         ;; run as part of an ensemble
         (let (cfg (load-ensemble-server-config .server-id))
           (become-ensemble-server! cfg (cut run-ensemble-server! cfg)))
         ;; run standalone
         (let (cfg (get-httpd-config opt))
           (run-server! cfg))))
      ;; run an ensemble of httpds
      ((ensemble)
       (let (cfg (get-ensemble-config opt))
         (prepare-ensemble-filesystem! cfg)
         (become-ensemble-supervisor! cfg)))
      ;; configure the server or the ensemble
      ((config)
       (do-config opt)))))

(def (prepare-ensemble-filesystem! cfg)
  (let* ((root (config-get cfg root: (current-directory)))
         (root (path-normalize root))
         (fs   (path-expand "fs" root))
         (www  (config-get!
                (agetq 'httpd
                       (config-get!
                        (config-get!
                         (agetq 'httpd (config-get! cfg roles:))
                         server-config:)
                        application:))
                root:)))
    (unless (file-exists? www)
      (error "httpd content root directory doesn't exist" www))
    (unless (string-prefix? "/" www)
      (let (fs/www (path-expand www fs))
        (create-directory* (path-directory fs/www))
        (unless (file-exists? fs/www)
          (create-symbolic-link www fs/www))))))

(def (run-ensemble-server! cfg)
  (cond
   ((agetq 'httpd (config-get! cfg application:))
    => run-server!)
   (else
    (error "missing httpd configuration" cfg))))
