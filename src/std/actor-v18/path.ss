;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble path utils
(import :std/config
        :std/os/hostname
        :std/os/temporaries
        (only-in :std/logger current-log-directory))
(export #t)

(def current-ensemble-server-config
  (make-parameter #f))

(def (ensemble-base-path (base (gerbil-path)))
  (path-expand "ensemble" base))

(def current-ensemble-socket-path
  (make-parameter
   (getenv "GERBIL_ENSEMBLE_SOCKET_PATH"
	   (path-expand "ensemble" (path-normalize "/tmp")
			#;(current-temporary-directory)))))
  
(def (ensemble-domain-file-path (base (ensemble-base-path)))
  (path-expand "domain" base))

(def ensemble-domain
  (let* ((domain-file (ensemble-domain-file-path))
         (domain (if (file-exists? domain-file)
                   (call-with-input-file domain-file read)
                   '/)))
    (make-parameter domain)))

(def (ensemble-subdomain sub (domain (ensemble-domain)))
  (let (sub-str (symbol->string sub))
    (if (string-prefix? "/" sub-str)
      sub
      (string->symbol
       (path-expand sub-str (symbol->string domain))))))

(def (ensemble-domain->relative-path (domain (ensemble-domain)))
  (string-join
   (filter (? (not string-empty?))
           (string-split (symbol->string domain) #\/))
   #\/))

(def (ensemble-domain-path (domain (ensemble-domain)) (base (gerbil-path)))
  (let (base (ensemble-base-path base))
    (if domain
      (let (domain-path
            (filter (? (not string-empty?))
                    (string-split (symbol->string domain) #\/)))
        (let loop ((rest domain-path) (path base))
          (match rest
            ([dom . rest]
             (loop rest (path-expand dom (path-expand "+" path))))
            (else path))))
      base)))

(def (ensemble-server-path server-id (domain (ensemble-domain)) (base (gerbil-path)))
  (if (pair? server-id)
    (ensemble-server-path (car server-id) (cdr server-id) base)
    (path-expand (symbol->string server-id)
                 (path-expand "server"
                              (ensemble-domain-path domain base)))))

(def (ensemble-config-path (base (gerbil-path)))
  (path-expand "config" (ensemble-base-path base)))

(def (ensemble-server-config-path server-id (domain (ensemble-domain)) (base (gerbil-path)))
  (path-expand "config" (ensemble-server-path server-id domain base)))

(def (ensemble-server-unix-path server-id (domain (ensemble-domain)))
  (if (pair? server-id)
    (ensemble-server-unix-path (car server-id) (cdr server-id))
    (let* ((domain-path (ensemble-domain->relative-path domain))
           (base (if (string-empty? domain-path)
                   (current-ensemble-socket-path)
                   (path-expand domain-path (current-ensemble-socket-path)))))
      (path-expand (string-append (symbol->string server-id) ".sock") base))))

(def (ensemble-server-unix-addr server-id)
  [unix: (hostname) (ensemble-server-unix-path server-id)])

(def (ensemble-known-servers-path (base (ensemble-base-path)))
  (path-expand "known-servers" base))

(def (ensemble-known-servers (base (ensemble-base-path)))
  (def (infer)
    (let (path (ensemble-known-servers-path base))
      (and (file-exists? path)
           (list->hash-table
            (call-with-input-file path (cut read <>))))))
  (cond
   ((current-ensemble-server-config)
    => (lambda (config)
           (or (config-get config known-servers:)
               (infer))))
   (else (infer))))

(def (ensemble-domain-supervisor-path (base (ensemble-base-path)))
  (path-expand "supervisor" base))

(def (ensemble-domain-supervisor (base (ensemble-base-path)))
  (def (infer)
    (let (path (ensemble-domain-supervisor-path base))
      (if (file-exists? path)
        (call-with-input-file path read)
        (cons 'supervisor (ensemble-domain)))))
  (cond
   ((current-ensemble-server-config)
    => (lambda (config)
         (or (config-get config supervisor:)
             (infer))))
   (else (infer))))


(def (ensemble-server-log-directory server-id (root (ensemble-log-directory)))
  (with ([id . domain] server-id)
    (let (relpath (ensemble-domain->relative-path domain))
      (path-expand (symbol->string id)
        (path-expand relpath root)))))

(def (ensemble-server-log-file server-id
                               (file "server.log")
                               (root (ensemble-log-directory)))
  (path-expand file (ensemble-server-log-directory server-id root)))

(def (ensemble-log-directory (base (gerbil-path)))
  (cond
   ((current-log-directory))
   (else
    (path-expand "log" (ensemble-base-path base)))))
