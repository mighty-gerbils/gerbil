(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1712836665)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp199442 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp199442))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp199443 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp199443))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path199299%_ _%fun199300%_)
        (with-output-to-file
         (cons 'path: (cons _%path199299%_ gxc#scheme-file-settings))
         _%fun199300%_)))
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
      (lambda (_%gerbil-libdir199294%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir199294%_)))
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
      (lambda (_%dir199292%_) (delete-file-or-directory _%dir199292%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath199265%_ _%opts199266%_)
        (if (string? _%srcpath199265%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath199265%_)))
        (let ((_%outdir199268%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts199266%_)))
              (_%invoke-gsc?199269%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts199266%_)))
              (_%gsc-options199270%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts199266%_)))
              (_%keep-scm?199271%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts199266%_)))
              (_%verbosity199272%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts199266%_)))
              (_%optimize199273%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts199266%_)))
              (_%debug199274%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts199266%_)))
              (_%gen-ssxi199275%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts199266%_)))
              (_%parallel?199276%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts199266%_))))
          (if _%outdir199268%_
              (let ((__tmp199444
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir199268%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp199444))
              '#!void)
          (if _%optimize199273%_
              (let ((__tmp199445
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp199445))
              '#!void)
          (let ((__tmp199448
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath199265%_))
                   (gxc#compile-top-module
                    (let ((__tmp199449
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath199265%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp199449)))))
                (__tmp199447 (gxc#compile-timestamp))
                (__tmp199446
                 (cons 'compile-module (cons _%srcpath199265%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp199448
             gxc#current-compile-output-dir
             _%outdir199268%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?199269%_
             gxc#current-compile-gsc-options
             _%gsc-options199270%_
             gxc#current-compile-keep-scm
             _%keep-scm?199271%_
             gxc#current-compile-verbose
             _%verbosity199272%_
             gxc#current-compile-optimize
             _%optimize199273%_
             gxc#current-compile-debug
             _%debug199274%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi199275%_
             gxc#current-compile-timestamp
             __tmp199447
             gxc#current-compile-context
             __tmp199446
             gxc#current-compile-parallel
             _%parallel?199276%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath199285%_)
        (let ((_%opts199287%_ '()))
          (gxc#compile-module__% _%srcpath199285%_ _%opts199287%_))))
    (define gxc#compile-module
      (lambda _g199451_
        (let ((_g199450_ (let () (declare (not safe)) (##length _g199451_))))
          (cond ((let () (declare (not safe)) (##fx= _g199450_ 1))
                 (apply gxc#compile-module__0 _g199451_))
                ((let () (declare (not safe)) (##fx= _g199450_ 2))
                 (apply gxc#compile-module__% _g199451_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g199451_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath199240%_ _%opts199241%_)
        (if (string? _%srcpath199240%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath199240%_)))
        (let ((_%outdir199243%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts199241%_)))
              (_%invoke-gsc?199244%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts199241%_)))
              (_%gsc-options199245%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts199241%_)))
              (_%keep-scm?199246%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts199241%_)))
              (_%verbosity199247%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts199241%_)))
              (_%debug199248%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts199241%_)))
              (_%parallel?199249%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts199241%_))))
          (if _%outdir199243%_
              (let ((__tmp199452
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir199243%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp199452))
              '#!void)
          (let ((__tmp199455
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath199240%_))
                   (gxc#compile-executable-module
                    (let ((__tmp199456
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath199240%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp199456))
                    _%opts199241%_)))
                (__tmp199454 (gxc#compile-timestamp))
                (__tmp199453 (cons 'compile-exe (cons _%srcpath199240%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp199455
             gxc#current-compile-output-dir
             _%outdir199243%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?199244%_
             gxc#current-compile-gsc-options
             _%gsc-options199245%_
             gxc#current-compile-keep-scm
             _%keep-scm?199246%_
             gxc#current-compile-verbose
             _%verbosity199247%_
             gxc#current-compile-debug
             _%debug199248%_
             gxc#current-compile-timestamp
             __tmp199454
             gxc#current-compile-context
             __tmp199453
             gxc#current-compile-parallel
             _%parallel?199249%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath199257%_)
        (let ((_%opts199259%_ '()))
          (gxc#compile-exe__% _%srcpath199257%_ _%opts199259%_))))
    (define gxc#compile-exe
      (lambda _g199458_
        (let ((_g199457_ (let () (declare (not safe)) (##length _g199458_))))
          (cond ((let () (declare (not safe)) (##fx= _g199457_ 1))
                 (apply gxc#compile-exe__0 _g199458_))
                ((let () (declare (not safe)) (##fx= _g199457_ 2))
                 (apply gxc#compile-exe__% _g199458_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g199458_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx199236%_ _%opts199237%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts199237%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx199236%_
             _%opts199237%_)
            (gxc#compile-executable-module/separate
             _%ctx199236%_
             _%opts199237%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx199026%_ _%opts199027%_)
        (letrec ((_%generate-stub199029%_
                  (lambda (_%builtin-modules199232%_)
                    (let ((_%mod-main199234%_
                           (gxc#find-runtime-symbol _%ctx199026%_ 'main)))
                      (let ((__tmp199459
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules199232%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp199459))
                      (let ((__tmp199460
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main199234%_
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
                        (##write __tmp199460))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts199030%_
                  (lambda (_%gerbil-libdir199230%_)
                    (let ((__tmp199461
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir199230%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp199461 read))))
                 (_%replace-extension199031%_
                  (lambda (_%path199227%_ _%ext199228%_)
                    (string-append
                     (path-strip-extension _%path199227%_)
                     _%ext199228%_)))
                 (_%userlib-module?199032%_
                  (lambda (_%ctx199225%_)
                    (if (_%exclude-module?199034%_ _%ctx199225%_)
                        '#f
                        (not (_%libgerbil-module?199033%_ _%ctx199225%_)))))
                 (_%libgerbil-module?199033%_
                  (lambda (_%ctx199218%_)
                    (let ((_%id-str199220%_
                           (symbol->string
                            (##structure-ref
                             _%ctx199218%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?199034%_ _%id-str199220%_)
                          '#f
                          (let ((_%$e199222%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str199220%_))))
                            (if _%$e199222%_
                                _%$e199222%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str199220%_))))))))
                 (_%exclude-module?199034%_
                  (lambda (_%ctx-or-str199214%_)
                    (let ((_%str199216%_
                           (if (string? _%ctx-or-str199214%_)
                               _%ctx-or-str199214%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str199214%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str199216%_))))
                 (_%not-file-empty?199035%_
                  (lambda (_%path199212%_)
                    (not (gxc#file-empty? _%path199212%_))))
                 (_%fold-libgerbil-runtime-scm199036%_
                  (lambda (_%gerbil-staticdir199205%_ _%libgerbil-scm199206%_)
                    (let ((_%gerbil-runtime-scm199210%_
                           (let ((__tmp199462
                                  (lambda (_%rtm199208%_)
                                    (path-expand
                                     (let ((__tmp199463
                                            (let ((__tmp199464
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm199208%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp199464
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp199463 '".scm"))
                                     _%gerbil-staticdir199205%_))))
                             (declare (not safe))
                             (##map __tmp199462 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates199037%_
                       (append _%gerbil-runtime-scm199210%_
                               _%libgerbil-scm199206%_)))))
                 (_%remove-duplicates199037%_
                  (lambda (_%strlst199165%_)
                    (let _%loop199167%_ ((_%rest199169%_ _%strlst199165%_)
                                         (_%result199170%_ '()))
                      (let* ((_%rest199171199179%_ _%rest199169%_)
                             (_%else199173199187%_
                              (lambda () (reverse! _%result199170%_)))
                             (_%K199175199193%_
                              (lambda (_%rest199190%_ _%path199191%_)
                                (if (member _%path199191%_ _%result199170%_)
                                    (_%loop199167%_
                                     _%rest199190%_
                                     _%result199170%_)
                                    (_%loop199167%_
                                     _%rest199190%_
                                     (cons _%path199191%_
                                           _%result199170%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest199171199179%_))
                            (let ((_%hd199176199196%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest199171199179%_)))
                                  (_%tl199177199198%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest199171199179%_))))
                              (let* ((_%path199201%_ _%hd199176199196%_)
                                     (_%rest199203%_ _%tl199177199198%_))
                                (_%K199175199193%_
                                 _%rest199203%_
                                 _%path199201%_)))
                            (_%else199173199187%_))))))
                 (_%compile-stub199038%_
                  (lambda (_%output-scm199045%_ _%output-bin199046%_)
                    (let* ((_%gerbil-home199048%_
                            (let ((__tmp199465
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp199465)))
                           (_%gerbil-libdir199050%_
                            (path-expand '"lib" _%gerbil-home199048%_))
                           (_%gerbil-staticdir199052%_
                            (path-expand '"static" _%gerbil-libdir199050%_))
                           (_%deps199054%_
                            (gxc#find-runtime-module-deps _%ctx199026%_))
                           (_%libgerbil-deps199056%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?199033%_
                               _%deps199054%_)))
                           (_%libgerbil-scm199058%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps199056%_)))
                           (_%libgerbil-scm199060%_
                            (_%fold-libgerbil-runtime-scm199036%_
                             _%gerbil-staticdir199052%_
                             _%libgerbil-scm199058%_))
                           (_%libgerbil-c199066%_
                            (map (lambda (_%g199061199063%_)
                                   (_%replace-extension199031%_
                                    _%g199061199063%_
                                    '".c"))
                                 _%libgerbil-scm199060%_))
                           (_%libgerbil-o199072%_
                            (map (lambda (_%g199067199069%_)
                                   (_%replace-extension199031%_
                                    _%g199067199069%_
                                    '".o"))
                                 _%libgerbil-scm199060%_))
                           (_%src-deps199074%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?199032%_
                               _%deps199054%_)))
                           (_%src-deps-scm199076%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps199074%_)))
                           (_%src-deps-scm199078%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?199035%_
                               _%src-deps-scm199076%_)))
                           (_%src-deps-scm199080%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm199078%_)))
                           (_%src-deps-c199086%_
                            (let ((__tmp199466
                                   (lambda (_%g199081199083%_)
                                     (_%replace-extension199031%_
                                      _%g199081199083%_
                                      '".c"))))
                              (declare (not safe))
                              (##map __tmp199466 _%src-deps-scm199080%_)))
                           (_%src-deps-o199092%_
                            (let ((__tmp199467
                                   (lambda (_%g199087199089%_)
                                     (_%replace-extension199031%_
                                      _%g199087199089%_
                                      '".o"))))
                              (declare (not safe))
                              (##map __tmp199467 _%src-deps-scm199080%_)))
                           (_%src-bin-scm199094%_
                            (gxc#find-static-module-file _%ctx199026%_))
                           (_%src-bin-scm199096%_
                            (path-expand _%src-bin-scm199094%_))
                           (_%src-bin-c199098%_
                            (_%replace-extension199031%_
                             _%src-bin-scm199096%_
                             '".c"))
                           (_%src-bin-o199100%_
                            (_%replace-extension199031%_
                             _%src-bin-scm199096%_
                             '".o"))
                           (_%output-bin199102%_
                            (path-expand _%output-bin199046%_))
                           (_%output-scm199104%_
                            (path-expand _%output-scm199045%_))
                           (_%output-c199106%_
                            (_%replace-extension199031%_
                             _%output-scm199104%_
                             '".c"))
                           (_%output-o199108%_
                            (_%replace-extension199031%_
                             _%output-scm199104%_
                             '".o"))
                           (_%output_-c199110%_
                            (_%replace-extension199031%_
                             _%output-scm199104%_
                             '"_.c"))
                           (_%output_-o199112%_
                            (_%replace-extension199031%_
                             _%output-scm199104%_
                             '"_.o"))
                           (_%gsc-link-opts199114%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts199116%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts199118%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir199052%_))
                           (_%output-ld-opts199120%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts199122%_
                            (_%get-libgerbil-ld-opts199030%_
                             _%gerbil-libdir199050%_))
                           (_%rpath199124%_
                            (gxc#gerbil-rpath _%gerbil-libdir199050%_))
                           (_%builtin-modules199128%_
                            (_%remove-duplicates199037%_
                             (let ((__tmp199468
                                    (let ((__tmp199470
                                           (lambda (_%mod199126%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod199126%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp199469
                                           (cons _%ctx199026%_
                                                 _%deps199054%_)))
                                      (declare (not safe))
                                      (##map __tmp199470 __tmp199469))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp199468)))))
                      (letrec ((_%compile-obj199131%_
                                (lambda (_%scm-path199138%_ _%c-path199139%_)
                                  (let* ((_%o-path199141%_
                                          (_%replace-extension199031%_
                                           _%c-path199139%_
                                           '".o"))
                                         (_%lock199143%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path199141%_
                                             '".lock")))
                                         (_%locked199145%_ '#f)
                                         (_%unlock199148%_
                                          (lambda ()
                                            (close-port _%locked199145%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock199143%_)))))
                                    (let _%retry199151%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock199143%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry199151%_))
                                          (begin
                                            (set! _%locked199145%_
                                                  (let ((__tmp199471
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock199143%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp199471)))
                                            (if _%locked199145%_
                                                '#!void
                                                (_%retry199151%_)))))
                                    (let ((__tmp199473
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path199141%_)))
                                                     (not _%scm-path199138%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path199138%_
                                                        _%o-path199141%_)))
                                                 (let ((_%gsc-cc-opts199162%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp199474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp199475 (cons _%c-path199139%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp199475
                            _%gsc-static-opts199118%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp199474 _%gsc-cc-opts199162%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp199472
                                           (lambda () (_%unlock199148%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp199473
                                       __tmp199472))))))
                        (let ((__tmp199476
                               (lambda ()
                                 (let ((__tmp199477
                                        (path-directory _%output-bin199102%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp199477)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp199476))
                        (gxc#with-output-to-scheme-file
                         _%output-scm199104%_
                         (lambda ()
                           (_%generate-stub199029%_
                            _%builtin-modules199128%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it199136%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp199478
                                                   (let ((__tmp199479
                                                          (let ((__tmp199480
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm199096%_
                               (cons _%output-scm199104%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp199480 _%src-deps-scm199080%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp199479
                                                      _%libgerbil-c199066%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp199478
                                               _%gsc-link-opts199114%_))))
                                     (for-each
                                      _%compile-obj199131%_
                                      (let ((__tmp199481
                                             (cons _%src-bin-scm199096%_
                                                   (cons _%output-scm199104%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp199481
                                         _%src-deps-scm199080%_))
                                      (let ((__tmp199482
                                             (cons _%src-bin-c199098%_
                                                   (cons _%output-c199106%_
                                                         (cons _%output_-c199110%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp199482
                                         _%src-deps-c199086%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin199102%_
                                                        (let ((__tmp199483
                                                               (cons _%src-bin-o199100%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o199108%_
                                   (cons _%output_-o199112%_
                                         (let ((__tmp199484
                                                (let ((__tmp199485
                                                       (let ((__tmp199487
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir199050%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts199122%_))))
                     (__tmp199486
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath199124%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp199487 __tmp199486))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp199485
                                                   _%output-ld-opts199120%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp199484
                                            _%libgerbil-o199072%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp199483 _%src-deps-o199092%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp199488
                                            (cons _%output-c199106%_
                                                  (cons _%output_-c199110%_
                                                        (cons _%output-o199108%_
                                                              (cons _%output_-o199112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp199488)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it199136%_))
                                  (_%compile-it199136%_)))
                            '#!void))))))
          (let* ((_%output-bin199040%_
                  (gxc#compile-exe-output-file _%ctx199026%_ _%opts199027%_))
                 (_%output-scm199042%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin199040%_ '"__exe.scm"))))
            (_%compile-stub199038%_
             _%output-scm199042%_
             _%output-bin199040%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx198848%_ _%opts198849%_)
        (letrec ((_%reset-declare198851%_
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
                 (_%generate-stub198852%_
                  (lambda (_%deps199017%_)
                    (let ((_%mod-main199019%_
                           (gxc#find-runtime-symbol _%ctx198848%_ 'main))
                          (_%reset-decl199020%_ (_%reset-declare198851%_))
                          (_%user-decl199021%_ (_%user-declare198853%_)))
                      (for-each
                       (lambda (_%dep199023%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl199020%_))
                         (newline)
                         (if _%user-decl199021%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl199021%_))
                               (newline))
                             '#!void)
                         (let ((__tmp199489
                                (cons 'include (cons _%dep199023%_ '()))))
                           (declare (not safe))
                           (##write __tmp199489))
                         (newline))
                       _%deps199017%_)
                      (let ((__tmp199490
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main199019%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp199490))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare198853%_
                  (lambda ()
                    (let* ((_%gsc-opts198922%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts198849%_)))
                           (_%gsc-prelude198924%_
                            (if _%gsc-opts198922%_
                                (member '"-prelude" _%gsc-opts198922%_)
                                '#f))
                           (_%gsc-prelude198926%_
                            (if _%gsc-prelude198924%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude198924%_)))
                                '#f)))
                      (let _%lp198929%_ ((_%rest198931%_
                                          (cons _%gsc-prelude198926%_ '()))
                                         (_%user-decls198932%_ '()))
                        (let* ((_%rest198933198941%_ _%rest198931%_)
                               (_%else198935198949%_
                                (lambda ()
                                  (if (null? _%user-decls198932%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls198932%_)))))
                               (_%K198937199005%_
                                (lambda (_%rest198952%_ _%expr198953%_)
                                  (let* ((_%expr198954198966%_ _%expr198953%_)
                                         (_%else198957198974%_
                                          (lambda ()
                                            (_%lp198929%_
                                             _%rest198952%_
                                             _%user-decls198932%_))))
                                    (let ((_%K198962198995%_
                                           (lambda (_%decls198993%_)
                                             (_%lp198929%_
                                              _%rest198952%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls198932%_
                                                 _%decls198993%_)))))
                                          (_%K198959198980%_
                                           (lambda (_%exprs198978%_)
                                             (_%lp198929%_
                                              (append _%exprs198978%_
                                                      _%rest198952%_)
                                              _%user-decls198932%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr198954198966%_))
                                          (let ((_%tl198964199000%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr198954198966%_)))
                                                (_%hd198963198998%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr198954198966%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd198963198998%_
                                                         'declare))
                                                (let ((_%decls199003%_
                                                       _%tl198964199000%_))
                                                  (_%K198962198995%_
                                                   _%decls199003%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd198963198998%_
                                                             'begin))
                                                    (let ((_%exprs198988%_
                                                           _%tl198964199000%_))
                                                      (_%K198959198980%_
                                                       _%exprs198988%_))
                                                    (_%else198957198974%_))))
                                          (_%else198957198974%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest198933198941%_))
                              (let ((_%hd198938199008%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest198933198941%_)))
                                    (_%tl198939199010%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest198933198941%_))))
                                (let* ((_%expr199013%_ _%hd198938199008%_)
                                       (_%rest199015%_ _%tl198939199010%_))
                                  (_%K198937199005%_
                                   _%rest199015%_
                                   _%expr199013%_)))
                              (_%else198935198949%_)))))))
                 (_%compile-stub198854%_
                  (lambda (_%output-scm198861%_ _%output-bin198862%_)
                    (let* ((_%gerbil-home198864%_
                            (let ((__tmp199491
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp199491)))
                           (_%gerbil-libdir198866%_
                            (path-expand '"lib" _%gerbil-home198864%_))
                           (_%runtime198868%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp198870%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home198864%_))
                           (_%include-gambit-sharp198872%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp198870%_
                               '"\")")))
                           (_%bin-scm198874%_
                            (gxc#find-static-module-file _%ctx198848%_))
                           (_%deps198876%_
                            (gxc#find-runtime-module-deps _%ctx198848%_))
                           (_%deps198878%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps198876%_)))
                           (_%deps198883%_
                            (let ((__tmp199492
                                   (lambda (_%$obj198880%_)
                                     (not (gxc#file-empty? _%$obj198880%_)))))
                              (declare (not safe))
                              (##filter __tmp199492 _%deps198878%_)))
                           (_%deps198887%_
                            (let ((__tmp199493
                                   (lambda (_%f198885%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f198885%_
                                             _%runtime198868%_))))))
                              (declare (not safe))
                              (##filter __tmp199493 _%deps198883%_)))
                           (_%output-base198889%_
                            (let ((__tmp199494
                                   (path-strip-extension
                                    _%output-scm198861%_)))
                              (declare (not safe))
                              (##string-append __tmp199494)))
                           (_%output-c198891%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base198889%_ '".c")))
                           (_%output-o198893%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base198889%_ '".o")))
                           (_%output-c_198895%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base198889%_ '"_.c")))
                           (_%output-o_198897%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base198889%_ '"_.o")))
                           (_%gsc-link-opts198899%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts198901%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts198903%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir198866%_)))
                           (_%output-ld-opts198905%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros198907%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp198872%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp198872%_
                                            '()))))
                           (_%gsc-link-opts198909%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts198899%_
                               _%gsc-gx-macros198907%_)))
                           (_%rpath198911%_
                            (gxc#gerbil-rpath _%gerbil-libdir198866%_))
                           (_%default-ld-options198913%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp199495
                             (lambda ()
                               (let ((__tmp199496
                                      (path-directory _%output-bin198862%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp199496)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp199495))
                      (gxc#with-output-to-scheme-file
                       _%output-scm198861%_
                       (lambda ()
                         (_%generate-stub198852%_
                          (let ((__tmp199497
                                 (let ((__tmp199498
                                        (cons _%bin-scm198874%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp199498
                                    _%deps198887%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp199497 _%runtime198868%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it198919%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_198895%_
                                                      (let ((__tmp199499
                                                             (cons _%output-scm198861%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp199499 _%gsc-link-opts198909%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp199500
                                                 (let ((__tmp199501
                                                        (cons _%output-c198891%_
                                                              (cons _%output-c_198895%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp199501
                                                    _%gsc-static-opts198903%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp199500
                                             _%gsc-cc-opts198901%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin198862%_
                                                      (cons _%output-o198893%_
                                                            (cons _%output-o_198897%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp199502
                                 (let ((__tmp199504
                                        (cons '"-L"
                                              (cons _%gerbil-libdir198866%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options198913%_))))
                                       (__tmp199503
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath198911%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp199504 __tmp199503))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp199502
                             _%output-ld-opts198905%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it198919%_))
                                (_%compile-it198919%_)))
                          '#!void)))))
          (let* ((_%output-bin198856%_
                  (gxc#compile-exe-output-file _%ctx198848%_ _%opts198849%_))
                 (_%output-scm198858%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin198856%_ '"__exe.scm"))))
            (_%compile-stub198854%_
             _%output-scm198858%_
             _%output-bin198856%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx198797%_ _%id198798%_)
        (let ((_%$e198844%_
               (let ((__tmp199506
                      (lambda (_%e198799198801%_)
                        (let* ((_%g198803198813%_ _%e198799198801%_)
                               (_%else198805198821%_ (lambda () '#f))
                               (_%K198807198825%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g198803198813%_
                                 'gx#module-export::t))
                              (let* ((_%e198808198828%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g198803198813%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e198809198831%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g198803198813%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e198810198834%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g198803198813%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e198810198834%_ '0))
                                    (let ((_%e198811198837%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g198803198813%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g198839198841%_)
                                             (eq? _%g198839198841%_
                                                  _%id198798%_))
                                           _%e198811198837%_)
                                          (_%K198807198825%_)
                                          (_%else198805198821%_)))
                                    (_%else198805198821%_)))
                              (_%else198805198821%_)))))
                     (__tmp199505
                      (##structure-ref
                       _%ctx198797%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp199506 __tmp199505))))
          (if _%$e198844%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e198844%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx198788%_ _%id198789%_)
        (let ((_%$e198791%_
               (gxc#find-export-binding _%ctx198788%_ _%id198789%_)))
          (if _%$e198791%_
              ((lambda (_%bind198794%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind198794%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id198789%_)))
                 (##structure-ref _%bind198794%_ '1 gx#binding::t '#f))
               _%$e198791%_)
              (let ((__tmp199507
                     (##structure-ref
                      _%ctx198788%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp199507
                 _%id198789%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx198654%_)
        (letrec* ((_%ht198656%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template198657%_
                   (lambda (_%in198733%_ _%phi198734%_)
                     (let ((_%iphi198736%_
                            (fx+ _%phi198734%_
                                 (##direct-structure-ref
                                  _%in198733%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports198737%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in198733%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp198739%_ ((_%rest198741%_ _%imports198737%_)
                                          (_%r198742%_ '()))
                         (let* ((_%rest198743198751%_ _%rest198741%_)
                                (_%else198745198759%_ (lambda () _%r198742%_))
                                (_%K198747198776%_
                                 (lambda (_%rest198762%_ _%in198763%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in198763%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi198736%_))
                                           (_%lp198739%_
                                            _%rest198762%_
                                            (cons _%in198763%_ _%r198742%_))
                                           (_%lp198739%_
                                            _%rest198762%_
                                            _%r198742%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in198763%_
                                              'gx#module-import::t))
                                           (let ((_%iphi198767%_
                                                  (fx+ _%phi198734%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in198763%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi198767%_))
                                                 (_%lp198739%_
                                                  _%rest198762%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in198763%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r198742%_))
                                                 (_%lp198739%_
                                                  _%rest198762%_
                                                  _%r198742%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in198763%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi198770%_
                                                      (fx+ _%iphi198736%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in198763%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi198770%_))
                                                     (_%lp198739%_
                                                      _%rest198762%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in198763%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r198742%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi198770%_))
                                                         (_%lp198739%_
                                                          _%rest198762%_
                                                          (let ((__tmp199508
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template198657%_
                          _%in198763%_
                          _%iphi198736%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r198742%_ __tmp199508)))
                 (_%lp198739%_ _%rest198762%_ _%r198742%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp198739%_
                                                _%rest198762%_
                                                _%r198742%_)))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest198743198751%_))
                               (let ((_%hd198748198779%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest198743198751%_)))
                                     (_%tl198749198781%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest198743198751%_))))
                                 (let* ((_%in198784%_ _%hd198748198779%_)
                                        (_%rest198786%_ _%tl198749198781%_))
                                   (_%K198747198776%_
                                    _%rest198786%_
                                    _%in198784%_)))
                               (_%else198745198759%_)))))))
                  (_%find-deps198658%_
                   (lambda (_%rest198666%_ _%deps198667%_)
                     (let* ((_%rest198668198676%_ _%rest198666%_)
                            (_%else198670198684%_ (lambda () _%deps198667%_))
                            (_%K198672198721%_
                             (lambda (_%rest198687%_ _%hd198688%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd198688%_
                                      'gx#module-context::t))
                                   (let ((_%id198691%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd198688%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports198692%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd198688%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get
                                            _%ht198656%_
                                            _%id198691%_))
                                         (_%find-deps198658%_
                                          _%rest198687%_
                                          _%deps198667%_)
                                         (let ((_%$e198695%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd198688%_))))
                                           (if _%$e198695%_
                                               ((lambda (_%pre198698%_)
                                                  (let ((_%xdeps198700%_
                                                         (_%find-deps198658%_
                                                          (cons _%pre198698%_
                                                                _%imports198692%_)
                                                          _%deps198667%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _%ht198656%_
                                                       _%id198691%_
                                                       _%hd198688%_))
                                                    (_%find-deps198658%_
                                                     _%rest198687%_
                                                     (cons _%hd198688%_
                                                           _%xdeps198700%_))))
                                                _%$e198695%_)
                                               (let ((_%xdeps198703%_
                                                      (_%find-deps198658%_
                                                       _%imports198692%_
                                                       _%deps198667%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _%ht198656%_
                                                    _%id198691%_
                                                    _%hd198688%_))
                                                 (_%find-deps198658%_
                                                  _%rest198687%_
                                                  (cons _%hd198688%_
                                                        _%xdeps198703%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd198688%_
                                          'gx#prelude-context::t))
                                       (let ((_%id198706%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd198688%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _%ht198656%_
                                                _%id198706%_))
                                             (_%find-deps198658%_
                                              _%rest198687%_
                                              _%deps198667%_)
                                             (let ((_%xdeps198710%_
                                                    (_%find-deps198658%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd198688%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps198667%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _%ht198656%_
                                                      _%id198706%_))
                                                   (_%find-deps198658%_
                                                    _%rest198687%_
                                                    _%xdeps198710%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _%ht198656%_
                                                        _%id198706%_
                                                        _%hd198688%_))
                                                     (_%find-deps198658%_
                                                      _%rest198687%_
                                                      (cons _%hd198688%_
                                                            _%xdeps198710%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd198688%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd198688%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps198658%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd198688%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest198687%_)
                                                _%deps198667%_)
                                               (_%find-deps198658%_
                                                _%rest198687%_
                                                _%deps198667%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd198688%_
                                                  'gx#module-export::t))
                                               (_%find-deps198658%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd198688%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest198687%_)
                                                _%deps198667%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd198688%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd198688%_ '2 '#f '#f)))
               (_%find-deps198658%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd198688%_ '1 '#f '#f))
                      _%rest198687%_)
                _%deps198667%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd198688%_ '2 '#f '#f)))
                   (let ((_%xdeps198717%_
                          (_%import-set-template198657%_ _%hd198688%_ '0)))
                     (_%find-deps198658%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest198687%_ _%xdeps198717%_))
                      _%deps198667%_))
                   (_%find-deps198658%_ _%rest198687%_ _%deps198667%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd198688%_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest198668198676%_))
                           (let ((_%hd198673198724%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest198668198676%_)))
                                 (_%tl198674198726%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest198668198676%_))))
                             (let* ((_%hd198729%_ _%hd198673198724%_)
                                    (_%rest198731%_ _%tl198674198726%_))
                               (_%K198672198721%_
                                _%rest198731%_
                                _%hd198729%_)))
                           (_%else198670198684%_))))))
          (let ((__tmp199509
                 (filter gx#expander-context-id
                         (_%find-deps198658%_
                          (let ((_%$e198660%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx198654%_))))
                            (if _%$e198660%_
                                ((lambda (_%pre198663%_)
                                   (cons _%pre198663%_
                                         (##structure-ref
                                          _%ctx198654%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e198660%_)
                                (##structure-ref
                                 _%ctx198654%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp199509)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx198584%_)
        (let* ((_%context-id198586%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx198584%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx198584%_ '1 '#f '#f))
                    (string->symbol _%ctx198584%_)))
               (_%scm198588%_
                (let ((__tmp199510
                       (gxc#static-module-name _%context-id198586%_)))
                  (declare (not safe))
                  (##string-append __tmp199510 '".scm")))
               (_%dirs198590%_ (let () (declare (not safe)) (load-path)))
               (_%dirs198596%_
                (let ((_%user-libpath198592%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath198592%_
                      (let ((_%user-libpath198594%_
                             (path-expand '"lib" _%user-libpath198592%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath198594%_ _%dirs198590%_))
                            _%dirs198590%_
                            (cons _%user-libpath198594%_ _%dirs198590%_)))
                      _%dirs198590%_)))
               (_%dirs198606%_
                (let ((_%$e198598%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e198598%_
                      ((lambda (_%g198600198602%_)
                         (cons _%g198600198602%_ _%dirs198596%_))
                       _%$e198598%_)
                      _%dirs198596%_)))
               (_%dirs198612%_
                (let ((__tmp199511
                       (lambda (_%g198607198609%_)
                         (path-expand '"static" _%g198607198609%_))))
                  (declare (not safe))
                  (##map __tmp199511 _%dirs198606%_))))
          (let _%lp198615%_ ((_%rest198617%_ _%dirs198612%_))
            (let* ((_%rest198618198626%_ _%rest198617%_)
                   (_%else198620198634%_
                    (lambda ()
                      (let ((__tmp199512
                             (##structure-ref
                              _%ctx198584%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp199512
                         _%scm198588%_))))
                   (_%K198622198642%_
                    (lambda (_%rest198637%_ _%dir198638%_)
                      (let ((_%path198640%_
                             (path-expand _%scm198588%_ _%dir198638%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path198640%_))
                            _%path198640%_
                            (_%lp198615%_ _%rest198637%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest198618198626%_))
                  (let ((_%hd198623198645%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest198618198626%_)))
                        (_%tl198624198647%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest198618198626%_))))
                    (let* ((_%dir198650%_ _%hd198623198645%_)
                           (_%rest198652%_ _%tl198624198647%_))
                      (_%K198622198642%_ _%rest198652%_ _%dir198650%_)))
                  (_%else198620198634%_)))))))
    (define gxc#file-empty?
      (lambda (_%path198582%_)
        (zero? (let ((__tmp199513 (file-info _%path198582%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp199513)))))
    (define gxc#compile-top-module
      (lambda (_%ctx198578%_)
        (let ((__tmp199517
               (lambda ()
                 (let ((__tmp199518
                        (##structure-ref
                         _%ctx198578%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp199518))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp199519
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx198578%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp199519))
                     '#!void)
                 (gxc#collect-bindings _%ctx198578%_)
                 (gxc#compile-runtime-code _%ctx198578%_)
                 (gxc#compile-meta-code _%ctx198578%_)
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx198578%_)
                     '#!void)))
              (__tmp199516
               (let ((__obj199440
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj199440))
                 __obj199440))
              (__tmp199515 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp199514
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
           __tmp199517
           gx#current-expander-context
           _%ctx198578%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp199516
           gxc#current-compile-runtime-sections
           __tmp199515
           gxc#current-compile-runtime-names
           __tmp199514))))
    (define gxc#collect-bindings
      (lambda (_%ctx198576%_)
        (let ((__tmp199520
               (##structure-ref _%ctx198576%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp199520))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx198524%_)
        (letrec ((_%compile1198526%_
                  (lambda (_%ctx198565%_)
                    (let* ((_%code198567%_
                            (##structure-ref
                             _%ctx198565%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm198571%_
                            (let ((_%idstr198569%_
                                   (let ((__tmp199521
                                          (##structure-ref
                                           _%ctx198565%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp199521))))
                              (declare (not safe))
                              (##string-append _%idstr198569%_ '"~0")))
                           (_%rtc?198573%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code198567%_))))
                      (if _%rtc?198573%_
                          (let ((__tmp199522
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp199522
                             _%ctx198565%_
                             _%rtm198571%_))
                          '#!void)
                      (_%generate-runtime-code198528%_
                       _%ctx198565%_
                       _%code198567%_
                       (if _%rtc?198573%_ _%rtm198571%_ '#f)))))
                 (_%context-timestamp198527%_
                  (lambda (_%ctx198563%_)
                    (let ((__tmp199523
                           (let ((__tmp199524
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx198563%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp199524 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp199523))))
                 (_%generate-runtime-code198528%_
                  (lambda (_%ctx198535%_ _%code198536%_ _%rtm198537%_)
                    (let* ((_%runtime-code?198539%_ (if _%rtm198537%_ '#t '#f))
                           (_%lifts198541%_ (box '()))
                           (_%runtime-code198544%_
                            (if _%runtime-code?198539%_
                                (let ((__tmp199527
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code198536%_))))
                                      (__tmp199526
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp199525
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp199527
                                   gx#current-expander-context
                                   _%ctx198535%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts198541%_
                                   gxc#current-compile-marks
                                   __tmp199526
                                   gxc#current-compile-identifiers
                                   __tmp199525))
                                '#f))
                           (_%runtime-code198546%_
                            (if _%runtime-code?198539%_
                                (if (null? (unbox _%lifts198541%_))
                                    _%runtime-code198544%_
                                    (cons 'begin
                                          (let ((__tmp199529
                                                 (cons _%runtime-code198544%_
                                                       '()))
                                                (__tmp199528
                                                 (reverse (unbox _%lifts198541%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp199529
                                             __tmp199528))))
                                '#f))
                           (_%runtime-code198548%_
                            (if _%runtime-code?198539%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp198527%_
                                                         _%ctx198535%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code198546%_ '())))
                                '#f))
                           (_%loader-code198551%_
                            (let ((__tmp199530
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code198536%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp199530
                               gx#current-expander-context
                               _%ctx198535%_)))
                           (_%loader-code198553%_
                            (cons 'begin
                                  (cons _%loader-code198551%_
                                        (cons (if _%runtime-code?198539%_
                                                  (cons 'load-module
                                                        (cons _%rtm198537%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0198555%_
                            (gxc#compile-output-file _%ctx198535%_ '0 '".scm"))
                           (_%scmrt198557%_
                            (gxc#compile-output-file
                             _%ctx198535%_
                             '#f
                             '".scm"))
                           (_%scms198559%_
                            (gxc#compile-static-output-file _%ctx198535%_)))
                      (if _%runtime-code?198539%_
                          (gxc#compile-scm-file__0
                           _%scm0198555%_
                           _%runtime-code198548%_)
                          '#!void)
                      (let ((__tmp199531
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt198557%_
                                _%loader-code198553%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp199531
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms198559%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms198559%_))
                          '#!void)
                      (if _%runtime-code?198539%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0198555%_ _%scms198559%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms198559%_ void)))))))
          (let* ((_%all-modules198530%_
                  (cons _%ctx198524%_ (gxc#lift-nested-modules _%ctx198524%_)))
                 (__tmp199532
                  (lambda (_%ctx198532%_)
                    (let ((__tmp199533
                           (lambda () (_%compile1198526%_ _%ctx198532%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp199533
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp199532 _%all-modules198530%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx198424%_)
        (letrec ((_%compile-ssi198426%_
                  (lambda (_%code198492%_)
                    (let* ((_%path198494%_
                            (gxc#compile-output-file
                             _%ctx198424%_
                             '#f
                             '".ssi"))
                           (_%prelude198506%_
                            (let* ((_%super198496%_
                                    (##structure-ref
                                     _%ctx198424%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e198498%_
                                    (##structure-ref
                                     _%super198496%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e198498%_
                                  ((lambda (_%g198500198502%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g198500198502%_)))
                                   _%$e198498%_)
                                  ':<root>)))
                           (_%ns198508%_
                            (##structure-ref
                             _%ctx198424%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr198510%_
                            (symbol->string
                             (##structure-ref
                              _%ctx198424%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg198518%_
                            (let ((_%$e198512%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr198510%_ '#\/))))
                              (if _%$e198512%_
                                  ((lambda (_%x198515%_)
                                     (let ((__tmp199534
                                            (substring
                                             _%idstr198510%_
                                             '0
                                             _%x198515%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp199534)))
                                   _%$e198512%_)
                                  '#f)))
                           (_%rt198520%_
                            (let ((__tmp199535
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp199535 _%ctx198424%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path198494%_))
                      (gxc#with-output-to-scheme-file
                       _%path198494%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude198506%_))
                         (if _%pkg198518%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg198518%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns198508%_))
                         (newline)
                         (pretty-print _%code198492%_)
                         (if _%rt198520%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt198520%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi198427%_
                  (lambda (_%part198432%_)
                    (let* ((_%part198433198446%_ _%part198432%_)
                           (_%E198435198450%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part198433198446%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K198436198461%_
                            (lambda (_%code198453%_
                                     _%n198454%_
                                     _%phi198455%_
                                     _%phi-ctx198456%_)
                              (let ((_%code198459%_
                                     (let ((__tmp199536
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code198453%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp199536
                                        gx#current-expander-context
                                        _%phi-ctx198456%_
                                        gx#current-expander-phi
                                        _%phi198455%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx198424%_
                                  _%n198454%_
                                  '".scm")
                                 _%code198459%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part198433198446%_))
                          (let ((_%hd198437198464%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part198433198446%_)))
                                (_%tl198438198466%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part198433198446%_))))
                            (let ((_%phi-ctx198469%_ _%hd198437198464%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl198438198466%_))
                                  (let ((_%hd198439198471%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl198438198466%_)))
                                        (_%tl198440198473%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl198438198466%_))))
                                    (let ((_%phi198476%_ _%hd198439198471%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl198440198473%_))
                                          (let ((_%hd198441198478%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl198440198473%_)))
                                                (_%tl198442198480%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl198440198473%_))))
                                            (let ((_%n198483%_
                                                   _%hd198441198478%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl198442198480%_))
                                                  (let ((_%hd198443198485%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl198442198480%_)))
                                                        (_%tl198444198487%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl198442198480%_))))
                                                    (let ((_%code198490%_
                                                           _%hd198443198485%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl198444198487%_))
                                                          (_%K198436198461%_
                                                           _%code198490%_
                                                           _%n198483%_
                                                           _%phi198476%_
                                                           _%phi-ctx198469%_)
                                                          (_%E198435198450%_))))
                                                  (_%E198435198450%_))))
                                          (_%E198435198450%_))))
                                  (_%E198435198450%_))))
                          (_%E198435198450%_))))))
          (let ((_g199537_ (gxc#generate-meta-code _%ctx198424%_)))
            (begin
              (let ((_g199538_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g199537_)
                           (##vector-length _g199537_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g199538_ 2)))
                    (error "Context expects 2 values" _g199538_)))
              (let ((_%ssi-code198429%_
                     (let () (declare (not safe)) (##vector-ref _g199537_ 0)))
                    (_%phi-code198430%_
                     (let () (declare (not safe)) (##vector-ref _g199537_ 1))))
                (begin
                  (_%compile-ssi198426%_ _%ssi-code198429%_)
                  (for-each _%compile-phi198427%_ _%phi-code198430%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx198406%_)
        (let* ((_%path198408%_
                (gxc#compile-output-file _%ctx198406%_ '#f '".ssxi.ss"))
               (_%code198410%_
                (let ((__tmp199539
                       (##structure-ref
                        _%ctx198406%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp199539)))
               (_%idstr198412%_
                (symbol->string
                 (##structure-ref
                  _%ctx198406%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg198420%_
                (let ((_%$e198414%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr198412%_ '#\/))))
                  (if _%$e198414%_
                      ((lambda (_%x198417%_)
                         (let ((__tmp199540
                                (substring _%idstr198412%_ '0 _%x198417%_)))
                           (declare (not safe))
                           (##string->symbol __tmp199540)))
                       _%$e198414%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path198408%_))
          (gxc#with-output-to-scheme-file
           _%path198408%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg198420%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg198420%_))
                 '#!void)
             (newline)
             (pretty-print _%code198410%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx198399%_)
        (let* ((_%state198401%_
                (let ((__obj199441
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj199441 _%ctx198399%_))
                  __obj199441))
               (_%ssi-code198403%_
                (let ((__tmp199541
                       (##structure-ref
                        _%ctx198399%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state198401%_
                   __tmp199541))))
          (values _%ssi-code198403%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state198401%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx198392%_)
        (let ((_%lifts198394%_ (box '())))
          (let ((__tmp199544
                 (lambda ()
                   (let ((_%code198397%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx198392%_))))
                     (if (null? (unbox _%lifts198394%_))
                         _%code198397%_
                         (cons 'begin
                               (let ((__tmp199546 (cons _%code198397%_ '()))
                                     (__tmp199545
                                      (reverse (unbox _%lifts198394%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp199546 __tmp199545)))))))
                (__tmp199543
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp199542
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp199544
             gxc#current-compile-lift
             _%lifts198394%_
             gxc#current-compile-marks
             __tmp199543
             gxc#current-compile-identifiers
             __tmp199542)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx198388%_)
        (let ((_%modules198390%_ (box '())))
          (let ((__tmp199547
                 (##structure-ref _%ctx198388%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules198390%_ __tmp199547))
          (reverse (unbox _%modules198390%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path198368%_ _%code198369%_ _%phi?198370%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path198368%_))
        (gxc#with-output-to-scheme-file
         _%path198368%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp199548
                                           (if _%phi?198370%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp199548)))))))
           (pretty-print _%code198369%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it198374%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path198368%_ _%phi?198370%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp199549
                         (cons 'compile-file (cons _%path198368%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it198374%_ __tmp199549))
                  (_%compile-it198374%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path198379%_ _%code198380%_)
        (let ((_%phi?198382%_ '#f))
          (gxc#compile-scm-file__%
           _%path198379%_
           _%code198380%_
           _%phi?198382%_))))
    (define gxc#compile-scm-file
      (lambda _g199551_
        (let ((_g199550_ (let () (declare (not safe)) (##length _g199551_))))
          (cond ((let () (declare (not safe)) (##fx= _g199550_ 2))
                 (apply gxc#compile-scm-file__0 _g199551_))
                ((let () (declare (not safe)) (##fx= _g199550_ 3))
                 (apply gxc#compile-scm-file__% _g199551_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g199551_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?198269%_)
        (let _%lp198271%_ ((_%rest198273%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts198274%_ '()))
          (let* ((_%rest198275198295%_ _%rest198273%_)
                 (_%else198279198303%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts198274%_)))
                        (reverse _%opts198274%_)))))
            (let ((_%K198289198346%_
                   (lambda (_%rest198344%_)
                     (_%lp198271%_ _%rest198344%_ _%opts198274%_)))
                  (_%K198284198328%_
                   (lambda (_%rest198326%_)
                     (_%lp198271%_ _%rest198326%_ _%opts198274%_)))
                  (_%K198281198310%_
                   (lambda (_%rest198307%_ _%opt198308%_)
                     (_%lp198271%_
                      _%rest198307%_
                      (cons _%opt198308%_ _%opts198274%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest198275198295%_))
                  (let ((_%tl198291198351%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest198275198295%_)))
                        (_%hd198290198349%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest198275198295%_))))
                    (if (equal? _%hd198290198349%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl198291198351%_))
                            (let* ((_%tl198293198354%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl198291198351%_)))
                                   (_%rest198357%_ _%tl198293198354%_))
                              (_%K198289198346%_ _%rest198357%_))
                            (let ((_%opt198318%_ _%hd198290198349%_)
                                  (_%rest198320%_ _%tl198291198351%_))
                              (_%K198281198310%_
                               _%rest198320%_
                               _%opt198318%_)))
                        (if (equal? _%hd198290198349%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl198291198351%_))
                                (let* ((_%tl198288198336%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl198291198351%_)))
                                       (_%rest198339%_ _%tl198288198336%_))
                                  (_%K198284198328%_ _%rest198339%_))
                                (let ((_%opt198318%_ _%hd198290198349%_)
                                      (_%rest198320%_ _%tl198291198351%_))
                                  (_%K198281198310%_
                                   _%rest198320%_
                                   _%opt198318%_)))
                            (let ((_%opt198318%_ _%hd198290198349%_)
                                  (_%rest198320%_ _%tl198291198351%_))
                              (_%K198281198310%_
                               _%rest198320%_
                               _%opt198318%_)))))
                  (_%else198279198303%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?198363%_ '#f)) (gxc#gsc-link-options__% _%phi?198363%_))))
    (define gxc#gsc-link-options
      (lambda _g199553_
        (let ((_g199552_ (let () (declare (not safe)) (##length _g199553_))))
          (cond ((let () (declare (not safe)) (##fx= _g199552_ 0))
                 (apply gxc#gsc-link-options__0 _g199553_))
                ((let () (declare (not safe)) (##fx= _g199552_ 1))
                 (apply gxc#gsc-link-options__% _g199553_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g199553_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords198118%_ _%static?198114198119%_ _%phi?198121%_)
        (let ((_%static?198123%_
               (if (eq? _%static?198114198119%_ absent-value)
                   '#f
                   _%static?198114198119%_)))
          (if _%phi?198121%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp198125%_ ((_%rest198127%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts198128%_ '()))
                (let* ((_%rest198129198155%_ _%rest198127%_)
                       (_%else198134198163%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts198128%_)))
                              (reverse! _%opts198128%_)))))
                  (let ((_%K198149198226%_
                         (lambda (_%rest198223%_ _%opt198224%_)
                           (if _%static?198123%_
                               (_%lp198125%_
                                _%rest198223%_
                                (cons _%opt198224%_
                                      (cons '"-cc-options" _%opts198128%_)))
                               (_%lp198125%_ _%rest198223%_ _%opts198128%_))))
                        (_%K198144198203%_
                         (lambda (_%rest198200%_ _%opt198201%_)
                           (_%lp198125%_
                            _%rest198200%_
                            (cons _%opt198201%_
                                  (cons '"-cc-options" _%opts198128%_)))))
                        (_%K198139198183%_
                         (lambda (_%rest198181%_)
                           (_%lp198125%_ _%rest198181%_ _%opts198128%_)))
                        (_%K198136198169%_
                         (lambda (_%rest198167%_)
                           (_%lp198125%_ _%rest198167%_ _%opts198128%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest198129198155%_))
                        (let ((_%tl198151198231%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest198129198155%_)))
                              (_%hd198150198229%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest198129198155%_))))
                          (if (equal? _%hd198150198229%_ '"-cc-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl198151198231%_))
                                  (let ((_%tl198153198236%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl198151198231%_)))
                                        (_%hd198152198234%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl198151198231%_))))
                                    (if (equal? _%hd198152198234%_ '"-Bstatic")
                                        (let ((_%opt198239%_
                                               _%hd198152198234%_)
                                              (_%rest198241%_
                                               _%tl198153198236%_))
                                          (_%K198149198226%_
                                           _%rest198241%_
                                           _%opt198239%_))
                                        (let ((_%opt198216%_
                                               _%hd198152198234%_)
                                              (_%rest198218%_
                                               _%tl198153198236%_))
                                          (_%K198144198203%_
                                           _%rest198218%_
                                           _%opt198216%_))))
                                  (let ((_%rest198175%_ _%tl198151198231%_))
                                    (_%K198136198169%_ _%rest198175%_)))
                              (if (equal? _%hd198150198229%_ '"-ld-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl198151198231%_))
                                      (let* ((_%tl198143198191%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl198151198231%_)))
                                             (_%rest198194%_
                                              _%tl198143198191%_))
                                        (_%K198139198183%_ _%rest198194%_))
                                      (let ((_%rest198175%_
                                             _%tl198151198231%_))
                                        (_%K198136198169%_ _%rest198175%_)))
                                  (let ((_%rest198175%_ _%tl198151198231%_))
                                    (_%K198136198169%_ _%rest198175%_)))))
                        (_%else198134198163%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords198246%_ _%static?198114198247%_)
        (let ((_%phi?198249%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords198246%_
           _%static?198114198247%_
           _%phi?198249%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g199555_
        (let ((_g199554_ (let () (declare (not safe)) (##length _g199555_))))
          (cond ((let () (declare (not safe)) (##fx= _g199554_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g199555_))
                ((let () (declare (not safe)) (##fx= _g199554_ 3))
                 (apply gxc#gsc-cc-options__%__% _g199555_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g199555_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords198258%_ . _%args198259%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords198258%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords198258%_
                  'static:
                  absent-value))
               _%args198259%_)))
    (define gxc#gsc-cc-options
      (lambda _%args198115198265%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args198115198265%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords197963%_ _%static?197959197964%_ _%phi?197966%_)
        (let ((_%static?197968%_
               (if (eq? _%static?197959197964%_ absent-value)
                   '#f
                   _%static?197959197964%_)))
          (if _%phi?197966%_
              '()
              (let _%lp197970%_ ((_%rest197972%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts197973%_ '()))
                (let* ((_%rest197974198000%_ _%rest197972%_)
                       (_%else197979198008%_
                        (lambda () (reverse! _%opts197973%_))))
                  (let ((_%K197994198071%_
                         (lambda (_%rest198068%_ _%opt198069%_)
                           (if _%static?197968%_
                               (_%lp197970%_
                                _%rest198068%_
                                (cons _%opt198069%_
                                      (cons '"-ld-options" _%opts197973%_)))
                               (_%lp197970%_ _%rest198068%_ _%opts197973%_))))
                        (_%K197989198048%_
                         (lambda (_%rest198045%_ _%opt198046%_)
                           (_%lp197970%_
                            _%rest198045%_
                            (cons _%opt198046%_
                                  (cons '"-ld-options" _%opts197973%_)))))
                        (_%K197984198028%_
                         (lambda (_%rest198026%_)
                           (_%lp197970%_ _%rest198026%_ _%opts197973%_)))
                        (_%K197981198014%_
                         (lambda (_%rest198012%_)
                           (_%lp197970%_ _%rest198012%_ _%opts197973%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest197974198000%_))
                        (let ((_%tl197996198076%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest197974198000%_)))
                              (_%hd197995198074%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest197974198000%_))))
                          (if (equal? _%hd197995198074%_ '"-ld-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl197996198076%_))
                                  (let ((_%tl197998198081%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl197996198076%_)))
                                        (_%hd197997198079%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl197996198076%_))))
                                    (if (equal? _%hd197997198079%_ '"-static")
                                        (let ((_%opt198084%_
                                               _%hd197997198079%_)
                                              (_%rest198086%_
                                               _%tl197998198081%_))
                                          (_%K197994198071%_
                                           _%rest198086%_
                                           _%opt198084%_))
                                        (let ((_%opt198061%_
                                               _%hd197997198079%_)
                                              (_%rest198063%_
                                               _%tl197998198081%_))
                                          (_%K197989198048%_
                                           _%rest198063%_
                                           _%opt198061%_))))
                                  (let ((_%rest198020%_ _%tl197996198076%_))
                                    (_%K197981198014%_ _%rest198020%_)))
                              (if (equal? _%hd197995198074%_ '"-cc-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl197996198076%_))
                                      (let* ((_%tl197988198036%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl197996198076%_)))
                                             (_%rest198039%_
                                              _%tl197988198036%_))
                                        (_%K197984198028%_ _%rest198039%_))
                                      (let ((_%rest198020%_
                                             _%tl197996198076%_))
                                        (_%K197981198014%_ _%rest198020%_)))
                                  (let ((_%rest198020%_ _%tl197996198076%_))
                                    (_%K197981198014%_ _%rest198020%_)))))
                        (_%else197979198008%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords198091%_ _%static?197959198092%_)
        (let ((_%phi?198094%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords198091%_
           _%static?197959198092%_
           _%phi?198094%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g199557_
        (let ((_g199556_ (let () (declare (not safe)) (##length _g199557_))))
          (cond ((let () (declare (not safe)) (##fx= _g199556_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g199557_))
                ((let () (declare (not safe)) (##fx= _g199556_ 3))
                 (apply gxc#gsc-ld-options__%__% _g199557_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g199557_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords198103%_ . _%args198104%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords198103%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords198103%_
                  'static:
                  absent-value))
               _%args198104%_)))
    (define gxc#gsc-ld-options
      (lambda _%args197960198110%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args197960198110%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir197954%_)
        (let ((_%user-staticdir197956%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir197954%_
                       '" -I "
                       _%user-staticdir197956%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp197866%_ ((_%rest197868%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts197869%_ '()))
          (let* ((_%rest197870197890%_ _%rest197868%_)
                 (_%else197874197898%_ (lambda () _%opts197869%_)))
            (let ((_%K197884197941%_
                   (lambda (_%rest197939%_)
                     (_%lp197866%_ _%rest197939%_ _%opts197869%_)))
                  (_%K197879197919%_
                   (lambda (_%rest197916%_ _%opt197917%_)
                     (_%lp197866%_
                      _%rest197916%_
                      (let ((__tmp199558
                             (let ((__tmp199559
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt197917%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp199559))))
                        (declare (not safe))
                        (##append _%opts197869%_ __tmp199558)))))
                  (_%K197876197904%_
                   (lambda (_%rest197902%_)
                     (_%lp197866%_ _%rest197902%_ _%opts197869%_))))
              (if (let () (declare (not safe)) (##pair? _%rest197870197890%_))
                  (let ((_%tl197886197946%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest197870197890%_)))
                        (_%hd197885197944%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest197870197890%_))))
                    (if (equal? _%hd197885197944%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl197886197946%_))
                            (let* ((_%tl197888197949%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl197886197946%_)))
                                   (_%rest197952%_ _%tl197888197949%_))
                              (_%K197884197941%_ _%rest197952%_))
                            (let ((_%rest197910%_ _%tl197886197946%_))
                              (_%K197876197904%_ _%rest197910%_)))
                        (if (equal? _%hd197885197944%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl197886197946%_))
                                (let ((_%tl197883197929%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl197886197946%_)))
                                      (_%hd197882197927%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl197886197946%_))))
                                  (let ((_%opt197932%_ _%hd197882197927%_)
                                        (_%rest197934%_ _%tl197883197929%_))
                                    (_%K197879197919%_
                                     _%rest197934%_
                                     _%opt197932%_)))
                                (let ((_%rest197910%_ _%tl197886197946%_))
                                  (_%K197876197904%_ _%rest197910%_)))
                            (let ((_%rest197910%_ _%tl197886197946%_))
                              (_%K197876197904%_ _%rest197910%_)))))
                  (_%else197874197898%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str197863%_)
        (not (let () (declare (not safe)) (string-empty? _%str197863%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path197856%_ _%phi?197857%_)
        (let ((_%gsc-link-opts197859%_
               (gxc#gsc-link-options__% _%phi?197857%_))
              (_%gsc-cc-opts197860%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?197857%_))
              (_%gsc-ld-opts197861%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?197857%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp199560
                  (let ((__tmp199561
                         (let ((__tmp199562 (cons _%path197856%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp199562
                            _%gsc-link-opts197859%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp199561 _%gsc-ld-opts197861%_))))
             (declare (not safe))
             (__foldr1 cons __tmp199560 _%gsc-cc-opts197860%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx197822%_ _%n197823%_ _%ext197824%_)
        (letrec ((_%module-relative-path197826%_
                  (lambda (_%ctx197854%_)
                    (path-strip-directory
                     (let ((__tmp199563
                            (##structure-ref
                             _%ctx197854%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp199563)))))
                 (_%module-source-directory197827%_
                  (lambda (_%ctx197850%_)
                    (path-directory
                     (let ((_%mpath197852%_
                            (##structure-ref
                             _%ctx197850%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath197852%_)
                           _%mpath197852%_
                           (last _%mpath197852%_))))))
                 (_%section-string197828%_
                  (lambda (_%n197844%_)
                    (if (number? _%n197844%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n197844%_))
                        (if (symbol? _%n197844%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n197844%_))
                            (if (string? _%n197844%_)
                                _%n197844%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n197844%_)))))))
                 (_%file-name197829%_
                  (lambda (_%path197842%_)
                    (if _%n197823%_
                        (string-append
                         _%path197842%_
                         '"~"
                         (_%section-string197828%_ _%n197823%_)
                         _%ext197824%_)
                        (string-append _%path197842%_ _%ext197824%_))))
                 (_%file-path197830%_
                  (lambda ()
                    (let ((_%$e197836%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e197836%_
                          ((lambda (_%outdir197839%_)
                             (path-expand
                              (_%file-name197829%_
                               (let ((__tmp199564
                                      (##structure-ref
                                       _%ctx197822%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp199564)))
                              _%outdir197839%_))
                           _%$e197836%_)
                          (path-expand
                           (_%file-name197829%_
                            (_%module-relative-path197826%_ _%ctx197822%_))
                           (_%module-source-directory197827%_
                            _%ctx197822%_)))))))
          (let ((_%path197832%_ (_%file-path197830%_)))
            (let ((__tmp199565
                   (lambda ()
                     (let ((__tmp199566 (path-directory _%path197832%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp199566)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp199565))
            _%path197832%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx197803%_)
        (letrec ((_%file-name197805%_
                  (lambda (_%id197820%_)
                    (let ((__tmp199567 (gxc#static-module-name _%id197820%_)))
                      (declare (not safe))
                      (##string-append __tmp199567 '".scm"))))
                 (_%file-path197806%_
                  (lambda ()
                    (let* ((_%file197812%_
                            (_%file-name197805%_
                             (##structure-ref
                              _%ctx197803%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e197814%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e197814%_
                          ((lambda (_%outdir197817%_)
                             (path-expand
                              _%file197812%_
                              (path-expand '"static" _%outdir197817%_)))
                           _%$e197814%_)
                          (path-expand _%file197812%_ '"static"))))))
          (let ((_%path197808%_ (_%file-path197806%_)))
            (let ((__tmp199568
                   (lambda ()
                     (let ((__tmp199569 (path-directory _%path197808%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp199569)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp199568))
            _%path197808%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx197796%_ _%opts197797%_)
        (let ((_%$e197799%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts197797%_))))
          (if _%$e197799%_
              (values _%$e197799%_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx197796%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr197786%_)
        (if (string? _%idstr197786%_)
            (let* ((_%str197789%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr197786%_)))
                   (_%strs197791%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str197789%_ '#\/))))
              (declare (not safe))
              (string-join _%strs197791%_ '"__"))
            (if (symbol? _%idstr197786%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr197786%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr197786%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp199570
               (let ((__tmp199571 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp199571 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp199570))))
    (define gxc#invoke__%
      (lambda (_%@@keywords197750%_
               _%stdout-redirection197746197751%_
               _%stderr-redirection197747197753%_
               _%program197755%_
               _%args197756%_)
        (let* ((_%stdout-redirection197758%_
                (if (eq? _%stdout-redirection197746197751%_ absent-value)
                    '#f
                    _%stdout-redirection197746197751%_))
               (_%stderr-redirection197760%_
                (if (eq? _%stderr-redirection197747197753%_ absent-value)
                    '#f
                    _%stderr-redirection197747197753%_)))
          (let ((__tmp199572 (cons _%program197755%_ _%args197756%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp199572))
          (let* ((_%proc197762%_
                  (open-process
                   (cons 'path:
                         (cons _%program197755%_
                               (cons 'arguments:
                                     (cons _%args197756%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection197758%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection197760%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output197767%_
                  (if (or _%stdout-redirection197758%_
                          _%stderr-redirection197760%_)
                      (read-line _%proc197762%_ '#f)
                      '#f))
                 (_%status197770%_ (process-status _%proc197762%_)))
            (let () (declare (not safe)) (##close-port _%proc197762%_))
            (if (zero? _%status197770%_)
                '#!void
                (begin
                  (display _%output197767%_)
                  (let ((__tmp199573 (cons _%program197755%_ _%args197756%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp199573
                     _%status197770%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords197775%_ . _%args197776%_)
        (apply gxc#invoke__%
               _%@@keywords197775%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords197775%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords197775%_
                  'stderr-redirection:
                  absent-value))
               _%args197776%_)))
    (define gxc#invoke
      (lambda _%args197748197782%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args197748197782%_)))))
