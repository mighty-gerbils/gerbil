;; -*- Gerbil -*-
(import :std/cli/getopt
        :std/io
        :std/sugar
        :std/text/utf8)
(export main)

(def content
  "Hello!")

(def response
  (string->utf8
   (string-append
    "HTTP/1.1 200 OK\r\n"
    "Connection: close\r\n"
    "Content-Length: " (number->string (string-length content)) "\r\n"
    "Content: text/plain\r\n"
    "\r\n")))

(def (run-server address)
  (let ((sock (tcp-listen address)))
    (let lp ()
      (let (cli (ServerSocket-accept sock))
        (spawn
         (lambda ()
           (let (buf (make-u8vector 65536))
             (StreamSocket-recv cli buf)
             (StreamSocket-send cli response)
             (StreamSocket-shutdown cli 'out)
             (StreamSocket-close cli))))
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
