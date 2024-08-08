;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble path utils
(import :std/os/hostname)
(export #t)

;; symbol or #f
(def ensemble-domain
  (make-parameter #f))

(def (ensemble-base-path)
  (let (base (path-expand "ensemble" (gerbil-path)))
    (cond
     ((ensemble-domain)
      => (lambda (domain)
           (path-expand (symbol->string domain) base)))
     (else base))))

(def (ensemble-server-path server-id)
  (path-expand (symbol->string server-id)
               (path-expand "server"
                            (ensemble-base-path))))

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
