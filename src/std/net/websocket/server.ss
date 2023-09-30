;;; -*- Gerbil -*-
;;; © vyzo
;;; websocket server interface
(import :std/interface
        :std/contract
        :std/io
        :std/net/httpd
        ./interface
        ./socket)
(export #t)

;; creates an httpd handler that handles ws/wss requests
;; - continue is a procedure that receives a newly accepted websocket to handle
;;   the request. When this process returns the handler closes the request.
(def (websocket-request-handler continue)
  (using (continue :~ procedure?)
    (lambda (req res)
      (websocket-handle-request req res continue))))

(def (websocket-handle-request req res continue)
  (error "IMPLEMENTME"))
