;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; http unit test
(import :std/test
        :std/io
        :std/log
        ./server
        (prefix-in ./client client.))
(export http-test test-setup! test-cleanup!)

(def log-dir
  (make-temporary-file-name "log."))

(def server
  (delay
    (new-http-server
     (ServerConfig
      mux: (new-static-mux
            path: "/simple" (new-closure-handler simple-handler)
            path: "/chunked" (new-closure-handler chunked-handler)
            path: "/echo" (new-closure-handler echo-handler))
      log: (new-log-rotate-sink
            (LogRotateOpt
             name: "/net/httpd"
             level: INFO
             file: "request.log"
             dir: log-dir))
      listen: [server-listen-address]))))

(def (test-setup!)
  (set-default-log-levels! "info")
  (create-directory log-dir)
  (using (server (force server) : Server)
    (server.start!)))

(def (test-cleanup!)
  (set-default-log-levels! "error")
  (using (server (force server) : Server)
    (server.stop!))
  (delete-file-or-directory log-dir #t))

(def server-address
  "127.0.0.1:20001")
(def server-listen-address
  (string-append "inet4:" server-address))
(def server-url
  (string-append "http://" server-address))

(def greeting
  "hello there!")

(def (simple-handler (req :- Request) (res :- ResponseHandler))
  (res.write! OK '(("Content-Type" . "text/plain"))
              (string->utf8 greeting)))

(def (chunked-handler (req :- Request) (res :- ResponseHandler))
  (using (writer (res.begin! OK'(("Content-Type" . "text/plain")))
                 : BufferedWriter)
    (writer.write-string-utf8 "hello ")
    (writer.write-string-utf8 "there!")
    (writer.close)))

(def (echo-handler (req :- Request) (res :- ResponseHandler))
  (using (writer (res.begin! OK '(("Content-Type" . "application/octet-stream")))
                 : Writer)
    (io-copy! req.body writer)
    (writer.close)))

(def http-test
  (test-suite "http server and client"
    (test-case "basic handlers"
      (let (req (client.http-get (string-append server-url "/")))
        (check (client.Request-status req) => 404)
        (client.Request-close req))

      (let (req (client.http-get (string-append server-url "/simple")))
        (check (client.Request-status req) => 200)
        (check (client.Request-content req) => (string->utf8 greeting))
        (client.Request-close req))

      (let (req (client.http-get (string-append server-url "/chunked")))
        (check (client.Request-status req) => 200)
        (check (client.Request-content req) => (string->utf8 greeting))
        (client.Request-close req)))

    (test-case "echo handler"
      ;; small text body
      (let (req (client.http-post (string-append server-url "/echo")
                                  body: (string->utf8 greeting)))
        (check (client.Request-status req) => 200)
        (check (client.Request-content req) => (string->utf8 greeting))
        (client.Request-close req))

      ;; large data blob (bigger than server buffer)
      (let* ((data (random-u8vector (expt 2 20)))
             (req (client.http-post (string-append server-url "/echo")
                                    body: data)))
        (check (client.Request-status req) => 200)
        (check (client.Request-content req) => data)
        (client.Request-close req)))))
