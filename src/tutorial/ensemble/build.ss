#!/usr/bin/env gxi
;; -*- Gerbil -*-
(import :std/build-script)

(defbuild-script
  '("server"
    "handler"
    "httpd-svc"
    (static-exe: "httpd-exe"
                 "-prelude" "(declare (not optimize-dead-definitions))"
                 "-cc-options" "-Wno-deprecated-declarations -Wno-implicit-function-declaration"
                 "-ld-options" "-lpthread -lssl -ldl -lcrypto -lz")))
