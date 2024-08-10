;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble path utils
(import :std/os/hostname)
(export #t)

;; symbol or #f
(def ensemble-domain
  (make-parameter '/))

(def (ensemble-base-path)
  (path-expand "ensemble" (gerbil-path)))

(def (ensemble-domain-path (domain (ensemble-domain)))
  (let (base (ensemble-base-path))
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

(def (ensemble-server-path server-id (domain (ensemble-domain)))
  (if (pair? server-id)
    (ensemble-server-path (car server-id) (cdr server-id))
    (path-expand (symbol->string server-id)
                 (path-expand "server"
                              (ensemble-domain-path domain)))))

(def (ensemble-server-unix-path server-id)
  (let (base
        (cond
         ((ensemble-domain)
          => (lambda (domain)
               (path-expand (symbol->string domain) "/tmp/ensemble")))
         (else "/tmp/ensemble")))
    (path-expand (symbol->string server-id) base)))

(def (ensemble-server-unix-addr server-id)
  [unix: (hostname) (ensemble-server-unix-path server-id)])
