(load "build/build0-lib.scm")

(parallel-build
 (call-with-input-file ".build.stage0" read-all-as-lines)
 (let ((options
        (if (getenv "GERBIL_DEBUG" #f)
          '("-debug-source" "-track-scheme" "-cc-options" "-g" "-e" "(include \"~~lib/_gambit#.scm\")")
          '("-e" "(include \"~~lib/_gambit#.scm\")"))))
   (compiler options))
 false)
