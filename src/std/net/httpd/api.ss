;;; -*- Gerbil -*-
;;; ̧© vyzo
;;; httpd api
(import :std/interface
        ./base
        ./control
        ./mux
        ./handler
        ./file
        ./logger
        ./server)
(export start-http-server!
        stop-http-server!
        remote-stop-http-server!
        current-http-server
        http-register-handler

        (interface-out Mux)
        make-default-http-mux
        make-recursive-http-mux
        make-static-http-mux
        make-recursive-static-http-mux
        make-custom-http-mux

        http-request
        http-request?
        http-request-method http-request-url http-request-path http-request-params
        http-request-proto http-request-client http-request-headers
        http-request-body
        http-request-timeout-set!
        http-response?
        http-response-write
        http-response-begin http-response-chunk http-response-end
        http-response-file
        http-response-force-output
        http-response-timeout-set!
        http-response-upgrade!
        set-httpd-request-timeout!
        set-httpd-response-timeout!
        set-httpd-max-request-headers!
        set-httpd-max-token-length!
        set-httpd-max-request-body-length!
        set-httpd-input-buffer-size!
        set-httpd-output-buffer-size!
        http-response-write-condition
        condition-handler

        make-request-logger

        Continue
        Switching-Protocols
        OK
        Created
        Accepted
        Non-Authoritative-Information
        No-Content
        Reset-Content
        Partial-Content
        Multiple-Choices
        Moved-Permanently
        Found
        See-Other
        Not-Modified
        Use-Proxy
        Temporary-Redirect
        Bad-Request
        Unauthorized
        Payment-Required
        Forbidden
        Not-Found
        Method-Not-Allowed
        Not-Acceptable
        Proxy-Authentication-Required
        Request-Timeout
        Conflict
        Gone
        Length-Required
        Precondition-Failed
        Request-Entity-Too-Large
        Request-URI-Too-Long
        Unsupported-Media-Type
        Requested-Range-Not-Satisfiable
        Expectation-Failed
        Internal-Server-Error
        Not-Implemented
        Bad-Gateway
        Service-Unavailable
        Gateway-Timeout
        HTTP-Version-Not-Supported)
