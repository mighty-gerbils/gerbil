(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1712993623)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp200466 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp200466))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp200467 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp200467))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path200323%_ _%fun200324%_)
        (with-output-to-file
         (cons 'path: (cons _%path200323%_ gxc#scheme-file-settings))
         _%fun200324%_)))
    (define gxc#+gerbil-gsc+ '#f)
    (define gxc#gerbil-gsc
      (lambda ()
        (if gxc#+gerbil-gsc+
            '#!void
            (set! gxc#+gerbil-gsc+
                  (let ()
                    (declare (not safe))
                    (##getenv '"GERBIL_GSC" gxc#default-gerbil-gsc))))
        gxc#+gerbil-gsc+))
    (define gxc#+gerbil-gcc+ '#f)
    (define gxc#gerbil-gcc
      (lambda ()
        (if gxc#+gerbil-gcc+
            '#!void
            (set! gxc#+gerbil-gcc+
                  (let ()
                    (declare (not safe))
                    (##getenv '"GERBIL_GCC" gxc#default-gerbil-gcc))))
        gxc#+gerbil-gcc+))
    (define gxc#+gerbil-ar+ '#f)
    (define gxc#gerbil-ar
      (lambda ()
        (if gxc#+gerbil-ar+
            '#!void
            (set! gxc#+gerbil-ar+
                  (let ()
                    (declare (not safe))
                    (##getenv '"GERBIL_AR" gxc#default-gerbil-ar))))
        gxc#+gerbil-ar+))
    (define gxc#gerbil-rpath
      (lambda (_%gerbil-libdir200318%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir200318%_)))
    (define gxc#gerbil-runtime-modules
      '("gerbil/runtime/gambit"
        "gerbil/runtime/util"
        "gerbil/runtime/table"
        "gerbil/runtime/control"
        "gerbil/runtime/system"
        "gerbil/runtime/c3"
        "gerbil/runtime/mop"
        "gerbil/runtime/mop-system-classes"
        "gerbil/runtime/error"
        "gerbil/runtime/interface"
        "gerbil/runtime/hash"
        "gerbil/runtime/thread"
        "gerbil/runtime/syntax"
        "gerbil/runtime/eval"
        "gerbil/runtime/repl"
        "gerbil/runtime/loader"
        "gerbil/runtime/init"
        "gerbil/runtime"))
    (define gxc#delete-directory*
      (lambda (_%dir200316%_) (delete-file-or-directory _%dir200316%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath200289%_ _%opts200290%_)
        (if (string? _%srcpath200289%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath200289%_)))
        (let ((_%outdir200292%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts200290%_)))
              (_%invoke-gsc?200293%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts200290%_)))
              (_%gsc-options200294%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts200290%_)))
              (_%keep-scm?200295%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts200290%_)))
              (_%verbosity200296%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts200290%_)))
              (_%optimize200297%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts200290%_)))
              (_%debug200298%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts200290%_)))
              (_%gen-ssxi200299%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts200290%_)))
              (_%parallel?200300%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts200290%_))))
          (if _%outdir200292%_
              (let ((__tmp200468
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir200292%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp200468))
              '#!void)
          (if _%optimize200297%_
              (let ((__tmp200469
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp200469))
              '#!void)
          (let ((__tmp200472
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath200289%_))
                   (gxc#compile-top-module
                    (let ((__tmp200473
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath200289%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp200473)))))
                (__tmp200471 (gxc#compile-timestamp))
                (__tmp200470
                 (cons 'compile-module (cons _%srcpath200289%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp200472
             gxc#current-compile-output-dir
             _%outdir200292%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?200293%_
             gxc#current-compile-gsc-options
             _%gsc-options200294%_
             gxc#current-compile-keep-scm
             _%keep-scm?200295%_
             gxc#current-compile-verbose
             _%verbosity200296%_
             gxc#current-compile-optimize
             _%optimize200297%_
             gxc#current-compile-debug
             _%debug200298%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi200299%_
             gxc#current-compile-timestamp
             __tmp200471
             gxc#current-compile-context
             __tmp200470
             gxc#current-compile-parallel
             _%parallel?200300%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath200309%_)
        (let ((_%opts200311%_ '()))
          (gxc#compile-module__% _%srcpath200309%_ _%opts200311%_))))
    (define gxc#compile-module
      (lambda _g200475_
        (let ((_g200474_ (let () (declare (not safe)) (##length _g200475_))))
          (cond ((let () (declare (not safe)) (##fx= _g200474_ 1))
                 (apply gxc#compile-module__0 _g200475_))
                ((let () (declare (not safe)) (##fx= _g200474_ 2))
                 (apply gxc#compile-module__% _g200475_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g200475_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath200264%_ _%opts200265%_)
        (if (string? _%srcpath200264%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath200264%_)))
        (let ((_%outdir200267%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts200265%_)))
              (_%invoke-gsc?200268%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts200265%_)))
              (_%gsc-options200269%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts200265%_)))
              (_%keep-scm?200270%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts200265%_)))
              (_%verbosity200271%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts200265%_)))
              (_%debug200272%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts200265%_)))
              (_%parallel?200273%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts200265%_))))
          (if _%outdir200267%_
              (let ((__tmp200476
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir200267%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp200476))
              '#!void)
          (let ((__tmp200479
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath200264%_))
                   (gxc#compile-executable-module
                    (let ((__tmp200480
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath200264%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp200480))
                    _%opts200265%_)))
                (__tmp200478 (gxc#compile-timestamp))
                (__tmp200477 (cons 'compile-exe (cons _%srcpath200264%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp200479
             gxc#current-compile-output-dir
             _%outdir200267%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?200268%_
             gxc#current-compile-gsc-options
             _%gsc-options200269%_
             gxc#current-compile-keep-scm
             _%keep-scm?200270%_
             gxc#current-compile-verbose
             _%verbosity200271%_
             gxc#current-compile-debug
             _%debug200272%_
             gxc#current-compile-timestamp
             __tmp200478
             gxc#current-compile-context
             __tmp200477
             gxc#current-compile-parallel
             _%parallel?200273%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath200281%_)
        (let ((_%opts200283%_ '()))
          (gxc#compile-exe__% _%srcpath200281%_ _%opts200283%_))))
    (define gxc#compile-exe
      (lambda _g200482_
        (let ((_g200481_ (let () (declare (not safe)) (##length _g200482_))))
          (cond ((let () (declare (not safe)) (##fx= _g200481_ 1))
                 (apply gxc#compile-exe__0 _g200482_))
                ((let () (declare (not safe)) (##fx= _g200481_ 2))
                 (apply gxc#compile-exe__% _g200482_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g200482_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx200260%_ _%opts200261%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts200261%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx200260%_
             _%opts200261%_)
            (gxc#compile-executable-module/separate
             _%ctx200260%_
             _%opts200261%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx200050%_ _%opts200051%_)
        (letrec ((_%generate-stub200053%_
                  (lambda (_%builtin-modules200256%_)
                    (let ((_%mod-main200258%_
                           (gxc#find-runtime-symbol _%ctx200050%_ 'main)))
                      (let ((__tmp200483
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules200256%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp200483))
                      (let ((__tmp200484
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main200258%_
                                                       (cons (cons 'cdr
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons 'command-line '()) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                   (cons (cons 'lambda
                               (cons '()
                                     (cons (cons 'with-catch
                                                 (cons 'void
                                                       (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '()
                                 (cons (cons 'force-output
                                             (cons (cons 'current-output-port
                                                         '())
                                                   '()))
                                       '())))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons 'with-catch
                                                       (cons 'void
                                                             (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons '()
                                       (cons (cons 'force-output
                                                   (cons (cons 'current-error-port
                                                               '())
                                                         '()))
                                             '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))
                        (declare (not safe))
                        (##write __tmp200484))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts200054%_
                  (lambda (_%gerbil-libdir200254%_)
                    (let ((__tmp200485
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir200254%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp200485 read))))
                 (_%replace-extension200055%_
                  (lambda (_%path200251%_ _%ext200252%_)
                    (string-append
                     (path-strip-extension _%path200251%_)
                     _%ext200252%_)))
                 (_%userlib-module?200056%_
                  (lambda (_%ctx200249%_)
                    (if (_%exclude-module?200058%_ _%ctx200249%_)
                        '#f
                        (not (_%libgerbil-module?200057%_ _%ctx200249%_)))))
                 (_%libgerbil-module?200057%_
                  (lambda (_%ctx200242%_)
                    (let ((_%id-str200244%_
                           (symbol->string
                            (##structure-ref
                             _%ctx200242%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?200058%_ _%id-str200244%_)
                          '#f
                          (let ((_%$e200246%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str200244%_))))
                            (if _%$e200246%_
                                _%$e200246%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str200244%_))))))))
                 (_%exclude-module?200058%_
                  (lambda (_%ctx-or-str200238%_)
                    (let ((_%str200240%_
                           (if (string? _%ctx-or-str200238%_)
                               _%ctx-or-str200238%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str200238%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str200240%_))))
                 (_%not-file-empty?200059%_
                  (lambda (_%path200236%_)
                    (not (gxc#file-empty? _%path200236%_))))
                 (_%fold-libgerbil-runtime-scm200060%_
                  (lambda (_%gerbil-staticdir200229%_ _%libgerbil-scm200230%_)
                    (let ((_%gerbil-runtime-scm200234%_
                           (let ((__tmp200486
                                  (lambda (_%rtm200232%_)
                                    (path-expand
                                     (let ((__tmp200487
                                            (let ((__tmp200488
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm200232%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp200488
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp200487 '".scm"))
                                     _%gerbil-staticdir200229%_))))
                             (declare (not safe))
                             (##map __tmp200486 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates200061%_
                       (append _%gerbil-runtime-scm200234%_
                               _%libgerbil-scm200230%_)))))
                 (_%remove-duplicates200061%_
                  (lambda (_%strlst200189%_)
                    (let _%loop200191%_ ((_%rest200193%_ _%strlst200189%_)
                                         (_%result200194%_ '()))
                      (let* ((_%rest200195200203%_ _%rest200193%_)
                             (_%else200197200211%_
                              (lambda () (reverse! _%result200194%_)))
                             (_%K200199200217%_
                              (lambda (_%rest200214%_ _%path200215%_)
                                (if (member _%path200215%_ _%result200194%_)
                                    (_%loop200191%_
                                     _%rest200214%_
                                     _%result200194%_)
                                    (_%loop200191%_
                                     _%rest200214%_
                                     (cons _%path200215%_
                                           _%result200194%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest200195200203%_))
                            (let ((_%hd200200200220%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest200195200203%_)))
                                  (_%tl200201200222%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest200195200203%_))))
                              (let* ((_%path200225%_ _%hd200200200220%_)
                                     (_%rest200227%_ _%tl200201200222%_))
                                (_%K200199200217%_
                                 _%rest200227%_
                                 _%path200225%_)))
                            (_%else200197200211%_))))))
                 (_%compile-stub200062%_
                  (lambda (_%output-scm200069%_ _%output-bin200070%_)
                    (let* ((_%gerbil-home200072%_
                            (let ((__tmp200489
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp200489)))
                           (_%gerbil-libdir200074%_
                            (path-expand '"lib" _%gerbil-home200072%_))
                           (_%gerbil-staticdir200076%_
                            (path-expand '"static" _%gerbil-libdir200074%_))
                           (_%deps200078%_
                            (gxc#find-runtime-module-deps _%ctx200050%_))
                           (_%libgerbil-deps200080%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?200057%_
                               _%deps200078%_)))
                           (_%libgerbil-scm200082%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps200080%_)))
                           (_%libgerbil-scm200084%_
                            (_%fold-libgerbil-runtime-scm200060%_
                             _%gerbil-staticdir200076%_
                             _%libgerbil-scm200082%_))
                           (_%libgerbil-c200090%_
                            (map (lambda (_%g200085200087%_)
                                   (_%replace-extension200055%_
                                    _%g200085200087%_
                                    '".c"))
                                 _%libgerbil-scm200084%_))
                           (_%libgerbil-o200096%_
                            (map (lambda (_%g200091200093%_)
                                   (_%replace-extension200055%_
                                    _%g200091200093%_
                                    '".o"))
                                 _%libgerbil-scm200084%_))
                           (_%src-deps200098%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?200056%_
                               _%deps200078%_)))
                           (_%src-deps-scm200100%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps200098%_)))
                           (_%src-deps-scm200102%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?200059%_
                               _%src-deps-scm200100%_)))
                           (_%src-deps-scm200104%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm200102%_)))
                           (_%src-deps-c200110%_
                            (let ((__tmp200490
                                   (lambda (_%g200105200107%_)
                                     (_%replace-extension200055%_
                                      _%g200105200107%_
                                      '".c"))))
                              (declare (not safe))
                              (##map __tmp200490 _%src-deps-scm200104%_)))
                           (_%src-deps-o200116%_
                            (let ((__tmp200491
                                   (lambda (_%g200111200113%_)
                                     (_%replace-extension200055%_
                                      _%g200111200113%_
                                      '".o"))))
                              (declare (not safe))
                              (##map __tmp200491 _%src-deps-scm200104%_)))
                           (_%src-bin-scm200118%_
                            (gxc#find-static-module-file _%ctx200050%_))
                           (_%src-bin-scm200120%_
                            (path-expand _%src-bin-scm200118%_))
                           (_%src-bin-c200122%_
                            (_%replace-extension200055%_
                             _%src-bin-scm200120%_
                             '".c"))
                           (_%src-bin-o200124%_
                            (_%replace-extension200055%_
                             _%src-bin-scm200120%_
                             '".o"))
                           (_%output-bin200126%_
                            (path-expand _%output-bin200070%_))
                           (_%output-scm200128%_
                            (path-expand _%output-scm200069%_))
                           (_%output-c200130%_
                            (_%replace-extension200055%_
                             _%output-scm200128%_
                             '".c"))
                           (_%output-o200132%_
                            (_%replace-extension200055%_
                             _%output-scm200128%_
                             '".o"))
                           (_%output_-c200134%_
                            (_%replace-extension200055%_
                             _%output-scm200128%_
                             '"_.c"))
                           (_%output_-o200136%_
                            (_%replace-extension200055%_
                             _%output-scm200128%_
                             '"_.o"))
                           (_%gsc-link-opts200138%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts200140%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts200142%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir200076%_))
                           (_%output-ld-opts200144%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts200146%_
                            (_%get-libgerbil-ld-opts200054%_
                             _%gerbil-libdir200074%_))
                           (_%rpath200148%_
                            (gxc#gerbil-rpath _%gerbil-libdir200074%_))
                           (_%builtin-modules200152%_
                            (_%remove-duplicates200061%_
                             (let ((__tmp200492
                                    (let ((__tmp200494
                                           (lambda (_%mod200150%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod200150%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp200493
                                           (cons _%ctx200050%_
                                                 _%deps200078%_)))
                                      (declare (not safe))
                                      (##map __tmp200494 __tmp200493))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp200492)))))
                      (letrec ((_%compile-obj200155%_
                                (lambda (_%scm-path200162%_ _%c-path200163%_)
                                  (let* ((_%o-path200165%_
                                          (_%replace-extension200055%_
                                           _%c-path200163%_
                                           '".o"))
                                         (_%lock200167%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path200165%_
                                             '".lock")))
                                         (_%locked200169%_ '#f)
                                         (_%unlock200172%_
                                          (lambda ()
                                            (close-port _%locked200169%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock200167%_)))))
                                    (let _%retry200175%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock200167%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry200175%_))
                                          (begin
                                            (set! _%locked200169%_
                                                  (let ((__tmp200495
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock200167%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp200495)))
                                            (if _%locked200169%_
                                                '#!void
                                                (_%retry200175%_)))))
                                    (let ((__tmp200497
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path200165%_)))
                                                     (not _%scm-path200162%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path200162%_
                                                        _%o-path200165%_)))
                                                 (let ((_%gsc-cc-opts200186%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp200498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp200499 (cons _%c-path200163%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp200499
                            _%gsc-static-opts200142%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp200498 _%gsc-cc-opts200186%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp200496
                                           (lambda () (_%unlock200172%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp200497
                                       __tmp200496))))))
                        (let ((__tmp200500
                               (lambda ()
                                 (let ((__tmp200501
                                        (path-directory _%output-bin200126%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp200501)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp200500))
                        (gxc#with-output-to-scheme-file
                         _%output-scm200128%_
                         (lambda ()
                           (_%generate-stub200053%_
                            _%builtin-modules200152%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it200160%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp200502
                                                   (let ((__tmp200503
                                                          (let ((__tmp200504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm200120%_
                               (cons _%output-scm200128%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp200504 _%src-deps-scm200104%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp200503
                                                      _%libgerbil-c200090%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp200502
                                               _%gsc-link-opts200138%_))))
                                     (for-each
                                      _%compile-obj200155%_
                                      (let ((__tmp200505
                                             (cons _%src-bin-scm200120%_
                                                   (cons _%output-scm200128%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp200505
                                         _%src-deps-scm200104%_))
                                      (let ((__tmp200506
                                             (cons _%src-bin-c200122%_
                                                   (cons _%output-c200130%_
                                                         (cons _%output_-c200134%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp200506
                                         _%src-deps-c200110%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin200126%_
                                                        (let ((__tmp200507
                                                               (cons _%src-bin-o200124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o200132%_
                                   (cons _%output_-o200136%_
                                         (let ((__tmp200508
                                                (let ((__tmp200509
                                                       (let ((__tmp200511
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir200074%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts200146%_))))
                     (__tmp200510
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath200148%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp200511 __tmp200510))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp200509
                                                   _%output-ld-opts200144%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp200508
                                            _%libgerbil-o200096%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp200507 _%src-deps-o200116%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp200512
                                            (cons _%output-c200130%_
                                                  (cons _%output_-c200134%_
                                                        (cons _%output-o200132%_
                                                              (cons _%output_-o200136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp200512)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it200160%_))
                                  (_%compile-it200160%_)))
                            '#!void))))))
          (let* ((_%output-bin200064%_
                  (gxc#compile-exe-output-file _%ctx200050%_ _%opts200051%_))
                 (_%output-scm200066%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin200064%_ '"__exe.scm"))))
            (_%compile-stub200062%_
             _%output-scm200066%_
             _%output-bin200064%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx199872%_ _%opts199873%_)
        (letrec ((_%reset-declare199875%_
                  (lambda ()
                    '(declare
                       (gambit-scheme)
                       (block)
                       (core)
                       (inline)
                       (inline-primitives)
                       (inlining-limit 350)
                       (constant-fold)
                       (lambda-lift)
                       (standard-bindings)
                       (extended-bindings)
                       (run-time-bindings)
                       (safe)
                       (interrupts-enabled)
                       (proper-tail-calls)
                       (not generative-lambda)
                       (optimize-dead-local-variables)
                       (optimize-dead-definitions)
                       (generic)
                       (mostly-fixnum-flonum))))
                 (_%generate-stub199876%_
                  (lambda (_%deps200041%_)
                    (let ((_%mod-main200043%_
                           (gxc#find-runtime-symbol _%ctx199872%_ 'main))
                          (_%reset-decl200044%_ (_%reset-declare199875%_))
                          (_%user-decl200045%_ (_%user-declare199877%_)))
                      (for-each
                       (lambda (_%dep200047%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl200044%_))
                         (newline)
                         (if _%user-decl200045%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl200045%_))
                               (newline))
                             '#!void)
                         (let ((__tmp200513
                                (cons 'include (cons _%dep200047%_ '()))))
                           (declare (not safe))
                           (##write __tmp200513))
                         (newline))
                       _%deps200041%_)
                      (let ((__tmp200514
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main200043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp200514))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare199877%_
                  (lambda ()
                    (let* ((_%gsc-opts199946%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts199873%_)))
                           (_%gsc-prelude199948%_
                            (if _%gsc-opts199946%_
                                (member '"-prelude" _%gsc-opts199946%_)
                                '#f))
                           (_%gsc-prelude199950%_
                            (if _%gsc-prelude199948%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude199948%_)))
                                '#f)))
                      (let _%lp199953%_ ((_%rest199955%_
                                          (cons _%gsc-prelude199950%_ '()))
                                         (_%user-decls199956%_ '()))
                        (let* ((_%rest199957199965%_ _%rest199955%_)
                               (_%else199959199973%_
                                (lambda ()
                                  (if (null? _%user-decls199956%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls199956%_)))))
                               (_%K199961200029%_
                                (lambda (_%rest199976%_ _%expr199977%_)
                                  (let* ((_%expr199978199990%_ _%expr199977%_)
                                         (_%else199981199998%_
                                          (lambda ()
                                            (_%lp199953%_
                                             _%rest199976%_
                                             _%user-decls199956%_))))
                                    (let ((_%K199986200019%_
                                           (lambda (_%decls200017%_)
                                             (_%lp199953%_
                                              _%rest199976%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls199956%_
                                                 _%decls200017%_)))))
                                          (_%K199983200004%_
                                           (lambda (_%exprs200002%_)
                                             (_%lp199953%_
                                              (append _%exprs200002%_
                                                      _%rest199976%_)
                                              _%user-decls199956%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr199978199990%_))
                                          (let ((_%tl199988200024%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr199978199990%_)))
                                                (_%hd199987200022%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr199978199990%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd199987200022%_
                                                         'declare))
                                                (let ((_%decls200027%_
                                                       _%tl199988200024%_))
                                                  (_%K199986200019%_
                                                   _%decls200027%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd199987200022%_
                                                             'begin))
                                                    (let ((_%exprs200012%_
                                                           _%tl199988200024%_))
                                                      (_%K199983200004%_
                                                       _%exprs200012%_))
                                                    (_%else199981199998%_))))
                                          (_%else199981199998%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest199957199965%_))
                              (let ((_%hd199962200032%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest199957199965%_)))
                                    (_%tl199963200034%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest199957199965%_))))
                                (let* ((_%expr200037%_ _%hd199962200032%_)
                                       (_%rest200039%_ _%tl199963200034%_))
                                  (_%K199961200029%_
                                   _%rest200039%_
                                   _%expr200037%_)))
                              (_%else199959199973%_)))))))
                 (_%compile-stub199878%_
                  (lambda (_%output-scm199885%_ _%output-bin199886%_)
                    (let* ((_%gerbil-home199888%_
                            (let ((__tmp200515
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp200515)))
                           (_%gerbil-libdir199890%_
                            (path-expand '"lib" _%gerbil-home199888%_))
                           (_%runtime199892%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp199894%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home199888%_))
                           (_%include-gambit-sharp199896%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp199894%_
                               '"\")")))
                           (_%bin-scm199898%_
                            (gxc#find-static-module-file _%ctx199872%_))
                           (_%deps199900%_
                            (gxc#find-runtime-module-deps _%ctx199872%_))
                           (_%deps199902%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps199900%_)))
                           (_%deps199907%_
                            (let ((__tmp200516
                                   (lambda (_%$obj199904%_)
                                     (not (gxc#file-empty? _%$obj199904%_)))))
                              (declare (not safe))
                              (##filter __tmp200516 _%deps199902%_)))
                           (_%deps199911%_
                            (let ((__tmp200517
                                   (lambda (_%f199909%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f199909%_
                                             _%runtime199892%_))))))
                              (declare (not safe))
                              (##filter __tmp200517 _%deps199907%_)))
                           (_%output-base199913%_
                            (let ((__tmp200518
                                   (path-strip-extension
                                    _%output-scm199885%_)))
                              (declare (not safe))
                              (##string-append __tmp200518)))
                           (_%output-c199915%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base199913%_ '".c")))
                           (_%output-o199917%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base199913%_ '".o")))
                           (_%output-c_199919%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base199913%_ '"_.c")))
                           (_%output-o_199921%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base199913%_ '"_.o")))
                           (_%gsc-link-opts199923%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts199925%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts199927%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir199890%_)))
                           (_%output-ld-opts199929%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros199931%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp199896%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp199896%_
                                            '()))))
                           (_%gsc-link-opts199933%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts199923%_
                               _%gsc-gx-macros199931%_)))
                           (_%rpath199935%_
                            (gxc#gerbil-rpath _%gerbil-libdir199890%_))
                           (_%default-ld-options199937%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp200519
                             (lambda ()
                               (let ((__tmp200520
                                      (path-directory _%output-bin199886%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp200520)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp200519))
                      (gxc#with-output-to-scheme-file
                       _%output-scm199885%_
                       (lambda ()
                         (_%generate-stub199876%_
                          (let ((__tmp200521
                                 (let ((__tmp200522
                                        (cons _%bin-scm199898%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp200522
                                    _%deps199911%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp200521 _%runtime199892%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it199943%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_199919%_
                                                      (let ((__tmp200523
                                                             (cons _%output-scm199885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp200523 _%gsc-link-opts199933%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp200524
                                                 (let ((__tmp200525
                                                        (cons _%output-c199915%_
                                                              (cons _%output-c_199919%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp200525
                                                    _%gsc-static-opts199927%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp200524
                                             _%gsc-cc-opts199925%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin199886%_
                                                      (cons _%output-o199917%_
                                                            (cons _%output-o_199921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp200526
                                 (let ((__tmp200528
                                        (cons '"-L"
                                              (cons _%gerbil-libdir199890%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options199937%_))))
                                       (__tmp200527
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath199935%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp200528 __tmp200527))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp200526
                             _%output-ld-opts199929%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it199943%_))
                                (_%compile-it199943%_)))
                          '#!void)))))
          (let* ((_%output-bin199880%_
                  (gxc#compile-exe-output-file _%ctx199872%_ _%opts199873%_))
                 (_%output-scm199882%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin199880%_ '"__exe.scm"))))
            (_%compile-stub199878%_
             _%output-scm199882%_
             _%output-bin199880%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx199821%_ _%id199822%_)
        (let ((_%$e199868%_
               (let ((__tmp200530
                      (lambda (_%e199823199825%_)
                        (let* ((_%g199827199837%_ _%e199823199825%_)
                               (_%else199829199845%_ (lambda () '#f))
                               (_%K199831199849%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g199827199837%_
                                 'gx#module-export::t))
                              (let* ((_%e199832199852%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g199827199837%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e199833199855%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g199827199837%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e199834199858%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g199827199837%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e199834199858%_ '0))
                                    (let ((_%e199835199861%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g199827199837%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g199863199865%_)
                                             (eq? _%g199863199865%_
                                                  _%id199822%_))
                                           _%e199835199861%_)
                                          (_%K199831199849%_)
                                          (_%else199829199845%_)))
                                    (_%else199829199845%_)))
                              (_%else199829199845%_)))))
                     (__tmp200529
                      (##structure-ref
                       _%ctx199821%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp200530 __tmp200529))))
          (if _%$e199868%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e199868%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx199812%_ _%id199813%_)
        (let ((_%$e199815%_
               (gxc#find-export-binding _%ctx199812%_ _%id199813%_)))
          (if _%$e199815%_
              ((lambda (_%bind199818%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind199818%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id199813%_)))
                 (##structure-ref _%bind199818%_ '1 gx#binding::t '#f))
               _%$e199815%_)
              (let ((__tmp200531
                     (##structure-ref
                      _%ctx199812%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp200531
                 _%id199813%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx199678%_)
        (letrec* ((_%ht199680%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template199681%_
                   (lambda (_%in199757%_ _%phi199758%_)
                     (let ((_%iphi199760%_
                            (fx+ _%phi199758%_
                                 (##direct-structure-ref
                                  _%in199757%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports199761%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in199757%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp199763%_ ((_%rest199765%_ _%imports199761%_)
                                          (_%r199766%_ '()))
                         (let* ((_%rest199767199775%_ _%rest199765%_)
                                (_%else199769199783%_ (lambda () _%r199766%_))
                                (_%K199771199800%_
                                 (lambda (_%rest199786%_ _%in199787%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in199787%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi199760%_))
                                           (_%lp199763%_
                                            _%rest199786%_
                                            (cons _%in199787%_ _%r199766%_))
                                           (_%lp199763%_
                                            _%rest199786%_
                                            _%r199766%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in199787%_
                                              'gx#module-import::t))
                                           (let ((_%iphi199791%_
                                                  (fx+ _%phi199758%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in199787%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi199791%_))
                                                 (_%lp199763%_
                                                  _%rest199786%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in199787%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r199766%_))
                                                 (_%lp199763%_
                                                  _%rest199786%_
                                                  _%r199766%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in199787%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi199794%_
                                                      (fx+ _%iphi199760%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in199787%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi199794%_))
                                                     (_%lp199763%_
                                                      _%rest199786%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in199787%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r199766%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi199794%_))
                                                         (_%lp199763%_
                                                          _%rest199786%_
                                                          (let ((__tmp200532
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template199681%_
                          _%in199787%_
                          _%iphi199760%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r199766%_ __tmp200532)))
                 (_%lp199763%_ _%rest199786%_ _%r199766%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp199763%_
                                                _%rest199786%_
                                                _%r199766%_)))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest199767199775%_))
                               (let ((_%hd199772199803%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest199767199775%_)))
                                     (_%tl199773199805%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest199767199775%_))))
                                 (let* ((_%in199808%_ _%hd199772199803%_)
                                        (_%rest199810%_ _%tl199773199805%_))
                                   (_%K199771199800%_
                                    _%rest199810%_
                                    _%in199808%_)))
                               (_%else199769199783%_)))))))
                  (_%find-deps199682%_
                   (lambda (_%rest199690%_ _%deps199691%_)
                     (let* ((_%rest199692199700%_ _%rest199690%_)
                            (_%else199694199708%_ (lambda () _%deps199691%_))
                            (_%K199696199745%_
                             (lambda (_%rest199711%_ _%hd199712%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd199712%_
                                      'gx#module-context::t))
                                   (let ((_%id199715%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd199712%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports199716%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd199712%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht199680%_
                                            _%id199715%_))
                                         (_%find-deps199682%_
                                          _%rest199711%_
                                          _%deps199691%_)
                                         (let ((_%$e199719%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd199712%_))))
                                           (if _%$e199719%_
                                               ((lambda (_%pre199722%_)
                                                  (let ((_%xdeps199724%_
                                                         (_%find-deps199682%_
                                                          (cons _%pre199722%_
                                                                _%imports199716%_)
                                                          _%deps199691%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht199680%_
                                                       _%id199715%_
                                                       _%hd199712%_))
                                                    (_%find-deps199682%_
                                                     _%rest199711%_
                                                     (cons _%hd199712%_
                                                           _%xdeps199724%_))))
                                                _%$e199719%_)
                                               (let ((_%xdeps199727%_
                                                      (_%find-deps199682%_
                                                       _%imports199716%_
                                                       _%deps199691%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht199680%_
                                                    _%id199715%_
                                                    _%hd199712%_))
                                                 (_%find-deps199682%_
                                                  _%rest199711%_
                                                  (cons _%hd199712%_
                                                        _%xdeps199727%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd199712%_
                                          'gx#prelude-context::t))
                                       (let ((_%id199730%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd199712%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht199680%_
                                                _%id199730%_))
                                             (_%find-deps199682%_
                                              _%rest199711%_
                                              _%deps199691%_)
                                             (let ((_%xdeps199734%_
                                                    (_%find-deps199682%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd199712%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps199691%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht199680%_
                                                      _%id199730%_))
                                                   (_%find-deps199682%_
                                                    _%rest199711%_
                                                    _%xdeps199734%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht199680%_
                                                        _%id199730%_
                                                        _%hd199712%_))
                                                     (_%find-deps199682%_
                                                      _%rest199711%_
                                                      (cons _%hd199712%_
                                                            _%xdeps199734%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd199712%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd199712%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps199682%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd199712%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest199711%_)
                                                _%deps199691%_)
                                               (_%find-deps199682%_
                                                _%rest199711%_
                                                _%deps199691%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd199712%_
                                                  'gx#module-export::t))
                                               (_%find-deps199682%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd199712%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest199711%_)
                                                _%deps199691%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd199712%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd199712%_ '2 '#f '#f)))
               (_%find-deps199682%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd199712%_ '1 '#f '#f))
                      _%rest199711%_)
                _%deps199691%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd199712%_ '2 '#f '#f)))
                   (let ((_%xdeps199741%_
                          (_%import-set-template199681%_ _%hd199712%_ '0)))
                     (_%find-deps199682%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest199711%_ _%xdeps199741%_))
                      _%deps199691%_))
                   (_%find-deps199682%_ _%rest199711%_ _%deps199691%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd199712%_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest199692199700%_))
                           (let ((_%hd199697199748%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest199692199700%_)))
                                 (_%tl199698199750%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest199692199700%_))))
                             (let* ((_%hd199753%_ _%hd199697199748%_)
                                    (_%rest199755%_ _%tl199698199750%_))
                               (_%K199696199745%_
                                _%rest199755%_
                                _%hd199753%_)))
                           (_%else199694199708%_))))))
          (let ((__tmp200533
                 (filter gx#expander-context-id
                         (_%find-deps199682%_
                          (let ((_%$e199684%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx199678%_))))
                            (if _%$e199684%_
                                ((lambda (_%pre199687%_)
                                   (cons _%pre199687%_
                                         (##structure-ref
                                          _%ctx199678%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e199684%_)
                                (##structure-ref
                                 _%ctx199678%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp200533)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx199608%_)
        (let* ((_%context-id199610%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx199608%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx199608%_ '1 '#f '#f))
                    (string->symbol _%ctx199608%_)))
               (_%scm199612%_
                (let ((__tmp200534
                       (gxc#static-module-name _%context-id199610%_)))
                  (declare (not safe))
                  (##string-append __tmp200534 '".scm")))
               (_%dirs199614%_ (let () (declare (not safe)) (load-path)))
               (_%dirs199620%_
                (let ((_%user-libpath199616%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath199616%_
                      (let ((_%user-libpath199618%_
                             (path-expand '"lib" _%user-libpath199616%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath199618%_ _%dirs199614%_))
                            _%dirs199614%_
                            (cons _%user-libpath199618%_ _%dirs199614%_)))
                      _%dirs199614%_)))
               (_%dirs199630%_
                (let ((_%$e199622%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e199622%_
                      ((lambda (_%g199624199626%_)
                         (cons _%g199624199626%_ _%dirs199620%_))
                       _%$e199622%_)
                      _%dirs199620%_)))
               (_%dirs199636%_
                (let ((__tmp200535
                       (lambda (_%g199631199633%_)
                         (path-expand '"static" _%g199631199633%_))))
                  (declare (not safe))
                  (##map __tmp200535 _%dirs199630%_))))
          (let _%lp199639%_ ((_%rest199641%_ _%dirs199636%_))
            (let* ((_%rest199642199650%_ _%rest199641%_)
                   (_%else199644199658%_
                    (lambda ()
                      (let ((__tmp200536
                             (##structure-ref
                              _%ctx199608%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp200536
                         _%scm199612%_))))
                   (_%K199646199666%_
                    (lambda (_%rest199661%_ _%dir199662%_)
                      (let ((_%path199664%_
                             (path-expand _%scm199612%_ _%dir199662%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path199664%_))
                            _%path199664%_
                            (_%lp199639%_ _%rest199661%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest199642199650%_))
                  (let ((_%hd199647199669%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest199642199650%_)))
                        (_%tl199648199671%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest199642199650%_))))
                    (let* ((_%dir199674%_ _%hd199647199669%_)
                           (_%rest199676%_ _%tl199648199671%_))
                      (_%K199646199666%_ _%rest199676%_ _%dir199674%_)))
                  (_%else199644199658%_)))))))
    (define gxc#file-empty?
      (lambda (_%path199606%_)
        (zero? (let ((__tmp200537 (file-info _%path199606%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp200537)))))
    (define gxc#compile-top-module
      (lambda (_%ctx199602%_)
        (let ((__tmp200541
               (lambda ()
                 (let ((__tmp200542
                        (##structure-ref
                         _%ctx199602%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp200542))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp200543
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx199602%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp200543))
                     '#!void)
                 (gxc#collect-bindings _%ctx199602%_)
                 (gxc#compile-runtime-code _%ctx199602%_)
                 (gxc#compile-meta-code _%ctx199602%_)
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx199602%_)
                     '#!void)))
              (__tmp200540
               (let ((__obj200464
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj200464))
                 __obj200464))
              (__tmp200539 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp200538
               (let ()
                 (declare (not safe))
                 (make-hash-table__%
                  '#f
                  absent-value
                  absent-value
                  absent-value
                  absent-value
                  absent-value
                  absent-value
                  absent-value
                  absent-value))))
          (declare (not safe))
          (__call-with-parameters
           __tmp200541
           gx#current-expander-context
           _%ctx199602%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp200540
           gxc#current-compile-runtime-sections
           __tmp200539
           gxc#current-compile-runtime-names
           __tmp200538))))
    (define gxc#collect-bindings
      (lambda (_%ctx199600%_)
        (let ((__tmp200544
               (##structure-ref _%ctx199600%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp200544))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx199548%_)
        (letrec ((_%compile1199550%_
                  (lambda (_%ctx199589%_)
                    (let* ((_%code199591%_
                            (##structure-ref
                             _%ctx199589%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm199595%_
                            (let ((_%idstr199593%_
                                   (let ((__tmp200545
                                          (##structure-ref
                                           _%ctx199589%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp200545))))
                              (declare (not safe))
                              (##string-append _%idstr199593%_ '"~0")))
                           (_%rtc?199597%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code199591%_))))
                      (if _%rtc?199597%_
                          (let ((__tmp200546
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp200546
                             _%ctx199589%_
                             _%rtm199595%_))
                          '#!void)
                      (_%generate-runtime-code199552%_
                       _%ctx199589%_
                       _%code199591%_
                       (if _%rtc?199597%_ _%rtm199595%_ '#f)))))
                 (_%context-timestamp199551%_
                  (lambda (_%ctx199587%_)
                    (let ((__tmp200547
                           (let ((__tmp200548
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx199587%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp200548 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp200547))))
                 (_%generate-runtime-code199552%_
                  (lambda (_%ctx199559%_ _%code199560%_ _%rtm199561%_)
                    (let* ((_%runtime-code?199563%_ (if _%rtm199561%_ '#t '#f))
                           (_%lifts199565%_ (box '()))
                           (_%runtime-code199568%_
                            (if _%runtime-code?199563%_
                                (let ((__tmp200551
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code199560%_))))
                                      (__tmp200550
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp200549
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp200551
                                   gx#current-expander-context
                                   _%ctx199559%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts199565%_
                                   gxc#current-compile-marks
                                   __tmp200550
                                   gxc#current-compile-identifiers
                                   __tmp200549))
                                '#f))
                           (_%runtime-code199570%_
                            (if _%runtime-code?199563%_
                                (if (null? (unbox _%lifts199565%_))
                                    _%runtime-code199568%_
                                    (cons 'begin
                                          (let ((__tmp200553
                                                 (cons _%runtime-code199568%_
                                                       '()))
                                                (__tmp200552
                                                 (reverse (unbox _%lifts199565%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp200553
                                             __tmp200552))))
                                '#f))
                           (_%runtime-code199572%_
                            (if _%runtime-code?199563%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp199551%_
                                                         _%ctx199559%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code199570%_ '())))
                                '#f))
                           (_%loader-code199575%_
                            (let ((__tmp200554
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code199560%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp200554
                               gx#current-expander-context
                               _%ctx199559%_)))
                           (_%loader-code199577%_
                            (cons 'begin
                                  (cons _%loader-code199575%_
                                        (cons (if _%runtime-code?199563%_
                                                  (cons 'load-module
                                                        (cons _%rtm199561%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0199579%_
                            (gxc#compile-output-file _%ctx199559%_ '0 '".scm"))
                           (_%scmrt199581%_
                            (gxc#compile-output-file
                             _%ctx199559%_
                             '#f
                             '".scm"))
                           (_%scms199583%_
                            (gxc#compile-static-output-file _%ctx199559%_)))
                      (if _%runtime-code?199563%_
                          (gxc#compile-scm-file__0
                           _%scm0199579%_
                           _%runtime-code199572%_)
                          '#!void)
                      (let ((__tmp200555
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt199581%_
                                _%loader-code199577%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp200555
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms199583%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms199583%_))
                          '#!void)
                      (if _%runtime-code?199563%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0199579%_ _%scms199583%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms199583%_ void)))))))
          (let* ((_%all-modules199554%_
                  (cons _%ctx199548%_ (gxc#lift-nested-modules _%ctx199548%_)))
                 (__tmp200556
                  (lambda (_%ctx199556%_)
                    (let ((__tmp200557
                           (lambda () (_%compile1199550%_ _%ctx199556%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp200557
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp200556 _%all-modules199554%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx199448%_)
        (letrec ((_%compile-ssi199450%_
                  (lambda (_%code199516%_)
                    (let* ((_%path199518%_
                            (gxc#compile-output-file
                             _%ctx199448%_
                             '#f
                             '".ssi"))
                           (_%prelude199530%_
                            (let* ((_%super199520%_
                                    (##structure-ref
                                     _%ctx199448%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e199522%_
                                    (##structure-ref
                                     _%super199520%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e199522%_
                                  ((lambda (_%g199524199526%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g199524199526%_)))
                                   _%$e199522%_)
                                  ':<root>)))
                           (_%ns199532%_
                            (##structure-ref
                             _%ctx199448%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr199534%_
                            (symbol->string
                             (##structure-ref
                              _%ctx199448%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg199542%_
                            (let ((_%$e199536%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr199534%_ '#\/))))
                              (if _%$e199536%_
                                  ((lambda (_%x199539%_)
                                     (let ((__tmp200558
                                            (substring
                                             _%idstr199534%_
                                             '0
                                             _%x199539%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp200558)))
                                   _%$e199536%_)
                                  '#f)))
                           (_%rt199544%_
                            (let ((__tmp200559
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp200559 _%ctx199448%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path199518%_))
                      (gxc#with-output-to-scheme-file
                       _%path199518%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude199530%_))
                         (if _%pkg199542%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg199542%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns199532%_))
                         (newline)
                         (pretty-print _%code199516%_)
                         (if _%rt199544%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt199544%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi199451%_
                  (lambda (_%part199456%_)
                    (let* ((_%part199457199470%_ _%part199456%_)
                           (_%E199459199474%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part199457199470%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K199460199485%_
                            (lambda (_%code199477%_
                                     _%n199478%_
                                     _%phi199479%_
                                     _%phi-ctx199480%_)
                              (let ((_%code199483%_
                                     (let ((__tmp200560
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code199477%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp200560
                                        gx#current-expander-context
                                        _%phi-ctx199480%_
                                        gx#current-expander-phi
                                        _%phi199479%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx199448%_
                                  _%n199478%_
                                  '".scm")
                                 _%code199483%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part199457199470%_))
                          (let ((_%hd199461199488%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part199457199470%_)))
                                (_%tl199462199490%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part199457199470%_))))
                            (let ((_%phi-ctx199493%_ _%hd199461199488%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl199462199490%_))
                                  (let ((_%hd199463199495%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl199462199490%_)))
                                        (_%tl199464199497%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl199462199490%_))))
                                    (let ((_%phi199500%_ _%hd199463199495%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl199464199497%_))
                                          (let ((_%hd199465199502%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl199464199497%_)))
                                                (_%tl199466199504%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl199464199497%_))))
                                            (let ((_%n199507%_
                                                   _%hd199465199502%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl199466199504%_))
                                                  (let ((_%hd199467199509%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl199466199504%_)))
                                                        (_%tl199468199511%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl199466199504%_))))
                                                    (let ((_%code199514%_
                                                           _%hd199467199509%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl199468199511%_))
                                                          (_%K199460199485%_
                                                           _%code199514%_
                                                           _%n199507%_
                                                           _%phi199500%_
                                                           _%phi-ctx199493%_)
                                                          (_%E199459199474%_))))
                                                  (_%E199459199474%_))))
                                          (_%E199459199474%_))))
                                  (_%E199459199474%_))))
                          (_%E199459199474%_))))))
          (let ((_g200561_ (gxc#generate-meta-code _%ctx199448%_)))
            (begin
              (let ((_g200562_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g200561_)
                           (##vector-length _g200561_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g200562_ 2)))
                    (error "Context expects 2 values" _g200562_)))
              (let ((_%ssi-code199453%_
                     (let () (declare (not safe)) (##vector-ref _g200561_ 0)))
                    (_%phi-code199454%_
                     (let () (declare (not safe)) (##vector-ref _g200561_ 1))))
                (begin
                  (_%compile-ssi199450%_ _%ssi-code199453%_)
                  (for-each _%compile-phi199451%_ _%phi-code199454%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx199430%_)
        (let* ((_%path199432%_
                (gxc#compile-output-file _%ctx199430%_ '#f '".ssxi.ss"))
               (_%code199434%_
                (let ((__tmp200563
                       (##structure-ref
                        _%ctx199430%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp200563)))
               (_%idstr199436%_
                (symbol->string
                 (##structure-ref
                  _%ctx199430%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg199444%_
                (let ((_%$e199438%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr199436%_ '#\/))))
                  (if _%$e199438%_
                      ((lambda (_%x199441%_)
                         (let ((__tmp200564
                                (substring _%idstr199436%_ '0 _%x199441%_)))
                           (declare (not safe))
                           (##string->symbol __tmp200564)))
                       _%$e199438%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path199432%_))
          (gxc#with-output-to-scheme-file
           _%path199432%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg199444%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg199444%_))
                 '#!void)
             (newline)
             (pretty-print _%code199434%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx199423%_)
        (let* ((_%state199425%_
                (let ((__obj200465
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj200465 _%ctx199423%_))
                  __obj200465))
               (_%ssi-code199427%_
                (let ((__tmp200565
                       (##structure-ref
                        _%ctx199423%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state199425%_
                   __tmp200565))))
          (values _%ssi-code199427%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state199425%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx199416%_)
        (let ((_%lifts199418%_ (box '())))
          (let ((__tmp200568
                 (lambda ()
                   (let ((_%code199421%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx199416%_))))
                     (if (null? (unbox _%lifts199418%_))
                         _%code199421%_
                         (cons 'begin
                               (let ((__tmp200570 (cons _%code199421%_ '()))
                                     (__tmp200569
                                      (reverse (unbox _%lifts199418%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp200570 __tmp200569)))))))
                (__tmp200567
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp200566
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp200568
             gxc#current-compile-lift
             _%lifts199418%_
             gxc#current-compile-marks
             __tmp200567
             gxc#current-compile-identifiers
             __tmp200566)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx199412%_)
        (let ((_%modules199414%_ (box '())))
          (let ((__tmp200571
                 (##structure-ref _%ctx199412%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules199414%_ __tmp200571))
          (reverse (unbox _%modules199414%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path199392%_ _%code199393%_ _%phi?199394%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path199392%_))
        (gxc#with-output-to-scheme-file
         _%path199392%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp200572
                                           (if _%phi?199394%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp200572)))))))
           (pretty-print _%code199393%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it199398%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path199392%_ _%phi?199394%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp200573
                         (cons 'compile-file (cons _%path199392%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it199398%_ __tmp200573))
                  (_%compile-it199398%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path199403%_ _%code199404%_)
        (let ((_%phi?199406%_ '#f))
          (gxc#compile-scm-file__%
           _%path199403%_
           _%code199404%_
           _%phi?199406%_))))
    (define gxc#compile-scm-file
      (lambda _g200575_
        (let ((_g200574_ (let () (declare (not safe)) (##length _g200575_))))
          (cond ((let () (declare (not safe)) (##fx= _g200574_ 2))
                 (apply gxc#compile-scm-file__0 _g200575_))
                ((let () (declare (not safe)) (##fx= _g200574_ 3))
                 (apply gxc#compile-scm-file__% _g200575_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g200575_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?199293%_)
        (let _%lp199295%_ ((_%rest199297%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts199298%_ '()))
          (let* ((_%rest199299199319%_ _%rest199297%_)
                 (_%else199303199327%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts199298%_)))
                        (reverse _%opts199298%_)))))
            (let ((_%K199313199370%_
                   (lambda (_%rest199368%_)
                     (_%lp199295%_ _%rest199368%_ _%opts199298%_)))
                  (_%K199308199352%_
                   (lambda (_%rest199350%_)
                     (_%lp199295%_ _%rest199350%_ _%opts199298%_)))
                  (_%K199305199334%_
                   (lambda (_%rest199331%_ _%opt199332%_)
                     (_%lp199295%_
                      _%rest199331%_
                      (cons _%opt199332%_ _%opts199298%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest199299199319%_))
                  (let ((_%tl199315199375%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest199299199319%_)))
                        (_%hd199314199373%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest199299199319%_))))
                    (if (equal? _%hd199314199373%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl199315199375%_))
                            (let* ((_%tl199317199378%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl199315199375%_)))
                                   (_%rest199381%_ _%tl199317199378%_))
                              (_%K199313199370%_ _%rest199381%_))
                            (let ((_%opt199342%_ _%hd199314199373%_)
                                  (_%rest199344%_ _%tl199315199375%_))
                              (_%K199305199334%_
                               _%rest199344%_
                               _%opt199342%_)))
                        (if (equal? _%hd199314199373%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl199315199375%_))
                                (let* ((_%tl199312199360%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl199315199375%_)))
                                       (_%rest199363%_ _%tl199312199360%_))
                                  (_%K199308199352%_ _%rest199363%_))
                                (let ((_%opt199342%_ _%hd199314199373%_)
                                      (_%rest199344%_ _%tl199315199375%_))
                                  (_%K199305199334%_
                                   _%rest199344%_
                                   _%opt199342%_)))
                            (let ((_%opt199342%_ _%hd199314199373%_)
                                  (_%rest199344%_ _%tl199315199375%_))
                              (_%K199305199334%_
                               _%rest199344%_
                               _%opt199342%_)))))
                  (_%else199303199327%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?199387%_ '#f)) (gxc#gsc-link-options__% _%phi?199387%_))))
    (define gxc#gsc-link-options
      (lambda _g200577_
        (let ((_g200576_ (let () (declare (not safe)) (##length _g200577_))))
          (cond ((let () (declare (not safe)) (##fx= _g200576_ 0))
                 (apply gxc#gsc-link-options__0 _g200577_))
                ((let () (declare (not safe)) (##fx= _g200576_ 1))
                 (apply gxc#gsc-link-options__% _g200577_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g200577_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords199142%_ _%static?199138199143%_ _%phi?199145%_)
        (let ((_%static?199147%_
               (if (eq? _%static?199138199143%_ absent-value)
                   '#f
                   _%static?199138199143%_)))
          (if _%phi?199145%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp199149%_ ((_%rest199151%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts199152%_ '()))
                (let* ((_%rest199153199179%_ _%rest199151%_)
                       (_%else199158199187%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts199152%_)))
                              (reverse! _%opts199152%_)))))
                  (let ((_%K199173199250%_
                         (lambda (_%rest199247%_ _%opt199248%_)
                           (if _%static?199147%_
                               (_%lp199149%_
                                _%rest199247%_
                                (cons _%opt199248%_
                                      (cons '"-cc-options" _%opts199152%_)))
                               (_%lp199149%_ _%rest199247%_ _%opts199152%_))))
                        (_%K199168199227%_
                         (lambda (_%rest199224%_ _%opt199225%_)
                           (_%lp199149%_
                            _%rest199224%_
                            (cons _%opt199225%_
                                  (cons '"-cc-options" _%opts199152%_)))))
                        (_%K199163199207%_
                         (lambda (_%rest199205%_)
                           (_%lp199149%_ _%rest199205%_ _%opts199152%_)))
                        (_%K199160199193%_
                         (lambda (_%rest199191%_)
                           (_%lp199149%_ _%rest199191%_ _%opts199152%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest199153199179%_))
                        (let ((_%tl199175199255%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest199153199179%_)))
                              (_%hd199174199253%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest199153199179%_))))
                          (if (equal? _%hd199174199253%_ '"-cc-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl199175199255%_))
                                  (let ((_%tl199177199260%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl199175199255%_)))
                                        (_%hd199176199258%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl199175199255%_))))
                                    (if (equal? _%hd199176199258%_ '"-Bstatic")
                                        (let ((_%opt199263%_
                                               _%hd199176199258%_)
                                              (_%rest199265%_
                                               _%tl199177199260%_))
                                          (_%K199173199250%_
                                           _%rest199265%_
                                           _%opt199263%_))
                                        (let ((_%opt199240%_
                                               _%hd199176199258%_)
                                              (_%rest199242%_
                                               _%tl199177199260%_))
                                          (_%K199168199227%_
                                           _%rest199242%_
                                           _%opt199240%_))))
                                  (let ((_%rest199199%_ _%tl199175199255%_))
                                    (_%K199160199193%_ _%rest199199%_)))
                              (if (equal? _%hd199174199253%_ '"-ld-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl199175199255%_))
                                      (let* ((_%tl199167199215%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl199175199255%_)))
                                             (_%rest199218%_
                                              _%tl199167199215%_))
                                        (_%K199163199207%_ _%rest199218%_))
                                      (let ((_%rest199199%_
                                             _%tl199175199255%_))
                                        (_%K199160199193%_ _%rest199199%_)))
                                  (let ((_%rest199199%_ _%tl199175199255%_))
                                    (_%K199160199193%_ _%rest199199%_)))))
                        (_%else199158199187%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords199270%_ _%static?199138199271%_)
        (let ((_%phi?199273%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords199270%_
           _%static?199138199271%_
           _%phi?199273%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g200579_
        (let ((_g200578_ (let () (declare (not safe)) (##length _g200579_))))
          (cond ((let () (declare (not safe)) (##fx= _g200578_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g200579_))
                ((let () (declare (not safe)) (##fx= _g200578_ 3))
                 (apply gxc#gsc-cc-options__%__% _g200579_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g200579_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords199282%_ . _%args199283%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords199282%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords199282%_
                  'static:
                  absent-value))
               _%args199283%_)))
    (define gxc#gsc-cc-options
      (lambda _%args199139199289%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args199139199289%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords198987%_ _%static?198983198988%_ _%phi?198990%_)
        (let ((_%static?198992%_
               (if (eq? _%static?198983198988%_ absent-value)
                   '#f
                   _%static?198983198988%_)))
          (if _%phi?198990%_
              '()
              (let _%lp198994%_ ((_%rest198996%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts198997%_ '()))
                (let* ((_%rest198998199024%_ _%rest198996%_)
                       (_%else199003199032%_
                        (lambda () (reverse! _%opts198997%_))))
                  (let ((_%K199018199095%_
                         (lambda (_%rest199092%_ _%opt199093%_)
                           (if _%static?198992%_
                               (_%lp198994%_
                                _%rest199092%_
                                (cons _%opt199093%_
                                      (cons '"-ld-options" _%opts198997%_)))
                               (_%lp198994%_ _%rest199092%_ _%opts198997%_))))
                        (_%K199013199072%_
                         (lambda (_%rest199069%_ _%opt199070%_)
                           (_%lp198994%_
                            _%rest199069%_
                            (cons _%opt199070%_
                                  (cons '"-ld-options" _%opts198997%_)))))
                        (_%K199008199052%_
                         (lambda (_%rest199050%_)
                           (_%lp198994%_ _%rest199050%_ _%opts198997%_)))
                        (_%K199005199038%_
                         (lambda (_%rest199036%_)
                           (_%lp198994%_ _%rest199036%_ _%opts198997%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest198998199024%_))
                        (let ((_%tl199020199100%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest198998199024%_)))
                              (_%hd199019199098%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest198998199024%_))))
                          (if (equal? _%hd199019199098%_ '"-ld-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl199020199100%_))
                                  (let ((_%tl199022199105%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl199020199100%_)))
                                        (_%hd199021199103%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl199020199100%_))))
                                    (if (equal? _%hd199021199103%_ '"-static")
                                        (let ((_%opt199108%_
                                               _%hd199021199103%_)
                                              (_%rest199110%_
                                               _%tl199022199105%_))
                                          (_%K199018199095%_
                                           _%rest199110%_
                                           _%opt199108%_))
                                        (let ((_%opt199085%_
                                               _%hd199021199103%_)
                                              (_%rest199087%_
                                               _%tl199022199105%_))
                                          (_%K199013199072%_
                                           _%rest199087%_
                                           _%opt199085%_))))
                                  (let ((_%rest199044%_ _%tl199020199100%_))
                                    (_%K199005199038%_ _%rest199044%_)))
                              (if (equal? _%hd199019199098%_ '"-cc-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl199020199100%_))
                                      (let* ((_%tl199012199060%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl199020199100%_)))
                                             (_%rest199063%_
                                              _%tl199012199060%_))
                                        (_%K199008199052%_ _%rest199063%_))
                                      (let ((_%rest199044%_
                                             _%tl199020199100%_))
                                        (_%K199005199038%_ _%rest199044%_)))
                                  (let ((_%rest199044%_ _%tl199020199100%_))
                                    (_%K199005199038%_ _%rest199044%_)))))
                        (_%else199003199032%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords199115%_ _%static?198983199116%_)
        (let ((_%phi?199118%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords199115%_
           _%static?198983199116%_
           _%phi?199118%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g200581_
        (let ((_g200580_ (let () (declare (not safe)) (##length _g200581_))))
          (cond ((let () (declare (not safe)) (##fx= _g200580_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g200581_))
                ((let () (declare (not safe)) (##fx= _g200580_ 3))
                 (apply gxc#gsc-ld-options__%__% _g200581_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g200581_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords199127%_ . _%args199128%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords199127%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords199127%_
                  'static:
                  absent-value))
               _%args199128%_)))
    (define gxc#gsc-ld-options
      (lambda _%args198984199134%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args198984199134%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir198978%_)
        (let ((_%user-staticdir198980%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir198978%_
                       '" -I "
                       _%user-staticdir198980%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp198890%_ ((_%rest198892%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts198893%_ '()))
          (let* ((_%rest198894198914%_ _%rest198892%_)
                 (_%else198898198922%_ (lambda () _%opts198893%_)))
            (let ((_%K198908198965%_
                   (lambda (_%rest198963%_)
                     (_%lp198890%_ _%rest198963%_ _%opts198893%_)))
                  (_%K198903198943%_
                   (lambda (_%rest198940%_ _%opt198941%_)
                     (_%lp198890%_
                      _%rest198940%_
                      (let ((__tmp200582
                             (let ((__tmp200583
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt198941%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp200583))))
                        (declare (not safe))
                        (##append _%opts198893%_ __tmp200582)))))
                  (_%K198900198928%_
                   (lambda (_%rest198926%_)
                     (_%lp198890%_ _%rest198926%_ _%opts198893%_))))
              (if (let () (declare (not safe)) (##pair? _%rest198894198914%_))
                  (let ((_%tl198910198970%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest198894198914%_)))
                        (_%hd198909198968%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest198894198914%_))))
                    (if (equal? _%hd198909198968%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl198910198970%_))
                            (let* ((_%tl198912198973%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl198910198970%_)))
                                   (_%rest198976%_ _%tl198912198973%_))
                              (_%K198908198965%_ _%rest198976%_))
                            (let ((_%rest198934%_ _%tl198910198970%_))
                              (_%K198900198928%_ _%rest198934%_)))
                        (if (equal? _%hd198909198968%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl198910198970%_))
                                (let ((_%tl198907198953%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl198910198970%_)))
                                      (_%hd198906198951%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl198910198970%_))))
                                  (let ((_%opt198956%_ _%hd198906198951%_)
                                        (_%rest198958%_ _%tl198907198953%_))
                                    (_%K198903198943%_
                                     _%rest198958%_
                                     _%opt198956%_)))
                                (let ((_%rest198934%_ _%tl198910198970%_))
                                  (_%K198900198928%_ _%rest198934%_)))
                            (let ((_%rest198934%_ _%tl198910198970%_))
                              (_%K198900198928%_ _%rest198934%_)))))
                  (_%else198898198922%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str198887%_)
        (not (let () (declare (not safe)) (string-empty? _%str198887%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path198880%_ _%phi?198881%_)
        (let ((_%gsc-link-opts198883%_
               (gxc#gsc-link-options__% _%phi?198881%_))
              (_%gsc-cc-opts198884%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?198881%_))
              (_%gsc-ld-opts198885%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?198881%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp200584
                  (let ((__tmp200585
                         (let ((__tmp200586 (cons _%path198880%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp200586
                            _%gsc-link-opts198883%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp200585 _%gsc-ld-opts198885%_))))
             (declare (not safe))
             (__foldr1 cons __tmp200584 _%gsc-cc-opts198884%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx198846%_ _%n198847%_ _%ext198848%_)
        (letrec ((_%module-relative-path198850%_
                  (lambda (_%ctx198878%_)
                    (path-strip-directory
                     (let ((__tmp200587
                            (##structure-ref
                             _%ctx198878%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp200587)))))
                 (_%module-source-directory198851%_
                  (lambda (_%ctx198874%_)
                    (path-directory
                     (let ((_%mpath198876%_
                            (##structure-ref
                             _%ctx198874%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath198876%_)
                           _%mpath198876%_
                           (last _%mpath198876%_))))))
                 (_%section-string198852%_
                  (lambda (_%n198868%_)
                    (if (number? _%n198868%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n198868%_))
                        (if (symbol? _%n198868%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n198868%_))
                            (if (string? _%n198868%_)
                                _%n198868%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n198868%_)))))))
                 (_%file-name198853%_
                  (lambda (_%path198866%_)
                    (if _%n198847%_
                        (string-append
                         _%path198866%_
                         '"~"
                         (_%section-string198852%_ _%n198847%_)
                         _%ext198848%_)
                        (string-append _%path198866%_ _%ext198848%_))))
                 (_%file-path198854%_
                  (lambda ()
                    (let ((_%$e198860%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e198860%_
                          ((lambda (_%outdir198863%_)
                             (path-expand
                              (_%file-name198853%_
                               (let ((__tmp200588
                                      (##structure-ref
                                       _%ctx198846%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp200588)))
                              _%outdir198863%_))
                           _%$e198860%_)
                          (path-expand
                           (_%file-name198853%_
                            (_%module-relative-path198850%_ _%ctx198846%_))
                           (_%module-source-directory198851%_
                            _%ctx198846%_)))))))
          (let ((_%path198856%_ (_%file-path198854%_)))
            (let ((__tmp200589
                   (lambda ()
                     (let ((__tmp200590 (path-directory _%path198856%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp200590)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp200589))
            _%path198856%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx198827%_)
        (letrec ((_%file-name198829%_
                  (lambda (_%id198844%_)
                    (let ((__tmp200591 (gxc#static-module-name _%id198844%_)))
                      (declare (not safe))
                      (##string-append __tmp200591 '".scm"))))
                 (_%file-path198830%_
                  (lambda ()
                    (let* ((_%file198836%_
                            (_%file-name198829%_
                             (##structure-ref
                              _%ctx198827%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e198838%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e198838%_
                          ((lambda (_%outdir198841%_)
                             (path-expand
                              _%file198836%_
                              (path-expand '"static" _%outdir198841%_)))
                           _%$e198838%_)
                          (path-expand _%file198836%_ '"static"))))))
          (let ((_%path198832%_ (_%file-path198830%_)))
            (let ((__tmp200592
                   (lambda ()
                     (let ((__tmp200593 (path-directory _%path198832%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp200593)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp200592))
            _%path198832%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx198820%_ _%opts198821%_)
        (let ((_%$e198823%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts198821%_))))
          (if _%$e198823%_
              _%$e198823%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx198820%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr198810%_)
        (if (string? _%idstr198810%_)
            (let* ((_%str198813%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr198810%_)))
                   (_%strs198815%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str198813%_ '#\/))))
              (declare (not safe))
              (string-join _%strs198815%_ '"__"))
            (if (symbol? _%idstr198810%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr198810%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr198810%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp200594
               (let ((__tmp200595 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp200595 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp200594))))
    (define gxc#invoke__%
      (lambda (_%@@keywords198774%_
               _%stdout-redirection198770198775%_
               _%stderr-redirection198771198777%_
               _%program198779%_
               _%args198780%_)
        (let* ((_%stdout-redirection198782%_
                (if (eq? _%stdout-redirection198770198775%_ absent-value)
                    '#f
                    _%stdout-redirection198770198775%_))
               (_%stderr-redirection198784%_
                (if (eq? _%stderr-redirection198771198777%_ absent-value)
                    '#f
                    _%stderr-redirection198771198777%_)))
          (let ((__tmp200596 (cons _%program198779%_ _%args198780%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp200596))
          (let* ((_%proc198786%_
                  (open-process
                   (cons 'path:
                         (cons _%program198779%_
                               (cons 'arguments:
                                     (cons _%args198780%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection198782%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection198784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output198791%_
                  (if (or _%stdout-redirection198782%_
                          _%stderr-redirection198784%_)
                      (read-line _%proc198786%_ '#f)
                      '#f))
                 (_%status198794%_ (process-status _%proc198786%_)))
            (let () (declare (not safe)) (##close-port _%proc198786%_))
            (if (zero? _%status198794%_)
                '#!void
                (begin
                  (display _%output198791%_)
                  (let ((__tmp200597 (cons _%program198779%_ _%args198780%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp200597
                     _%status198794%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords198799%_ . _%args198800%_)
        (apply gxc#invoke__%
               _%@@keywords198799%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords198799%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords198799%_
                  'stderr-redirection:
                  absent-value))
               _%args198800%_)))
    (define gxc#invoke
      (lambda _%args198772198806%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args198772198806%_)))))
