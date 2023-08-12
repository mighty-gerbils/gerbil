;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; std/net/httpd unit-test

(import :gerbil/gambit/threads
        :gerbil/gambit/random
        :std/test
        :std/sugar
        :std/logger
        :std/net/httpd
        :std/net/request
        :std/actor
        (only-in :std/actor-v18/cookie make-random-cookie)
        :std/os/hostname
        :std/os/temporaries)
(export httpd-test remote-httpd-test test-setup! test-cleanup!)

(def (test-setup!)
  ;; clear leftover parameterization from other tests
  (current-actor-server #f)
  ;; clear leftover messages from other tests
  (while (thread-receive 0 #f))
  ;; uncomment this if you are debugging test failures
  ;;(current-logger-options 'VERBOSE)
  )

(def (test-cleanup!)
  (current-actor-server #f)
  ;; uncomment this if you uncommented above
  ;; (current-logger-options 'WARN)
  )

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

(def remote-httpd-test
  (test-suite "httpd remote control"
    (test-case "remote handler registration and shutdown"
      (def cookie (make-random-cookie))
      (def httpd-actor-server-sock
        (make-temporary-file-name "httpd"))
      (def httpd-actor-server-addr
        [unix: (hostname) httpd-actor-server-sock])
      (def httpd-actor-server
        (start-actor-server! cookie: cookie
                             addresses: [httpd-actor-server-addr]))
      (def httpd-actor-server-id
        (actor-server-identifier httpd-actor-server))
      (def httpd
        (start-http-server! server-address mux: (make-recursive-http-mux)))

      ;; initially, there should be no handlers
      (let (req (http-get (string-append server-url "/simple")))
        (check (request-status req) => 404)
        (request-close req))

      (let (req (http-get (string-append server-url "/chunked")))
        (check (request-status req) => 404)
        (request-close req))

      ;; now we make a new server and send over the handlers
      (def tmp-actor-server
        (start-actor-server! cookie: cookie))

      (check (connect-to-server! httpd-actor-server-id [httpd-actor-server-addr])
             => [httpd-actor-server-addr])

      ;; send it the handlers
      (remote-http-register-handler httpd-actor-server-id "/simple" write-simple-handler)
      (remote-http-register-handler httpd-actor-server-id "/chunked" write-chunked-handler)

      ;; they should be there now
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

      ;; now shut it down
      (remote-stop-http-server! httpd-actor-server-id)
      (check (thread-join! httpd) => 'shutdown)

      ;; clean up
      (check (stop-actor-server! tmp-actor-server) => 'shutdown)
      (check (stop-actor-server! httpd-actor-server) => 'shutdown)
      (delete-file httpd-actor-server-sock))))
