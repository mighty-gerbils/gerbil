(import :std/test
        :std/sugar
        :std/source
        :std/misc/process
        :std/misc/ports
        :std/os/signal
        :std/net/request
        :gerbil/gambit)
(export gxhttpd-server-test test-setup! test-cleanup!)

(def httpd-process #f)
(def current-gerbil-path #f)

(def test-directory
  (let (this-directory (this-source-directory))
    (path-expand "gxhttpd-test" this-directory)))

(def (test-setup!)
  (unless (equal? (getenv "GERBIL_GH_MACOS_RUNNER_FUBAR" #f) "true")
    (set! current-gerbil-path (getenv "GERBIL_PATH" #f))
    (setenv "GERBIL_PATH")
    (invoke "gerbil" ["build"] directory: test-directory)
    (invoke "gerbil" ["httpd" "config"
                      "--root" "content"
                      "--listen" (object->string '("127.0.0.1:8080"))
                      "--handlers" (object->string '(("/handler" . :test/site/handler)))
                      "--enable-servlets"]
            directory: test-directory)
    (set! httpd-process
      (open-process [path: "gerbil" arguments: ["httpd" "server"]
                           directory: test-directory]))
    (thread-sleep! 1)))

(def (test-cleanup!)
  (unless (equal? (getenv "GERBIL_GH_MACOS_RUNNER_FUBAR" #f) "true")
  (when httpd-process
    (ignore-errors (kill (process-pid httpd-process) SIGTERM))
    (process-status httpd-process)
    (thread-sleep! 1))
  (let (test-directory-dot-gerbil (path-expand ".gerbil" test-directory))
    (delete-file-or-directory test-directory-dot-gerbil #t))
  (when current-gerbil-path
    (setenv "GERBIL_PATH" current-gerbil-path))))

(def gxhttpd-server-test
  (test-suite "httpd"
  (unless (equal? (getenv "GERBIL_GH_MACOS_RUNNER_FUBAR" #f) "true")
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
        (request-close req))))))
