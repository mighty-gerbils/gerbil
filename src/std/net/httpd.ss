;;; -*- Gerbil -*-
;;; (C) vyzo
;;; embedded HTTP/1.1 server
package: std/net

(import :std/net/httpd/mux
        :std/net/httpd/handler
        :std/net/httpd/server)
(export start-http-server!
        stop-http-server!
        current-http-server
        make-default-http-mux
        make-recursive-http-mux
        http-register-handler
        http-request?
        http-request-method http-request-url http-request-path http-request-params
        http-request-proto http-request-client http-request-headers
        http-request-body
        http-request-timeout-set!
        http-response?
        http-response-write
        http-response-begin http-response-chunk http-response-end
        http-response-force-output
        http-response-timeout-set!
        set-httpd-request-timeout!
        set-httpd-response-timeout!
        set-httpd-max-request-headers!
        set-httpd-max-token-length!
        set-httpd-max-request-body-length!)
