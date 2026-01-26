;;; -*- Gerbil -*-
;;; © vyzo
;;; actor server identifier
(import :std/error
        ./path)
(export #t)

(def current-actor-server
  (make-parameter #f))

;; returns the actor server's identifier
(def (actor-server-identifier (srv (current-actor-server)))
  (server-identifier (thread-specific srv)))

(def (server-identifier->flat-string server-id)
  (with ([id . domain] server-id)
    (string-append
     (symbol->string id)
     "@"
     (symbol->string domain))))

(def (string->server-identifier str)
  (server-identifier (call-with-input-string str read)))

(def (server-identifier id)
  (cond
   ((symbol? id)
    (cons id (ensemble-domain)))
   ((pair? id)
    (if (and (symbol? (car id)) (symbol? (cdr id)))
      id
      (raise-bad-argument server-identifier "symbol or pair of symbols" id)))
   (else
    (raise-bad-argument server-identifier "symbol or pair of symbols" id))))

(def (server-identifier-id server-id)
  (if (symbol? server-id)
    server-id
    (car server-id)))

(def (server-identifier-domain server-id)
  (if (pair? server-id)
    (cdr server-id)
    (ensemble-domain)))

(def (server-identifier-at-domain server-id global-domain)
  (cond
   ((symbol? server-id)
    (cons server-id global-domain))
   ((pair? server-id)
    (with ([id . dom] server-id)
      (let (dom-str (symbol->string dom))
        (if (string-prefix? "/" dom-str)
          server-id
          (let (global-domain-str (symbol->string global-domain))
            (cons id (string-append global-domain-str "/" dom-str)))))))
   (else
    (raise-bad-argument server-identifier "symbol or pair of symbols" server-id))))
