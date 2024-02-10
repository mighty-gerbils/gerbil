;;; -*- Gerbil -*-
;;; © vyzo
;;; gxc main function; included by main.ss

(def (gxc-print-usage!)
  (displayln "gxc [options...] <file> ...")
  (displayln "Options: ")
  (displayln " -v,--version                display version information")
  (displayln " -h,--help                   display this help message and exit")
  (displayln " -d <dir>                    set compiler output directory; defaults to $GERBIL_PATH/lib")
  (displayln " -exe                        compile an executable")
  (displayln " -o <file>                   set executable output file")
  (displayln " -O                          optimize gerbil source")
  (displayln " -full-program-optimization  perform full program optimization")
  (displayln " -static                     link the executable's external library dependencies statically")
  (displayln " -s                          keep intermediate .scm files")
  (displayln " -S                          don't invoke gsc")
  (displayln " -V                          be verbose during compilation")
  (displayln " -g                          compile with debug symbols; c code is compiled with -g")
  (displayln " -no-ssxi                    don't generate .ssxi modules for cross-module optimization")
  (displayln " -include-gambit-sharp       include _gambit# with necessary cond expand features")
  (displayln " -prelude <sexpr>            add [-prelude <sexpr>] to gsc options")
  (displayln " -cc-options <string>        add [-cc-options <string>] to gsc options")
  (displayln " -ld-options <string>        add [-ld-options <string>] to gsc options")
  (displayln " -gsc-flag   <opt>           add [<opt>] to gsc options")
  (displayln " -gsc-option <opt> <string>  add [<opt> <string>] to gsc options")
  (force-output))

(def (gxc-parse-args args)
  (def outdir (path-expand "lib" (gerbil-path)))
  (def invoke-gsc #t)
  (def keep-scm #f)
  (def verbose #f)
  (def optimize #f)
  (def full-program-optimization #f)
  (def debug #f)
  (def generate-ssxi #t) ; enable by default (only when optimizing)
  (def gsc-options #f)
  (def compile-exe #f)
  (def outfile #f)

  (def (add-gsc-option! opt)
    (set! gsc-options
      (if gsc-options
        (append gsc-options opt)
        opt)))

  (def (make-opts)
    [invoke-gsc: invoke-gsc
     keep-scm: keep-scm
     verbose: verbose
     optimize: optimize
     full-program-optimization: full-program-optimization
     debug: debug
     static: #t
     generate-ssxi: generate-ssxi
     gsc-options: gsc-options
     output-dir: outdir
     output-file: outfile])

  (let lp ((rest args))
    (match rest
      ([arg . rest]
       (case arg
         (("-v" "--version")
          (displayln (gerbil-system-version-string))
          (force-output)
          (exit 0))
         (("-h" "--help")
          (gxc-print-usage!)
          (exit 0))
         (("-d")
          (match rest
            ([dir . rest]
             (set! outdir dir)
             (lp rest))
            (else
             (gxc-print-usage!)
             (exit 1))))
         (("-S")
          (set! invoke-gsc #f)
          (lp rest))
         (("-s")
          (set! keep-scm #t)
          (lp rest))
         (("-static")
          (when (member "--enable-shared" (string-split (configure-command-string) #\'))
            (error "system is configured with --enable-shared and cannot build static executables"))
          (add-gsc-option! '("-cc-options" "-Bstatic"))
          (add-gsc-option! '("-ld-options" "-static"))
          (lp rest))
         (("-g")
          (set! keep-scm #t)
          (set! debug #t)
          (lp rest))
         (("-V")
          (set! verbose #t)
          (lp rest))
         (("-O")
          (set! optimize #t)
          (lp rest))
         (("-full-program-optimization")
          (set! full-program-optimization #t)
          (lp rest))
         (("-no-ssxi")
          (set! generate-ssxi #f)
          (lp rest))
         (("-exe")
          (set! compile-exe #t)
          (lp rest))
         (("-o")
          (match rest
            ([file . rest]
             (set! outfile file)
             (lp rest))))
         (("-include-gambit-sharp")
          (add-gsc-option!
           (let* ((gambit-sharp
                   (path-expand "lib/_gambit#.scm"
                                (getenv "GERBIL_BUILD_PREFIX" (gerbil-home))))
                  (include-gambit-sharp
                   (string-append "(include \"" gambit-sharp "\")")))
             (cond
              ((gerbil-runtime-smp?)
               `("-e" "(define-cond-expand-feature|enable-smp|)"
                 "-e" ,include-gambit-sharp))
              (else
               `("-e" ,include-gambit-sharp)))))
          (lp rest))
         (("-prelude")
          (match rest
            ([opt . rest]
             (add-gsc-option! ["-prelude" opt])
             (lp rest))
            (else
             (gxc-print-usage!)
             (exit 1))))
         (("-cc-options")
          (match rest
            ([opt . rest]
             (add-gsc-option! ["-cc-options" opt])
             (lp rest))
            (else
             (gxc-print-usage!)
             (exit 1))))
         (("-ld-options")
          (match rest
            ([opt . rest]
             (add-gsc-option! ["-ld-options" opt])
             (lp rest))
            (else
             (gxc-print-usage!)
             (exit 1))))
         (("-gsc-flag")
          (match rest
            ([opt . rest]
             (add-gsc-option! [opt])
             (lp rest))
            (else
             (gxc-print-usage!)
             (exit 1))))
         (("-gsc-option")
          (match rest
            ([opt arg . rest]
             (add-gsc-option! [opt arg])
             (lp rest))
            (else
             (gxc-print-usage!)
             (exit 1))))
         (else
          (if (and (not (string-empty? arg))
                   (eq? (string-ref arg 0) #\-))
            (error "Unexpected option" arg)
            (values compile-exe (make-opts) (cons arg rest))))))
      (else
       (values compile-exe (make-opts) rest)))))

(def (gxc-compile-exe file opts)
  (compile-module file [invoke-gsc: #f opts ...])
  (compile-exe file opts))

(def (gxc-compile-file file opts)
  (compile-module file opts))

(def (gxc-main . args)
  (let ((values compile-exe? opts files) (gxc-parse-args args))
    (if compile-exe?
      (let lp ((rest files))
        (match rest
          ([last]
           (gxc-compile-exe last opts))
          ([file . rest]
           (gxc-compile-file file opts)
           (lp rest))
          (else
           (gxc-print-usage!)
           (exit 1))))
      (for-each (cut gxc-compile-file <> opts) files))))
