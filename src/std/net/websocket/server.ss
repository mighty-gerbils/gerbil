;;; -*- Gerbil -*-
;;; © vyzo
;;; websocket server interface
(import :std/interface
        :std/contract
        :std/io
        :std/net/httpd
        :std/crypto/digest
        :std/text/base64
        :std/text/utf8
        ./interface
        ./socket)
(export #t)

(def +websocket-version+ 13)
(def +websocket-magic+ "258EAFA5-E914-47DA-95CA-C5AB0DC85B11")

;; creates an httpd handler that handles ws/wss requests
;; - continue is a procedure that receives a newly accepted websocket to handle
;;   the request. When this process returns the handler closes the request.
(def (websocket-request-handler continue)
  (using (continue :~ procedure?)
    (lambda (req res)
      (websocket-handle-request req res continue))))

(def (websocket-handle-request req res continue)
  (let* ((request-headers (http-request-headers req))
         (auth
          (alet (nonce64 (assget "Sec-WebSocket-Key" request-headers))
            (let* ((digest (make-digest digest::sha1))
                   (_ (digest-update! digest (string->utf8 nonce64)))
                   (_ (digest-update! digest (string->utf8 +websocket-magic+)))
                   (auth (digest-final! digest)))
              (base64-encode auth))))
         (proto (assget "Sec-WebSocket-Protocol" request-headers))
         ;; TODO do we need any more headers?
         (upgrade-headers
          [["Upgrade" . "websocket"]
           ["Sec-WebSocket-Version" . +websocket-version+]
           (if auth
             [["Sec-Websocket-Accept" . auth]]
             [])
           ...
           (if proto
             [["Sec-Websocket-Protocol" . proto]]
             [])
           ...])
         ((values sock reader writer)
          (http-response-upgrade! res upgrade-headers)))
    (continue
     (WebSocket (make-websocket sock reader writer #t proto)))))
