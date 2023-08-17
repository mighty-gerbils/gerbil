#!/usr/bin/env gxi
;; -*- Gerbil -*-
(import :std/build-script)

(defbuild-script
  '("proto"
    "server"
    "kvstore-svc"
    (exe: "kvstorec")))
