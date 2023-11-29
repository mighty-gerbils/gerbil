;; -*- Gerbil -*-
(import :gerbil/gambit
        :std/cli/getopt
        :std/misc/threads
        :std/net/httpd
        :std/sugar)
(export main)

(def (run-server address count)
  (let* ((mux (make-static-http-mux
               (hash ("/" (if count (profile-handler count) hello-handler))
                     ("/self" self-handler))))
         (httpd (start-http-server! mux: mux address)))
    (thread-join! httpd)))

(def (hello-handler req res)
  (http-response-write res 200 '(("Content-Type" . "text/plain")) "hello!\n"))

(def (self-handler req res)
  (http-response-file res '(("Content-Type" . "text/plain")) "hellod.ss"))

(def (profile-handler count)
  (let (n 0)
    (def (handler req res)
      (hello-handler req res)
      (set! n (fx1+ n))
      (unless (fx< n count)
        (spawn-thread (cut stop-http-server! (current-http-server)) (void) (primordial-thread-group))))
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