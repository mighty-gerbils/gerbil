(load "build/build0-lib.scm")

(parallel-build
 (call-with-input-file ".build.stage0" read-all-as-lines)
 (compiler '("-e" "(include \"~~lib/_gambit#.scm\")"))
 false)
