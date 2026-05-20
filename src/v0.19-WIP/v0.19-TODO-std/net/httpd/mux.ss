;;; -*- Gerbil -*-
;;; (C) vyzo
;;; embedded HTTP/1.1 server; path multiplexer

(import :std/error
        :std/hash-table)
(export #t)

;; multiplexer: an object with two methods:
;; - {put-handler! mux host path handler}
;;   invoked by the http server to register a new handler
;; - {get-handler mux host path} => handler or #f
;;   invoked by a http request handler to resolve a path for the request host
(interface Mux
  (put-handler! (host    :? :string)
                (path    :  :string)
                (handler :  :procedure))
  (get-handler  (host    :? :string)
                (path    :  :string))
  => :t) ; Maybe procedure

;; default mux implementation -- paths are resolved with an exact match
(defstruct default-http-mux ((t :- HashTable) (default :? :procedure))
  constructor: :init!)

(defmethod {:init! default-http-mux}
  (lambda (self (default :? :procedure := #f))
    (struct-instance-init! self (make-hash-table lock: (make-mutex 'mux)) default)))

(defmethod {put-handler! default-http-mux}
  (lambda (self host path handler)
    (hash-put! self.t path handler))
  interface: Mux)

(defmethod {get-handler default-http-mux}
  (lambda (self host path)
    (hash-ref self.t path self.default))
  interface: Mux)

;; recursive mux -- resolves paths up to their parent
(defstruct (recursive-http-mux default-http-mux) ())

(defmethod {:init! recursive-http-mux}
  default-http-mux:::init!)

(defmethod {get-handler recursive-http-mux}
  (lambda (self host path)
    (let lp ((path path))
      (cond
       ((hash-get self.t path))
       ((string-rindex path #\/)
        => (lambda (ix) (lp (substring path 0 ix))))
       (else self.default))))
  interface: Mux)

;; static mux -- paths are resolved in a static hash table, which elides the need for a mutex
(defstruct static-http-mux ((t :- HashTable) (default :- :procedure))
  constructor: :init! )

(defmethod {:init! static-http-mux}
  (lambda (self (tab : HashTable) (default :? :procedure := #f))
    (struct-instance-init! self tab default)))

(defmethod {put-handler! static-http-mux}
  (lambda (self host path handler)
    (error "mux does not support dynamic handler registration"))
  interface: Mux)

(defmethod {get-handler static-http-mux}
  (lambda (self host path)
    (hash-ref self.t path self.default))
  interface: Mux)

;; recursive static mux -- resolves paths up to their parent
(defstruct (recursive-static-http-mux static-http-mux) ())

(defmethod {:init! recursive-static-http-mux}
  static-http-mux:::init!)

(defmethod {get-handler recursive-static-http-mux}
  (lambda (self host path)
    (let lp ((path path))
      (cond
       ((hash-get self.t path))
       ((string-rindex path #\/)
        => (lambda (ix) (lp (substring path 0 ix))))
       (else self.default))))
  interface: Mux)

;; custom mux -- it dispatches all resolutions/registrations to user supplied functions
(defstruct custom-http-mux ((get :- :procedure) (put :- :procedure))
  constructor: :init! final: #t )

(defmethod {:init! custom-http-mux}
  (lambda (self (get : :procedure) (put : :procedure := void))
    (struct-instance-init! self get put)))

(defmethod {get-handler custom-http-mux}
  (lambda (self host path)
    (self.get host path))
  interface: Mux)

(defmethod {put-handler! custom-http-mux}
  (lambda (self host path handler)
    (self.put host path handler))
  interface: Mux)
