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
  (cons (thread-specific srv)
        (ensemble-domain)))

(def (server-identifier->string server-id)
  (with ([id . domain] server-id)
    (string-append
     (symbol->string id)
     "@"
     (symbol->string domain))))


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
