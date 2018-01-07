;; -*- Gerbil -*-
package: misc/http-perf

(import :std/net/httpd
        :std/getopt
        :std/sugar
        :gerbil/gambit/threads
        :std/misc/threads)
(export main)

(def (run-server address count)
  (let (httpd (start-http-server! address))
    (http-register-handler httpd "/" (if count (profile-handler httpd count) hello-handler))
    (thread-join! httpd)))

(def (hello-handler req res)
  (http-response-write res 200 '(("Content-Type" . "text/plain")) "hello!\n"))

(def (profile-handler httpd count)
  (let (n 0)
    (def (handler req res)
      (hello-handler req res)
      (set! n (fx1+ n))
      (unless (fx< n count)
        (spawn-thread (cut stop-http-server! httpd) (void) (primordial-thread-group))))
    handler))

(def (main . args)
  (def gopt
    (getopt (option 'address "-a" "--address"
                    help: "server address"
                    default: "127.0.0.1:8080")
            (optional-argument 'count help: "number of requests to serve"
                               default: #f
                               value: string->number)))

  (try
   (let (opt (getopt-parse gopt args))
     (run-server (hash-get opt 'address) (hash-get opt 'count)))
   (catch (getopt-error? exn)
     (getopt-display-help exn "hellod" (current-error-port))
     (exit 1))))