#!/usr/bin/env gxi
(import :std/build-script)
(defbuild-script
  '("test-lib"
    (static-exe: "test-program")))
