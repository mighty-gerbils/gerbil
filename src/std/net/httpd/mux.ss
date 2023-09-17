;;; -*- Gerbil -*-
;;; (C) vyzo
;;; embedded HTTP/1.1 server; path multiplexer

(import :std/error
        :std/misc/sync)
(export #t)

;; multiplexer: an object with two methods:
;; - {put-handler! mux host path handler}
;;   invoked by the http server to register a new handler
;; - {get-handler mux host path} => handler or #f
;;   invoked by a http request handler to resolve a path for the request host

;; default mux implementation -- paths are resolved with an exact match
(defstruct default-http-mux (t default)
  constructor: :init! unchecked: #t)

(defmethod {:init! default-http-mux}
  (lambda (self (default #f))
    (struct-instance-init! self (make-sync-hash (make-hash-table)) default)))

(defmethod {put-handler! default-http-mux}
  (lambda (self host path handler)
    (sync-hash-put! (&default-http-mux-t self) path handler)))

(defmethod {get-handler default-http-mux}
  (lambda (self host path)
    (sync-hash-ref (&default-http-mux-t self) path
                   (&default-http-mux-default self))))

;; recursive mux -- resolves paths up to their parent
(defstruct (recursive-http-mux default-http-mux) ())

(defmethod {:init! recursive-http-mux}
  default-http-mux:::init!)

(defmethod {get-handler recursive-http-mux}
  (lambda (self host path)
    (sync-hash-do (&default-http-mux-t self)
      (lambda (ht)
        (let lp ((path path))
          (cond
           ((hash-get ht path))
           ((string-rindex path #\/)
            => (lambda (ix) (lp (substring path 0 ix))))
           (else
            (&default-http-mux-default self))))))))

;; static mux -- paths are resolved in a static hash table, which elides the need for a mutex
(defstruct static-http-mux (t default)
  constructor: :init! unchecked: #t)

(defmethod {:init! static-http-mux}
  (lambda (self tab (default #f))
    (struct-instance-init! self tab default)))

(defmethod {put-handler! static-http-mux}
  (lambda (self host path handler)
    (error "mux does not support dynamic handler registration")))

(defmethod {get-handler static-http-mux}
  (lambda (self host path)
    (hash-ref (&static-http-mux-t self) path
              (&static-http-mux-default self))))

;; recursive static mux -- resolves paths up to their parent
(defstruct (recursive-static-http-mux static-http-mux) ())

(defmethod {:init! recursive-static-http-mux}
  static-http-mux:::init!)

(defmethod {get-handler recursive-static-http-mux}
  (lambda (self host path)
    (let (ht (&static-http-mux-t self))
      (let lp ((path path))
        (cond
         ((hash-get ht path))
         ((string-rindex path #\/)
          => (lambda (ix) (lp (substring path 0 ix))))
         (else (&static-http-mux-default self)))))))

;; custom mux -- it dispatches all resolutions/registrations to user supplied functions
(defstruct custom-http-mux (get put)
  constructor: :init! final: #t unchecked: #t)

(defmethod {:init! custom-http-mux}
  (lambda (self get (put void))
    (struct-instance-init! self get put)))

(defmethod {get-handler custom-http-mux}
  (lambda (self host path)
    ((&custom-http-mux-get self) host path)))

(defmethod {put-handler! custom-http-mux}
  (lambda (self host path handler)
    ((&custom-http-mux-put self) host path handler)))
