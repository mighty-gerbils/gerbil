#!/usr/bin/env gxi
(import :std/build-script)
(defbuild-script
  '("test-lib"
    (optimized-static-exe: "test-program")))
