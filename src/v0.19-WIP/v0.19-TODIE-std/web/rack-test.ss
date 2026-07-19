#!/usr/bin/env gxi
;; -*- Gerbil -*-
(import :gerbil/gambit
        :std/web/rack
        :std/format
        :std/event
        :std/iter)

(def default-address "127.0.0.1:9000")

(def (run! address)
  (let (server (start-rack-fastcgi-server! address respond))
    (! server
       (let (value (with-catch values (cut thread-join! server)))
         (eprintf "fastcgi-server exited: ~a~n" value)
         (when (exception? value)
           (display-exception value (current-error-port)))))))

(def (respond env data)
  (values 200 '((Content . "text/html")) (print-headers env)))

(def (print-headers env)
  (lambda ()
    (yield "<pre>\n")
    (for ((values key val) env)
      (yield (format "~a: ~a\n" key val)))
    (yield "</pre>\n")))

(def (main . args)
  (match args
    ([address] (run! address))
    (else (run! default-address))))