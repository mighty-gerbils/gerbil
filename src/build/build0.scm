(load "build/build0-lib.scm")

(define TARGET (getenv "GERBIL_TARGET" "C"))

(display "TARGET:") (display TARGET) (display "\n")

(parallel-build
 (call-with-input-file ".build.stage0" read-all-as-lines)
 (compiler `("-target" ,TARGET
	     "-debug-location" "-track-scheme"
	     "-e" "(include \"~~lib/_gambit#.scm\")"))
 false)
