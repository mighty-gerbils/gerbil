;;; -*- Gerbil -*-
;;; © vyzo
;;; websocket client interface
(import :std/error
        :std/io
        :std/net/ssl
        :std/net/request
        :std/crypto/etc
        :std/crypto/digest
        :std/text/base64
        :std/text/utf8
        :std/sugar
        ./interface
        ./socket)
(export websocket-connect)

(def +websocket-version+ "13")
(def +websocket-magic+ "258EAFA5-E914-47DA-95CA-C5AB0DC85B11")

(def (websocket-connect url
                        redirect:     (redirect #f)
                        headers:      (headers #f)
                        cookies:      (cookies #f)
                        params:       (params #f)
                        auth:         (auth #f)
                        ssl-context:  (ssl-context (default-client-ssl-context))
                        timeout:      (timeo #f)
                        protocol:     (proto #f)
                        max-frame-size: (max-frame-size default-max-frame-size))
  (let* ((url (url->request-url url))
         (nonce (random-bytes 16))
         (nonce64 (base64-encode nonce))
         (headers [["Upgrade" . "websocket"]
                   ["Connection" . "Upgrade"]
                   ["Sec-Websocket-Key" . nonce64]
                   ["Sec-Websocket-Version" . +websocket-version+]
                   (if proto [["Sec-Websocket-Protocol" . proto]] []) ...
                   (or headers []) ...])
         (req (http-get url
                        redirect: redirect
                        headers: headers
                        cookies: cookies
                        params: params
                        auth: auth
                        ssl-context: ssl-context
                        timeout: timeo)))
    (try
     (let (status (request-status req))
       (unless (fx= status 101)
         (raise-io-error websocket-connect
                         "Unexpected server response"
                         url status (request-text req))))

     (let* ((rheaders (request-headers req))
            (Connection (assoc "Connection" rheaders))
            (Upgrade (assoc "Upgrade" rheaders))
            (Sec-Websocket-Accept (assoc "Sec-Websocket-Accept" rheaders))
            (Sec-Websocket-Version (assoc "Sec-Websocket-Version" rheaders))
            (Sec-Websocket-Extensions (assoc "Sec-Websocket-Extensions" rheaders))
            (Sec-Websocket-Protocol (assoc "Sec-Websocket-Protocol" rheaders)))

       (unless (and Connection (equal? (string-downcase (cdr Connection)) "upgrade"))
         (raise-io-error websocket-connect
                         "bad server response; no connection upgrade"
                         url Connection))

       (unless (and Upgrade (equal? (string-downcase (cdr Upgrade)) "websocket"))
         (raise-io-error websocket-connect
                         "bad server response; no websocket upgrade"
                         url Upgrade))

       (unless (and Sec-Websocket-Version (equal? (cdr Sec-Websocket-Version) +websocket-version+))
         (raise-io-error websocket-connect
                         "bad server response; unsupported websocket version"
                         Sec-Websocket-Version))

       (let* ((accept64 (and Sec-Websocket-Accept (cdr Sec-Websocket-Accept)))
              (digest (make-digest digest::sha1))
              (_ (digest-update! digest (string->utf8 nonce64)))
              (_ (digest-update! digest (string->utf8 +websocket-magic+)))
              (verify (digest-final! digest))
              (verify64 (base64-encode verify)))
         (unless (equal? accept64 verify64)
           (raise-io-error websocket-connect
                           "bad server response; nonce verification failure"
                           url nonce64 accept64 verify64)))

       (when (and proto Sec-Websocket-Protocol)
         (let ((rproto (cdr Sec-Websocket-Protocol))
               (uprotos (string-split proto #\,)))
           (unless (member rproto uprotos)
             (raise-io-error websocket-connect
                             "bad server response; unexpected protocol"
                             url Sec-Websocket-Protocol))))

       (WebSocket (make-websocket (request-socket req)
                                  (request-socket-reader req)
                                  (request-socket-writer req)
                                  #f    ; client socket
                                  (and Sec-Websocket-Protocol (cdr Sec-Websocket-Protocol))
                                  max-frame-size)))

     (catch (e)
       (request-close req)
       (raise e)))))

(def (url->request-url url)
  (let (colon (string-index url #\:))
    (if colon
      (let (scheme (substring url 0 colon))
        (case scheme
          (("ws")
           (string-append "http" (substring url colon (string-length url))))
          (("wss")
           (string-append "https" (substring url colon (string-length url))))
          (else url)))
      url)))
