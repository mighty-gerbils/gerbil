(##namespace (""))

(load "gerbil/runtime/build-lib.scm")

(parallel-build
 (call-with-input-file ".build.stage0" read-all-as-lines)
 (compiler '("-cc-options" "--param max-gcse-memory=300000000"))
 false)
