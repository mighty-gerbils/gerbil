;;; -*- Gerbil -*-
;;; © vyzo
;;; configuration DSL as keyword plist
(export #t)

(def (config-get cfg key (default #f))
  (pgetq key cfg default))

(def (config-get! cfg key)
  (or (pgetq key cfg)
      (error "missing configuration key" key: key config: cfg)))

(def (config-set! cfg key val)
  (cond
   ((memq key cfg)
    => (lambda (pos) (set-car! (cdr pos) val)))
   (else
    (append cfg [key val]))))

(def (config-check! cfg type)
  (unless (eq? type (config-get! cfg config:))
    (error "configuration type mismatch" type cfg)))

(def (write-config cfg (output (current-output-port)) pretty: (pretty? #f))
  (if pretty?
    (for-each (lambda (x) (pretty-print x output)) cfg)
    (for-each (lambda (x) (write x output) (newline output)) cfg)))

(def (save-config! cfg path)
  (call-with-output-file [path: path create: 'maybe truncate: #t]
    (cut write-config cfg <>)))

(def (read-config (input (current-input-port)))
  (read-all input))

(def (load-config path type)
  (let (cfg (call-with-input-file path read-config))
    (config-check! cfg type)
    cfg))

(def (string->object str)
  (call-with-input-string str read))

(def (string->integer str)
  (let (input (string->number str))
    (unless (integer? input)
      (error "expected integer" str))
    input))
