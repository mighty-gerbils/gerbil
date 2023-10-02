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
        :gerbil/gambit
        ./interface
        ./socket)
(export websocket-request-handler)

(def +websocket-version+ "13")
(def +websocket-magic+ "258EAFA5-E914-47DA-95CA-C5AB0DC85B11")

;; creates an httpd handler that handles ws/wss requests
;; - continue is a procedure that receives a newly accepted websocket to handle
;;   the request. When this process returns the handler closes the request.
;; - protocol is a procedure to select a protocol, if the client has specified
;;   a protocol list. It should accept a string, which can be either a protocol
;;   or a comman separated list of protocols.
;;  It should return either the selected protocol or #f if it cannot select a protocol,
;;  indicating that the connection should be closed.
(def (websocket-request-handler continue select-protocol
                                max-frame-size: (max-frame-size default-max-frame-size))
  (using ((continue :~ procedure?)
          (select-protocol :~ procedure?))
    (lambda (req res)
      (websocket-handle-request req res continue select-protocol max-frame-size))))

(def (websocket-handle-request req res continue select-protocol max-frame-size)
  (let/cc exit
    (def (bad-request! message)
      (http-response-write res 400 [] message)
      (exit 'bad-request))

    (let* ((request-headers (http-request-headers req))
           (_ (alet (version (assget "Sec-Websocket-Version" request-headers))
                (unless (equal? version +websocket-version+)
                  (bad-request! "unusupported websocket protocol version"))))
           (proto
            (alet (request-proto (assget "Sec-Websocket-Protocol" request-headers))
              (cond
               ((select-protocol (string-split request-proto #\,)))
               (else
                (bad-request! "unsupported websocket protocol")))))
           (auth
            (alet (nonce64 (assget "Sec-Websocket-Key" request-headers))
              (let* ((digest (make-digest digest::sha1))
                     (_ (digest-update! digest (string->utf8 nonce64)))
                     (_ (digest-update! digest (string->utf8 +websocket-magic+)))
                     (auth (digest-final! digest)))
                (base64-encode auth))))
           ;; TODO do we need any more headers?
           (upgrade-headers
            [["Upgrade" . "websocket"]
             ["Sec-Websocket-Version" . +websocket-version+]
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
       (WebSocket (make-websocket sock reader writer
                                  #t    ; server socket
                                  proto
                                  max-frame-size))))))
