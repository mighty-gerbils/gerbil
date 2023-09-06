;;; -*- Gerbil -*-
;;; ̧© vyzo
;;; embedded HTTP/1.1 server control
(import :std/sugar
        :std/actor
        ./base)
(export #t)

(defcall-actor (remote-stop-http-server! server-id)
  (with-actor-server
   (->> (make-handle (current-actor-server) (reference server-id 'httpd))
        (!shutdown)))
  error: "error stopping remote httpd" server-id)

;; handler: lambda (request response)
(defcall-actor (http-register-handler httpd path handler (host #f))
  (check-handler path handler
    (->> httpd (!register-handler host path handler)))
  error: "error registering handler" path)

;; registers a handler with a remote httpd
(defcall-actor (remote-http-register-handler server-id path handler (host #f))
  (with-actor-server
   (check-handler path handler
     (->> (make-handle (current-actor-server) (reference server-id 'httpd))
          (!register-handler host path handler))))
  error: "error registering remote handler" server-id path)

(defrule (with-actor-server do-it)
  (if (current-actor-server)
    do-it
    (error "no actor server")))

(defrule (check-handler path handler do-it)
  (cond
   ((not (string? path))
    (error "Bad path; expected string" path))
   ((not (procedure? handler))
    (error "Bad handler; expected procedure" handler))
   (else
    do-it)))
