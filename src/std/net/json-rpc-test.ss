;;; -*- Gerbil -*-
;;; std/net/json-rpc unit-test

(import :std/iter
        :std/net/httpd
        :std/net/request
        :std/net/json-rpc
        :std/sugar
        :std/test
        :std/text/json)
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
      (check (q "add" '("23" "19")
                param-encoder: (cut map string->number <>)
                result-decoder: number->string) => "42")
      (check-e (q "ping" 42) -32602) ;; invalid-params
      (check-e (q "meaning-of-life") -32601)) ;; method-not-found
    (test-case "basic handlers with POST"
      (test-basic-handlers 'POST)
      (check-exception (query 42 http-method: 'POST) (this-json-rpc-error? -32600))) ;; invalid-request
    (test-case "basic handlers with GET"
      (test-basic-handlers 'GET)
      (check-exception (query 42 http-method: 'GET) true)) ;; can't uri-encode number 42
    (test-case "encode params"
      (check-equal? (json-object->string
                     (json-rpc-request jsonrpc: json-rpc-version
                                       method: "foo" params: [42 "hello"] id: 13))
                    "{\"id\":13,\"jsonrpc\":\"2.0\",\"method\":\"foo\",\"params\":[42,\"hello\"]}"))
    (test-case "decode result"
      (parameterize ((json-symbolic-keys #f))
        (check-equal? (decode-json-rpc-response
                       1+ 69 (string->json-object "{\"jsonrpc\": \"2.0\", \"result\": 1776, \"id\": 69}"))
                      1777)))
    (test-case "error matching"
      (check (match (JSON-RPCError code: -151 message: "foo" data: [1])
               ((JSON-RPCError code: -151 message: "foo" data: [1]) #t)
               (else #f)) => #t)
      (check (match (JSON-RPCError code: -151 message: "foo")
               ((JSON-RPCError code: -151 message: "foo" data: #!void) #t)
               (else #f)) => #t))
    (test-case "decode errors"
      (parameterize ((json-symbolic-keys #f))
        (def response-json-1
          (string->json-object "{\"jsonrpc\": \"2.0\", \"error\": { \"code\": -151, \"message\": \"foo\", \"data\": [1] }, \"id\": 42 }"))
        (check-exception (decode-json-rpc-response 1+ 42 response-json-1)
                         (match <> ((JSON-RPCError code: -151 message: "foo" data: [1]) #t) (else #f)))
        (def response-json-2
          (string->json-object "{\"jsonrpc\": \"2.0\", \"id\": 15 , \"error\": { \"code\": -32602, \"message\": \"non-array args\"}}\n"))
        (check-exception (decode-json-rpc-response 1+ 15 response-json-2)
                         (match <> ((JSON-RPCError code: -32602 message: "non-array args") #t) (else #f)))
        (def response-json-3
          (string->json-object "{\"jsonrpc\": \"2.0\", \"error\": 1776, \"id\": 42 }"))
        (check-exception (decode-json-rpc-response 1+ 42 response-json-3) MalformedResponse?)
        (def response-json-4
          (string->json-object "{\"jsonrpc\": \"2.0\", \"error\":  { \"code\": -1, \"message\": \"foo\" }, \"id\": 41 }"))
        (check-exception (decode-json-rpc-response 1+ 42 response-json-4) MalformedResponse?)))
    (stop-http-server! httpd)))
