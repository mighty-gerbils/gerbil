;; -*- Gerbil -*-
package: misc/http-perf

(import :std/net/httpd
        :std/getopt
        :std/sugar
        :gerbil/gambit/threads)
(export main)

(def (run-server address)
  (let (httpd (start-http-server! address))
    (http-register-handler httpd "/" hello-handler)
    (thread-join! httpd)))

(def (hello-handler req res)
  (http-response-write res 200 '(("Content-Type" . "text/plain")) "hello!\n"))

(def (main . args)
  (def gopt
    (getopt (option 'address "-a" "--address"
                    help: "server address"
                    default: "127.0.0.1:8080")))

  (try
   (let (opt (getopt-parse gopt args))
     (run-server (hash-get opt 'address)))
   (catch (getopt-error? exn)
     (getopt-display-help exn "hellod" (current-error-port))
     (exit 1))))