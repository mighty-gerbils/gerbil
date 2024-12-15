(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1734225201)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp203578 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp203578))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp203579 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp203579))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path203435%_ _%fun203436%_)
        (with-output-to-file
         (cons 'path: (cons _%path203435%_ gxc#scheme-file-settings))
         _%fun203436%_)))
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
      (lambda (_%gerbil-libdir203430%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir203430%_)))
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
      (lambda (_%dir203428%_) (delete-file-or-directory _%dir203428%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath203384%_ _%opts203385%_)
        (if (string? _%srcpath203384%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath203384%_)))
        (let* ((_%outdir203387%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts203385%_)))
               (_%invoke-gsc?203389%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts203385%_)))
               (_%target203394%_
                (let ((_%$e203391%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts203385%_))))
                  (if _%$e203391%_ _%$e203391%_ 'C)))
               (_%gsc-options203399%_
                (append (cons '"-target"
                              (cons (symbol->string _%target203394%_) '()))
                        (let ((_%$e203396%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts203385%_))))
                          (if _%$e203396%_ _%$e203396%_ '()))))
               (_%keep-scm?203401%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts203385%_)))
               (_%verbosity203403%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts203385%_)))
               (_%optimize203405%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts203385%_)))
               (_%debug203407%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts203385%_)))
               (_%gen-ssxi203409%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts203385%_)))
               (_%parallel?203411%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts203385%_))))
          (if _%outdir203387%_
              (let ((__tmp203580
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir203387%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp203580))
              '#!void)
          (if _%optimize203405%_
              (let ((__tmp203581
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp203581))
              '#!void)
          (let ((__tmp203584
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath203384%_))
                   (gxc#compile-top-module
                    (let ((__tmp203585
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath203384%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp203585)))))
                (__tmp203583 (gxc#compile-timestamp))
                (__tmp203582
                 (cons 'compile-module (cons _%srcpath203384%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp203584
             gxc#current-compile-output-dir
             _%outdir203387%_
             gx#current-compilation-target
             _%target203394%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?203389%_
             gxc#current-compile-gsc-options
             _%gsc-options203399%_
             gxc#current-compile-keep-scm
             _%keep-scm?203401%_
             gxc#current-compile-verbose
             _%verbosity203403%_
             gxc#current-compile-optimize
             _%optimize203405%_
             gxc#current-compile-debug
             _%debug203407%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi203409%_
             gxc#current-compile-timestamp
             __tmp203583
             gxc#current-compile-context
             __tmp203582
             gxc#current-compile-parallel
             _%parallel?203411%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath203421%_)
        (let ((_%opts203423%_ '()))
          (gxc#compile-module__% _%srcpath203421%_ _%opts203423%_))))
    (define gxc#compile-module
      (lambda _g203587_
        (let ((_g203586_ (let () (declare (not safe)) (##length _g203587_))))
          (cond ((let () (declare (not safe)) (##fx= _g203586_ 1))
                 (apply gxc#compile-module__0 _g203587_))
                ((let () (declare (not safe)) (##fx= _g203586_ 2))
                 (apply gxc#compile-module__% _g203587_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g203587_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath203344%_ _%opts203345%_)
        (if (string? _%srcpath203344%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath203344%_)))
        (let* ((_%outdir203347%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts203345%_)))
               (_%invoke-gsc?203349%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts203345%_)))
               (_%target203354%_
                (let ((_%$e203351%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts203345%_))))
                  (if _%$e203351%_ _%$e203351%_ 'C)))
               (_%gsc-options203359%_
                (append (cons '"-target"
                              (cons (symbol->string _%target203354%_) '()))
                        (let ((_%$e203356%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts203345%_))))
                          (if _%$e203356%_ _%$e203356%_ '()))))
               (_%keep-scm?203361%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts203345%_)))
               (_%verbosity203363%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts203345%_)))
               (_%debug203365%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts203345%_)))
               (_%parallel?203367%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts203345%_))))
          (if _%outdir203347%_
              (let ((__tmp203588
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir203347%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp203588))
              '#!void)
          (let ((__tmp203591
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath203344%_))
                   (gxc#compile-executable-module
                    (let ((__tmp203592
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath203344%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp203592))
                    _%opts203345%_)))
                (__tmp203590 (gxc#compile-timestamp))
                (__tmp203589 (cons 'compile-exe (cons _%srcpath203344%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp203591
             gxc#current-compile-output-dir
             _%outdir203347%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?203349%_
             gx#current-compilation-target
             _%target203354%_
             gxc#current-compile-gsc-options
             _%gsc-options203359%_
             gxc#current-compile-keep-scm
             _%keep-scm?203361%_
             gxc#current-compile-verbose
             _%verbosity203363%_
             gxc#current-compile-debug
             _%debug203365%_
             gxc#current-compile-timestamp
             __tmp203590
             gxc#current-compile-context
             __tmp203589
             gxc#current-compile-parallel
             _%parallel?203367%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath203376%_)
        (let ((_%opts203378%_ '()))
          (gxc#compile-exe__% _%srcpath203376%_ _%opts203378%_))))
    (define gxc#compile-exe
      (lambda _g203594_
        (let ((_g203593_ (let () (declare (not safe)) (##length _g203594_))))
          (cond ((let () (declare (not safe)) (##fx= _g203593_ 1))
                 (apply gxc#compile-exe__0 _g203594_))
                ((let () (declare (not safe)) (##fx= _g203593_ 2))
                 (apply gxc#compile-exe__% _g203594_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g203594_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx203340%_ _%opts203341%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts203341%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx203340%_
             _%opts203341%_)
            (gxc#compile-executable-module/separate
             _%ctx203340%_
             _%opts203341%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx203130%_ _%opts203131%_)
        (letrec ((_%generate-stub203133%_
                  (lambda (_%builtin-modules203336%_)
                    (let ((_%mod-main203338%_
                           (gxc#find-runtime-symbol _%ctx203130%_ 'main)))
                      (let ((__tmp203595
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules203336%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp203595))
                      (let ((__tmp203596
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main203338%_
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
                        (##write __tmp203596))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts203134%_
                  (lambda (_%gerbil-libdir203334%_)
                    (let ((__tmp203597
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir203334%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp203597 read))))
                 (_%replace-extension203135%_
                  (lambda (_%path203331%_ _%ext203332%_)
                    (string-append
                     (path-strip-extension _%path203331%_)
                     _%ext203332%_)))
                 (_%userlib-module?203136%_
                  (lambda (_%ctx203329%_)
                    (if (_%exclude-module?203138%_ _%ctx203329%_)
                        '#f
                        (not (_%libgerbil-module?203137%_ _%ctx203329%_)))))
                 (_%libgerbil-module?203137%_
                  (lambda (_%ctx203322%_)
                    (let ((_%id-str203324%_
                           (symbol->string
                            (##structure-ref
                             _%ctx203322%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?203138%_ _%id-str203324%_)
                          '#f
                          (let ((_%$e203326%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str203324%_))))
                            (if _%$e203326%_
                                _%$e203326%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str203324%_))))))))
                 (_%exclude-module?203138%_
                  (lambda (_%ctx-or-str203318%_)
                    (let ((_%str203320%_
                           (if (string? _%ctx-or-str203318%_)
                               _%ctx-or-str203318%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str203318%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str203320%_))))
                 (_%not-file-empty?203139%_
                  (lambda (_%path203316%_)
                    (not (gxc#file-empty? _%path203316%_))))
                 (_%fold-libgerbil-runtime-scm203140%_
                  (lambda (_%gerbil-staticdir203309%_ _%libgerbil-scm203310%_)
                    (let ((_%gerbil-runtime-scm203314%_
                           (let ((__tmp203598
                                  (lambda (_%rtm203312%_)
                                    (path-expand
                                     (let ((__tmp203599
                                            (let ((__tmp203600
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm203312%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp203600
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp203599 '".scm"))
                                     _%gerbil-staticdir203309%_))))
                             (declare (not safe))
                             (##map __tmp203598 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates203141%_
                       (append _%gerbil-runtime-scm203314%_
                               _%libgerbil-scm203310%_)))))
                 (_%remove-duplicates203141%_
                  (lambda (_%strlst203269%_)
                    (let _%loop203271%_ ((_%rest203273%_ _%strlst203269%_)
                                         (_%result203274%_ '()))
                      (let* ((_%rest203275203283%_ _%rest203273%_)
                             (_%else203277203291%_
                              (lambda () (reverse! _%result203274%_)))
                             (_%K203279203297%_
                              (lambda (_%rest203294%_ _%path203295%_)
                                (if (member _%path203295%_ _%result203274%_)
                                    (_%loop203271%_
                                     _%rest203294%_
                                     _%result203274%_)
                                    (_%loop203271%_
                                     _%rest203294%_
                                     (cons _%path203295%_
                                           _%result203274%_))))))
                        (if (pair? _%rest203275203283%_)
                            (let ((_%hd203280203300%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest203275203283%_)))
                                  (_%tl203281203302%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest203275203283%_))))
                              (let* ((_%path203305%_ _%hd203280203300%_)
                                     (_%rest203307%_ _%tl203281203302%_))
                                (_%K203279203297%_
                                 _%rest203307%_
                                 _%path203305%_)))
                            (_%else203277203291%_))))))
                 (_%compile-stub203142%_
                  (lambda (_%output-scm203149%_ _%output-bin203150%_)
                    (let* ((_%gerbil-home203152%_
                            (let ((__tmp203601
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp203601)))
                           (_%gerbil-libdir203154%_
                            (path-expand '"lib" _%gerbil-home203152%_))
                           (_%gerbil-staticdir203156%_
                            (path-expand '"static" _%gerbil-libdir203154%_))
                           (_%deps203158%_
                            (gxc#find-runtime-module-deps _%ctx203130%_))
                           (_%libgerbil-deps203160%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?203137%_
                               _%deps203158%_)))
                           (_%libgerbil-scm203162%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps203160%_)))
                           (_%libgerbil-scm203164%_
                            (_%fold-libgerbil-runtime-scm203140%_
                             _%gerbil-staticdir203156%_
                             _%libgerbil-scm203162%_))
                           (_%libgerbil-c203170%_
                            (map (lambda (_%g203165203167%_)
                                   (_%replace-extension203135%_
                                    _%g203165203167%_
                                    '".c"))
                                 _%libgerbil-scm203164%_))
                           (_%libgerbil-o203176%_
                            (map (lambda (_%g203171203173%_)
                                   (_%replace-extension203135%_
                                    _%g203171203173%_
                                    '".o"))
                                 _%libgerbil-scm203164%_))
                           (_%src-deps203178%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?203136%_
                               _%deps203158%_)))
                           (_%src-deps-scm203180%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps203178%_)))
                           (_%src-deps-scm203182%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?203139%_
                               _%src-deps-scm203180%_)))
                           (_%src-deps-scm203184%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm203182%_)))
                           (_%src-deps-c203190%_
                            (let ((__tmp203602
                                   (lambda (_%g203185203187%_)
                                     (_%replace-extension203135%_
                                      _%g203185203187%_
                                      '".c"))))
                              (declare (not safe))
                              (##map __tmp203602 _%src-deps-scm203184%_)))
                           (_%src-deps-o203196%_
                            (let ((__tmp203603
                                   (lambda (_%g203191203193%_)
                                     (_%replace-extension203135%_
                                      _%g203191203193%_
                                      '".o"))))
                              (declare (not safe))
                              (##map __tmp203603 _%src-deps-scm203184%_)))
                           (_%src-bin-scm203198%_
                            (gxc#find-static-module-file _%ctx203130%_))
                           (_%src-bin-scm203200%_
                            (path-expand _%src-bin-scm203198%_))
                           (_%src-bin-c203202%_
                            (_%replace-extension203135%_
                             _%src-bin-scm203200%_
                             '".c"))
                           (_%src-bin-o203204%_
                            (_%replace-extension203135%_
                             _%src-bin-scm203200%_
                             '".o"))
                           (_%output-bin203206%_
                            (path-expand _%output-bin203150%_))
                           (_%output-scm203208%_
                            (path-expand _%output-scm203149%_))
                           (_%output-c203210%_
                            (_%replace-extension203135%_
                             _%output-scm203208%_
                             '".c"))
                           (_%output-o203212%_
                            (_%replace-extension203135%_
                             _%output-scm203208%_
                             '".o"))
                           (_%output_-c203214%_
                            (_%replace-extension203135%_
                             _%output-scm203208%_
                             '"_.c"))
                           (_%output_-o203216%_
                            (_%replace-extension203135%_
                             _%output-scm203208%_
                             '"_.o"))
                           (_%gsc-link-opts203218%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts203220%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts203222%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir203156%_))
                           (_%output-ld-opts203224%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts203226%_
                            (_%get-libgerbil-ld-opts203134%_
                             _%gerbil-libdir203154%_))
                           (_%rpath203228%_
                            (gxc#gerbil-rpath _%gerbil-libdir203154%_))
                           (_%builtin-modules203232%_
                            (_%remove-duplicates203141%_
                             (let ((__tmp203604
                                    (let ((__tmp203606
                                           (lambda (_%mod203230%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod203230%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp203605
                                           (cons _%ctx203130%_
                                                 _%deps203158%_)))
                                      (declare (not safe))
                                      (##map __tmp203606 __tmp203605))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp203604)))))
                      (letrec ((_%compile-obj203235%_
                                (lambda (_%scm-path203242%_ _%c-path203243%_)
                                  (let* ((_%o-path203245%_
                                          (_%replace-extension203135%_
                                           _%c-path203243%_
                                           '".o"))
                                         (_%lock203247%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path203245%_
                                             '".lock")))
                                         (_%locked203249%_ '#f)
                                         (_%unlock203252%_
                                          (lambda ()
                                            (close-port _%locked203249%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock203247%_)))))
                                    (let _%retry203255%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock203247%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry203255%_))
                                          (begin
                                            (set! _%locked203249%_
                                                  (let ((__tmp203607
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock203247%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp203607)))
                                            (if _%locked203249%_
                                                '#!void
                                                (_%retry203255%_)))))
                                    (let ((__tmp203609
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path203245%_)))
                                                     (not _%scm-path203242%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path203242%_
                                                        _%o-path203245%_)))
                                                 (let ((_%gsc-cc-opts203266%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp203610
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp203611 (cons _%c-path203243%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp203611
                            _%gsc-static-opts203222%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp203610 _%gsc-cc-opts203266%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp203608
                                           (lambda () (_%unlock203252%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp203609
                                       __tmp203608))))))
                        (let ((__tmp203612
                               (lambda ()
                                 (let ((__tmp203613
                                        (path-directory _%output-bin203206%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp203613)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp203612))
                        (gxc#with-output-to-scheme-file
                         _%output-scm203208%_
                         (lambda ()
                           (_%generate-stub203133%_
                            _%builtin-modules203232%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it203240%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp203614
                                                   (let ((__tmp203615
                                                          (let ((__tmp203616
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm203200%_
                               (cons _%output-scm203208%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp203616 _%src-deps-scm203184%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp203615
                                                      _%libgerbil-c203170%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp203614
                                               _%gsc-link-opts203218%_))))
                                     (for-each
                                      _%compile-obj203235%_
                                      (let ((__tmp203617
                                             (cons _%src-bin-scm203200%_
                                                   (cons _%output-scm203208%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp203617
                                         _%src-deps-scm203184%_))
                                      (let ((__tmp203618
                                             (cons _%src-bin-c203202%_
                                                   (cons _%output-c203210%_
                                                         (cons _%output_-c203214%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp203618
                                         _%src-deps-c203190%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin203206%_
                                                        (let ((__tmp203619
                                                               (cons _%src-bin-o203204%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o203212%_
                                   (cons _%output_-o203216%_
                                         (let ((__tmp203620
                                                (let ((__tmp203621
                                                       (let ((__tmp203623
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir203154%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts203226%_))))
                     (__tmp203622
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath203228%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp203623 __tmp203622))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp203621
                                                   _%output-ld-opts203224%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp203620
                                            _%libgerbil-o203176%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp203619 _%src-deps-o203196%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp203624
                                            (cons _%output-c203210%_
                                                  (cons _%output_-c203214%_
                                                        (cons _%output-o203212%_
                                                              (cons _%output_-o203216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp203624)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it203240%_))
                                  (_%compile-it203240%_)))
                            '#!void))))))
          (let* ((_%output-bin203144%_
                  (gxc#compile-exe-output-file _%ctx203130%_ _%opts203131%_))
                 (_%output-scm203146%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin203144%_ '"__exe.scm"))))
            (_%compile-stub203142%_
             _%output-scm203146%_
             _%output-bin203144%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx202952%_ _%opts202953%_)
        (letrec ((_%reset-declare202955%_
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
                 (_%generate-stub202956%_
                  (lambda (_%deps203121%_)
                    (let ((_%mod-main203123%_
                           (gxc#find-runtime-symbol _%ctx202952%_ 'main))
                          (_%reset-decl203124%_ (_%reset-declare202955%_))
                          (_%user-decl203125%_ (_%user-declare202957%_)))
                      (for-each
                       (lambda (_%dep203127%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl203124%_))
                         (newline)
                         (if _%user-decl203125%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl203125%_))
                               (newline))
                             '#!void)
                         (let ((__tmp203625
                                (cons 'include (cons _%dep203127%_ '()))))
                           (declare (not safe))
                           (##write __tmp203625))
                         (newline))
                       _%deps203121%_)
                      (let ((__tmp203626
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main203123%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp203626))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare202957%_
                  (lambda ()
                    (let* ((_%gsc-opts203026%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts202953%_)))
                           (_%gsc-prelude203028%_
                            (if _%gsc-opts203026%_
                                (member '"-prelude" _%gsc-opts203026%_)
                                '#f))
                           (_%gsc-prelude203030%_
                            (if _%gsc-prelude203028%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude203028%_)))
                                '#f)))
                      (let _%lp203033%_ ((_%rest203035%_
                                          (cons _%gsc-prelude203030%_ '()))
                                         (_%user-decls203036%_ '()))
                        (let* ((_%rest203037203045%_ _%rest203035%_)
                               (_%else203039203053%_
                                (lambda ()
                                  (if (null? _%user-decls203036%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls203036%_)))))
                               (_%K203041203109%_
                                (lambda (_%rest203056%_ _%expr203057%_)
                                  (let* ((_%expr203058203070%_ _%expr203057%_)
                                         (_%else203061203078%_
                                          (lambda ()
                                            (_%lp203033%_
                                             _%rest203056%_
                                             _%user-decls203036%_))))
                                    (let ((_%K203066203099%_
                                           (lambda (_%decls203097%_)
                                             (_%lp203033%_
                                              _%rest203056%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls203036%_
                                                 _%decls203097%_)))))
                                          (_%K203063203084%_
                                           (lambda (_%exprs203082%_)
                                             (_%lp203033%_
                                              (append _%exprs203082%_
                                                      _%rest203056%_)
                                              _%user-decls203036%_))))
                                      (if (pair? _%expr203058203070%_)
                                          (let ((_%tl203068203104%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr203058203070%_)))
                                                (_%hd203067203102%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr203058203070%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd203067203102%_
                                                         'declare))
                                                (let ((_%decls203107%_
                                                       _%tl203068203104%_))
                                                  (_%K203066203099%_
                                                   _%decls203107%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd203067203102%_
                                                             'begin))
                                                    (let ((_%exprs203092%_
                                                           _%tl203068203104%_))
                                                      (_%K203063203084%_
                                                       _%exprs203092%_))
                                                    (_%else203061203078%_))))
                                          (_%else203061203078%_)))))))
                          (if (pair? _%rest203037203045%_)
                              (let ((_%hd203042203112%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest203037203045%_)))
                                    (_%tl203043203114%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest203037203045%_))))
                                (let* ((_%expr203117%_ _%hd203042203112%_)
                                       (_%rest203119%_ _%tl203043203114%_))
                                  (_%K203041203109%_
                                   _%rest203119%_
                                   _%expr203117%_)))
                              (_%else203039203053%_)))))))
                 (_%compile-stub202958%_
                  (lambda (_%output-scm202965%_ _%output-bin202966%_)
                    (let* ((_%gerbil-home202968%_
                            (let ((__tmp203627
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp203627)))
                           (_%gerbil-libdir202970%_
                            (path-expand '"lib" _%gerbil-home202968%_))
                           (_%runtime202972%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp202974%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home202968%_))
                           (_%include-gambit-sharp202976%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp202974%_
                               '"\")")))
                           (_%bin-scm202978%_
                            (gxc#find-static-module-file _%ctx202952%_))
                           (_%deps202980%_
                            (gxc#find-runtime-module-deps _%ctx202952%_))
                           (_%deps202982%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps202980%_)))
                           (_%deps202987%_
                            (let ((__tmp203628
                                   (lambda (_%$obj202984%_)
                                     (not (gxc#file-empty? _%$obj202984%_)))))
                              (declare (not safe))
                              (##filter __tmp203628 _%deps202982%_)))
                           (_%deps202991%_
                            (let ((__tmp203629
                                   (lambda (_%f202989%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f202989%_
                                             _%runtime202972%_))))))
                              (declare (not safe))
                              (##filter __tmp203629 _%deps202987%_)))
                           (_%output-base202993%_
                            (let ((__tmp203630
                                   (path-strip-extension
                                    _%output-scm202965%_)))
                              (declare (not safe))
                              (##string-append __tmp203630)))
                           (_%output-c202995%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base202993%_ '".c")))
                           (_%output-o202997%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base202993%_ '".o")))
                           (_%output-c_202999%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base202993%_ '"_.c")))
                           (_%output-o_203001%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base202993%_ '"_.o")))
                           (_%gsc-link-opts203003%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts203005%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts203007%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir202970%_)))
                           (_%output-ld-opts203009%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros203011%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp202976%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp202976%_
                                            '()))))
                           (_%gsc-link-opts203013%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts203003%_
                               _%gsc-gx-macros203011%_)))
                           (_%rpath203015%_
                            (gxc#gerbil-rpath _%gerbil-libdir202970%_))
                           (_%default-ld-options203017%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp203631
                             (lambda ()
                               (let ((__tmp203632
                                      (path-directory _%output-bin202966%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp203632)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp203631))
                      (gxc#with-output-to-scheme-file
                       _%output-scm202965%_
                       (lambda ()
                         (_%generate-stub202956%_
                          (let ((__tmp203633
                                 (let ((__tmp203634
                                        (cons _%bin-scm202978%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp203634
                                    _%deps202991%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp203633 _%runtime202972%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it203023%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_202999%_
                                                      (let ((__tmp203635
                                                             (cons _%output-scm202965%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp203635 _%gsc-link-opts203013%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp203636
                                                 (let ((__tmp203637
                                                        (cons _%output-c202995%_
                                                              (cons _%output-c_202999%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp203637
                                                    _%gsc-static-opts203007%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp203636
                                             _%gsc-cc-opts203005%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin202966%_
                                                      (cons _%output-o202997%_
                                                            (cons _%output-o_203001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp203638
                                 (let ((__tmp203640
                                        (cons '"-L"
                                              (cons _%gerbil-libdir202970%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options203017%_))))
                                       (__tmp203639
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath203015%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp203640 __tmp203639))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp203638
                             _%output-ld-opts203009%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it203023%_))
                                (_%compile-it203023%_)))
                          '#!void)))))
          (let* ((_%output-bin202960%_
                  (gxc#compile-exe-output-file _%ctx202952%_ _%opts202953%_))
                 (_%output-scm202962%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin202960%_ '"__exe.scm"))))
            (_%compile-stub202958%_
             _%output-scm202962%_
             _%output-bin202960%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx202901%_ _%id202902%_)
        (let ((_%$e202948%_
               (let ((__tmp203642
                      (lambda (_%e202903202905%_)
                        (let* ((_%g202907202917%_ _%e202903202905%_)
                               (_%else202909202925%_ (lambda () '#f))
                               (_%K202911202929%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g202907202917%_
                                 'gx#module-export::t))
                              (let* ((_%e202912202932%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g202907202917%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e202913202935%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g202907202917%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e202914202938%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g202907202917%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e202914202938%_ '0))
                                    (let ((_%e202915202941%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g202907202917%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g202943202945%_)
                                             (eq? _%g202943202945%_
                                                  _%id202902%_))
                                           _%e202915202941%_)
                                          (_%K202911202929%_)
                                          (_%else202909202925%_)))
                                    (_%else202909202925%_)))
                              (_%else202909202925%_)))))
                     (__tmp203641
                      (##structure-ref
                       _%ctx202901%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp203642 __tmp203641))))
          (if _%$e202948%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e202948%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx202892%_ _%id202893%_)
        (let ((_%$e202895%_
               (gxc#find-export-binding _%ctx202892%_ _%id202893%_)))
          (if _%$e202895%_
              ((lambda (_%bind202898%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind202898%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id202893%_)))
                 (##structure-ref _%bind202898%_ '1 gx#binding::t '#f))
               _%$e202895%_)
              (let ((__tmp203643
                     (##structure-ref
                      _%ctx202892%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp203643
                 _%id202893%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx202758%_)
        (letrec* ((_%ht202760%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template202761%_
                   (lambda (_%in202837%_ _%phi202838%_)
                     (let ((_%iphi202840%_
                            (fx+ _%phi202838%_
                                 (##direct-structure-ref
                                  _%in202837%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports202841%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in202837%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp202843%_ ((_%rest202845%_ _%imports202841%_)
                                          (_%r202846%_ '()))
                         (let* ((_%rest202847202855%_ _%rest202845%_)
                                (_%else202849202863%_ (lambda () _%r202846%_))
                                (_%K202851202880%_
                                 (lambda (_%rest202866%_ _%in202867%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in202867%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi202840%_))
                                           (_%lp202843%_
                                            _%rest202866%_
                                            (cons _%in202867%_ _%r202846%_))
                                           (_%lp202843%_
                                            _%rest202866%_
                                            _%r202846%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in202867%_
                                              'gx#module-import::t))
                                           (let ((_%iphi202871%_
                                                  (fx+ _%phi202838%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in202867%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi202871%_))
                                                 (_%lp202843%_
                                                  _%rest202866%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in202867%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r202846%_))
                                                 (_%lp202843%_
                                                  _%rest202866%_
                                                  _%r202846%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in202867%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi202874%_
                                                      (fx+ _%iphi202840%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in202867%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi202874%_))
                                                     (_%lp202843%_
                                                      _%rest202866%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in202867%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r202846%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi202874%_))
                                                         (_%lp202843%_
                                                          _%rest202866%_
                                                          (let ((__tmp203644
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template202761%_
                          _%in202867%_
                          _%iphi202840%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r202846%_ __tmp203644)))
                 (_%lp202843%_ _%rest202866%_ _%r202846%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp202843%_
                                                _%rest202866%_
                                                _%r202846%_)))))))
                           (if (pair? _%rest202847202855%_)
                               (let ((_%hd202852202883%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest202847202855%_)))
                                     (_%tl202853202885%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest202847202855%_))))
                                 (let* ((_%in202888%_ _%hd202852202883%_)
                                        (_%rest202890%_ _%tl202853202885%_))
                                   (_%K202851202880%_
                                    _%rest202890%_
                                    _%in202888%_)))
                               (_%else202849202863%_)))))))
                  (_%find-deps202762%_
                   (lambda (_%rest202770%_ _%deps202771%_)
                     (let* ((_%rest202772202780%_ _%rest202770%_)
                            (_%else202774202788%_ (lambda () _%deps202771%_))
                            (_%K202776202825%_
                             (lambda (_%rest202791%_ _%hd202792%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd202792%_
                                      'gx#module-context::t))
                                   (let ((_%id202795%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd202792%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports202796%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd202792%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht202760%_
                                            _%id202795%_))
                                         (_%find-deps202762%_
                                          _%rest202791%_
                                          _%deps202771%_)
                                         (let ((_%$e202799%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd202792%_))))
                                           (if _%$e202799%_
                                               ((lambda (_%pre202802%_)
                                                  (let ((_%xdeps202804%_
                                                         (_%find-deps202762%_
                                                          (cons _%pre202802%_
                                                                _%imports202796%_)
                                                          _%deps202771%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht202760%_
                                                       _%id202795%_
                                                       _%hd202792%_))
                                                    (_%find-deps202762%_
                                                     _%rest202791%_
                                                     (cons _%hd202792%_
                                                           _%xdeps202804%_))))
                                                _%$e202799%_)
                                               (let ((_%xdeps202807%_
                                                      (_%find-deps202762%_
                                                       _%imports202796%_
                                                       _%deps202771%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht202760%_
                                                    _%id202795%_
                                                    _%hd202792%_))
                                                 (_%find-deps202762%_
                                                  _%rest202791%_
                                                  (cons _%hd202792%_
                                                        _%xdeps202807%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd202792%_
                                          'gx#prelude-context::t))
                                       (let ((_%id202810%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd202792%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht202760%_
                                                _%id202810%_))
                                             (_%find-deps202762%_
                                              _%rest202791%_
                                              _%deps202771%_)
                                             (let ((_%xdeps202814%_
                                                    (_%find-deps202762%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd202792%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps202771%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht202760%_
                                                      _%id202810%_))
                                                   (_%find-deps202762%_
                                                    _%rest202791%_
                                                    _%xdeps202814%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht202760%_
                                                        _%id202810%_
                                                        _%hd202792%_))
                                                     (_%find-deps202762%_
                                                      _%rest202791%_
                                                      (cons _%hd202792%_
                                                            _%xdeps202814%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd202792%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd202792%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps202762%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd202792%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest202791%_)
                                                _%deps202771%_)
                                               (_%find-deps202762%_
                                                _%rest202791%_
                                                _%deps202771%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd202792%_
                                                  'gx#module-export::t))
                                               (_%find-deps202762%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd202792%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest202791%_)
                                                _%deps202771%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd202792%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd202792%_ '2 '#f '#f)))
               (_%find-deps202762%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd202792%_ '1 '#f '#f))
                      _%rest202791%_)
                _%deps202771%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd202792%_ '2 '#f '#f)))
                   (let ((_%xdeps202821%_
                          (_%import-set-template202761%_ _%hd202792%_ '0)))
                     (_%find-deps202762%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest202791%_ _%xdeps202821%_))
                      _%deps202771%_))
                   (_%find-deps202762%_ _%rest202791%_ _%deps202771%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd202792%_))))))))))
                       (if (pair? _%rest202772202780%_)
                           (let ((_%hd202777202828%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest202772202780%_)))
                                 (_%tl202778202830%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest202772202780%_))))
                             (let* ((_%hd202833%_ _%hd202777202828%_)
                                    (_%rest202835%_ _%tl202778202830%_))
                               (_%K202776202825%_
                                _%rest202835%_
                                _%hd202833%_)))
                           (_%else202774202788%_))))))
          (let ((__tmp203645
                 (filter gx#expander-context-id
                         (_%find-deps202762%_
                          (let ((_%$e202764%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx202758%_))))
                            (if _%$e202764%_
                                ((lambda (_%pre202767%_)
                                   (cons _%pre202767%_
                                         (##structure-ref
                                          _%ctx202758%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e202764%_)
                                (##structure-ref
                                 _%ctx202758%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp203645)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx202688%_)
        (let* ((_%context-id202690%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx202688%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx202688%_ '1 '#f '#f))
                    (string->symbol _%ctx202688%_)))
               (_%scm202692%_
                (let ((__tmp203646
                       (gxc#static-module-name _%context-id202690%_)))
                  (declare (not safe))
                  (##string-append __tmp203646 '".scm")))
               (_%dirs202694%_ (let () (declare (not safe)) (load-path)))
               (_%dirs202700%_
                (let ((_%user-libpath202696%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath202696%_
                      (let ((_%user-libpath202698%_
                             (path-expand '"lib" _%user-libpath202696%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath202698%_ _%dirs202694%_))
                            _%dirs202694%_
                            (cons _%user-libpath202698%_ _%dirs202694%_)))
                      _%dirs202694%_)))
               (_%dirs202710%_
                (let ((_%$e202702%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e202702%_
                      ((lambda (_%g202704202706%_)
                         (cons _%g202704202706%_ _%dirs202700%_))
                       _%$e202702%_)
                      _%dirs202700%_)))
               (_%dirs202716%_
                (let ((__tmp203647
                       (lambda (_%g202711202713%_)
                         (path-expand '"static" _%g202711202713%_))))
                  (declare (not safe))
                  (##map __tmp203647 _%dirs202710%_))))
          (let _%lp202719%_ ((_%rest202721%_ _%dirs202716%_))
            (let* ((_%rest202722202730%_ _%rest202721%_)
                   (_%else202724202738%_
                    (lambda ()
                      (let ((__tmp203648
                             (##structure-ref
                              _%ctx202688%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp203648
                         _%scm202692%_))))
                   (_%K202726202746%_
                    (lambda (_%rest202741%_ _%dir202742%_)
                      (let ((_%path202744%_
                             (path-expand _%scm202692%_ _%dir202742%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path202744%_))
                            _%path202744%_
                            (_%lp202719%_ _%rest202741%_))))))
              (if (pair? _%rest202722202730%_)
                  (let ((_%hd202727202749%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest202722202730%_)))
                        (_%tl202728202751%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest202722202730%_))))
                    (let* ((_%dir202754%_ _%hd202727202749%_)
                           (_%rest202756%_ _%tl202728202751%_))
                      (_%K202726202746%_ _%rest202756%_ _%dir202754%_)))
                  (_%else202724202738%_)))))))
    (define gxc#file-empty?
      (lambda (_%path202686%_)
        (zero? (let ((__tmp203649 (file-info _%path202686%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp203649)))))
    (define gxc#compile-top-module
      (lambda (_%ctx202682%_)
        (let ((__tmp203653
               (lambda ()
                 (let ((__tmp203654
                        (##structure-ref
                         _%ctx202682%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp203654))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp203655
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx202682%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp203655))
                     '#!void)
                 (gxc#collect-bindings _%ctx202682%_)
                 (gxc#compile-runtime-code _%ctx202682%_)
                 (gxc#compile-meta-code _%ctx202682%_)
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx202682%_)
                     '#!void)))
              (__tmp203652
               (let ((__obj203576
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj203576))
                 __obj203576))
              (__tmp203651 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp203650
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
           __tmp203653
           gx#current-expander-context
           _%ctx202682%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp203652
           gxc#current-compile-runtime-sections
           __tmp203651
           gxc#current-compile-runtime-names
           __tmp203650))))
    (define gxc#collect-bindings
      (lambda (_%ctx202680%_)
        (let ((__tmp203656
               (##structure-ref _%ctx202680%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp203656))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx202628%_)
        (letrec ((_%compile1202630%_
                  (lambda (_%ctx202669%_)
                    (let* ((_%code202671%_
                            (##structure-ref
                             _%ctx202669%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm202675%_
                            (let ((_%idstr202673%_
                                   (let ((__tmp203657
                                          (##structure-ref
                                           _%ctx202669%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp203657))))
                              (declare (not safe))
                              (##string-append _%idstr202673%_ '"~0")))
                           (_%rtc?202677%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code202671%_))))
                      (if _%rtc?202677%_
                          (let ((__tmp203658
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp203658
                             _%ctx202669%_
                             _%rtm202675%_))
                          '#!void)
                      (_%generate-runtime-code202632%_
                       _%ctx202669%_
                       _%code202671%_
                       (if _%rtc?202677%_ _%rtm202675%_ '#f)))))
                 (_%context-timestamp202631%_
                  (lambda (_%ctx202667%_)
                    (let ((__tmp203659
                           (let ((__tmp203660
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx202667%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp203660 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp203659))))
                 (_%generate-runtime-code202632%_
                  (lambda (_%ctx202639%_ _%code202640%_ _%rtm202641%_)
                    (let* ((_%runtime-code?202643%_ (if _%rtm202641%_ '#t '#f))
                           (_%lifts202645%_ (box '()))
                           (_%runtime-code202648%_
                            (if _%runtime-code?202643%_
                                (let ((__tmp203663
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code202640%_))))
                                      (__tmp203662
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp203661
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp203663
                                   gx#current-expander-context
                                   _%ctx202639%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts202645%_
                                   gxc#current-compile-marks
                                   __tmp203662
                                   gxc#current-compile-identifiers
                                   __tmp203661))
                                '#f))
                           (_%runtime-code202650%_
                            (if _%runtime-code?202643%_
                                (if (null? (unbox _%lifts202645%_))
                                    _%runtime-code202648%_
                                    (cons 'begin
                                          (let ((__tmp203665
                                                 (cons _%runtime-code202648%_
                                                       '()))
                                                (__tmp203664
                                                 (reverse (unbox _%lifts202645%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp203665
                                             __tmp203664))))
                                '#f))
                           (_%runtime-code202652%_
                            (if _%runtime-code?202643%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp202631%_
                                                         _%ctx202639%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code202650%_ '())))
                                '#f))
                           (_%loader-code202655%_
                            (let ((__tmp203666
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code202640%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp203666
                               gx#current-expander-context
                               _%ctx202639%_)))
                           (_%loader-code202657%_
                            (cons 'begin
                                  (cons _%loader-code202655%_
                                        (cons (if _%runtime-code?202643%_
                                                  (cons 'load-module
                                                        (cons _%rtm202641%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0202659%_
                            (gxc#compile-output-file _%ctx202639%_ '0 '".scm"))
                           (_%scmrt202661%_
                            (gxc#compile-output-file
                             _%ctx202639%_
                             '#f
                             '".scm"))
                           (_%scms202663%_
                            (gxc#compile-static-output-file _%ctx202639%_)))
                      (if _%runtime-code?202643%_
                          (gxc#compile-scm-file__0
                           _%scm0202659%_
                           _%runtime-code202652%_)
                          '#!void)
                      (let ((__tmp203667
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt202661%_
                                _%loader-code202657%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp203667
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms202663%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms202663%_))
                          '#!void)
                      (if _%runtime-code?202643%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0202659%_ _%scms202663%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms202663%_ void)))))))
          (let* ((_%all-modules202634%_
                  (cons _%ctx202628%_ (gxc#lift-nested-modules _%ctx202628%_)))
                 (__tmp203668
                  (lambda (_%ctx202636%_)
                    (let ((__tmp203669
                           (lambda () (_%compile1202630%_ _%ctx202636%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp203669
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp203668 _%all-modules202634%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx202528%_)
        (letrec ((_%compile-ssi202530%_
                  (lambda (_%code202596%_)
                    (let* ((_%path202598%_
                            (gxc#compile-output-file
                             _%ctx202528%_
                             '#f
                             '".ssi"))
                           (_%prelude202610%_
                            (let* ((_%super202600%_
                                    (##structure-ref
                                     _%ctx202528%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e202602%_
                                    (##structure-ref
                                     _%super202600%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e202602%_
                                  ((lambda (_%g202604202606%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g202604202606%_)))
                                   _%$e202602%_)
                                  ':<root>)))
                           (_%ns202612%_
                            (##structure-ref
                             _%ctx202528%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr202614%_
                            (symbol->string
                             (##structure-ref
                              _%ctx202528%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg202622%_
                            (let ((_%$e202616%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr202614%_ '#\/))))
                              (if _%$e202616%_
                                  ((lambda (_%x202619%_)
                                     (let ((__tmp203670
                                            (substring
                                             _%idstr202614%_
                                             '0
                                             _%x202619%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp203670)))
                                   _%$e202616%_)
                                  '#f)))
                           (_%rt202624%_
                            (let ((__tmp203671
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp203671 _%ctx202528%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path202598%_))
                      (gxc#with-output-to-scheme-file
                       _%path202598%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude202610%_))
                         (if _%pkg202622%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg202622%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns202612%_))
                         (newline)
                         (pretty-print _%code202596%_)
                         (if _%rt202624%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt202624%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi202531%_
                  (lambda (_%part202536%_)
                    (let* ((_%part202537202550%_ _%part202536%_)
                           (_%E202539202554%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part202537202550%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K202540202565%_
                            (lambda (_%code202557%_
                                     _%n202558%_
                                     _%phi202559%_
                                     _%phi-ctx202560%_)
                              (let ((_%code202563%_
                                     (let ((__tmp203672
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code202557%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp203672
                                        gx#current-expander-context
                                        _%phi-ctx202560%_
                                        gx#current-expander-phi
                                        _%phi202559%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx202528%_
                                  _%n202558%_
                                  '".scm")
                                 _%code202563%_
                                 '#t)))))
                      (if (pair? _%part202537202550%_)
                          (let ((_%hd202541202568%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part202537202550%_)))
                                (_%tl202542202570%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part202537202550%_))))
                            (let ((_%phi-ctx202573%_ _%hd202541202568%_))
                              (if (pair? _%tl202542202570%_)
                                  (let ((_%hd202543202575%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl202542202570%_)))
                                        (_%tl202544202577%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl202542202570%_))))
                                    (let ((_%phi202580%_ _%hd202543202575%_))
                                      (if (pair? _%tl202544202577%_)
                                          (let ((_%hd202545202582%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl202544202577%_)))
                                                (_%tl202546202584%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl202544202577%_))))
                                            (let ((_%n202587%_
                                                   _%hd202545202582%_))
                                              (if (pair? _%tl202546202584%_)
                                                  (let ((_%hd202547202589%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl202546202584%_)))
                                                        (_%tl202548202591%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl202546202584%_))))
                                                    (let ((_%code202594%_
                                                           _%hd202547202589%_))
                                                      (if (null? _%tl202548202591%_)
                                                          (_%K202540202565%_
                                                           _%code202594%_
                                                           _%n202587%_
                                                           _%phi202580%_
                                                           _%phi-ctx202573%_)
                                                          (_%E202539202554%_))))
                                                  (_%E202539202554%_))))
                                          (_%E202539202554%_))))
                                  (_%E202539202554%_))))
                          (_%E202539202554%_))))))
          (let ((_g203673_ (gxc#generate-meta-code _%ctx202528%_)))
            (begin
              (let ((_g203674_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g203673_)
                           (##values-length _g203673_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g203674_ 2)))
                    (error "Context expects 2 values" _g203674_)))
              (let ((_%ssi-code202533%_
                     (let () (declare (not safe)) (##values-ref _g203673_ 0)))
                    (_%phi-code202534%_
                     (let () (declare (not safe)) (##values-ref _g203673_ 1))))
                (begin
                  (_%compile-ssi202530%_ _%ssi-code202533%_)
                  (for-each _%compile-phi202531%_ _%phi-code202534%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx202510%_)
        (let* ((_%path202512%_
                (gxc#compile-output-file _%ctx202510%_ '#f '".ssxi.ss"))
               (_%code202514%_
                (let ((__tmp203675
                       (##structure-ref
                        _%ctx202510%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp203675)))
               (_%idstr202516%_
                (symbol->string
                 (##structure-ref
                  _%ctx202510%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg202524%_
                (let ((_%$e202518%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr202516%_ '#\/))))
                  (if _%$e202518%_
                      ((lambda (_%x202521%_)
                         (let ((__tmp203676
                                (substring _%idstr202516%_ '0 _%x202521%_)))
                           (declare (not safe))
                           (##string->symbol __tmp203676)))
                       _%$e202518%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path202512%_))
          (gxc#with-output-to-scheme-file
           _%path202512%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg202524%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg202524%_))
                 '#!void)
             (newline)
             (pretty-print _%code202514%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx202503%_)
        (let* ((_%state202505%_
                (let ((__obj203577
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj203577 _%ctx202503%_))
                  __obj203577))
               (_%ssi-code202507%_
                (let ((__tmp203677
                       (##structure-ref
                        _%ctx202503%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state202505%_
                   __tmp203677))))
          (values _%ssi-code202507%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state202505%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx202496%_)
        (let ((_%lifts202498%_ (box '())))
          (let ((__tmp203680
                 (lambda ()
                   (let ((_%code202501%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx202496%_))))
                     (if (null? (unbox _%lifts202498%_))
                         _%code202501%_
                         (cons 'begin
                               (let ((__tmp203682 (cons _%code202501%_ '()))
                                     (__tmp203681
                                      (reverse (unbox _%lifts202498%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp203682 __tmp203681)))))))
                (__tmp203679
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp203678
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp203680
             gxc#current-compile-lift
             _%lifts202498%_
             gxc#current-compile-marks
             __tmp203679
             gxc#current-compile-identifiers
             __tmp203678)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx202492%_)
        (let ((_%modules202494%_ (box '())))
          (let ((__tmp203683
                 (##structure-ref _%ctx202492%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules202494%_ __tmp203683))
          (reverse (unbox _%modules202494%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path202472%_ _%code202473%_ _%phi?202474%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path202472%_))
        (gxc#with-output-to-scheme-file
         _%path202472%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp203684
                                           (if _%phi?202474%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp203684)))))))
           (pretty-print _%code202473%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it202478%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path202472%_ _%phi?202474%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp203685
                         (cons 'compile-file (cons _%path202472%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it202478%_ __tmp203685))
                  (_%compile-it202478%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path202483%_ _%code202484%_)
        (let ((_%phi?202486%_ '#f))
          (gxc#compile-scm-file__%
           _%path202483%_
           _%code202484%_
           _%phi?202486%_))))
    (define gxc#compile-scm-file
      (lambda _g203687_
        (let ((_g203686_ (let () (declare (not safe)) (##length _g203687_))))
          (cond ((let () (declare (not safe)) (##fx= _g203686_ 2))
                 (apply gxc#compile-scm-file__0 _g203687_))
                ((let () (declare (not safe)) (##fx= _g203686_ 3))
                 (apply gxc#compile-scm-file__% _g203687_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g203687_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?202373%_)
        (let _%lp202375%_ ((_%rest202377%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts202378%_ '()))
          (let* ((_%rest202379202399%_ _%rest202377%_)
                 (_%else202383202407%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts202378%_)))
                        (reverse _%opts202378%_)))))
            (let ((_%K202393202450%_
                   (lambda (_%rest202448%_)
                     (_%lp202375%_ _%rest202448%_ _%opts202378%_)))
                  (_%K202388202432%_
                   (lambda (_%rest202430%_)
                     (_%lp202375%_ _%rest202430%_ _%opts202378%_)))
                  (_%K202385202414%_
                   (lambda (_%rest202411%_ _%opt202412%_)
                     (_%lp202375%_
                      _%rest202411%_
                      (cons _%opt202412%_ _%opts202378%_)))))
              (if (pair? _%rest202379202399%_)
                  (let ((_%tl202395202455%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest202379202399%_)))
                        (_%hd202394202453%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest202379202399%_))))
                    (if (equal? _%hd202394202453%_ '"-cc-options")
                        (if (pair? _%tl202395202455%_)
                            (let* ((_%tl202397202458%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl202395202455%_)))
                                   (_%rest202461%_ _%tl202397202458%_))
                              (_%K202393202450%_ _%rest202461%_))
                            (let ((_%opt202422%_ _%hd202394202453%_)
                                  (_%rest202424%_ _%tl202395202455%_))
                              (_%K202385202414%_
                               _%rest202424%_
                               _%opt202422%_)))
                        (if (equal? _%hd202394202453%_ '"-ld-options")
                            (if (pair? _%tl202395202455%_)
                                (let* ((_%tl202392202440%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl202395202455%_)))
                                       (_%rest202443%_ _%tl202392202440%_))
                                  (_%K202388202432%_ _%rest202443%_))
                                (let ((_%opt202422%_ _%hd202394202453%_)
                                      (_%rest202424%_ _%tl202395202455%_))
                                  (_%K202385202414%_
                                   _%rest202424%_
                                   _%opt202422%_)))
                            (let ((_%opt202422%_ _%hd202394202453%_)
                                  (_%rest202424%_ _%tl202395202455%_))
                              (_%K202385202414%_
                               _%rest202424%_
                               _%opt202422%_)))))
                  (_%else202383202407%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?202467%_ '#f)) (gxc#gsc-link-options__% _%phi?202467%_))))
    (define gxc#gsc-link-options
      (lambda _g203689_
        (let ((_g203688_ (let () (declare (not safe)) (##length _g203689_))))
          (cond ((let () (declare (not safe)) (##fx= _g203688_ 0))
                 (apply gxc#gsc-link-options__0 _g203689_))
                ((let () (declare (not safe)) (##fx= _g203688_ 1))
                 (apply gxc#gsc-link-options__% _g203689_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g203689_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords202222%_ _%static?202218202223%_ _%phi?202225%_)
        (let ((_%static?202227%_
               (if (eq? _%static?202218202223%_ absent-value)
                   '#f
                   _%static?202218202223%_)))
          (if _%phi?202225%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp202229%_ ((_%rest202231%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts202232%_ '()))
                (let* ((_%rest202233202259%_ _%rest202231%_)
                       (_%else202238202267%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts202232%_)))
                              (reverse! _%opts202232%_)))))
                  (let ((_%K202253202330%_
                         (lambda (_%rest202327%_ _%opt202328%_)
                           (if _%static?202227%_
                               (_%lp202229%_
                                _%rest202327%_
                                (cons _%opt202328%_
                                      (cons '"-cc-options" _%opts202232%_)))
                               (_%lp202229%_ _%rest202327%_ _%opts202232%_))))
                        (_%K202248202307%_
                         (lambda (_%rest202304%_ _%opt202305%_)
                           (_%lp202229%_
                            _%rest202304%_
                            (cons _%opt202305%_
                                  (cons '"-cc-options" _%opts202232%_)))))
                        (_%K202243202287%_
                         (lambda (_%rest202285%_)
                           (_%lp202229%_ _%rest202285%_ _%opts202232%_)))
                        (_%K202240202273%_
                         (lambda (_%rest202271%_)
                           (_%lp202229%_ _%rest202271%_ _%opts202232%_))))
                    (if (pair? _%rest202233202259%_)
                        (let ((_%tl202255202335%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest202233202259%_)))
                              (_%hd202254202333%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest202233202259%_))))
                          (if (equal? _%hd202254202333%_ '"-cc-options")
                              (if (pair? _%tl202255202335%_)
                                  (let ((_%tl202257202340%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl202255202335%_)))
                                        (_%hd202256202338%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl202255202335%_))))
                                    (if (equal? _%hd202256202338%_ '"-Bstatic")
                                        (let ((_%opt202343%_
                                               _%hd202256202338%_)
                                              (_%rest202345%_
                                               _%tl202257202340%_))
                                          (_%K202253202330%_
                                           _%rest202345%_
                                           _%opt202343%_))
                                        (let ((_%opt202320%_
                                               _%hd202256202338%_)
                                              (_%rest202322%_
                                               _%tl202257202340%_))
                                          (_%K202248202307%_
                                           _%rest202322%_
                                           _%opt202320%_))))
                                  (let ((_%rest202279%_ _%tl202255202335%_))
                                    (_%K202240202273%_ _%rest202279%_)))
                              (if (equal? _%hd202254202333%_ '"-ld-options")
                                  (if (pair? _%tl202255202335%_)
                                      (let* ((_%tl202247202295%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl202255202335%_)))
                                             (_%rest202298%_
                                              _%tl202247202295%_))
                                        (_%K202243202287%_ _%rest202298%_))
                                      (let ((_%rest202279%_
                                             _%tl202255202335%_))
                                        (_%K202240202273%_ _%rest202279%_)))
                                  (let ((_%rest202279%_ _%tl202255202335%_))
                                    (_%K202240202273%_ _%rest202279%_)))))
                        (_%else202238202267%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords202350%_ _%static?202218202351%_)
        (let ((_%phi?202353%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords202350%_
           _%static?202218202351%_
           _%phi?202353%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g203691_
        (let ((_g203690_ (let () (declare (not safe)) (##length _g203691_))))
          (cond ((let () (declare (not safe)) (##fx= _g203690_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g203691_))
                ((let () (declare (not safe)) (##fx= _g203690_ 3))
                 (apply gxc#gsc-cc-options__%__% _g203691_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g203691_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords202362%_ . _%args202363%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords202362%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords202362%_
                  'static:
                  absent-value))
               _%args202363%_)))
    (define gxc#gsc-cc-options
      (lambda _%args202219202369%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args202219202369%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords202067%_ _%static?202063202068%_ _%phi?202070%_)
        (let ((_%static?202072%_
               (if (eq? _%static?202063202068%_ absent-value)
                   '#f
                   _%static?202063202068%_)))
          (if _%phi?202070%_
              '()
              (let _%lp202074%_ ((_%rest202076%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts202077%_ '()))
                (let* ((_%rest202078202104%_ _%rest202076%_)
                       (_%else202083202112%_
                        (lambda () (reverse! _%opts202077%_))))
                  (let ((_%K202098202175%_
                         (lambda (_%rest202172%_ _%opt202173%_)
                           (if _%static?202072%_
                               (_%lp202074%_
                                _%rest202172%_
                                (cons _%opt202173%_
                                      (cons '"-ld-options" _%opts202077%_)))
                               (_%lp202074%_ _%rest202172%_ _%opts202077%_))))
                        (_%K202093202152%_
                         (lambda (_%rest202149%_ _%opt202150%_)
                           (_%lp202074%_
                            _%rest202149%_
                            (cons _%opt202150%_
                                  (cons '"-ld-options" _%opts202077%_)))))
                        (_%K202088202132%_
                         (lambda (_%rest202130%_)
                           (_%lp202074%_ _%rest202130%_ _%opts202077%_)))
                        (_%K202085202118%_
                         (lambda (_%rest202116%_)
                           (_%lp202074%_ _%rest202116%_ _%opts202077%_))))
                    (if (pair? _%rest202078202104%_)
                        (let ((_%tl202100202180%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest202078202104%_)))
                              (_%hd202099202178%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest202078202104%_))))
                          (if (equal? _%hd202099202178%_ '"-ld-options")
                              (if (pair? _%tl202100202180%_)
                                  (let ((_%tl202102202185%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl202100202180%_)))
                                        (_%hd202101202183%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl202100202180%_))))
                                    (if (equal? _%hd202101202183%_ '"-static")
                                        (let ((_%opt202188%_
                                               _%hd202101202183%_)
                                              (_%rest202190%_
                                               _%tl202102202185%_))
                                          (_%K202098202175%_
                                           _%rest202190%_
                                           _%opt202188%_))
                                        (let ((_%opt202165%_
                                               _%hd202101202183%_)
                                              (_%rest202167%_
                                               _%tl202102202185%_))
                                          (_%K202093202152%_
                                           _%rest202167%_
                                           _%opt202165%_))))
                                  (let ((_%rest202124%_ _%tl202100202180%_))
                                    (_%K202085202118%_ _%rest202124%_)))
                              (if (equal? _%hd202099202178%_ '"-cc-options")
                                  (if (pair? _%tl202100202180%_)
                                      (let* ((_%tl202092202140%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl202100202180%_)))
                                             (_%rest202143%_
                                              _%tl202092202140%_))
                                        (_%K202088202132%_ _%rest202143%_))
                                      (let ((_%rest202124%_
                                             _%tl202100202180%_))
                                        (_%K202085202118%_ _%rest202124%_)))
                                  (let ((_%rest202124%_ _%tl202100202180%_))
                                    (_%K202085202118%_ _%rest202124%_)))))
                        (_%else202083202112%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords202195%_ _%static?202063202196%_)
        (let ((_%phi?202198%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords202195%_
           _%static?202063202196%_
           _%phi?202198%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g203693_
        (let ((_g203692_ (let () (declare (not safe)) (##length _g203693_))))
          (cond ((let () (declare (not safe)) (##fx= _g203692_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g203693_))
                ((let () (declare (not safe)) (##fx= _g203692_ 3))
                 (apply gxc#gsc-ld-options__%__% _g203693_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g203693_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords202207%_ . _%args202208%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords202207%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords202207%_
                  'static:
                  absent-value))
               _%args202208%_)))
    (define gxc#gsc-ld-options
      (lambda _%args202064202214%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args202064202214%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir202058%_)
        (let ((_%user-staticdir202060%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir202058%_
                       '" -I "
                       _%user-staticdir202060%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp201970%_ ((_%rest201972%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts201973%_ '()))
          (let* ((_%rest201974201994%_ _%rest201972%_)
                 (_%else201978202002%_ (lambda () _%opts201973%_)))
            (let ((_%K201988202045%_
                   (lambda (_%rest202043%_)
                     (_%lp201970%_ _%rest202043%_ _%opts201973%_)))
                  (_%K201983202023%_
                   (lambda (_%rest202020%_ _%opt202021%_)
                     (_%lp201970%_
                      _%rest202020%_
                      (let ((__tmp203694
                             (let ((__tmp203695
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt202021%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp203695))))
                        (declare (not safe))
                        (##append _%opts201973%_ __tmp203694)))))
                  (_%K201980202008%_
                   (lambda (_%rest202006%_)
                     (_%lp201970%_ _%rest202006%_ _%opts201973%_))))
              (if (pair? _%rest201974201994%_)
                  (let ((_%tl201990202050%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest201974201994%_)))
                        (_%hd201989202048%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest201974201994%_))))
                    (if (equal? _%hd201989202048%_ '"-cc-options")
                        (if (pair? _%tl201990202050%_)
                            (let* ((_%tl201992202053%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl201990202050%_)))
                                   (_%rest202056%_ _%tl201992202053%_))
                              (_%K201988202045%_ _%rest202056%_))
                            (let ((_%rest202014%_ _%tl201990202050%_))
                              (_%K201980202008%_ _%rest202014%_)))
                        (if (equal? _%hd201989202048%_ '"-ld-options")
                            (if (pair? _%tl201990202050%_)
                                (let ((_%tl201987202033%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl201990202050%_)))
                                      (_%hd201986202031%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl201990202050%_))))
                                  (let ((_%opt202036%_ _%hd201986202031%_)
                                        (_%rest202038%_ _%tl201987202033%_))
                                    (_%K201983202023%_
                                     _%rest202038%_
                                     _%opt202036%_)))
                                (let ((_%rest202014%_ _%tl201990202050%_))
                                  (_%K201980202008%_ _%rest202014%_)))
                            (let ((_%rest202014%_ _%tl201990202050%_))
                              (_%K201980202008%_ _%rest202014%_)))))
                  (_%else201978202002%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str201967%_)
        (not (let () (declare (not safe)) (string-empty? _%str201967%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path201960%_ _%phi?201961%_)
        (let ((_%gsc-link-opts201963%_
               (gxc#gsc-link-options__% _%phi?201961%_))
              (_%gsc-cc-opts201964%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?201961%_))
              (_%gsc-ld-opts201965%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?201961%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp203696
                  (let ((__tmp203697
                         (let ((__tmp203698 (cons _%path201960%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp203698
                            _%gsc-link-opts201963%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp203697 _%gsc-ld-opts201965%_))))
             (declare (not safe))
             (__foldr1 cons __tmp203696 _%gsc-cc-opts201964%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx201926%_ _%n201927%_ _%ext201928%_)
        (letrec ((_%module-relative-path201930%_
                  (lambda (_%ctx201958%_)
                    (path-strip-directory
                     (let ((__tmp203699
                            (##structure-ref
                             _%ctx201958%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp203699)))))
                 (_%module-source-directory201931%_
                  (lambda (_%ctx201954%_)
                    (path-directory
                     (let ((_%mpath201956%_
                            (##structure-ref
                             _%ctx201954%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath201956%_)
                           _%mpath201956%_
                           (last _%mpath201956%_))))))
                 (_%section-string201932%_
                  (lambda (_%n201948%_)
                    (if (number? _%n201948%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n201948%_))
                        (if (symbol? _%n201948%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n201948%_))
                            (if (string? _%n201948%_)
                                _%n201948%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n201948%_)))))))
                 (_%file-name201933%_
                  (lambda (_%path201946%_)
                    (if _%n201927%_
                        (string-append
                         _%path201946%_
                         '"~"
                         (_%section-string201932%_ _%n201927%_)
                         _%ext201928%_)
                        (string-append _%path201946%_ _%ext201928%_))))
                 (_%file-path201934%_
                  (lambda ()
                    (let ((_%$e201940%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e201940%_
                          ((lambda (_%outdir201943%_)
                             (path-expand
                              (_%file-name201933%_
                               (let ((__tmp203700
                                      (##structure-ref
                                       _%ctx201926%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp203700)))
                              _%outdir201943%_))
                           _%$e201940%_)
                          (path-expand
                           (_%file-name201933%_
                            (_%module-relative-path201930%_ _%ctx201926%_))
                           (_%module-source-directory201931%_
                            _%ctx201926%_)))))))
          (let ((_%path201936%_ (_%file-path201934%_)))
            (let ((__tmp203701
                   (lambda ()
                     (let ((__tmp203702 (path-directory _%path201936%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp203702)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp203701))
            _%path201936%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx201907%_)
        (letrec ((_%file-name201909%_
                  (lambda (_%id201924%_)
                    (let ((__tmp203703 (gxc#static-module-name _%id201924%_)))
                      (declare (not safe))
                      (##string-append __tmp203703 '".scm"))))
                 (_%file-path201910%_
                  (lambda ()
                    (let* ((_%file201916%_
                            (_%file-name201909%_
                             (##structure-ref
                              _%ctx201907%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e201918%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e201918%_
                          ((lambda (_%outdir201921%_)
                             (path-expand
                              _%file201916%_
                              (path-expand '"static" _%outdir201921%_)))
                           _%$e201918%_)
                          (path-expand _%file201916%_ '"static"))))))
          (let ((_%path201912%_ (_%file-path201910%_)))
            (let ((__tmp203704
                   (lambda ()
                     (let ((__tmp203705 (path-directory _%path201912%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp203705)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp203704))
            _%path201912%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx201900%_ _%opts201901%_)
        (let ((_%$e201903%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts201901%_))))
          (if _%$e201903%_
              _%$e201903%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx201900%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr201890%_)
        (if (string? _%idstr201890%_)
            (let* ((_%str201893%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr201890%_)))
                   (_%strs201895%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str201893%_ '#\/))))
              (declare (not safe))
              (string-join _%strs201895%_ '"__"))
            (if (symbol? _%idstr201890%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr201890%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr201890%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp203706
               (let ((__tmp203707 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp203707 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp203706))))
    (define gxc#invoke__%
      (lambda (_%@@keywords201854%_
               _%stdout-redirection201850201855%_
               _%stderr-redirection201851201857%_
               _%program201859%_
               _%args201860%_)
        (let* ((_%stdout-redirection201862%_
                (if (eq? _%stdout-redirection201850201855%_ absent-value)
                    '#f
                    _%stdout-redirection201850201855%_))
               (_%stderr-redirection201864%_
                (if (eq? _%stderr-redirection201851201857%_ absent-value)
                    '#f
                    _%stderr-redirection201851201857%_)))
          (let ((__tmp203708 (cons _%program201859%_ _%args201860%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp203708))
          (let* ((_%proc201866%_
                  (open-process
                   (cons 'path:
                         (cons _%program201859%_
                               (cons 'arguments:
                                     (cons _%args201860%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection201862%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection201864%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output201871%_
                  (if (or _%stdout-redirection201862%_
                          _%stderr-redirection201864%_)
                      (read-line _%proc201866%_ '#f)
                      '#f))
                 (_%status201874%_ (process-status _%proc201866%_)))
            (let () (declare (not safe)) (##close-port _%proc201866%_))
            (if (zero? _%status201874%_)
                '#!void
                (begin
                  (display _%output201871%_)
                  (let ((__tmp203709 (cons _%program201859%_ _%args201860%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp203709
                     _%status201874%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords201879%_ . _%args201880%_)
        (apply gxc#invoke__%
               _%@@keywords201879%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201879%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201879%_
                  'stderr-redirection:
                  absent-value))
               _%args201880%_)))
    (define gxc#invoke
      (lambda _%args201852201886%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args201852201886%_)))))
