(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1734278452)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp203574 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp203574))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp203575 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp203575))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path203431%_ _%fun203432%_)
        (with-output-to-file
         (cons 'path: (cons _%path203431%_ gxc#scheme-file-settings))
         _%fun203432%_)))
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
      (lambda (_%gerbil-libdir203426%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir203426%_)))
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
      (lambda (_%dir203424%_) (delete-file-or-directory _%dir203424%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath203380%_ _%opts203381%_)
        (if (string? _%srcpath203380%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath203380%_)))
        (let* ((_%outdir203383%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts203381%_)))
               (_%invoke-gsc?203385%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts203381%_)))
               (_%target203390%_
                (let ((_%$e203387%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts203381%_))))
                  (if _%$e203387%_ _%$e203387%_ 'C)))
               (_%gsc-options203395%_
                (append (cons '"-target"
                              (cons (symbol->string _%target203390%_) '()))
                        (let ((_%$e203392%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts203381%_))))
                          (if _%$e203392%_ _%$e203392%_ '()))))
               (_%keep-scm?203397%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts203381%_)))
               (_%verbosity203399%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts203381%_)))
               (_%optimize203401%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts203381%_)))
               (_%debug203403%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts203381%_)))
               (_%gen-ssxi203405%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts203381%_)))
               (_%parallel?203407%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts203381%_))))
          (if _%outdir203383%_
              (let ((__tmp203576
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir203383%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp203576))
              '#!void)
          (if _%optimize203401%_
              (let ((__tmp203577
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp203577))
              '#!void)
          (let ((__tmp203580
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath203380%_))
                   (gxc#compile-top-module
                    (let ((__tmp203581
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath203380%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp203581)))))
                (__tmp203579 (gxc#compile-timestamp))
                (__tmp203578
                 (cons 'compile-module (cons _%srcpath203380%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp203580
             gxc#current-compile-output-dir
             _%outdir203383%_
             gx#current-compilation-target
             _%target203390%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?203385%_
             gxc#current-compile-gsc-options
             _%gsc-options203395%_
             gxc#current-compile-keep-scm
             _%keep-scm?203397%_
             gxc#current-compile-verbose
             _%verbosity203399%_
             gxc#current-compile-optimize
             _%optimize203401%_
             gxc#current-compile-debug
             _%debug203403%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi203405%_
             gxc#current-compile-timestamp
             __tmp203579
             gxc#current-compile-context
             __tmp203578
             gxc#current-compile-parallel
             _%parallel?203407%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath203417%_)
        (let ((_%opts203419%_ '()))
          (gxc#compile-module__% _%srcpath203417%_ _%opts203419%_))))
    (define gxc#compile-module
      (lambda _g203583_
        (let ((_g203582_ (let () (declare (not safe)) (##length _g203583_))))
          (cond ((let () (declare (not safe)) (##fx= _g203582_ 1))
                 (apply gxc#compile-module__0 _g203583_))
                ((let () (declare (not safe)) (##fx= _g203582_ 2))
                 (apply gxc#compile-module__% _g203583_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g203583_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath203340%_ _%opts203341%_)
        (if (string? _%srcpath203340%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath203340%_)))
        (let* ((_%outdir203343%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts203341%_)))
               (_%invoke-gsc?203345%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts203341%_)))
               (_%target203350%_
                (let ((_%$e203347%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts203341%_))))
                  (if _%$e203347%_ _%$e203347%_ 'C)))
               (_%gsc-options203355%_
                (append (cons '"-target"
                              (cons (symbol->string _%target203350%_) '()))
                        (let ((_%$e203352%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts203341%_))))
                          (if _%$e203352%_ _%$e203352%_ '()))))
               (_%keep-scm?203357%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts203341%_)))
               (_%verbosity203359%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts203341%_)))
               (_%debug203361%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts203341%_)))
               (_%parallel?203363%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts203341%_))))
          (if _%outdir203343%_
              (let ((__tmp203584
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir203343%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp203584))
              '#!void)
          (let ((__tmp203587
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath203340%_))
                   (gxc#compile-executable-module
                    (let ((__tmp203588
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath203340%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp203588))
                    _%opts203341%_)))
                (__tmp203586 (gxc#compile-timestamp))
                (__tmp203585 (cons 'compile-exe (cons _%srcpath203340%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp203587
             gxc#current-compile-output-dir
             _%outdir203343%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?203345%_
             gx#current-compilation-target
             _%target203350%_
             gxc#current-compile-gsc-options
             _%gsc-options203355%_
             gxc#current-compile-keep-scm
             _%keep-scm?203357%_
             gxc#current-compile-verbose
             _%verbosity203359%_
             gxc#current-compile-debug
             _%debug203361%_
             gxc#current-compile-timestamp
             __tmp203586
             gxc#current-compile-context
             __tmp203585
             gxc#current-compile-parallel
             _%parallel?203363%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath203372%_)
        (let ((_%opts203374%_ '()))
          (gxc#compile-exe__% _%srcpath203372%_ _%opts203374%_))))
    (define gxc#compile-exe
      (lambda _g203590_
        (let ((_g203589_ (let () (declare (not safe)) (##length _g203590_))))
          (cond ((let () (declare (not safe)) (##fx= _g203589_ 1))
                 (apply gxc#compile-exe__0 _g203590_))
                ((let () (declare (not safe)) (##fx= _g203589_ 2))
                 (apply gxc#compile-exe__% _g203590_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g203590_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx203336%_ _%opts203337%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts203337%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx203336%_
             _%opts203337%_)
            (gxc#compile-executable-module/separate
             _%ctx203336%_
             _%opts203337%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx203126%_ _%opts203127%_)
        (letrec ((_%generate-stub203129%_
                  (lambda (_%builtin-modules203332%_)
                    (let ((_%mod-main203334%_
                           (gxc#find-runtime-symbol _%ctx203126%_ 'main)))
                      (let ((__tmp203591
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules203332%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp203591))
                      (let ((__tmp203592
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main203334%_
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
                        (##write __tmp203592))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts203130%_
                  (lambda (_%gerbil-libdir203330%_)
                    (let ((__tmp203593
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir203330%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp203593 read))))
                 (_%replace-extension203131%_
                  (lambda (_%path203327%_ _%ext203328%_)
                    (string-append
                     (path-strip-extension _%path203327%_)
                     _%ext203328%_)))
                 (_%userlib-module?203132%_
                  (lambda (_%ctx203325%_)
                    (if (_%exclude-module?203134%_ _%ctx203325%_)
                        '#f
                        (not (_%libgerbil-module?203133%_ _%ctx203325%_)))))
                 (_%libgerbil-module?203133%_
                  (lambda (_%ctx203318%_)
                    (let ((_%id-str203320%_
                           (symbol->string
                            (##structure-ref
                             _%ctx203318%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?203134%_ _%id-str203320%_)
                          '#f
                          (let ((_%$e203322%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str203320%_))))
                            (if _%$e203322%_
                                _%$e203322%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str203320%_))))))))
                 (_%exclude-module?203134%_
                  (lambda (_%ctx-or-str203314%_)
                    (let ((_%str203316%_
                           (if (string? _%ctx-or-str203314%_)
                               _%ctx-or-str203314%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str203314%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str203316%_))))
                 (_%not-file-empty?203135%_
                  (lambda (_%path203312%_)
                    (not (gxc#file-empty? _%path203312%_))))
                 (_%fold-libgerbil-runtime-scm203136%_
                  (lambda (_%gerbil-staticdir203305%_ _%libgerbil-scm203306%_)
                    (let ((_%gerbil-runtime-scm203310%_
                           (let ((__tmp203594
                                  (lambda (_%rtm203308%_)
                                    (path-expand
                                     (let ((__tmp203595
                                            (let ((__tmp203596
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm203308%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp203596
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp203595 '".scm"))
                                     _%gerbil-staticdir203305%_))))
                             (declare (not safe))
                             (##map __tmp203594 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates203137%_
                       (append _%gerbil-runtime-scm203310%_
                               _%libgerbil-scm203306%_)))))
                 (_%remove-duplicates203137%_
                  (lambda (_%strlst203265%_)
                    (let _%loop203267%_ ((_%rest203269%_ _%strlst203265%_)
                                         (_%result203270%_ '()))
                      (let* ((_%rest203271203279%_ _%rest203269%_)
                             (_%else203273203287%_
                              (lambda () (reverse! _%result203270%_)))
                             (_%K203275203293%_
                              (lambda (_%rest203290%_ _%path203291%_)
                                (if (member _%path203291%_ _%result203270%_)
                                    (_%loop203267%_
                                     _%rest203290%_
                                     _%result203270%_)
                                    (_%loop203267%_
                                     _%rest203290%_
                                     (cons _%path203291%_
                                           _%result203270%_))))))
                        (if (pair? _%rest203271203279%_)
                            (let ((_%hd203276203296%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest203271203279%_)))
                                  (_%tl203277203298%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest203271203279%_))))
                              (let* ((_%path203301%_ _%hd203276203296%_)
                                     (_%rest203303%_ _%tl203277203298%_))
                                (_%K203275203293%_
                                 _%rest203303%_
                                 _%path203301%_)))
                            (_%else203273203287%_))))))
                 (_%compile-stub203138%_
                  (lambda (_%output-scm203145%_ _%output-bin203146%_)
                    (let* ((_%gerbil-home203148%_
                            (let ((__tmp203597
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp203597)))
                           (_%gerbil-libdir203150%_
                            (path-expand '"lib" _%gerbil-home203148%_))
                           (_%gerbil-staticdir203152%_
                            (path-expand '"static" _%gerbil-libdir203150%_))
                           (_%deps203154%_
                            (gxc#find-runtime-module-deps _%ctx203126%_))
                           (_%libgerbil-deps203156%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?203133%_
                               _%deps203154%_)))
                           (_%libgerbil-scm203158%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps203156%_)))
                           (_%libgerbil-scm203160%_
                            (_%fold-libgerbil-runtime-scm203136%_
                             _%gerbil-staticdir203152%_
                             _%libgerbil-scm203158%_))
                           (_%libgerbil-c203166%_
                            (map (lambda (_%g203161203163%_)
                                   (_%replace-extension203131%_
                                    _%g203161203163%_
                                    '".c"))
                                 _%libgerbil-scm203160%_))
                           (_%libgerbil-o203172%_
                            (map (lambda (_%g203167203169%_)
                                   (_%replace-extension203131%_
                                    _%g203167203169%_
                                    '".o"))
                                 _%libgerbil-scm203160%_))
                           (_%src-deps203174%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?203132%_
                               _%deps203154%_)))
                           (_%src-deps-scm203176%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps203174%_)))
                           (_%src-deps-scm203178%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?203135%_
                               _%src-deps-scm203176%_)))
                           (_%src-deps-scm203180%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm203178%_)))
                           (_%src-deps-c203186%_
                            (let ((__tmp203598
                                   (lambda (_%g203181203183%_)
                                     (_%replace-extension203131%_
                                      _%g203181203183%_
                                      '".c"))))
                              (declare (not safe))
                              (##map __tmp203598 _%src-deps-scm203180%_)))
                           (_%src-deps-o203192%_
                            (let ((__tmp203599
                                   (lambda (_%g203187203189%_)
                                     (_%replace-extension203131%_
                                      _%g203187203189%_
                                      '".o"))))
                              (declare (not safe))
                              (##map __tmp203599 _%src-deps-scm203180%_)))
                           (_%src-bin-scm203194%_
                            (gxc#find-static-module-file _%ctx203126%_))
                           (_%src-bin-scm203196%_
                            (path-expand _%src-bin-scm203194%_))
                           (_%src-bin-c203198%_
                            (_%replace-extension203131%_
                             _%src-bin-scm203196%_
                             '".c"))
                           (_%src-bin-o203200%_
                            (_%replace-extension203131%_
                             _%src-bin-scm203196%_
                             '".o"))
                           (_%output-bin203202%_
                            (path-expand _%output-bin203146%_))
                           (_%output-scm203204%_
                            (path-expand _%output-scm203145%_))
                           (_%output-c203206%_
                            (_%replace-extension203131%_
                             _%output-scm203204%_
                             '".c"))
                           (_%output-o203208%_
                            (_%replace-extension203131%_
                             _%output-scm203204%_
                             '".o"))
                           (_%output_-c203210%_
                            (_%replace-extension203131%_
                             _%output-scm203204%_
                             '"_.c"))
                           (_%output_-o203212%_
                            (_%replace-extension203131%_
                             _%output-scm203204%_
                             '"_.o"))
                           (_%gsc-link-opts203214%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts203216%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts203218%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir203152%_))
                           (_%output-ld-opts203220%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts203222%_
                            (_%get-libgerbil-ld-opts203130%_
                             _%gerbil-libdir203150%_))
                           (_%rpath203224%_
                            (gxc#gerbil-rpath _%gerbil-libdir203150%_))
                           (_%builtin-modules203228%_
                            (_%remove-duplicates203137%_
                             (let ((__tmp203600
                                    (let ((__tmp203602
                                           (lambda (_%mod203226%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod203226%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp203601
                                           (cons _%ctx203126%_
                                                 _%deps203154%_)))
                                      (declare (not safe))
                                      (##map __tmp203602 __tmp203601))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp203600)))))
                      (letrec ((_%compile-obj203231%_
                                (lambda (_%scm-path203238%_ _%c-path203239%_)
                                  (let* ((_%o-path203241%_
                                          (_%replace-extension203131%_
                                           _%c-path203239%_
                                           '".o"))
                                         (_%lock203243%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path203241%_
                                             '".lock")))
                                         (_%locked203245%_ '#f)
                                         (_%unlock203248%_
                                          (lambda ()
                                            (close-port _%locked203245%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock203243%_)))))
                                    (let _%retry203251%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock203243%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry203251%_))
                                          (begin
                                            (set! _%locked203245%_
                                                  (let ((__tmp203603
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock203243%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp203603)))
                                            (if _%locked203245%_
                                                '#!void
                                                (_%retry203251%_)))))
                                    (let ((__tmp203605
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path203241%_)))
                                                     (not _%scm-path203238%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path203238%_
                                                        _%o-path203241%_)))
                                                 (let ((_%gsc-cc-opts203262%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp203606
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp203607 (cons _%c-path203239%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp203607
                            _%gsc-static-opts203218%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp203606 _%gsc-cc-opts203262%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp203604
                                           (lambda () (_%unlock203248%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp203605
                                       __tmp203604))))))
                        (let ((__tmp203608
                               (lambda ()
                                 (let ((__tmp203609
                                        (path-directory _%output-bin203202%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp203609)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp203608))
                        (gxc#with-output-to-scheme-file
                         _%output-scm203204%_
                         (lambda ()
                           (_%generate-stub203129%_
                            _%builtin-modules203228%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it203236%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp203610
                                                   (let ((__tmp203611
                                                          (let ((__tmp203612
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm203196%_
                               (cons _%output-scm203204%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp203612 _%src-deps-scm203180%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp203611
                                                      _%libgerbil-c203166%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp203610
                                               _%gsc-link-opts203214%_))))
                                     (for-each
                                      _%compile-obj203231%_
                                      (let ((__tmp203613
                                             (cons _%src-bin-scm203196%_
                                                   (cons _%output-scm203204%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp203613
                                         _%src-deps-scm203180%_))
                                      (let ((__tmp203614
                                             (cons _%src-bin-c203198%_
                                                   (cons _%output-c203206%_
                                                         (cons _%output_-c203210%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp203614
                                         _%src-deps-c203186%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin203202%_
                                                        (let ((__tmp203615
                                                               (cons _%src-bin-o203200%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o203208%_
                                   (cons _%output_-o203212%_
                                         (let ((__tmp203616
                                                (let ((__tmp203617
                                                       (let ((__tmp203619
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir203150%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts203222%_))))
                     (__tmp203618
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath203224%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp203619 __tmp203618))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp203617
                                                   _%output-ld-opts203220%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp203616
                                            _%libgerbil-o203172%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp203615 _%src-deps-o203192%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp203620
                                            (cons _%output-c203206%_
                                                  (cons _%output_-c203210%_
                                                        (cons _%output-o203208%_
                                                              (cons _%output_-o203212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp203620)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it203236%_))
                                  (_%compile-it203236%_)))
                            '#!void))))))
          (let* ((_%output-bin203140%_
                  (gxc#compile-exe-output-file _%ctx203126%_ _%opts203127%_))
                 (_%output-scm203142%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin203140%_ '"__exe.scm"))))
            (_%compile-stub203138%_
             _%output-scm203142%_
             _%output-bin203140%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx202948%_ _%opts202949%_)
        (letrec ((_%reset-declare202951%_
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
                 (_%generate-stub202952%_
                  (lambda (_%deps203117%_)
                    (let ((_%mod-main203119%_
                           (gxc#find-runtime-symbol _%ctx202948%_ 'main))
                          (_%reset-decl203120%_ (_%reset-declare202951%_))
                          (_%user-decl203121%_ (_%user-declare202953%_)))
                      (for-each
                       (lambda (_%dep203123%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl203120%_))
                         (newline)
                         (if _%user-decl203121%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl203121%_))
                               (newline))
                             '#!void)
                         (let ((__tmp203621
                                (cons 'include (cons _%dep203123%_ '()))))
                           (declare (not safe))
                           (##write __tmp203621))
                         (newline))
                       _%deps203117%_)
                      (let ((__tmp203622
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main203119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp203622))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare202953%_
                  (lambda ()
                    (let* ((_%gsc-opts203022%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts202949%_)))
                           (_%gsc-prelude203024%_
                            (if _%gsc-opts203022%_
                                (member '"-prelude" _%gsc-opts203022%_)
                                '#f))
                           (_%gsc-prelude203026%_
                            (if _%gsc-prelude203024%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude203024%_)))
                                '#f)))
                      (let _%lp203029%_ ((_%rest203031%_
                                          (cons _%gsc-prelude203026%_ '()))
                                         (_%user-decls203032%_ '()))
                        (let* ((_%rest203033203041%_ _%rest203031%_)
                               (_%else203035203049%_
                                (lambda ()
                                  (if (null? _%user-decls203032%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls203032%_)))))
                               (_%K203037203105%_
                                (lambda (_%rest203052%_ _%expr203053%_)
                                  (let* ((_%expr203054203066%_ _%expr203053%_)
                                         (_%else203057203074%_
                                          (lambda ()
                                            (_%lp203029%_
                                             _%rest203052%_
                                             _%user-decls203032%_))))
                                    (let ((_%K203062203095%_
                                           (lambda (_%decls203093%_)
                                             (_%lp203029%_
                                              _%rest203052%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls203032%_
                                                 _%decls203093%_)))))
                                          (_%K203059203080%_
                                           (lambda (_%exprs203078%_)
                                             (_%lp203029%_
                                              (append _%exprs203078%_
                                                      _%rest203052%_)
                                              _%user-decls203032%_))))
                                      (if (pair? _%expr203054203066%_)
                                          (let ((_%tl203064203100%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr203054203066%_)))
                                                (_%hd203063203098%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr203054203066%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd203063203098%_
                                                         'declare))
                                                (let ((_%decls203103%_
                                                       _%tl203064203100%_))
                                                  (_%K203062203095%_
                                                   _%decls203103%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd203063203098%_
                                                             'begin))
                                                    (let ((_%exprs203088%_
                                                           _%tl203064203100%_))
                                                      (_%K203059203080%_
                                                       _%exprs203088%_))
                                                    (_%else203057203074%_))))
                                          (_%else203057203074%_)))))))
                          (if (pair? _%rest203033203041%_)
                              (let ((_%hd203038203108%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest203033203041%_)))
                                    (_%tl203039203110%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest203033203041%_))))
                                (let* ((_%expr203113%_ _%hd203038203108%_)
                                       (_%rest203115%_ _%tl203039203110%_))
                                  (_%K203037203105%_
                                   _%rest203115%_
                                   _%expr203113%_)))
                              (_%else203035203049%_)))))))
                 (_%compile-stub202954%_
                  (lambda (_%output-scm202961%_ _%output-bin202962%_)
                    (let* ((_%gerbil-home202964%_
                            (let ((__tmp203623
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp203623)))
                           (_%gerbil-libdir202966%_
                            (path-expand '"lib" _%gerbil-home202964%_))
                           (_%runtime202968%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp202970%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home202964%_))
                           (_%include-gambit-sharp202972%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp202970%_
                               '"\")")))
                           (_%bin-scm202974%_
                            (gxc#find-static-module-file _%ctx202948%_))
                           (_%deps202976%_
                            (gxc#find-runtime-module-deps _%ctx202948%_))
                           (_%deps202978%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps202976%_)))
                           (_%deps202983%_
                            (let ((__tmp203624
                                   (lambda (_%$obj202980%_)
                                     (not (gxc#file-empty? _%$obj202980%_)))))
                              (declare (not safe))
                              (##filter __tmp203624 _%deps202978%_)))
                           (_%deps202987%_
                            (let ((__tmp203625
                                   (lambda (_%f202985%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f202985%_
                                             _%runtime202968%_))))))
                              (declare (not safe))
                              (##filter __tmp203625 _%deps202983%_)))
                           (_%output-base202989%_
                            (let ((__tmp203626
                                   (path-strip-extension
                                    _%output-scm202961%_)))
                              (declare (not safe))
                              (##string-append __tmp203626)))
                           (_%output-c202991%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base202989%_ '".c")))
                           (_%output-o202993%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base202989%_ '".o")))
                           (_%output-c_202995%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base202989%_ '"_.c")))
                           (_%output-o_202997%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base202989%_ '"_.o")))
                           (_%gsc-link-opts202999%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts203001%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts203003%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir202966%_)))
                           (_%output-ld-opts203005%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros203007%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp202972%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp202972%_
                                            '()))))
                           (_%gsc-link-opts203009%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts202999%_
                               _%gsc-gx-macros203007%_)))
                           (_%rpath203011%_
                            (gxc#gerbil-rpath _%gerbil-libdir202966%_))
                           (_%default-ld-options203013%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp203627
                             (lambda ()
                               (let ((__tmp203628
                                      (path-directory _%output-bin202962%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp203628)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp203627))
                      (gxc#with-output-to-scheme-file
                       _%output-scm202961%_
                       (lambda ()
                         (_%generate-stub202952%_
                          (let ((__tmp203629
                                 (let ((__tmp203630
                                        (cons _%bin-scm202974%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp203630
                                    _%deps202987%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp203629 _%runtime202968%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it203019%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_202995%_
                                                      (let ((__tmp203631
                                                             (cons _%output-scm202961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp203631 _%gsc-link-opts203009%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp203632
                                                 (let ((__tmp203633
                                                        (cons _%output-c202991%_
                                                              (cons _%output-c_202995%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp203633
                                                    _%gsc-static-opts203003%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp203632
                                             _%gsc-cc-opts203001%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin202962%_
                                                      (cons _%output-o202993%_
                                                            (cons _%output-o_202997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp203634
                                 (let ((__tmp203636
                                        (cons '"-L"
                                              (cons _%gerbil-libdir202966%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options203013%_))))
                                       (__tmp203635
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath203011%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp203636 __tmp203635))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp203634
                             _%output-ld-opts203005%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it203019%_))
                                (_%compile-it203019%_)))
                          '#!void)))))
          (let* ((_%output-bin202956%_
                  (gxc#compile-exe-output-file _%ctx202948%_ _%opts202949%_))
                 (_%output-scm202958%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin202956%_ '"__exe.scm"))))
            (_%compile-stub202954%_
             _%output-scm202958%_
             _%output-bin202956%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx202897%_ _%id202898%_)
        (let ((_%$e202944%_
               (let ((__tmp203638
                      (lambda (_%e202899202901%_)
                        (let* ((_%g202903202913%_ _%e202899202901%_)
                               (_%else202905202921%_ (lambda () '#f))
                               (_%K202907202925%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g202903202913%_
                                 'gx#module-export::t))
                              (let* ((_%e202908202928%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g202903202913%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e202909202931%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g202903202913%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e202910202934%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g202903202913%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e202910202934%_ '0))
                                    (let ((_%e202911202937%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g202903202913%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g202939202941%_)
                                             (eq? _%g202939202941%_
                                                  _%id202898%_))
                                           _%e202911202937%_)
                                          (_%K202907202925%_)
                                          (_%else202905202921%_)))
                                    (_%else202905202921%_)))
                              (_%else202905202921%_)))))
                     (__tmp203637
                      (##structure-ref
                       _%ctx202897%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp203638 __tmp203637))))
          (if _%$e202944%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e202944%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx202888%_ _%id202889%_)
        (let ((_%$e202891%_
               (gxc#find-export-binding _%ctx202888%_ _%id202889%_)))
          (if _%$e202891%_
              ((lambda (_%bind202894%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind202894%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id202889%_)))
                 (##structure-ref _%bind202894%_ '1 gx#binding::t '#f))
               _%$e202891%_)
              (let ((__tmp203639
                     (##structure-ref
                      _%ctx202888%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp203639
                 _%id202889%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx202754%_)
        (letrec* ((_%ht202756%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template202757%_
                   (lambda (_%in202833%_ _%phi202834%_)
                     (let ((_%iphi202836%_
                            (fx+ _%phi202834%_
                                 (##direct-structure-ref
                                  _%in202833%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports202837%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in202833%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp202839%_ ((_%rest202841%_ _%imports202837%_)
                                          (_%r202842%_ '()))
                         (let* ((_%rest202843202851%_ _%rest202841%_)
                                (_%else202845202859%_ (lambda () _%r202842%_))
                                (_%K202847202876%_
                                 (lambda (_%rest202862%_ _%in202863%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in202863%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi202836%_))
                                           (_%lp202839%_
                                            _%rest202862%_
                                            (cons _%in202863%_ _%r202842%_))
                                           (_%lp202839%_
                                            _%rest202862%_
                                            _%r202842%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in202863%_
                                              'gx#module-import::t))
                                           (let ((_%iphi202867%_
                                                  (fx+ _%phi202834%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in202863%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi202867%_))
                                                 (_%lp202839%_
                                                  _%rest202862%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in202863%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r202842%_))
                                                 (_%lp202839%_
                                                  _%rest202862%_
                                                  _%r202842%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in202863%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi202870%_
                                                      (fx+ _%iphi202836%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in202863%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi202870%_))
                                                     (_%lp202839%_
                                                      _%rest202862%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in202863%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r202842%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi202870%_))
                                                         (_%lp202839%_
                                                          _%rest202862%_
                                                          (let ((__tmp203640
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template202757%_
                          _%in202863%_
                          _%iphi202836%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r202842%_ __tmp203640)))
                 (_%lp202839%_ _%rest202862%_ _%r202842%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp202839%_
                                                _%rest202862%_
                                                _%r202842%_)))))))
                           (if (pair? _%rest202843202851%_)
                               (let ((_%hd202848202879%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest202843202851%_)))
                                     (_%tl202849202881%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest202843202851%_))))
                                 (let* ((_%in202884%_ _%hd202848202879%_)
                                        (_%rest202886%_ _%tl202849202881%_))
                                   (_%K202847202876%_
                                    _%rest202886%_
                                    _%in202884%_)))
                               (_%else202845202859%_)))))))
                  (_%find-deps202758%_
                   (lambda (_%rest202766%_ _%deps202767%_)
                     (let* ((_%rest202768202776%_ _%rest202766%_)
                            (_%else202770202784%_ (lambda () _%deps202767%_))
                            (_%K202772202821%_
                             (lambda (_%rest202787%_ _%hd202788%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd202788%_
                                      'gx#module-context::t))
                                   (let ((_%id202791%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd202788%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports202792%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd202788%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht202756%_
                                            _%id202791%_))
                                         (_%find-deps202758%_
                                          _%rest202787%_
                                          _%deps202767%_)
                                         (let ((_%$e202795%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd202788%_))))
                                           (if _%$e202795%_
                                               ((lambda (_%pre202798%_)
                                                  (let ((_%xdeps202800%_
                                                         (_%find-deps202758%_
                                                          (cons _%pre202798%_
                                                                _%imports202792%_)
                                                          _%deps202767%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht202756%_
                                                       _%id202791%_
                                                       _%hd202788%_))
                                                    (_%find-deps202758%_
                                                     _%rest202787%_
                                                     (cons _%hd202788%_
                                                           _%xdeps202800%_))))
                                                _%$e202795%_)
                                               (let ((_%xdeps202803%_
                                                      (_%find-deps202758%_
                                                       _%imports202792%_
                                                       _%deps202767%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht202756%_
                                                    _%id202791%_
                                                    _%hd202788%_))
                                                 (_%find-deps202758%_
                                                  _%rest202787%_
                                                  (cons _%hd202788%_
                                                        _%xdeps202803%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd202788%_
                                          'gx#prelude-context::t))
                                       (let ((_%id202806%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd202788%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht202756%_
                                                _%id202806%_))
                                             (_%find-deps202758%_
                                              _%rest202787%_
                                              _%deps202767%_)
                                             (let ((_%xdeps202810%_
                                                    (_%find-deps202758%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd202788%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps202767%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht202756%_
                                                      _%id202806%_))
                                                   (_%find-deps202758%_
                                                    _%rest202787%_
                                                    _%xdeps202810%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht202756%_
                                                        _%id202806%_
                                                        _%hd202788%_))
                                                     (_%find-deps202758%_
                                                      _%rest202787%_
                                                      (cons _%hd202788%_
                                                            _%xdeps202810%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd202788%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd202788%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps202758%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd202788%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest202787%_)
                                                _%deps202767%_)
                                               (_%find-deps202758%_
                                                _%rest202787%_
                                                _%deps202767%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd202788%_
                                                  'gx#module-export::t))
                                               (_%find-deps202758%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd202788%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest202787%_)
                                                _%deps202767%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd202788%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd202788%_ '2 '#f '#f)))
               (_%find-deps202758%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd202788%_ '1 '#f '#f))
                      _%rest202787%_)
                _%deps202767%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd202788%_ '2 '#f '#f)))
                   (let ((_%xdeps202817%_
                          (_%import-set-template202757%_ _%hd202788%_ '0)))
                     (_%find-deps202758%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest202787%_ _%xdeps202817%_))
                      _%deps202767%_))
                   (_%find-deps202758%_ _%rest202787%_ _%deps202767%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd202788%_))))))))))
                       (if (pair? _%rest202768202776%_)
                           (let ((_%hd202773202824%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest202768202776%_)))
                                 (_%tl202774202826%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest202768202776%_))))
                             (let* ((_%hd202829%_ _%hd202773202824%_)
                                    (_%rest202831%_ _%tl202774202826%_))
                               (_%K202772202821%_
                                _%rest202831%_
                                _%hd202829%_)))
                           (_%else202770202784%_))))))
          (let ((__tmp203641
                 (filter gx#expander-context-id
                         (_%find-deps202758%_
                          (let ((_%$e202760%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx202754%_))))
                            (if _%$e202760%_
                                ((lambda (_%pre202763%_)
                                   (cons _%pre202763%_
                                         (##structure-ref
                                          _%ctx202754%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e202760%_)
                                (##structure-ref
                                 _%ctx202754%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp203641)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx202684%_)
        (let* ((_%context-id202686%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx202684%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx202684%_ '1 '#f '#f))
                    (string->symbol _%ctx202684%_)))
               (_%scm202688%_
                (let ((__tmp203642
                       (gxc#static-module-name _%context-id202686%_)))
                  (declare (not safe))
                  (##string-append __tmp203642 '".scm")))
               (_%dirs202690%_ (let () (declare (not safe)) (load-path)))
               (_%dirs202696%_
                (let ((_%user-libpath202692%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath202692%_
                      (let ((_%user-libpath202694%_
                             (path-expand '"lib" _%user-libpath202692%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath202694%_ _%dirs202690%_))
                            _%dirs202690%_
                            (cons _%user-libpath202694%_ _%dirs202690%_)))
                      _%dirs202690%_)))
               (_%dirs202706%_
                (let ((_%$e202698%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e202698%_
                      ((lambda (_%g202700202702%_)
                         (cons _%g202700202702%_ _%dirs202696%_))
                       _%$e202698%_)
                      _%dirs202696%_)))
               (_%dirs202712%_
                (let ((__tmp203643
                       (lambda (_%g202707202709%_)
                         (path-expand '"static" _%g202707202709%_))))
                  (declare (not safe))
                  (##map __tmp203643 _%dirs202706%_))))
          (let _%lp202715%_ ((_%rest202717%_ _%dirs202712%_))
            (let* ((_%rest202718202726%_ _%rest202717%_)
                   (_%else202720202734%_
                    (lambda ()
                      (let ((__tmp203644
                             (##structure-ref
                              _%ctx202684%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp203644
                         _%scm202688%_))))
                   (_%K202722202742%_
                    (lambda (_%rest202737%_ _%dir202738%_)
                      (let ((_%path202740%_
                             (path-expand _%scm202688%_ _%dir202738%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path202740%_))
                            _%path202740%_
                            (_%lp202715%_ _%rest202737%_))))))
              (if (pair? _%rest202718202726%_)
                  (let ((_%hd202723202745%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest202718202726%_)))
                        (_%tl202724202747%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest202718202726%_))))
                    (let* ((_%dir202750%_ _%hd202723202745%_)
                           (_%rest202752%_ _%tl202724202747%_))
                      (_%K202722202742%_ _%rest202752%_ _%dir202750%_)))
                  (_%else202720202734%_)))))))
    (define gxc#file-empty?
      (lambda (_%path202682%_)
        (zero? (let ((__tmp203645 (file-info _%path202682%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp203645)))))
    (define gxc#compile-top-module
      (lambda (_%ctx202678%_)
        (let ((__tmp203649
               (lambda ()
                 (let ((__tmp203650
                        (##structure-ref
                         _%ctx202678%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp203650))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp203651
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx202678%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp203651))
                     '#!void)
                 (gxc#collect-bindings _%ctx202678%_)
                 (gxc#compile-runtime-code _%ctx202678%_)
                 (gxc#compile-meta-code _%ctx202678%_)
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx202678%_)
                     '#!void)))
              (__tmp203648
               (let ((__obj203572
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj203572))
                 __obj203572))
              (__tmp203647 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp203646
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
           __tmp203649
           gx#current-expander-context
           _%ctx202678%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp203648
           gxc#current-compile-runtime-sections
           __tmp203647
           gxc#current-compile-runtime-names
           __tmp203646))))
    (define gxc#collect-bindings
      (lambda (_%ctx202676%_)
        (let ((__tmp203652
               (##structure-ref _%ctx202676%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp203652))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx202624%_)
        (letrec ((_%compile1202626%_
                  (lambda (_%ctx202665%_)
                    (let* ((_%code202667%_
                            (##structure-ref
                             _%ctx202665%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm202671%_
                            (let ((_%idstr202669%_
                                   (let ((__tmp203653
                                          (##structure-ref
                                           _%ctx202665%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp203653))))
                              (declare (not safe))
                              (##string-append _%idstr202669%_ '"~0")))
                           (_%rtc?202673%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code202667%_))))
                      (if _%rtc?202673%_
                          (let ((__tmp203654
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp203654
                             _%ctx202665%_
                             _%rtm202671%_))
                          '#!void)
                      (_%generate-runtime-code202628%_
                       _%ctx202665%_
                       _%code202667%_
                       (if _%rtc?202673%_ _%rtm202671%_ '#f)))))
                 (_%context-timestamp202627%_
                  (lambda (_%ctx202663%_)
                    (let ((__tmp203655
                           (let ((__tmp203656
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx202663%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp203656 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp203655))))
                 (_%generate-runtime-code202628%_
                  (lambda (_%ctx202635%_ _%code202636%_ _%rtm202637%_)
                    (let* ((_%runtime-code?202639%_ (if _%rtm202637%_ '#t '#f))
                           (_%lifts202641%_ (box '()))
                           (_%runtime-code202644%_
                            (if _%runtime-code?202639%_
                                (let ((__tmp203659
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code202636%_))))
                                      (__tmp203658
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp203657
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp203659
                                   gx#current-expander-context
                                   _%ctx202635%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts202641%_
                                   gxc#current-compile-marks
                                   __tmp203658
                                   gxc#current-compile-identifiers
                                   __tmp203657))
                                '#f))
                           (_%runtime-code202646%_
                            (if _%runtime-code?202639%_
                                (if (null? (unbox _%lifts202641%_))
                                    _%runtime-code202644%_
                                    (cons 'begin
                                          (let ((__tmp203661
                                                 (cons _%runtime-code202644%_
                                                       '()))
                                                (__tmp203660
                                                 (reverse (unbox _%lifts202641%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp203661
                                             __tmp203660))))
                                '#f))
                           (_%runtime-code202648%_
                            (if _%runtime-code?202639%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp202627%_
                                                         _%ctx202635%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code202646%_ '())))
                                '#f))
                           (_%loader-code202651%_
                            (let ((__tmp203662
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code202636%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp203662
                               gx#current-expander-context
                               _%ctx202635%_)))
                           (_%loader-code202653%_
                            (cons 'begin
                                  (cons _%loader-code202651%_
                                        (cons (if _%runtime-code?202639%_
                                                  (cons 'load-module
                                                        (cons _%rtm202637%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0202655%_
                            (gxc#compile-output-file _%ctx202635%_ '0 '".scm"))
                           (_%scmrt202657%_
                            (gxc#compile-output-file
                             _%ctx202635%_
                             '#f
                             '".scm"))
                           (_%scms202659%_
                            (gxc#compile-static-output-file _%ctx202635%_)))
                      (if _%runtime-code?202639%_
                          (gxc#compile-scm-file__0
                           _%scm0202655%_
                           _%runtime-code202648%_)
                          '#!void)
                      (let ((__tmp203663
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt202657%_
                                _%loader-code202653%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp203663
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms202659%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms202659%_))
                          '#!void)
                      (if _%runtime-code?202639%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0202655%_ _%scms202659%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms202659%_ void)))))))
          (let* ((_%all-modules202630%_
                  (cons _%ctx202624%_ (gxc#lift-nested-modules _%ctx202624%_)))
                 (__tmp203664
                  (lambda (_%ctx202632%_)
                    (let ((__tmp203665
                           (lambda () (_%compile1202626%_ _%ctx202632%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp203665
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp203664 _%all-modules202630%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx202524%_)
        (letrec ((_%compile-ssi202526%_
                  (lambda (_%code202592%_)
                    (let* ((_%path202594%_
                            (gxc#compile-output-file
                             _%ctx202524%_
                             '#f
                             '".ssi"))
                           (_%prelude202606%_
                            (let* ((_%super202596%_
                                    (##structure-ref
                                     _%ctx202524%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e202598%_
                                    (##structure-ref
                                     _%super202596%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e202598%_
                                  ((lambda (_%g202600202602%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g202600202602%_)))
                                   _%$e202598%_)
                                  ':<root>)))
                           (_%ns202608%_
                            (##structure-ref
                             _%ctx202524%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr202610%_
                            (symbol->string
                             (##structure-ref
                              _%ctx202524%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg202618%_
                            (let ((_%$e202612%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr202610%_ '#\/))))
                              (if _%$e202612%_
                                  ((lambda (_%x202615%_)
                                     (let ((__tmp203666
                                            (substring
                                             _%idstr202610%_
                                             '0
                                             _%x202615%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp203666)))
                                   _%$e202612%_)
                                  '#f)))
                           (_%rt202620%_
                            (let ((__tmp203667
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp203667 _%ctx202524%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path202594%_))
                      (gxc#with-output-to-scheme-file
                       _%path202594%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude202606%_))
                         (if _%pkg202618%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg202618%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns202608%_))
                         (newline)
                         (pretty-print _%code202592%_)
                         (if _%rt202620%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt202620%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi202527%_
                  (lambda (_%part202532%_)
                    (let* ((_%part202533202546%_ _%part202532%_)
                           (_%E202535202550%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part202533202546%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K202536202561%_
                            (lambda (_%code202553%_
                                     _%n202554%_
                                     _%phi202555%_
                                     _%phi-ctx202556%_)
                              (let ((_%code202559%_
                                     (let ((__tmp203668
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code202553%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp203668
                                        gx#current-expander-context
                                        _%phi-ctx202556%_
                                        gx#current-expander-phi
                                        _%phi202555%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx202524%_
                                  _%n202554%_
                                  '".scm")
                                 _%code202559%_
                                 '#t)))))
                      (if (pair? _%part202533202546%_)
                          (let ((_%hd202537202564%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part202533202546%_)))
                                (_%tl202538202566%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part202533202546%_))))
                            (let ((_%phi-ctx202569%_ _%hd202537202564%_))
                              (if (pair? _%tl202538202566%_)
                                  (let ((_%hd202539202571%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl202538202566%_)))
                                        (_%tl202540202573%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl202538202566%_))))
                                    (let ((_%phi202576%_ _%hd202539202571%_))
                                      (if (pair? _%tl202540202573%_)
                                          (let ((_%hd202541202578%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl202540202573%_)))
                                                (_%tl202542202580%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl202540202573%_))))
                                            (let ((_%n202583%_
                                                   _%hd202541202578%_))
                                              (if (pair? _%tl202542202580%_)
                                                  (let ((_%hd202543202585%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl202542202580%_)))
                                                        (_%tl202544202587%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl202542202580%_))))
                                                    (let ((_%code202590%_
                                                           _%hd202543202585%_))
                                                      (if (null? _%tl202544202587%_)
                                                          (_%K202536202561%_
                                                           _%code202590%_
                                                           _%n202583%_
                                                           _%phi202576%_
                                                           _%phi-ctx202569%_)
                                                          (_%E202535202550%_))))
                                                  (_%E202535202550%_))))
                                          (_%E202535202550%_))))
                                  (_%E202535202550%_))))
                          (_%E202535202550%_))))))
          (let ((_g203669_ (gxc#generate-meta-code _%ctx202524%_)))
            (begin
              (let ((_g203670_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g203669_)
                           (##values-length _g203669_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g203670_ 2)))
                    (error "Context expects 2 values" _g203670_)))
              (let ((_%ssi-code202529%_
                     (let () (declare (not safe)) (##values-ref _g203669_ 0)))
                    (_%phi-code202530%_
                     (let () (declare (not safe)) (##values-ref _g203669_ 1))))
                (begin
                  (_%compile-ssi202526%_ _%ssi-code202529%_)
                  (for-each _%compile-phi202527%_ _%phi-code202530%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx202506%_)
        (let* ((_%path202508%_
                (gxc#compile-output-file _%ctx202506%_ '#f '".ssxi.ss"))
               (_%code202510%_
                (let ((__tmp203671
                       (##structure-ref
                        _%ctx202506%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp203671)))
               (_%idstr202512%_
                (symbol->string
                 (##structure-ref
                  _%ctx202506%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg202520%_
                (let ((_%$e202514%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr202512%_ '#\/))))
                  (if _%$e202514%_
                      ((lambda (_%x202517%_)
                         (let ((__tmp203672
                                (substring _%idstr202512%_ '0 _%x202517%_)))
                           (declare (not safe))
                           (##string->symbol __tmp203672)))
                       _%$e202514%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path202508%_))
          (gxc#with-output-to-scheme-file
           _%path202508%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg202520%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg202520%_))
                 '#!void)
             (newline)
             (pretty-print _%code202510%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx202499%_)
        (let* ((_%state202501%_
                (let ((__obj203573
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj203573 _%ctx202499%_))
                  __obj203573))
               (_%ssi-code202503%_
                (let ((__tmp203673
                       (##structure-ref
                        _%ctx202499%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state202501%_
                   __tmp203673))))
          (values _%ssi-code202503%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state202501%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx202492%_)
        (let ((_%lifts202494%_ (box '())))
          (let ((__tmp203676
                 (lambda ()
                   (let ((_%code202497%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx202492%_))))
                     (if (null? (unbox _%lifts202494%_))
                         _%code202497%_
                         (cons 'begin
                               (let ((__tmp203678 (cons _%code202497%_ '()))
                                     (__tmp203677
                                      (reverse (unbox _%lifts202494%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp203678 __tmp203677)))))))
                (__tmp203675
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp203674
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp203676
             gxc#current-compile-lift
             _%lifts202494%_
             gxc#current-compile-marks
             __tmp203675
             gxc#current-compile-identifiers
             __tmp203674)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx202488%_)
        (let ((_%modules202490%_ (box '())))
          (let ((__tmp203679
                 (##structure-ref _%ctx202488%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules202490%_ __tmp203679))
          (reverse (unbox _%modules202490%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path202468%_ _%code202469%_ _%phi?202470%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path202468%_))
        (gxc#with-output-to-scheme-file
         _%path202468%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp203680
                                           (if _%phi?202470%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp203680)))))))
           (pretty-print _%code202469%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it202474%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path202468%_ _%phi?202470%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp203681
                         (cons 'compile-file (cons _%path202468%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it202474%_ __tmp203681))
                  (_%compile-it202474%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path202479%_ _%code202480%_)
        (let ((_%phi?202482%_ '#f))
          (gxc#compile-scm-file__%
           _%path202479%_
           _%code202480%_
           _%phi?202482%_))))
    (define gxc#compile-scm-file
      (lambda _g203683_
        (let ((_g203682_ (let () (declare (not safe)) (##length _g203683_))))
          (cond ((let () (declare (not safe)) (##fx= _g203682_ 2))
                 (apply gxc#compile-scm-file__0 _g203683_))
                ((let () (declare (not safe)) (##fx= _g203682_ 3))
                 (apply gxc#compile-scm-file__% _g203683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g203683_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?202369%_)
        (let _%lp202371%_ ((_%rest202373%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts202374%_ '()))
          (let* ((_%rest202375202395%_ _%rest202373%_)
                 (_%else202379202403%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts202374%_)))
                        (reverse _%opts202374%_)))))
            (let ((_%K202389202446%_
                   (lambda (_%rest202444%_)
                     (_%lp202371%_ _%rest202444%_ _%opts202374%_)))
                  (_%K202384202428%_
                   (lambda (_%rest202426%_)
                     (_%lp202371%_ _%rest202426%_ _%opts202374%_)))
                  (_%K202381202410%_
                   (lambda (_%rest202407%_ _%opt202408%_)
                     (_%lp202371%_
                      _%rest202407%_
                      (cons _%opt202408%_ _%opts202374%_)))))
              (if (pair? _%rest202375202395%_)
                  (let ((_%tl202391202451%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest202375202395%_)))
                        (_%hd202390202449%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest202375202395%_))))
                    (if (equal? _%hd202390202449%_ '"-cc-options")
                        (if (pair? _%tl202391202451%_)
                            (let* ((_%tl202393202454%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl202391202451%_)))
                                   (_%rest202457%_ _%tl202393202454%_))
                              (_%K202389202446%_ _%rest202457%_))
                            (let ((_%opt202418%_ _%hd202390202449%_)
                                  (_%rest202420%_ _%tl202391202451%_))
                              (_%K202381202410%_
                               _%rest202420%_
                               _%opt202418%_)))
                        (if (equal? _%hd202390202449%_ '"-ld-options")
                            (if (pair? _%tl202391202451%_)
                                (let* ((_%tl202388202436%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl202391202451%_)))
                                       (_%rest202439%_ _%tl202388202436%_))
                                  (_%K202384202428%_ _%rest202439%_))
                                (let ((_%opt202418%_ _%hd202390202449%_)
                                      (_%rest202420%_ _%tl202391202451%_))
                                  (_%K202381202410%_
                                   _%rest202420%_
                                   _%opt202418%_)))
                            (let ((_%opt202418%_ _%hd202390202449%_)
                                  (_%rest202420%_ _%tl202391202451%_))
                              (_%K202381202410%_
                               _%rest202420%_
                               _%opt202418%_)))))
                  (_%else202379202403%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?202463%_ '#f)) (gxc#gsc-link-options__% _%phi?202463%_))))
    (define gxc#gsc-link-options
      (lambda _g203685_
        (let ((_g203684_ (let () (declare (not safe)) (##length _g203685_))))
          (cond ((let () (declare (not safe)) (##fx= _g203684_ 0))
                 (apply gxc#gsc-link-options__0 _g203685_))
                ((let () (declare (not safe)) (##fx= _g203684_ 1))
                 (apply gxc#gsc-link-options__% _g203685_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g203685_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords202218%_ _%static?202214202219%_ _%phi?202221%_)
        (let ((_%static?202223%_
               (if (eq? _%static?202214202219%_ absent-value)
                   '#f
                   _%static?202214202219%_)))
          (if _%phi?202221%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp202225%_ ((_%rest202227%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts202228%_ '()))
                (let* ((_%rest202229202255%_ _%rest202227%_)
                       (_%else202234202263%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts202228%_)))
                              (reverse! _%opts202228%_)))))
                  (let ((_%K202249202326%_
                         (lambda (_%rest202323%_ _%opt202324%_)
                           (if _%static?202223%_
                               (_%lp202225%_
                                _%rest202323%_
                                (cons _%opt202324%_
                                      (cons '"-cc-options" _%opts202228%_)))
                               (_%lp202225%_ _%rest202323%_ _%opts202228%_))))
                        (_%K202244202303%_
                         (lambda (_%rest202300%_ _%opt202301%_)
                           (_%lp202225%_
                            _%rest202300%_
                            (cons _%opt202301%_
                                  (cons '"-cc-options" _%opts202228%_)))))
                        (_%K202239202283%_
                         (lambda (_%rest202281%_)
                           (_%lp202225%_ _%rest202281%_ _%opts202228%_)))
                        (_%K202236202269%_
                         (lambda (_%rest202267%_)
                           (_%lp202225%_ _%rest202267%_ _%opts202228%_))))
                    (if (pair? _%rest202229202255%_)
                        (let ((_%tl202251202331%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest202229202255%_)))
                              (_%hd202250202329%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest202229202255%_))))
                          (if (equal? _%hd202250202329%_ '"-cc-options")
                              (if (pair? _%tl202251202331%_)
                                  (let ((_%tl202253202336%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl202251202331%_)))
                                        (_%hd202252202334%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl202251202331%_))))
                                    (if (equal? _%hd202252202334%_ '"-Bstatic")
                                        (let ((_%opt202339%_
                                               _%hd202252202334%_)
                                              (_%rest202341%_
                                               _%tl202253202336%_))
                                          (_%K202249202326%_
                                           _%rest202341%_
                                           _%opt202339%_))
                                        (let ((_%opt202316%_
                                               _%hd202252202334%_)
                                              (_%rest202318%_
                                               _%tl202253202336%_))
                                          (_%K202244202303%_
                                           _%rest202318%_
                                           _%opt202316%_))))
                                  (let ((_%rest202275%_ _%tl202251202331%_))
                                    (_%K202236202269%_ _%rest202275%_)))
                              (if (equal? _%hd202250202329%_ '"-ld-options")
                                  (if (pair? _%tl202251202331%_)
                                      (let* ((_%tl202243202291%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl202251202331%_)))
                                             (_%rest202294%_
                                              _%tl202243202291%_))
                                        (_%K202239202283%_ _%rest202294%_))
                                      (let ((_%rest202275%_
                                             _%tl202251202331%_))
                                        (_%K202236202269%_ _%rest202275%_)))
                                  (let ((_%rest202275%_ _%tl202251202331%_))
                                    (_%K202236202269%_ _%rest202275%_)))))
                        (_%else202234202263%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords202346%_ _%static?202214202347%_)
        (let ((_%phi?202349%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords202346%_
           _%static?202214202347%_
           _%phi?202349%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g203687_
        (let ((_g203686_ (let () (declare (not safe)) (##length _g203687_))))
          (cond ((let () (declare (not safe)) (##fx= _g203686_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g203687_))
                ((let () (declare (not safe)) (##fx= _g203686_ 3))
                 (apply gxc#gsc-cc-options__%__% _g203687_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g203687_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords202358%_ . _%args202359%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords202358%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords202358%_
                  'static:
                  absent-value))
               _%args202359%_)))
    (define gxc#gsc-cc-options
      (lambda _%args202215202365%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args202215202365%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords202063%_ _%static?202059202064%_ _%phi?202066%_)
        (let ((_%static?202068%_
               (if (eq? _%static?202059202064%_ absent-value)
                   '#f
                   _%static?202059202064%_)))
          (if _%phi?202066%_
              '()
              (let _%lp202070%_ ((_%rest202072%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts202073%_ '()))
                (let* ((_%rest202074202100%_ _%rest202072%_)
                       (_%else202079202108%_
                        (lambda () (reverse! _%opts202073%_))))
                  (let ((_%K202094202171%_
                         (lambda (_%rest202168%_ _%opt202169%_)
                           (if _%static?202068%_
                               (_%lp202070%_
                                _%rest202168%_
                                (cons _%opt202169%_
                                      (cons '"-ld-options" _%opts202073%_)))
                               (_%lp202070%_ _%rest202168%_ _%opts202073%_))))
                        (_%K202089202148%_
                         (lambda (_%rest202145%_ _%opt202146%_)
                           (_%lp202070%_
                            _%rest202145%_
                            (cons _%opt202146%_
                                  (cons '"-ld-options" _%opts202073%_)))))
                        (_%K202084202128%_
                         (lambda (_%rest202126%_)
                           (_%lp202070%_ _%rest202126%_ _%opts202073%_)))
                        (_%K202081202114%_
                         (lambda (_%rest202112%_)
                           (_%lp202070%_ _%rest202112%_ _%opts202073%_))))
                    (if (pair? _%rest202074202100%_)
                        (let ((_%tl202096202176%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest202074202100%_)))
                              (_%hd202095202174%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest202074202100%_))))
                          (if (equal? _%hd202095202174%_ '"-ld-options")
                              (if (pair? _%tl202096202176%_)
                                  (let ((_%tl202098202181%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl202096202176%_)))
                                        (_%hd202097202179%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl202096202176%_))))
                                    (if (equal? _%hd202097202179%_ '"-static")
                                        (let ((_%opt202184%_
                                               _%hd202097202179%_)
                                              (_%rest202186%_
                                               _%tl202098202181%_))
                                          (_%K202094202171%_
                                           _%rest202186%_
                                           _%opt202184%_))
                                        (let ((_%opt202161%_
                                               _%hd202097202179%_)
                                              (_%rest202163%_
                                               _%tl202098202181%_))
                                          (_%K202089202148%_
                                           _%rest202163%_
                                           _%opt202161%_))))
                                  (let ((_%rest202120%_ _%tl202096202176%_))
                                    (_%K202081202114%_ _%rest202120%_)))
                              (if (equal? _%hd202095202174%_ '"-cc-options")
                                  (if (pair? _%tl202096202176%_)
                                      (let* ((_%tl202088202136%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl202096202176%_)))
                                             (_%rest202139%_
                                              _%tl202088202136%_))
                                        (_%K202084202128%_ _%rest202139%_))
                                      (let ((_%rest202120%_
                                             _%tl202096202176%_))
                                        (_%K202081202114%_ _%rest202120%_)))
                                  (let ((_%rest202120%_ _%tl202096202176%_))
                                    (_%K202081202114%_ _%rest202120%_)))))
                        (_%else202079202108%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords202191%_ _%static?202059202192%_)
        (let ((_%phi?202194%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords202191%_
           _%static?202059202192%_
           _%phi?202194%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g203689_
        (let ((_g203688_ (let () (declare (not safe)) (##length _g203689_))))
          (cond ((let () (declare (not safe)) (##fx= _g203688_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g203689_))
                ((let () (declare (not safe)) (##fx= _g203688_ 3))
                 (apply gxc#gsc-ld-options__%__% _g203689_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g203689_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords202203%_ . _%args202204%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords202203%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords202203%_
                  'static:
                  absent-value))
               _%args202204%_)))
    (define gxc#gsc-ld-options
      (lambda _%args202060202210%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args202060202210%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir202054%_)
        (let ((_%user-staticdir202056%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir202054%_
                       '" -I "
                       _%user-staticdir202056%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp201966%_ ((_%rest201968%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts201969%_ '()))
          (let* ((_%rest201970201990%_ _%rest201968%_)
                 (_%else201974201998%_ (lambda () _%opts201969%_)))
            (let ((_%K201984202041%_
                   (lambda (_%rest202039%_)
                     (_%lp201966%_ _%rest202039%_ _%opts201969%_)))
                  (_%K201979202019%_
                   (lambda (_%rest202016%_ _%opt202017%_)
                     (_%lp201966%_
                      _%rest202016%_
                      (let ((__tmp203690
                             (let ((__tmp203691
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt202017%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp203691))))
                        (declare (not safe))
                        (##append _%opts201969%_ __tmp203690)))))
                  (_%K201976202004%_
                   (lambda (_%rest202002%_)
                     (_%lp201966%_ _%rest202002%_ _%opts201969%_))))
              (if (pair? _%rest201970201990%_)
                  (let ((_%tl201986202046%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest201970201990%_)))
                        (_%hd201985202044%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest201970201990%_))))
                    (if (equal? _%hd201985202044%_ '"-cc-options")
                        (if (pair? _%tl201986202046%_)
                            (let* ((_%tl201988202049%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl201986202046%_)))
                                   (_%rest202052%_ _%tl201988202049%_))
                              (_%K201984202041%_ _%rest202052%_))
                            (let ((_%rest202010%_ _%tl201986202046%_))
                              (_%K201976202004%_ _%rest202010%_)))
                        (if (equal? _%hd201985202044%_ '"-ld-options")
                            (if (pair? _%tl201986202046%_)
                                (let ((_%tl201983202029%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl201986202046%_)))
                                      (_%hd201982202027%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl201986202046%_))))
                                  (let ((_%opt202032%_ _%hd201982202027%_)
                                        (_%rest202034%_ _%tl201983202029%_))
                                    (_%K201979202019%_
                                     _%rest202034%_
                                     _%opt202032%_)))
                                (let ((_%rest202010%_ _%tl201986202046%_))
                                  (_%K201976202004%_ _%rest202010%_)))
                            (let ((_%rest202010%_ _%tl201986202046%_))
                              (_%K201976202004%_ _%rest202010%_)))))
                  (_%else201974201998%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str201963%_)
        (not (let () (declare (not safe)) (string-empty? _%str201963%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path201956%_ _%phi?201957%_)
        (let ((_%gsc-link-opts201959%_
               (gxc#gsc-link-options__% _%phi?201957%_))
              (_%gsc-cc-opts201960%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?201957%_))
              (_%gsc-ld-opts201961%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?201957%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp203692
                  (let ((__tmp203693
                         (let ((__tmp203694 (cons _%path201956%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp203694
                            _%gsc-link-opts201959%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp203693 _%gsc-ld-opts201961%_))))
             (declare (not safe))
             (__foldr1 cons __tmp203692 _%gsc-cc-opts201960%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx201922%_ _%n201923%_ _%ext201924%_)
        (letrec ((_%module-relative-path201926%_
                  (lambda (_%ctx201954%_)
                    (path-strip-directory
                     (let ((__tmp203695
                            (##structure-ref
                             _%ctx201954%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp203695)))))
                 (_%module-source-directory201927%_
                  (lambda (_%ctx201950%_)
                    (path-directory
                     (let ((_%mpath201952%_
                            (##structure-ref
                             _%ctx201950%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath201952%_)
                           _%mpath201952%_
                           (last _%mpath201952%_))))))
                 (_%section-string201928%_
                  (lambda (_%n201944%_)
                    (if (number? _%n201944%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n201944%_))
                        (if (symbol? _%n201944%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n201944%_))
                            (if (string? _%n201944%_)
                                _%n201944%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n201944%_)))))))
                 (_%file-name201929%_
                  (lambda (_%path201942%_)
                    (if _%n201923%_
                        (string-append
                         _%path201942%_
                         '"~"
                         (_%section-string201928%_ _%n201923%_)
                         _%ext201924%_)
                        (string-append _%path201942%_ _%ext201924%_))))
                 (_%file-path201930%_
                  (lambda ()
                    (let ((_%$e201936%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e201936%_
                          ((lambda (_%outdir201939%_)
                             (path-expand
                              (_%file-name201929%_
                               (let ((__tmp203696
                                      (##structure-ref
                                       _%ctx201922%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp203696)))
                              _%outdir201939%_))
                           _%$e201936%_)
                          (path-expand
                           (_%file-name201929%_
                            (_%module-relative-path201926%_ _%ctx201922%_))
                           (_%module-source-directory201927%_
                            _%ctx201922%_)))))))
          (let ((_%path201932%_ (_%file-path201930%_)))
            (let ((__tmp203697
                   (lambda ()
                     (let ((__tmp203698 (path-directory _%path201932%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp203698)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp203697))
            _%path201932%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx201903%_)
        (letrec ((_%file-name201905%_
                  (lambda (_%id201920%_)
                    (let ((__tmp203699 (gxc#static-module-name _%id201920%_)))
                      (declare (not safe))
                      (##string-append __tmp203699 '".scm"))))
                 (_%file-path201906%_
                  (lambda ()
                    (let* ((_%file201912%_
                            (_%file-name201905%_
                             (##structure-ref
                              _%ctx201903%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e201914%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e201914%_
                          ((lambda (_%outdir201917%_)
                             (path-expand
                              _%file201912%_
                              (path-expand '"static" _%outdir201917%_)))
                           _%$e201914%_)
                          (path-expand _%file201912%_ '"static"))))))
          (let ((_%path201908%_ (_%file-path201906%_)))
            (let ((__tmp203700
                   (lambda ()
                     (let ((__tmp203701 (path-directory _%path201908%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp203701)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp203700))
            _%path201908%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx201896%_ _%opts201897%_)
        (let ((_%$e201899%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts201897%_))))
          (if _%$e201899%_
              _%$e201899%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx201896%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr201886%_)
        (if (string? _%idstr201886%_)
            (let* ((_%str201889%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr201886%_)))
                   (_%strs201891%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str201889%_ '#\/))))
              (declare (not safe))
              (string-join _%strs201891%_ '"__"))
            (if (symbol? _%idstr201886%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr201886%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr201886%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp203702
               (let ((__tmp203703 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp203703 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp203702))))
    (define gxc#invoke__%
      (lambda (_%@@keywords201850%_
               _%stdout-redirection201846201851%_
               _%stderr-redirection201847201853%_
               _%program201855%_
               _%args201856%_)
        (let* ((_%stdout-redirection201858%_
                (if (eq? _%stdout-redirection201846201851%_ absent-value)
                    '#f
                    _%stdout-redirection201846201851%_))
               (_%stderr-redirection201860%_
                (if (eq? _%stderr-redirection201847201853%_ absent-value)
                    '#f
                    _%stderr-redirection201847201853%_)))
          (let ((__tmp203704 (cons _%program201855%_ _%args201856%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp203704))
          (let* ((_%proc201862%_
                  (open-process
                   (cons 'path:
                         (cons _%program201855%_
                               (cons 'arguments:
                                     (cons _%args201856%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection201858%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection201860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output201867%_
                  (if (or _%stdout-redirection201858%_
                          _%stderr-redirection201860%_)
                      (read-line _%proc201862%_ '#f)
                      '#f))
                 (_%status201870%_ (process-status _%proc201862%_)))
            (let () (declare (not safe)) (##close-port _%proc201862%_))
            (if (zero? _%status201870%_)
                '#!void
                (begin
                  (display _%output201867%_)
                  (let ((__tmp203705 (cons _%program201855%_ _%args201856%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp203705
                     _%status201870%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords201875%_ . _%args201876%_)
        (apply gxc#invoke__%
               _%@@keywords201875%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201875%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201875%_
                  'stderr-redirection:
                  absent-value))
               _%args201876%_)))
    (define gxc#invoke
      (lambda _%args201848201882%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args201848201882%_)))))
