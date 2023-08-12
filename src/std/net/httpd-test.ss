;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; std/net/httpd unit-test

(import :gerbil/gambit/threads
        :gerbil/gambit/random
        :std/test
        :std/sugar
        :std/net/httpd
        :std/net/request
        :std/actor)
(export httpd-test test-setup! test-cleanup!)

(def (test-setup!)
  ;; clear leftover parameterization from other tests
  (current-actor-server #f)
  ;; clear leftover messages from other tests
  (while (thread-receive 0 #f)))

(def (test-cleanup!)
  (current-actor-server #f))

(def server-address
  "127.0.0.1:19999")

(def server-url
  (string-append "http://" server-address))

(def greeting
  "hello there!")

(def greeting-not-found
  "these aren't the droids you are looking for")

(def (write-simple-handler req res)
  (http-response-write res 200 '(("Content-Type" . "text/plain"))
                       greeting))

(def (write-chunked-handler req res)
  (http-response-begin res 200 '(("Content-Type" . "text/plain")))
  (http-response-chunk res "hello ")
  (http-response-chunk res "there!")
  (http-response-end res))

(def (root-handler req res)
  (http-response-write res 200 [] "nil"))

(def (default-handler req res)
  (http-response-write res 404 '(("Content-Type" . "text/plain"))
                       greeting-not-found))

(def (echo-handler req res)
  (http-response-write res 200 [] (http-request-body req)))

(def httpd-test
  (test-suite "httpd"

    (def httpd
      (start-http-server! server-address mux: (make-recursive-http-mux)))

    (test-case "basic handlers"
      (http-register-handler httpd "/simple" write-simple-handler)
      (http-register-handler httpd "/chunked" write-chunked-handler)
      (http-register-handler httpd "/" root-handler)

      (let (req (http-get (string-append server-url "/")))
        (check (request-status req) => 200)
        (check (request-text req) => "nil")
        (request-close req))

      (let (req (http-get (string-append server-url "/simple")))
        (check (request-status req) => 200)
        (check (request-text req) => greeting)
        (request-close req))

      (let (req (http-get (string-append server-url "/simple/nested")))
        (check (request-status req) => 200)
        (check (request-text req) => greeting)
        (request-close req))

      (let (req (http-get (string-append server-url "/chunked")))
        (check (request-status req) => 200)
        (check (request-text req) => greeting)
        (request-close req))

      (let (req (http-get (string-append server-url "/bogus")))
        (check (request-status req) => 404)
        (check (request-text req) => "")
        (request-close req))

      (http-register-handler httpd "" default-handler)
      (let (req (http-get (string-append server-url "/bogus")))
        (check (request-status req) => 404)
        (check (request-text req) => greeting-not-found)
        (request-close req))
      )

    (test-case "POST handler"
      (http-register-handler httpd "/echo" echo-handler)

      ;; small text body
      (let (req (http-post (string-append server-url "/echo")
                           data: greeting))
        (check (request-status req) => 200)
        (check (request-text req) => greeting))

      ;; large data blob (bigger than server buffer)
      (let* ((data (random-u8vector 16384))
             (req (http-post (string-append server-url "/echo")
                             data: data)))
        (check (request-status req) => 200)
        (check (request-content req) => data)))

    (stop-http-server! httpd)))
