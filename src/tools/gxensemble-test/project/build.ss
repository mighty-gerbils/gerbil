#!/usr/bin/env gxi
(import :std/build-script)

(defbuild-script
  '("echo/server"
    (exe: "echo/main" bin: "echod")))
