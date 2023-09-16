;;; -*- Gerbil -*-
;;; std/net/json-rpc unit-test

(import :std/iter
        :std/net/httpd
        :std/net/request
        :std/net/json-rpc
        :std/sugar
        :std/test)
(export json-rpc-test)

(def server-address
  "127.0.0.1:19998")

(def server-url
  (string-append "http://" server-address))

(def (json-rpc-test-processor method params)
  (case method
    (("ping") ["pong" params])
    (("add") (apply + params))
    (else (raise (method-not-found method)))))

(def json-rpc-test
  (test-suite "json-rpc test"
    (def httpd
      (start-http-server! server-address mux: (make-recursive-http-mux)))
    (http-register-handler httpd "/json-rpc-test" (json-rpc-handler json-rpc-test-processor))
    (def url (string-append server-url "/json-rpc-test"))
    (def (query . args)
      (apply json-rpc url args))
    (def (this-json-rpc-error? number)
      (lambda (e) (and (json-rpc-error? e) (equal? (json-rpc-error-code e) number))))
    (defrule (check-e expr code) (check-exception expr (this-json-rpc-error? code)))
    (def (test-basic-handlers http-method)
      (def (q . a) (apply query http-method: http-method a))
      (check (q "ping" '(42)) => '("pong" (42)))
      (check (q "add" '(1 2 3 4)) => 10)
      (check-e (q "ping" 42) -32602) ;; invalid-params
      (check-e (q "meaning-of-life") -32601)) ;; method-not-found
    (test-case "basic handlers with POST"
      (test-basic-handlers 'POST)
      (check-exception (query 42 http-method: 'POST) (this-json-rpc-error? -32600))) ;; invalid-request
    (test-case "basic handlers with GET"
      (test-basic-handlers 'GET)
      (check-exception (query 42 http-method: 'GET) true)) ;; can't uri-encode number 42
    (stop-http-server! httpd)))
