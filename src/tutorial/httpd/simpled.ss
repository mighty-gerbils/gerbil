;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; Simple web server
(import :std/cli/getopt
        :std/iter
        :std/net/address
        :std/net/httpd
        :std/sugar
        :std/text/json)
(export main)

(def (run address)
  (let (httpd (start-http-server! address mux: (make-default-http-mux default-handler)))
    (http-register-handler httpd "/" root-handler)
    (http-register-handler httpd "/echo" echo-handler)
    (http-register-handler httpd "/headers" headers-handler)
    (http-register-handler httpd "/self" self-handler)
    (thread-join! httpd)))

;; /
(def (root-handler req res)
  (http-response-write res 200 '(("Content-Type" . "text/plain"))
    (string-append "hello, " (inet-address->string (http-request-client req)) "\n")))

;; /echo
(def (echo-handler req res)
  (let* ((content-type
          (assget "Content-Type" (http-request-headers req)))
         (headers
          (if content-type
            [["Content-Type" . content-type]]
            [])))
    (http-response-write res 200 headers
      (http-request-body req))))

;; /headers[?json]
(def (headers-handler req res)
  (let (headers (http-request-headers req))
    (if (equal? (http-request-params req) "json")
      (write-json-headers res headers)
      (write-text-headers res headers))))

(def (write-json-headers res headers)
  (let (content
        (json-object->string
         (list->hash-table headers)))
    (http-response-write res 200 '(("Content-Type" . "application/json"))
      content)))

(def (write-text-headers res headers)
  (http-response-begin res 200 '(("Content-Type" . "text/plain")))
  (for ([key . val] headers)
    (http-response-chunk res (string-append key ": " val "\n")))
  (http-response-end res))

;; /self
;; own program representation
(def (self-handler req res)
  (http-response-file res '(("Content-Type" . "text/plain")) "simpled.ss"))

;; default
(def (default-handler req res)
  (http-response-write res 404 '(("Content-Type" . "text/plain"))
    "these aren't the droids you are looking for.\n"))

(def (main . args)
  (call-with-getopt simpled-main args
    program: "simpled"
    help: "A simple httpd server"
    (option 'address "-a" "--address"
      help: "server address"
      default: "127.0.0.1:8080")))

(def (simpled-main opt)
  (run (hash-ref opt 'address)))
