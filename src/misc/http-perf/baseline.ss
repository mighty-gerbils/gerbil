;; -*- Grebil -*-
package: misc/http-perf

(import :std/net/server
        :std/getopt
        :std/sugar)
(export main)

(def content
  "Hello!")

(def response
  (string->bytes
   (string-append
    "HTTP/1.1 200 OK\r\n"
    "Connection: close\r\n"
    "Content-Length: " (number->string (string-length content)) "\r\n"
    "Content: text/plain\r\n"
    "\r\n")))

(def (run-server address)
  (let* ((socksrv (start-socket-server!))
         (sock (server-listen socksrv address)))
    (let lp ()
      (let (cli (server-accept sock))
        (server-send-all cli response)
        (server-close cli)
        (lp)))))

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
     (run-server (hash-get opt 'address)))
   (catch (getopt-error? exn)
     (getopt-display-help exn "baseline" (current-error-port))
     (exit 1))))
