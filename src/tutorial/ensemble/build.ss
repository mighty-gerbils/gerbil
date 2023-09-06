#!/usr/bin/env gxi
;; -*- Gerbil -*-
(import :std/build-script)

(defbuild-script
  '("server"
    "handler"
    "httpd-svc"
    (exe: "httpd-exe")))
