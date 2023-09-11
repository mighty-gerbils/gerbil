;;; -*- Gerbil -*-
;;; std/net/json-rpc unit-test

(import :gerbil/gambit/threads
        :gerbil/gambit/random
        :std/test
        :std/net/httpd
        :std/net/request
        :std/net/json-rpc)
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
    (test-case "basic handlers"
      (http-register-handler httpd "/json-rpc-test" (json-rpc-handler json-rpc-test-processor))
      (def url (string-append server-url "/json-rpc-test"))
      (def (this-json-rpc-error? number)
        (lambda (e) (and (json-rpc-error? e) (equal? (json-rpc-error-code e) number))))
      (check (json-rpc url "ping" '(42)) => '("pong" (42)))
      (check (json-rpc url "add" '(1 2 3 4)) => 10)
      (check-exception (json-rpc url 42)
                       (this-json-rpc-error? -32600)) ;; invalid-request
      (check-exception (json-rpc url "meaning-of-life")
                       (this-json-rpc-error? -32601)) ;; method-not-found
      (check-exception (json-rpc url "ping" 42)
                       (this-json-rpc-error? -32602)) ;; invalid-params
      (void))
    (stop-http-server! httpd)))
