;;; -*- Gerbil -*-
;;; © vyzo
;;; gxc main function; included by main.ss

(def (gxc-print-usage!)
  (displayln "gxc [options...] <file> ...")
  (displayln "Options: ")
  (displayln " -h,--help                   display this help message and exit")
  (displayln " -d <dir>                    set compiler output directory; defaults to $GERBIL_PATH/lib")
  (displayln " -exe                        compile an executable")
  (displayln " -o <file>                   set executable output file")
  (displayln " -O                          optimize gerbil source")
  (displayln " -dynamic                    compile a dynamic executable; modifier for -exe")
  (displayln " -static                     this option is accepted and ignored for backwards compatibility; it is the default")
  (displayln " -full-program-optimization  perform full program optimization when compiling a (static) executable")
  (displayln " -s                          keep intermediate .scm files")
  (displayln " -S                          don't invoke gsc")
  (displayln " -v                          be verbose during compilation")
  (displayln " -g                          invoke gsc with -debug; enables -s")
  (displayln " -genv                       invoke gsc with -debug-environments")
  (displayln " -genv/phi                   invoke gsc with -debug-environments, including phi sections")
  (displayln " -gsrc                       invoke gsc with -debug-environments -debug-source")
  (displayln " -gsrc/phi                   invoke gsc with -debug-environments -debug-source, including phi sections")
  (displayln " -no-ssxi                    don't generate .ssxi modules for cross-module optimization")
  (displayln " -include-gambit-sharp       include _gambit# with necessary cond expand features")
  (displayln " -prelude <sexpr>            add [-prelude <sexpr>] to gsc options")
  (displayln " -cc-options <string>        add [-cc-options <string>] to gsc options")
  (displayln " -ld-options <string>        add [-ld-options <string>] to gsc options")
  (displayln " -gsc-flag   <opt>           add [<opt>] to gsc options")
  (displayln " -gsc-option <opt> <string>  add [<opt> <string>] to gsc options"))

(def (gxc-parse-args args)
  (def outdir (path-expand "lib" (getenv "GERBIL_PATH" "~/.gerbil")))
  (def invoke-gsc #t)
  (def keep-scm #f)
  (def verbose #f)
  (def optimize #f)
  (def full-program-optimization #f)
  (def debug #f)
  (def generate-ssxi #t) ; enable by default (only when optimizing)
  (def static #t)
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
     static: static
     generate-ssxi: generate-ssxi
     gsc-options: gsc-options
     output-dir: outdir
     output-file: outfile])

  (let lp ((rest args))
    (match rest
      ([arg . rest]
       (case arg
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
          (set! static #t)
          (lp rest))
         (("-dynamic")
          (set! static #f)
          (lp rest))
         (("-g")
          (set! keep-scm #t)
          (set! debug #t)
          (lp rest))
         (("-genv")
          (set! debug 'env)
          (lp rest))
         (("-genv/phi")
          (set! debug 'env/phi)
          (lp rest))
         (("-gsrc")
          (set! debug 'src)
          (lp rest))
         (("-gsrc/phi")
          (set! debug 'src/phi)
          (lp rest))
         (("-v")
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
           (if (gerbil-runtime-smp?)
             '("-e" "(define-cond-expand-feature|enable-smp|)"
               "-e" "(include \"~~lib/_gambit#.scm\")")
             '("-e" "(include \"~~lib/_gambit#.scm\")")))
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
  (if (pgetq static: opts)
    (begin
      (compile-file file [invoke-gsc: #f opts ...])
      (compile-static-exe file opts))
    (begin
      (compile-file file opts)
      (compile-exe-stub file opts))))

(def (gxc-main . args)
  (let ((values compile-exe? opts files) (gxc-parse-args args))
    (if compile-exe?
      (let lp ((rest files))
        (match rest
          ([last]
           (gxc-compile-exe last opts))
          ([file . rest]
           (compile-file file opts)
           (lp rest))
          (else
           (gxc-print-usage!)
           (exit 1))))
      (for-each (cut compile-file <> opts) files))))
