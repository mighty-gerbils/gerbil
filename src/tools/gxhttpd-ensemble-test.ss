(import :std/test
        :std/sugar
        :std/source
        :std/misc/process
        :std/misc/ports
        :std/os/signal
        :std/net/request
        :gerbil/gambit)
(export gxhttpd-ensemble-test test-setup! test-cleanup!)

(def httpd-process #f)
(def registry-process #f)
(def current-gerbil-path #f)

(def test-directory
  (let (this-directory (this-source-directory))
    (path-expand "gxhttpd-test" this-directory)))

(def (test-setup!)
  (delete-file-or-directory "/tmp/ensemble" #t)
  (set! current-gerbil-path (getenv "GERBIL_PATH"))
  (setenv "GERBIL_PATH")
  (invoke "gerbil" ["build"] directory: test-directory)
  (ignore-errors
   (invoke "gerbil" ["ensemble" "admin" "cookie"] directory: test-directory))
  (set! registry-process
    (open-process [path: "gerbil" arguments: ["ensemble" "registry"] directory: test-directory]))
  (thread-sleep! 1)
  (set! httpd-process
    (open-process [path: "gerbil" arguments: ["httpd" "-e" "-c" "ensemble.config"] directory: test-directory]))
  (thread-sleep! 2))

(def (test-cleanup!)
  (when httpd-process
    (ignore-errors
     (invoke "gerbil" ["ensemble" "shutdown" "httpd-ensemble" "ensemble-supervisor"] directory: test-directory))
    (ignore-errors
     (invoke "gerbil" ["ensemble" "shutdown" "-f"] directory: test-directory))
    (thread-sleep! 1)
    (ignore-errors (kill (process-pid httpd-process) SIGTERM))
    (process-status httpd-process)
    (ignore-errors (kill (process-pid registry-process) SIGTERM))
    (process-status registry-process)
    (thread-sleep! 1))
  (let (test-directory-dot-gerbil (path-expand ".gerbil" test-directory))
    (delete-file-or-directory test-directory-dot-gerbil #t))
  (setenv "GERBIL_PATH" current-gerbil-path))

(def gxhttpd-ensemble-test
  (test-suite "httpd ensemble"
    (test-case "/"
      (let (req (http-get "http://127.0.0.1:8080/"))
        (check (request-status req) => 200)
        (check (request-text req) => (read-file-string (path-expand "content/index.html" test-directory)))))
    (test-case "/index.html"
      (let (req (http-get "http://127.0.0.1:8080/index.html"))
        (check (request-status req) => 200)
        (check (request-text req) => (read-file-string (path-expand "content/index.html" test-directory)))))
    (test-case "/handler"
      (let (req (http-get "http://127.0.0.1:8080/handler"))
        (check (request-status req) => 200)
        (check (request-text req) => "hello! I am a dynamic handler and my state is initialized\n")))
    (test-case "/servlets/hello.ss"
      (let (req (http-get "http://127.0.0.1:8080/servlets/hello.ss"))
        (check (request-status req) => 200)
        (check (request-text req) => "hello! I am a servlet and my state is initialized\n")))
    (test-case "/does-not-exist"
      (let (req (http-get "http://127.0.0.1:8080/does-not-exist"))
        (check (request-status req) => 404)
        (request-close req)))))
