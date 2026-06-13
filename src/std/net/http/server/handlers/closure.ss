;;; -*- Gerbil -*-
;;; © vyzo
;;; closure handlers
(import :std/interface
        ../interface)
(export new-closure-handler)

(defstruct closure-handler
  ((proc :- :procedure)))

(def (new-closure-handler (proc : :procedure))
  => RequestHandler
  (RequestHandler
   (make-closure-handler proc)))

(implement RequestHandler closure-handler
  (handle-request!
   (lambda (self req res)
     (self.proc req res))))
