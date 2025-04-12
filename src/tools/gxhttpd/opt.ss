;;; -*- Gerbil -*-
;;; © vyzo
;;; The Gerbil HTTP Daemon
;;;
(import :std/cli/getopt
        :std/config)
(export #t)

(def server-config-option
  (option 'config "-c" "--config"
    help: "location of the httpd configuration; when running as a standalone server it defaults to $GERBIL_PATH/httpd/config; when running as part of an ensemble this option is ignored"))

(def ensemble-config-option
  (option 'config "-c" "--config"
    help: "location of the httpd ensemble configuration; it defaults to $GERBIL_PATH/ensemble/config"))

(def server-id-optional-argument
  (optional-argument 'server-id
    value: string->object
    help: "when running as part of an ensemble, this is the ensemble server id"))

(def server-cmd
  (command 'server
    server-config-option
    server-id-optional-argument
    help: "runs a single httpd server"))

(def ensemble-cmd
  (command 'ensemble
    ensemble-config-option
    help: "runs a supervised httpd server ensemble"))

(def config-ensemble-flag
  (flag 'ensemble "--ensemble"
    help: "configure the httpd ensemble"))

(def config-print-flag
  (flag 'print "-p" "--print"
    help: "print the configuration"))

(def config-set-flag
  (flag 'set "--set"
    help: "override the configuration instead of merging"))

(def config-path-option
  (option 'config "-c" "--config"
    help: "specify the configuration path"))

(def config-httpd-root-option
  (option 'root "--root"
    default: "www"
    help: "specify the httpd server's content root path"))

(def config-httpd-listen-option
  (option 'listen "--listen"
    value: string->object
    default: '("0.0.0.0:8080")
    help: "specify the httpd server's listen addresses"))

(def config-httpd-handlers-option
  (option 'handlers "--handlers"
    value: string->object
    default: []
    help: "specify the httpd server's handler list"))

(def config-httpd-servlets-flag
  (flag 'enable-servlets "--enable-servlets"
    help: "enable servlets"))

(def config-httpd-log-option
  (option 'log-dir "--log-dir"
    help: "specify the httpd log directory"))

(def config-httpd-max-token-length-option
  (option 'max-token-length "--max-token-length"
    value: string->integer
    help: "specify the httpd max token length"))

(def config-ensemble-workers-option
  (option 'workers "-n" "--workers"
    value: string->integer
    help: "specify the preloaded number of httpd workers in the ensemble"))

(def config-ensemble-domain-option
  (option 'ensemble-domain "-D" "--ensemble-domain"
    value: string->symbol
    default: '/
    help: "specify the ensemble domain"))

(def config-ensemble-worker-domain-option
  (option 'worker-domain  "--worker-domain"
    value: string->symbol
    default: 'www
    help: "specify the httpd ensemble worker (sub) domain"))

(def config-ensemble-root-option
  (option 'ensemble-root "--ensemble-root"
    help: "specify the ensemble root directory"))

(def config-cmd
  (command 'config
    config-ensemble-flag
    config-set-flag
    config-print-flag
    config-path-option
    ;; server configuration options
    config-httpd-root-option
    config-httpd-listen-option
    config-httpd-handlers-option
    config-httpd-servlets-flag
    config-httpd-log-option
    config-httpd-max-token-length-option
    ;; ensemble configuration options
    config-ensemble-domain-option
    config-ensemble-root-option
    config-ensemble-workers-option
    config-ensemble-worker-domain-option
    ;; help!
    help: "edit httpd server or ensemble configuration"))
