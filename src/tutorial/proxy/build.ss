#!/usr/bin/env gxi
;; -*- Gerbil -*-

(import :std/build-script)

(defbuild-script
  '((exe: "tcp-proxy1")
    (exe: "tcp-proxy2")
    (exe: "tcp-proxy3")))
