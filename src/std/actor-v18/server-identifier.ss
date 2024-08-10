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
