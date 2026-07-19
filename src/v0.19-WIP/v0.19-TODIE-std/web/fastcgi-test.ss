#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :gerbil/gambit
        :std/web/fastcgi
        :std/format
        :std/event
        :std/iter)

(def default-address "127.0.0.1:9000")

(def (run! address)
  (let (server (start-fastcgi-server! address respond))
    (! server
       (let (value (with-catch values (cut thread-join! server)))
         (eprintf "fastcgi-server exited: ~a~n" value)
         (when (exception? value)
           (display-exception value (current-error-port)))))))

(def (respond req)
  (let (output (open-output-u8vector))
    (fprintf output "<pre>~nHeaders:~n")
    (for ((values key value) (fastcgi-request-params req))
      (fprintf output "~a: ~a~n" key value))
    (fprintf output "</pre>~n")
    (let* ((content (get-output-u8vector output))
           (clen    (u8vector-length content))
           (headers
            (format "Content: text/html\r\nContent-Length:~a\r\nCache-Control: no-cache\r\n\r\n"
              clen)))
      (fastcgi-write-stdout req headers)
      (fastcgi-write-stdout req content))))

(def (main . args)
  (match args
    ([address] (run! address))
    (else (run! default-address))))
