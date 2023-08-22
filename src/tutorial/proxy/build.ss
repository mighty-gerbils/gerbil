#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :std/build-script)

(defbuild-script
  '((exe: "tcp-proxy")
    (exe: "tcp-proxy2")
    (exe: "socks-proxy")))
