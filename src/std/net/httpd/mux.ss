;;; -*- Gerbil -*-
;;; (C) vyzo
;;; embedded HTTP/1.1 server; path multiplexer
package: std/net/httpd

(import :std/misc/sync)
(export #t)

;; multiplexer: an object with two methods:
;; - {put-handler! mux host path handler}
;; - {get-handler mux host path} => handler or #f
;;

;; default mux implementation
(defstruct default-http-mux (t)
  constructor: :init!
  final: #t)

(defmethod {:init! default-http-mux}
  (lambda (self)
    (struct-instance-init! self (make-sync-hash (make-hash-table)))))

(defmethod {put-handler! default-http-mux}
  (lambda (self host path handler)
    (sync-hash-put! (default-http-mux-t self) path handler)))

(defmethod {get-handler default-http-mux}
  (lambda (self host path)
    (sync-hash-do (default-http-mux-t self)
      (lambda (ht)
        (let lp ((path path))
          (cond
           ((hash-get ht path) => values)
           ((string-rindex path #\/)
            => (lambda (ix) (lp (substring path 0 ix))))
           (else #f)))))))
