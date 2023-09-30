;;; -*- Gerbil -*-
;;; © vyzo
;;; websocket client interface
(import :std/interface
        :std/contract
        :std/io
        :std/net/ssl
        :std/net/request
        ./interface
        ./socket)
(export #t)

(def (websocket-connect url
                        protocol:     (proto #f)
                        redirect:     (redirect #f)
                        headers:      (headers #f)
                        cookies:      (cookies #f)
                        params:       (params #f)
                        data:         (data #f)
                        auth:         (auth #f)
                        ssl-context:  (ssl-context (default-client-ssl-context))
                        timeout:      (timeo #f))
  (error "IMPLEMENTME"))
