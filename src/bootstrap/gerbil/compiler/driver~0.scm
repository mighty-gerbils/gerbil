(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1734357969)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp203667 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp203667))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp203668 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp203668))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path203524%_ _%fun203525%_)
        (with-output-to-file
         (cons 'path: (cons _%path203524%_ gxc#scheme-file-settings))
         _%fun203525%_)))
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
      (lambda (_%gerbil-libdir203519%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir203519%_)))
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
      (lambda (_%dir203517%_) (delete-file-or-directory _%dir203517%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath203473%_ _%opts203474%_)
        (if (string? _%srcpath203473%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath203473%_)))
        (let* ((_%outdir203476%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts203474%_)))
               (_%invoke-gsc?203478%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts203474%_)))
               (_%target203483%_
                (let ((_%$e203480%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts203474%_))))
                  (if _%$e203480%_ _%$e203480%_ 'C)))
               (_%gsc-options203488%_
                (append (cons '"-target"
                              (cons (symbol->string _%target203483%_) '()))
                        (let ((_%$e203485%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts203474%_))))
                          (if _%$e203485%_ _%$e203485%_ '()))))
               (_%keep-scm?203490%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts203474%_)))
               (_%verbosity203492%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts203474%_)))
               (_%optimize203494%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts203474%_)))
               (_%debug203496%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts203474%_)))
               (_%gen-ssxi203498%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts203474%_)))
               (_%parallel?203500%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts203474%_))))
          (if _%outdir203476%_
              (let ((__tmp203669
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir203476%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp203669))
              '#!void)
          (if _%optimize203494%_
              (let ((__tmp203670
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp203670))
              '#!void)
          (let ((__tmp203673
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath203473%_))
                   (gxc#compile-top-module
                    (let ((__tmp203674
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath203473%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp203674)))))
                (__tmp203672 (gxc#compile-timestamp))
                (__tmp203671
                 (cons 'compile-module (cons _%srcpath203473%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp203673
             gxc#current-compile-output-dir
             _%outdir203476%_
             gx#current-compilation-target
             _%target203483%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?203478%_
             gxc#current-compile-gsc-options
             _%gsc-options203488%_
             gxc#current-compile-keep-scm
             _%keep-scm?203490%_
             gxc#current-compile-verbose
             _%verbosity203492%_
             gxc#current-compile-optimize
             _%optimize203494%_
             gxc#current-compile-debug
             _%debug203496%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi203498%_
             gxc#current-compile-timestamp
             __tmp203672
             gxc#current-compile-context
             __tmp203671
             gxc#current-compile-parallel
             _%parallel?203500%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath203510%_)
        (let ((_%opts203512%_ '()))
          (gxc#compile-module__% _%srcpath203510%_ _%opts203512%_))))
    (define gxc#compile-module
      (lambda _g203676_
        (let ((_g203675_ (let () (declare (not safe)) (##length _g203676_))))
          (cond ((let () (declare (not safe)) (##fx= _g203675_ 1))
                 (apply gxc#compile-module__0 _g203676_))
                ((let () (declare (not safe)) (##fx= _g203675_ 2))
                 (apply gxc#compile-module__% _g203676_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g203676_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath203433%_ _%opts203434%_)
        (if (string? _%srcpath203433%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath203433%_)))
        (let* ((_%outdir203436%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts203434%_)))
               (_%invoke-gsc?203438%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts203434%_)))
               (_%target203443%_
                (let ((_%$e203440%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts203434%_))))
                  (if _%$e203440%_ _%$e203440%_ 'C)))
               (_%gsc-options203448%_
                (append (cons '"-target"
                              (cons (symbol->string _%target203443%_) '()))
                        (let ((_%$e203445%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts203434%_))))
                          (if _%$e203445%_ _%$e203445%_ '()))))
               (_%keep-scm?203450%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts203434%_)))
               (_%verbosity203452%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts203434%_)))
               (_%debug203454%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts203434%_)))
               (_%parallel?203456%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts203434%_))))
          (if _%outdir203436%_
              (let ((__tmp203677
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir203436%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp203677))
              '#!void)
          (let ((__tmp203680
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath203433%_))
                   (gxc#compile-executable-module
                    (let ((__tmp203681
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath203433%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp203681))
                    _%opts203434%_)))
                (__tmp203679 (gxc#compile-timestamp))
                (__tmp203678 (cons 'compile-exe (cons _%srcpath203433%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp203680
             gxc#current-compile-output-dir
             _%outdir203436%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?203438%_
             gx#current-compilation-target
             _%target203443%_
             gxc#current-compile-gsc-options
             _%gsc-options203448%_
             gxc#current-compile-keep-scm
             _%keep-scm?203450%_
             gxc#current-compile-verbose
             _%verbosity203452%_
             gxc#current-compile-debug
             _%debug203454%_
             gxc#current-compile-timestamp
             __tmp203679
             gxc#current-compile-context
             __tmp203678
             gxc#current-compile-parallel
             _%parallel?203456%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath203465%_)
        (let ((_%opts203467%_ '()))
          (gxc#compile-exe__% _%srcpath203465%_ _%opts203467%_))))
    (define gxc#compile-exe
      (lambda _g203683_
        (let ((_g203682_ (let () (declare (not safe)) (##length _g203683_))))
          (cond ((let () (declare (not safe)) (##fx= _g203682_ 1))
                 (apply gxc#compile-exe__0 _g203683_))
                ((let () (declare (not safe)) (##fx= _g203682_ 2))
                 (apply gxc#compile-exe__% _g203683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g203683_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx203429%_ _%opts203430%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts203430%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx203429%_
             _%opts203430%_)
            (gxc#compile-executable-module/separate
             _%ctx203429%_
             _%opts203430%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx203219%_ _%opts203220%_)
        (letrec ((_%generate-stub203222%_
                  (lambda (_%builtin-modules203425%_)
                    (let ((_%mod-main203427%_
                           (gxc#find-runtime-symbol _%ctx203219%_ 'main)))
                      (let ((__tmp203684
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules203425%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp203684))
                      (let ((__tmp203685
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main203427%_
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
                        (##write __tmp203685))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts203223%_
                  (lambda (_%gerbil-libdir203423%_)
                    (let ((__tmp203686
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir203423%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp203686 read))))
                 (_%replace-extension203224%_
                  (lambda (_%path203420%_ _%ext203421%_)
                    (string-append
                     (path-strip-extension _%path203420%_)
                     _%ext203421%_)))
                 (_%userlib-module?203225%_
                  (lambda (_%ctx203418%_)
                    (if (_%exclude-module?203227%_ _%ctx203418%_)
                        '#f
                        (not (_%libgerbil-module?203226%_ _%ctx203418%_)))))
                 (_%libgerbil-module?203226%_
                  (lambda (_%ctx203411%_)
                    (let ((_%id-str203413%_
                           (symbol->string
                            (##structure-ref
                             _%ctx203411%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?203227%_ _%id-str203413%_)
                          '#f
                          (let ((_%$e203415%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str203413%_))))
                            (if _%$e203415%_
                                _%$e203415%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str203413%_))))))))
                 (_%exclude-module?203227%_
                  (lambda (_%ctx-or-str203407%_)
                    (let ((_%str203409%_
                           (if (string? _%ctx-or-str203407%_)
                               _%ctx-or-str203407%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str203407%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str203409%_))))
                 (_%not-file-empty?203228%_
                  (lambda (_%path203405%_)
                    (not (gxc#file-empty? _%path203405%_))))
                 (_%fold-libgerbil-runtime-scm203229%_
                  (lambda (_%gerbil-staticdir203398%_ _%libgerbil-scm203399%_)
                    (let ((_%gerbil-runtime-scm203403%_
                           (let ((__tmp203687
                                  (lambda (_%rtm203401%_)
                                    (path-expand
                                     (let ((__tmp203688
                                            (let ((__tmp203689
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm203401%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp203689
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp203688 '".scm"))
                                     _%gerbil-staticdir203398%_))))
                             (declare (not safe))
                             (##map __tmp203687 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates203230%_
                       (append _%gerbil-runtime-scm203403%_
                               _%libgerbil-scm203399%_)))))
                 (_%remove-duplicates203230%_
                  (lambda (_%strlst203358%_)
                    (let _%loop203360%_ ((_%rest203362%_ _%strlst203358%_)
                                         (_%result203363%_ '()))
                      (let* ((_%rest203364203372%_ _%rest203362%_)
                             (_%else203366203380%_
                              (lambda () (reverse! _%result203363%_)))
                             (_%K203368203386%_
                              (lambda (_%rest203383%_ _%path203384%_)
                                (if (member _%path203384%_ _%result203363%_)
                                    (_%loop203360%_
                                     _%rest203383%_
                                     _%result203363%_)
                                    (_%loop203360%_
                                     _%rest203383%_
                                     (cons _%path203384%_
                                           _%result203363%_))))))
                        (if (pair? _%rest203364203372%_)
                            (let ((_%hd203369203389%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest203364203372%_)))
                                  (_%tl203370203391%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest203364203372%_))))
                              (let* ((_%path203394%_ _%hd203369203389%_)
                                     (_%rest203396%_ _%tl203370203391%_))
                                (_%K203368203386%_
                                 _%rest203396%_
                                 _%path203394%_)))
                            (_%else203366203380%_))))))
                 (_%compile-stub203231%_
                  (lambda (_%output-scm203238%_ _%output-bin203239%_)
                    (let* ((_%gerbil-home203241%_
                            (let ((__tmp203690
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp203690)))
                           (_%gerbil-libdir203243%_
                            (path-expand '"lib" _%gerbil-home203241%_))
                           (_%gerbil-staticdir203245%_
                            (path-expand '"static" _%gerbil-libdir203243%_))
                           (_%deps203247%_
                            (gxc#find-runtime-module-deps _%ctx203219%_))
                           (_%libgerbil-deps203249%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?203226%_
                               _%deps203247%_)))
                           (_%libgerbil-scm203251%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps203249%_)))
                           (_%libgerbil-scm203253%_
                            (_%fold-libgerbil-runtime-scm203229%_
                             _%gerbil-staticdir203245%_
                             _%libgerbil-scm203251%_))
                           (_%libgerbil-c203259%_
                            (map (lambda (_%g203254203256%_)
                                   (_%replace-extension203224%_
                                    _%g203254203256%_
                                    '".c"))
                                 _%libgerbil-scm203253%_))
                           (_%libgerbil-o203265%_
                            (map (lambda (_%g203260203262%_)
                                   (_%replace-extension203224%_
                                    _%g203260203262%_
                                    '".o"))
                                 _%libgerbil-scm203253%_))
                           (_%src-deps203267%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?203225%_
                               _%deps203247%_)))
                           (_%src-deps-scm203269%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps203267%_)))
                           (_%src-deps-scm203271%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?203228%_
                               _%src-deps-scm203269%_)))
                           (_%src-deps-scm203273%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm203271%_)))
                           (_%src-deps-c203279%_
                            (let ((__tmp203691
                                   (lambda (_%g203274203276%_)
                                     (_%replace-extension203224%_
                                      _%g203274203276%_
                                      '".c"))))
                              (declare (not safe))
                              (##map __tmp203691 _%src-deps-scm203273%_)))
                           (_%src-deps-o203285%_
                            (let ((__tmp203692
                                   (lambda (_%g203280203282%_)
                                     (_%replace-extension203224%_
                                      _%g203280203282%_
                                      '".o"))))
                              (declare (not safe))
                              (##map __tmp203692 _%src-deps-scm203273%_)))
                           (_%src-bin-scm203287%_
                            (gxc#find-static-module-file _%ctx203219%_))
                           (_%src-bin-scm203289%_
                            (path-expand _%src-bin-scm203287%_))
                           (_%src-bin-c203291%_
                            (_%replace-extension203224%_
                             _%src-bin-scm203289%_
                             '".c"))
                           (_%src-bin-o203293%_
                            (_%replace-extension203224%_
                             _%src-bin-scm203289%_
                             '".o"))
                           (_%output-bin203295%_
                            (path-expand _%output-bin203239%_))
                           (_%output-scm203297%_
                            (path-expand _%output-scm203238%_))
                           (_%output-c203299%_
                            (_%replace-extension203224%_
                             _%output-scm203297%_
                             '".c"))
                           (_%output-o203301%_
                            (_%replace-extension203224%_
                             _%output-scm203297%_
                             '".o"))
                           (_%output_-c203303%_
                            (_%replace-extension203224%_
                             _%output-scm203297%_
                             '"_.c"))
                           (_%output_-o203305%_
                            (_%replace-extension203224%_
                             _%output-scm203297%_
                             '"_.o"))
                           (_%gsc-link-opts203307%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts203309%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts203311%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir203245%_))
                           (_%output-ld-opts203313%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts203315%_
                            (_%get-libgerbil-ld-opts203223%_
                             _%gerbil-libdir203243%_))
                           (_%rpath203317%_
                            (gxc#gerbil-rpath _%gerbil-libdir203243%_))
                           (_%builtin-modules203321%_
                            (_%remove-duplicates203230%_
                             (let ((__tmp203693
                                    (let ((__tmp203695
                                           (lambda (_%mod203319%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod203319%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp203694
                                           (cons _%ctx203219%_
                                                 _%deps203247%_)))
                                      (declare (not safe))
                                      (##map __tmp203695 __tmp203694))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp203693)))))
                      (letrec ((_%compile-obj203324%_
                                (lambda (_%scm-path203331%_ _%c-path203332%_)
                                  (let* ((_%o-path203334%_
                                          (_%replace-extension203224%_
                                           _%c-path203332%_
                                           '".o"))
                                         (_%lock203336%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path203334%_
                                             '".lock")))
                                         (_%locked203338%_ '#f)
                                         (_%unlock203341%_
                                          (lambda ()
                                            (close-port _%locked203338%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock203336%_)))))
                                    (let _%retry203344%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock203336%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry203344%_))
                                          (begin
                                            (set! _%locked203338%_
                                                  (let ((__tmp203696
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock203336%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp203696)))
                                            (if _%locked203338%_
                                                '#!void
                                                (_%retry203344%_)))))
                                    (let ((__tmp203698
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path203334%_)))
                                                     (not _%scm-path203331%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path203331%_
                                                        _%o-path203334%_)))
                                                 (let ((_%gsc-cc-opts203355%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp203699
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp203700 (cons _%c-path203332%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp203700
                            _%gsc-static-opts203311%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp203699 _%gsc-cc-opts203355%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp203697
                                           (lambda () (_%unlock203341%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp203698
                                       __tmp203697))))))
                        (let ((__tmp203701
                               (lambda ()
                                 (let ((__tmp203702
                                        (path-directory _%output-bin203295%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp203702)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp203701))
                        (gxc#with-output-to-scheme-file
                         _%output-scm203297%_
                         (lambda ()
                           (_%generate-stub203222%_
                            _%builtin-modules203321%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it203329%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp203703
                                                   (let ((__tmp203704
                                                          (let ((__tmp203705
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm203289%_
                               (cons _%output-scm203297%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp203705 _%src-deps-scm203273%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp203704
                                                      _%libgerbil-c203259%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp203703
                                               _%gsc-link-opts203307%_))))
                                     (for-each
                                      _%compile-obj203324%_
                                      (let ((__tmp203706
                                             (cons _%src-bin-scm203289%_
                                                   (cons _%output-scm203297%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp203706
                                         _%src-deps-scm203273%_))
                                      (let ((__tmp203707
                                             (cons _%src-bin-c203291%_
                                                   (cons _%output-c203299%_
                                                         (cons _%output_-c203303%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp203707
                                         _%src-deps-c203279%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin203295%_
                                                        (let ((__tmp203708
                                                               (cons _%src-bin-o203293%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o203301%_
                                   (cons _%output_-o203305%_
                                         (let ((__tmp203709
                                                (let ((__tmp203710
                                                       (let ((__tmp203712
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir203243%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts203315%_))))
                     (__tmp203711
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath203317%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp203712 __tmp203711))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp203710
                                                   _%output-ld-opts203313%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp203709
                                            _%libgerbil-o203265%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp203708 _%src-deps-o203285%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp203713
                                            (cons _%output-c203299%_
                                                  (cons _%output_-c203303%_
                                                        (cons _%output-o203301%_
                                                              (cons _%output_-o203305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp203713)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it203329%_))
                                  (_%compile-it203329%_)))
                            '#!void))))))
          (let* ((_%output-bin203233%_
                  (gxc#compile-exe-output-file _%ctx203219%_ _%opts203220%_))
                 (_%output-scm203235%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin203233%_ '"__exe.scm"))))
            (_%compile-stub203231%_
             _%output-scm203235%_
             _%output-bin203233%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx203041%_ _%opts203042%_)
        (letrec ((_%reset-declare203044%_
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
                 (_%generate-stub203045%_
                  (lambda (_%deps203210%_)
                    (let ((_%mod-main203212%_
                           (gxc#find-runtime-symbol _%ctx203041%_ 'main))
                          (_%reset-decl203213%_ (_%reset-declare203044%_))
                          (_%user-decl203214%_ (_%user-declare203046%_)))
                      (for-each
                       (lambda (_%dep203216%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl203213%_))
                         (newline)
                         (if _%user-decl203214%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl203214%_))
                               (newline))
                             '#!void)
                         (let ((__tmp203714
                                (cons 'include (cons _%dep203216%_ '()))))
                           (declare (not safe))
                           (##write __tmp203714))
                         (newline))
                       _%deps203210%_)
                      (let ((__tmp203715
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main203212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp203715))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare203046%_
                  (lambda ()
                    (let* ((_%gsc-opts203115%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts203042%_)))
                           (_%gsc-prelude203117%_
                            (if _%gsc-opts203115%_
                                (member '"-prelude" _%gsc-opts203115%_)
                                '#f))
                           (_%gsc-prelude203119%_
                            (if _%gsc-prelude203117%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude203117%_)))
                                '#f)))
                      (let _%lp203122%_ ((_%rest203124%_
                                          (cons _%gsc-prelude203119%_ '()))
                                         (_%user-decls203125%_ '()))
                        (let* ((_%rest203126203134%_ _%rest203124%_)
                               (_%else203128203142%_
                                (lambda ()
                                  (if (null? _%user-decls203125%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls203125%_)))))
                               (_%K203130203198%_
                                (lambda (_%rest203145%_ _%expr203146%_)
                                  (let* ((_%expr203147203159%_ _%expr203146%_)
                                         (_%else203150203167%_
                                          (lambda ()
                                            (_%lp203122%_
                                             _%rest203145%_
                                             _%user-decls203125%_))))
                                    (let ((_%K203155203188%_
                                           (lambda (_%decls203186%_)
                                             (_%lp203122%_
                                              _%rest203145%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls203125%_
                                                 _%decls203186%_)))))
                                          (_%K203152203173%_
                                           (lambda (_%exprs203171%_)
                                             (_%lp203122%_
                                              (append _%exprs203171%_
                                                      _%rest203145%_)
                                              _%user-decls203125%_))))
                                      (if (pair? _%expr203147203159%_)
                                          (let ((_%tl203157203193%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr203147203159%_)))
                                                (_%hd203156203191%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr203147203159%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd203156203191%_
                                                         'declare))
                                                (let ((_%decls203196%_
                                                       _%tl203157203193%_))
                                                  (_%K203155203188%_
                                                   _%decls203196%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd203156203191%_
                                                             'begin))
                                                    (let ((_%exprs203181%_
                                                           _%tl203157203193%_))
                                                      (_%K203152203173%_
                                                       _%exprs203181%_))
                                                    (_%else203150203167%_))))
                                          (_%else203150203167%_)))))))
                          (if (pair? _%rest203126203134%_)
                              (let ((_%hd203131203201%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest203126203134%_)))
                                    (_%tl203132203203%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest203126203134%_))))
                                (let* ((_%expr203206%_ _%hd203131203201%_)
                                       (_%rest203208%_ _%tl203132203203%_))
                                  (_%K203130203198%_
                                   _%rest203208%_
                                   _%expr203206%_)))
                              (_%else203128203142%_)))))))
                 (_%compile-stub203047%_
                  (lambda (_%output-scm203054%_ _%output-bin203055%_)
                    (let* ((_%gerbil-home203057%_
                            (let ((__tmp203716
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp203716)))
                           (_%gerbil-libdir203059%_
                            (path-expand '"lib" _%gerbil-home203057%_))
                           (_%runtime203061%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp203063%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home203057%_))
                           (_%include-gambit-sharp203065%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp203063%_
                               '"\")")))
                           (_%bin-scm203067%_
                            (gxc#find-static-module-file _%ctx203041%_))
                           (_%deps203069%_
                            (gxc#find-runtime-module-deps _%ctx203041%_))
                           (_%deps203071%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps203069%_)))
                           (_%deps203076%_
                            (let ((__tmp203717
                                   (lambda (_%$obj203073%_)
                                     (not (gxc#file-empty? _%$obj203073%_)))))
                              (declare (not safe))
                              (##filter __tmp203717 _%deps203071%_)))
                           (_%deps203080%_
                            (let ((__tmp203718
                                   (lambda (_%f203078%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f203078%_
                                             _%runtime203061%_))))))
                              (declare (not safe))
                              (##filter __tmp203718 _%deps203076%_)))
                           (_%output-base203082%_
                            (let ((__tmp203719
                                   (path-strip-extension
                                    _%output-scm203054%_)))
                              (declare (not safe))
                              (##string-append __tmp203719)))
                           (_%output-c203084%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base203082%_ '".c")))
                           (_%output-o203086%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base203082%_ '".o")))
                           (_%output-c_203088%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base203082%_ '"_.c")))
                           (_%output-o_203090%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base203082%_ '"_.o")))
                           (_%gsc-link-opts203092%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts203094%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts203096%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir203059%_)))
                           (_%output-ld-opts203098%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros203100%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp203065%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp203065%_
                                            '()))))
                           (_%gsc-link-opts203102%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts203092%_
                               _%gsc-gx-macros203100%_)))
                           (_%rpath203104%_
                            (gxc#gerbil-rpath _%gerbil-libdir203059%_))
                           (_%default-ld-options203106%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp203720
                             (lambda ()
                               (let ((__tmp203721
                                      (path-directory _%output-bin203055%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp203721)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp203720))
                      (gxc#with-output-to-scheme-file
                       _%output-scm203054%_
                       (lambda ()
                         (_%generate-stub203045%_
                          (let ((__tmp203722
                                 (let ((__tmp203723
                                        (cons _%bin-scm203067%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp203723
                                    _%deps203080%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp203722 _%runtime203061%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it203112%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_203088%_
                                                      (let ((__tmp203724
                                                             (cons _%output-scm203054%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp203724 _%gsc-link-opts203102%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp203725
                                                 (let ((__tmp203726
                                                        (cons _%output-c203084%_
                                                              (cons _%output-c_203088%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp203726
                                                    _%gsc-static-opts203096%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp203725
                                             _%gsc-cc-opts203094%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin203055%_
                                                      (cons _%output-o203086%_
                                                            (cons _%output-o_203090%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp203727
                                 (let ((__tmp203729
                                        (cons '"-L"
                                              (cons _%gerbil-libdir203059%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options203106%_))))
                                       (__tmp203728
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath203104%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp203729 __tmp203728))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp203727
                             _%output-ld-opts203098%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it203112%_))
                                (_%compile-it203112%_)))
                          '#!void)))))
          (let* ((_%output-bin203049%_
                  (gxc#compile-exe-output-file _%ctx203041%_ _%opts203042%_))
                 (_%output-scm203051%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin203049%_ '"__exe.scm"))))
            (_%compile-stub203047%_
             _%output-scm203051%_
             _%output-bin203049%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx202990%_ _%id202991%_)
        (let ((_%$e203037%_
               (let ((__tmp203731
                      (lambda (_%e202992202994%_)
                        (let* ((_%g202996203006%_ _%e202992202994%_)
                               (_%else202998203014%_ (lambda () '#f))
                               (_%K203000203018%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g202996203006%_
                                 'gx#module-export::t))
                              (let* ((_%e203001203021%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g202996203006%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e203002203024%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g202996203006%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e203003203027%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g202996203006%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e203003203027%_ '0))
                                    (let ((_%e203004203030%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g202996203006%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g203032203034%_)
                                             (eq? _%g203032203034%_
                                                  _%id202991%_))
                                           _%e203004203030%_)
                                          (_%K203000203018%_)
                                          (_%else202998203014%_)))
                                    (_%else202998203014%_)))
                              (_%else202998203014%_)))))
                     (__tmp203730
                      (##structure-ref
                       _%ctx202990%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp203731 __tmp203730))))
          (if _%$e203037%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e203037%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx202981%_ _%id202982%_)
        (let ((_%$e202984%_
               (gxc#find-export-binding _%ctx202981%_ _%id202982%_)))
          (if _%$e202984%_
              ((lambda (_%bind202987%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind202987%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id202982%_)))
                 (##structure-ref _%bind202987%_ '1 gx#binding::t '#f))
               _%$e202984%_)
              (let ((__tmp203732
                     (##structure-ref
                      _%ctx202981%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp203732
                 _%id202982%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx202847%_)
        (letrec* ((_%ht202849%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template202850%_
                   (lambda (_%in202926%_ _%phi202927%_)
                     (let ((_%iphi202929%_
                            (fx+ _%phi202927%_
                                 (##direct-structure-ref
                                  _%in202926%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports202930%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in202926%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp202932%_ ((_%rest202934%_ _%imports202930%_)
                                          (_%r202935%_ '()))
                         (let* ((_%rest202936202944%_ _%rest202934%_)
                                (_%else202938202952%_ (lambda () _%r202935%_))
                                (_%K202940202969%_
                                 (lambda (_%rest202955%_ _%in202956%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in202956%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi202929%_))
                                           (_%lp202932%_
                                            _%rest202955%_
                                            (cons _%in202956%_ _%r202935%_))
                                           (_%lp202932%_
                                            _%rest202955%_
                                            _%r202935%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in202956%_
                                              'gx#module-import::t))
                                           (let ((_%iphi202960%_
                                                  (fx+ _%phi202927%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in202956%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi202960%_))
                                                 (_%lp202932%_
                                                  _%rest202955%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in202956%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r202935%_))
                                                 (_%lp202932%_
                                                  _%rest202955%_
                                                  _%r202935%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in202956%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi202963%_
                                                      (fx+ _%iphi202929%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in202956%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi202963%_))
                                                     (_%lp202932%_
                                                      _%rest202955%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in202956%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r202935%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi202963%_))
                                                         (_%lp202932%_
                                                          _%rest202955%_
                                                          (let ((__tmp203733
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template202850%_
                          _%in202956%_
                          _%iphi202929%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r202935%_ __tmp203733)))
                 (_%lp202932%_ _%rest202955%_ _%r202935%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp202932%_
                                                _%rest202955%_
                                                _%r202935%_)))))))
                           (if (pair? _%rest202936202944%_)
                               (let ((_%hd202941202972%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest202936202944%_)))
                                     (_%tl202942202974%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest202936202944%_))))
                                 (let* ((_%in202977%_ _%hd202941202972%_)
                                        (_%rest202979%_ _%tl202942202974%_))
                                   (_%K202940202969%_
                                    _%rest202979%_
                                    _%in202977%_)))
                               (_%else202938202952%_)))))))
                  (_%find-deps202851%_
                   (lambda (_%rest202859%_ _%deps202860%_)
                     (let* ((_%rest202861202869%_ _%rest202859%_)
                            (_%else202863202877%_ (lambda () _%deps202860%_))
                            (_%K202865202914%_
                             (lambda (_%rest202880%_ _%hd202881%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd202881%_
                                      'gx#module-context::t))
                                   (let ((_%id202884%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd202881%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports202885%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd202881%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht202849%_
                                            _%id202884%_))
                                         (_%find-deps202851%_
                                          _%rest202880%_
                                          _%deps202860%_)
                                         (let ((_%$e202888%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd202881%_))))
                                           (if _%$e202888%_
                                               ((lambda (_%pre202891%_)
                                                  (let ((_%xdeps202893%_
                                                         (_%find-deps202851%_
                                                          (cons _%pre202891%_
                                                                _%imports202885%_)
                                                          _%deps202860%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht202849%_
                                                       _%id202884%_
                                                       _%hd202881%_))
                                                    (_%find-deps202851%_
                                                     _%rest202880%_
                                                     (cons _%hd202881%_
                                                           _%xdeps202893%_))))
                                                _%$e202888%_)
                                               (let ((_%xdeps202896%_
                                                      (_%find-deps202851%_
                                                       _%imports202885%_
                                                       _%deps202860%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht202849%_
                                                    _%id202884%_
                                                    _%hd202881%_))
                                                 (_%find-deps202851%_
                                                  _%rest202880%_
                                                  (cons _%hd202881%_
                                                        _%xdeps202896%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd202881%_
                                          'gx#prelude-context::t))
                                       (let ((_%id202899%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd202881%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht202849%_
                                                _%id202899%_))
                                             (_%find-deps202851%_
                                              _%rest202880%_
                                              _%deps202860%_)
                                             (let ((_%xdeps202903%_
                                                    (_%find-deps202851%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd202881%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps202860%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht202849%_
                                                      _%id202899%_))
                                                   (_%find-deps202851%_
                                                    _%rest202880%_
                                                    _%xdeps202903%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht202849%_
                                                        _%id202899%_
                                                        _%hd202881%_))
                                                     (_%find-deps202851%_
                                                      _%rest202880%_
                                                      (cons _%hd202881%_
                                                            _%xdeps202903%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd202881%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd202881%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps202851%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd202881%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest202880%_)
                                                _%deps202860%_)
                                               (_%find-deps202851%_
                                                _%rest202880%_
                                                _%deps202860%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd202881%_
                                                  'gx#module-export::t))
                                               (_%find-deps202851%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd202881%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest202880%_)
                                                _%deps202860%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd202881%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd202881%_ '2 '#f '#f)))
               (_%find-deps202851%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd202881%_ '1 '#f '#f))
                      _%rest202880%_)
                _%deps202860%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd202881%_ '2 '#f '#f)))
                   (let ((_%xdeps202910%_
                          (_%import-set-template202850%_ _%hd202881%_ '0)))
                     (_%find-deps202851%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest202880%_ _%xdeps202910%_))
                      _%deps202860%_))
                   (_%find-deps202851%_ _%rest202880%_ _%deps202860%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd202881%_))))))))))
                       (if (pair? _%rest202861202869%_)
                           (let ((_%hd202866202917%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest202861202869%_)))
                                 (_%tl202867202919%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest202861202869%_))))
                             (let* ((_%hd202922%_ _%hd202866202917%_)
                                    (_%rest202924%_ _%tl202867202919%_))
                               (_%K202865202914%_
                                _%rest202924%_
                                _%hd202922%_)))
                           (_%else202863202877%_))))))
          (let ((__tmp203734
                 (filter gx#expander-context-id
                         (_%find-deps202851%_
                          (let ((_%$e202853%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx202847%_))))
                            (if _%$e202853%_
                                ((lambda (_%pre202856%_)
                                   (cons _%pre202856%_
                                         (##structure-ref
                                          _%ctx202847%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e202853%_)
                                (##structure-ref
                                 _%ctx202847%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp203734)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx202777%_)
        (let* ((_%context-id202779%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx202777%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx202777%_ '1 '#f '#f))
                    (string->symbol _%ctx202777%_)))
               (_%scm202781%_
                (let ((__tmp203735
                       (gxc#static-module-name _%context-id202779%_)))
                  (declare (not safe))
                  (##string-append __tmp203735 '".scm")))
               (_%dirs202783%_ (let () (declare (not safe)) (load-path)))
               (_%dirs202789%_
                (let ((_%user-libpath202785%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath202785%_
                      (let ((_%user-libpath202787%_
                             (path-expand '"lib" _%user-libpath202785%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath202787%_ _%dirs202783%_))
                            _%dirs202783%_
                            (cons _%user-libpath202787%_ _%dirs202783%_)))
                      _%dirs202783%_)))
               (_%dirs202799%_
                (let ((_%$e202791%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e202791%_
                      ((lambda (_%g202793202795%_)
                         (cons _%g202793202795%_ _%dirs202789%_))
                       _%$e202791%_)
                      _%dirs202789%_)))
               (_%dirs202805%_
                (let ((__tmp203736
                       (lambda (_%g202800202802%_)
                         (path-expand '"static" _%g202800202802%_))))
                  (declare (not safe))
                  (##map __tmp203736 _%dirs202799%_))))
          (let _%lp202808%_ ((_%rest202810%_ _%dirs202805%_))
            (let* ((_%rest202811202819%_ _%rest202810%_)
                   (_%else202813202827%_
                    (lambda ()
                      (let ((__tmp203737
                             (##structure-ref
                              _%ctx202777%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp203737
                         _%scm202781%_))))
                   (_%K202815202835%_
                    (lambda (_%rest202830%_ _%dir202831%_)
                      (let ((_%path202833%_
                             (path-expand _%scm202781%_ _%dir202831%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path202833%_))
                            _%path202833%_
                            (_%lp202808%_ _%rest202830%_))))))
              (if (pair? _%rest202811202819%_)
                  (let ((_%hd202816202838%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest202811202819%_)))
                        (_%tl202817202840%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest202811202819%_))))
                    (let* ((_%dir202843%_ _%hd202816202838%_)
                           (_%rest202845%_ _%tl202817202840%_))
                      (_%K202815202835%_ _%rest202845%_ _%dir202843%_)))
                  (_%else202813202827%_)))))))
    (define gxc#file-empty?
      (lambda (_%path202775%_)
        (zero? (let ((__tmp203738 (file-info _%path202775%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp203738)))))
    (define gxc#compile-top-module
      (lambda (_%ctx202771%_)
        (let ((__tmp203742
               (lambda ()
                 (let ((__tmp203743
                        (##structure-ref
                         _%ctx202771%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp203743))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp203744
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx202771%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp203744))
                     '#!void)
                 (gxc#collect-bindings _%ctx202771%_)
                 (gxc#compile-runtime-code _%ctx202771%_)
                 (gxc#compile-meta-code _%ctx202771%_)
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx202771%_)
                     '#!void)))
              (__tmp203741
               (let ((__obj203665
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj203665))
                 __obj203665))
              (__tmp203740 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp203739
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
           __tmp203742
           gx#current-expander-context
           _%ctx202771%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp203741
           gxc#current-compile-runtime-sections
           __tmp203740
           gxc#current-compile-runtime-names
           __tmp203739))))
    (define gxc#collect-bindings
      (lambda (_%ctx202769%_)
        (let ((__tmp203745
               (##structure-ref _%ctx202769%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp203745))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx202717%_)
        (letrec ((_%compile1202719%_
                  (lambda (_%ctx202758%_)
                    (let* ((_%code202760%_
                            (##structure-ref
                             _%ctx202758%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm202764%_
                            (let ((_%idstr202762%_
                                   (let ((__tmp203746
                                          (##structure-ref
                                           _%ctx202758%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp203746))))
                              (declare (not safe))
                              (##string-append _%idstr202762%_ '"~0")))
                           (_%rtc?202766%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code202760%_))))
                      (if _%rtc?202766%_
                          (let ((__tmp203747
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp203747
                             _%ctx202758%_
                             _%rtm202764%_))
                          '#!void)
                      (_%generate-runtime-code202721%_
                       _%ctx202758%_
                       _%code202760%_
                       (if _%rtc?202766%_ _%rtm202764%_ '#f)))))
                 (_%context-timestamp202720%_
                  (lambda (_%ctx202756%_)
                    (let ((__tmp203748
                           (let ((__tmp203749
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx202756%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp203749 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp203748))))
                 (_%generate-runtime-code202721%_
                  (lambda (_%ctx202728%_ _%code202729%_ _%rtm202730%_)
                    (let* ((_%runtime-code?202732%_ (if _%rtm202730%_ '#t '#f))
                           (_%lifts202734%_ (box '()))
                           (_%runtime-code202737%_
                            (if _%runtime-code?202732%_
                                (let ((__tmp203752
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code202729%_))))
                                      (__tmp203751
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp203750
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp203752
                                   gx#current-expander-context
                                   _%ctx202728%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts202734%_
                                   gxc#current-compile-marks
                                   __tmp203751
                                   gxc#current-compile-identifiers
                                   __tmp203750))
                                '#f))
                           (_%runtime-code202739%_
                            (if _%runtime-code?202732%_
                                (if (null? (unbox _%lifts202734%_))
                                    _%runtime-code202737%_
                                    (cons 'begin
                                          (let ((__tmp203754
                                                 (cons _%runtime-code202737%_
                                                       '()))
                                                (__tmp203753
                                                 (reverse (unbox _%lifts202734%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp203754
                                             __tmp203753))))
                                '#f))
                           (_%runtime-code202741%_
                            (if _%runtime-code?202732%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp202720%_
                                                         _%ctx202728%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code202739%_ '())))
                                '#f))
                           (_%loader-code202744%_
                            (let ((__tmp203755
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code202729%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp203755
                               gx#current-expander-context
                               _%ctx202728%_)))
                           (_%loader-code202746%_
                            (cons 'begin
                                  (cons _%loader-code202744%_
                                        (cons (if _%runtime-code?202732%_
                                                  (cons 'load-module
                                                        (cons _%rtm202730%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0202748%_
                            (gxc#compile-output-file _%ctx202728%_ '0 '".scm"))
                           (_%scmrt202750%_
                            (gxc#compile-output-file
                             _%ctx202728%_
                             '#f
                             '".scm"))
                           (_%scms202752%_
                            (gxc#compile-static-output-file _%ctx202728%_)))
                      (if _%runtime-code?202732%_
                          (gxc#compile-scm-file__0
                           _%scm0202748%_
                           _%runtime-code202741%_)
                          '#!void)
                      (let ((__tmp203756
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt202750%_
                                _%loader-code202746%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp203756
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms202752%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms202752%_))
                          '#!void)
                      (if _%runtime-code?202732%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0202748%_ _%scms202752%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms202752%_ void)))))))
          (let* ((_%all-modules202723%_
                  (cons _%ctx202717%_ (gxc#lift-nested-modules _%ctx202717%_)))
                 (__tmp203757
                  (lambda (_%ctx202725%_)
                    (let ((__tmp203758
                           (lambda () (_%compile1202719%_ _%ctx202725%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp203758
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp203757 _%all-modules202723%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx202617%_)
        (letrec ((_%compile-ssi202619%_
                  (lambda (_%code202685%_)
                    (let* ((_%path202687%_
                            (gxc#compile-output-file
                             _%ctx202617%_
                             '#f
                             '".ssi"))
                           (_%prelude202699%_
                            (let* ((_%super202689%_
                                    (##structure-ref
                                     _%ctx202617%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e202691%_
                                    (##structure-ref
                                     _%super202689%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e202691%_
                                  ((lambda (_%g202693202695%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g202693202695%_)))
                                   _%$e202691%_)
                                  ':<root>)))
                           (_%ns202701%_
                            (##structure-ref
                             _%ctx202617%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr202703%_
                            (symbol->string
                             (##structure-ref
                              _%ctx202617%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg202711%_
                            (let ((_%$e202705%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr202703%_ '#\/))))
                              (if _%$e202705%_
                                  ((lambda (_%x202708%_)
                                     (let ((__tmp203759
                                            (substring
                                             _%idstr202703%_
                                             '0
                                             _%x202708%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp203759)))
                                   _%$e202705%_)
                                  '#f)))
                           (_%rt202713%_
                            (let ((__tmp203760
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp203760 _%ctx202617%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path202687%_))
                      (gxc#with-output-to-scheme-file
                       _%path202687%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude202699%_))
                         (if _%pkg202711%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg202711%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns202701%_))
                         (newline)
                         (pretty-print _%code202685%_)
                         (if _%rt202713%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt202713%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi202620%_
                  (lambda (_%part202625%_)
                    (let* ((_%part202626202639%_ _%part202625%_)
                           (_%E202628202643%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part202626202639%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K202629202654%_
                            (lambda (_%code202646%_
                                     _%n202647%_
                                     _%phi202648%_
                                     _%phi-ctx202649%_)
                              (let ((_%code202652%_
                                     (let ((__tmp203761
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code202646%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp203761
                                        gx#current-expander-context
                                        _%phi-ctx202649%_
                                        gx#current-expander-phi
                                        _%phi202648%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx202617%_
                                  _%n202647%_
                                  '".scm")
                                 _%code202652%_
                                 '#t)))))
                      (if (pair? _%part202626202639%_)
                          (let ((_%hd202630202657%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part202626202639%_)))
                                (_%tl202631202659%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part202626202639%_))))
                            (let ((_%phi-ctx202662%_ _%hd202630202657%_))
                              (if (pair? _%tl202631202659%_)
                                  (let ((_%hd202632202664%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl202631202659%_)))
                                        (_%tl202633202666%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl202631202659%_))))
                                    (let ((_%phi202669%_ _%hd202632202664%_))
                                      (if (pair? _%tl202633202666%_)
                                          (let ((_%hd202634202671%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl202633202666%_)))
                                                (_%tl202635202673%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl202633202666%_))))
                                            (let ((_%n202676%_
                                                   _%hd202634202671%_))
                                              (if (pair? _%tl202635202673%_)
                                                  (let ((_%hd202636202678%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl202635202673%_)))
                                                        (_%tl202637202680%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl202635202673%_))))
                                                    (let ((_%code202683%_
                                                           _%hd202636202678%_))
                                                      (if (null? _%tl202637202680%_)
                                                          (_%K202629202654%_
                                                           _%code202683%_
                                                           _%n202676%_
                                                           _%phi202669%_
                                                           _%phi-ctx202662%_)
                                                          (_%E202628202643%_))))
                                                  (_%E202628202643%_))))
                                          (_%E202628202643%_))))
                                  (_%E202628202643%_))))
                          (_%E202628202643%_))))))
          (let ((_g203762_ (gxc#generate-meta-code _%ctx202617%_)))
            (begin
              (let ((_g203763_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g203762_)
                           (##values-length _g203762_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g203763_ 2)))
                    (error "Context expects 2 values" _g203763_)))
              (let ((_%ssi-code202622%_
                     (let () (declare (not safe)) (##values-ref _g203762_ 0)))
                    (_%phi-code202623%_
                     (let () (declare (not safe)) (##values-ref _g203762_ 1))))
                (begin
                  (_%compile-ssi202619%_ _%ssi-code202622%_)
                  (for-each _%compile-phi202620%_ _%phi-code202623%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx202599%_)
        (let* ((_%path202601%_
                (gxc#compile-output-file _%ctx202599%_ '#f '".ssxi.ss"))
               (_%code202603%_
                (let ((__tmp203764
                       (##structure-ref
                        _%ctx202599%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp203764)))
               (_%idstr202605%_
                (symbol->string
                 (##structure-ref
                  _%ctx202599%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg202613%_
                (let ((_%$e202607%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr202605%_ '#\/))))
                  (if _%$e202607%_
                      ((lambda (_%x202610%_)
                         (let ((__tmp203765
                                (substring _%idstr202605%_ '0 _%x202610%_)))
                           (declare (not safe))
                           (##string->symbol __tmp203765)))
                       _%$e202607%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path202601%_))
          (gxc#with-output-to-scheme-file
           _%path202601%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg202613%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg202613%_))
                 '#!void)
             (newline)
             (pretty-print _%code202603%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx202592%_)
        (let* ((_%state202594%_
                (let ((__obj203666
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj203666 _%ctx202592%_))
                  __obj203666))
               (_%ssi-code202596%_
                (let ((__tmp203766
                       (##structure-ref
                        _%ctx202592%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state202594%_
                   __tmp203766))))
          (values _%ssi-code202596%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state202594%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx202585%_)
        (let ((_%lifts202587%_ (box '())))
          (let ((__tmp203769
                 (lambda ()
                   (let ((_%code202590%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx202585%_))))
                     (if (null? (unbox _%lifts202587%_))
                         _%code202590%_
                         (cons 'begin
                               (let ((__tmp203771 (cons _%code202590%_ '()))
                                     (__tmp203770
                                      (reverse (unbox _%lifts202587%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp203771 __tmp203770)))))))
                (__tmp203768
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp203767
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp203769
             gxc#current-compile-lift
             _%lifts202587%_
             gxc#current-compile-marks
             __tmp203768
             gxc#current-compile-identifiers
             __tmp203767)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx202581%_)
        (let ((_%modules202583%_ (box '())))
          (let ((__tmp203772
                 (##structure-ref _%ctx202581%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules202583%_ __tmp203772))
          (reverse (unbox _%modules202583%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path202561%_ _%code202562%_ _%phi?202563%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path202561%_))
        (gxc#with-output-to-scheme-file
         _%path202561%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp203773
                                           (if _%phi?202563%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp203773)))))))
           (pretty-print _%code202562%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it202567%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path202561%_ _%phi?202563%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp203774
                         (cons 'compile-file (cons _%path202561%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it202567%_ __tmp203774))
                  (_%compile-it202567%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path202572%_ _%code202573%_)
        (let ((_%phi?202575%_ '#f))
          (gxc#compile-scm-file__%
           _%path202572%_
           _%code202573%_
           _%phi?202575%_))))
    (define gxc#compile-scm-file
      (lambda _g203776_
        (let ((_g203775_ (let () (declare (not safe)) (##length _g203776_))))
          (cond ((let () (declare (not safe)) (##fx= _g203775_ 2))
                 (apply gxc#compile-scm-file__0 _g203776_))
                ((let () (declare (not safe)) (##fx= _g203775_ 3))
                 (apply gxc#compile-scm-file__% _g203776_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g203776_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?202462%_)
        (let _%lp202464%_ ((_%rest202466%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts202467%_ '()))
          (let* ((_%rest202468202488%_ _%rest202466%_)
                 (_%else202472202496%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts202467%_)))
                        (reverse _%opts202467%_)))))
            (let ((_%K202482202539%_
                   (lambda (_%rest202537%_)
                     (_%lp202464%_ _%rest202537%_ _%opts202467%_)))
                  (_%K202477202521%_
                   (lambda (_%rest202519%_)
                     (_%lp202464%_ _%rest202519%_ _%opts202467%_)))
                  (_%K202474202503%_
                   (lambda (_%rest202500%_ _%opt202501%_)
                     (_%lp202464%_
                      _%rest202500%_
                      (cons _%opt202501%_ _%opts202467%_)))))
              (if (pair? _%rest202468202488%_)
                  (let ((_%tl202484202544%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest202468202488%_)))
                        (_%hd202483202542%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest202468202488%_))))
                    (if (equal? _%hd202483202542%_ '"-cc-options")
                        (if (pair? _%tl202484202544%_)
                            (let* ((_%tl202486202547%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl202484202544%_)))
                                   (_%rest202550%_ _%tl202486202547%_))
                              (_%K202482202539%_ _%rest202550%_))
                            (let ((_%opt202511%_ _%hd202483202542%_)
                                  (_%rest202513%_ _%tl202484202544%_))
                              (_%K202474202503%_
                               _%rest202513%_
                               _%opt202511%_)))
                        (if (equal? _%hd202483202542%_ '"-ld-options")
                            (if (pair? _%tl202484202544%_)
                                (let* ((_%tl202481202529%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl202484202544%_)))
                                       (_%rest202532%_ _%tl202481202529%_))
                                  (_%K202477202521%_ _%rest202532%_))
                                (let ((_%opt202511%_ _%hd202483202542%_)
                                      (_%rest202513%_ _%tl202484202544%_))
                                  (_%K202474202503%_
                                   _%rest202513%_
                                   _%opt202511%_)))
                            (let ((_%opt202511%_ _%hd202483202542%_)
                                  (_%rest202513%_ _%tl202484202544%_))
                              (_%K202474202503%_
                               _%rest202513%_
                               _%opt202511%_)))))
                  (_%else202472202496%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?202556%_ '#f)) (gxc#gsc-link-options__% _%phi?202556%_))))
    (define gxc#gsc-link-options
      (lambda _g203778_
        (let ((_g203777_ (let () (declare (not safe)) (##length _g203778_))))
          (cond ((let () (declare (not safe)) (##fx= _g203777_ 0))
                 (apply gxc#gsc-link-options__0 _g203778_))
                ((let () (declare (not safe)) (##fx= _g203777_ 1))
                 (apply gxc#gsc-link-options__% _g203778_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g203778_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords202311%_ _%static?202307202312%_ _%phi?202314%_)
        (let ((_%static?202316%_
               (if (eq? _%static?202307202312%_ absent-value)
                   '#f
                   _%static?202307202312%_)))
          (if _%phi?202314%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp202318%_ ((_%rest202320%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts202321%_ '()))
                (let* ((_%rest202322202348%_ _%rest202320%_)
                       (_%else202327202356%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts202321%_)))
                              (reverse! _%opts202321%_)))))
                  (let ((_%K202342202419%_
                         (lambda (_%rest202416%_ _%opt202417%_)
                           (if _%static?202316%_
                               (_%lp202318%_
                                _%rest202416%_
                                (cons _%opt202417%_
                                      (cons '"-cc-options" _%opts202321%_)))
                               (_%lp202318%_ _%rest202416%_ _%opts202321%_))))
                        (_%K202337202396%_
                         (lambda (_%rest202393%_ _%opt202394%_)
                           (_%lp202318%_
                            _%rest202393%_
                            (cons _%opt202394%_
                                  (cons '"-cc-options" _%opts202321%_)))))
                        (_%K202332202376%_
                         (lambda (_%rest202374%_)
                           (_%lp202318%_ _%rest202374%_ _%opts202321%_)))
                        (_%K202329202362%_
                         (lambda (_%rest202360%_)
                           (_%lp202318%_ _%rest202360%_ _%opts202321%_))))
                    (if (pair? _%rest202322202348%_)
                        (let ((_%tl202344202424%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest202322202348%_)))
                              (_%hd202343202422%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest202322202348%_))))
                          (if (equal? _%hd202343202422%_ '"-cc-options")
                              (if (pair? _%tl202344202424%_)
                                  (let ((_%tl202346202429%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl202344202424%_)))
                                        (_%hd202345202427%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl202344202424%_))))
                                    (if (equal? _%hd202345202427%_ '"-Bstatic")
                                        (let ((_%opt202432%_
                                               _%hd202345202427%_)
                                              (_%rest202434%_
                                               _%tl202346202429%_))
                                          (_%K202342202419%_
                                           _%rest202434%_
                                           _%opt202432%_))
                                        (let ((_%opt202409%_
                                               _%hd202345202427%_)
                                              (_%rest202411%_
                                               _%tl202346202429%_))
                                          (_%K202337202396%_
                                           _%rest202411%_
                                           _%opt202409%_))))
                                  (let ((_%rest202368%_ _%tl202344202424%_))
                                    (_%K202329202362%_ _%rest202368%_)))
                              (if (equal? _%hd202343202422%_ '"-ld-options")
                                  (if (pair? _%tl202344202424%_)
                                      (let* ((_%tl202336202384%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl202344202424%_)))
                                             (_%rest202387%_
                                              _%tl202336202384%_))
                                        (_%K202332202376%_ _%rest202387%_))
                                      (let ((_%rest202368%_
                                             _%tl202344202424%_))
                                        (_%K202329202362%_ _%rest202368%_)))
                                  (let ((_%rest202368%_ _%tl202344202424%_))
                                    (_%K202329202362%_ _%rest202368%_)))))
                        (_%else202327202356%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords202439%_ _%static?202307202440%_)
        (let ((_%phi?202442%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords202439%_
           _%static?202307202440%_
           _%phi?202442%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g203780_
        (let ((_g203779_ (let () (declare (not safe)) (##length _g203780_))))
          (cond ((let () (declare (not safe)) (##fx= _g203779_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g203780_))
                ((let () (declare (not safe)) (##fx= _g203779_ 3))
                 (apply gxc#gsc-cc-options__%__% _g203780_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g203780_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords202451%_ . _%args202452%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords202451%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords202451%_
                  'static:
                  absent-value))
               _%args202452%_)))
    (define gxc#gsc-cc-options
      (lambda _%args202308202458%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args202308202458%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords202156%_ _%static?202152202157%_ _%phi?202159%_)
        (let ((_%static?202161%_
               (if (eq? _%static?202152202157%_ absent-value)
                   '#f
                   _%static?202152202157%_)))
          (if _%phi?202159%_
              '()
              (let _%lp202163%_ ((_%rest202165%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts202166%_ '()))
                (let* ((_%rest202167202193%_ _%rest202165%_)
                       (_%else202172202201%_
                        (lambda () (reverse! _%opts202166%_))))
                  (let ((_%K202187202264%_
                         (lambda (_%rest202261%_ _%opt202262%_)
                           (if _%static?202161%_
                               (_%lp202163%_
                                _%rest202261%_
                                (cons _%opt202262%_
                                      (cons '"-ld-options" _%opts202166%_)))
                               (_%lp202163%_ _%rest202261%_ _%opts202166%_))))
                        (_%K202182202241%_
                         (lambda (_%rest202238%_ _%opt202239%_)
                           (_%lp202163%_
                            _%rest202238%_
                            (cons _%opt202239%_
                                  (cons '"-ld-options" _%opts202166%_)))))
                        (_%K202177202221%_
                         (lambda (_%rest202219%_)
                           (_%lp202163%_ _%rest202219%_ _%opts202166%_)))
                        (_%K202174202207%_
                         (lambda (_%rest202205%_)
                           (_%lp202163%_ _%rest202205%_ _%opts202166%_))))
                    (if (pair? _%rest202167202193%_)
                        (let ((_%tl202189202269%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest202167202193%_)))
                              (_%hd202188202267%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest202167202193%_))))
                          (if (equal? _%hd202188202267%_ '"-ld-options")
                              (if (pair? _%tl202189202269%_)
                                  (let ((_%tl202191202274%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl202189202269%_)))
                                        (_%hd202190202272%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl202189202269%_))))
                                    (if (equal? _%hd202190202272%_ '"-static")
                                        (let ((_%opt202277%_
                                               _%hd202190202272%_)
                                              (_%rest202279%_
                                               _%tl202191202274%_))
                                          (_%K202187202264%_
                                           _%rest202279%_
                                           _%opt202277%_))
                                        (let ((_%opt202254%_
                                               _%hd202190202272%_)
                                              (_%rest202256%_
                                               _%tl202191202274%_))
                                          (_%K202182202241%_
                                           _%rest202256%_
                                           _%opt202254%_))))
                                  (let ((_%rest202213%_ _%tl202189202269%_))
                                    (_%K202174202207%_ _%rest202213%_)))
                              (if (equal? _%hd202188202267%_ '"-cc-options")
                                  (if (pair? _%tl202189202269%_)
                                      (let* ((_%tl202181202229%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl202189202269%_)))
                                             (_%rest202232%_
                                              _%tl202181202229%_))
                                        (_%K202177202221%_ _%rest202232%_))
                                      (let ((_%rest202213%_
                                             _%tl202189202269%_))
                                        (_%K202174202207%_ _%rest202213%_)))
                                  (let ((_%rest202213%_ _%tl202189202269%_))
                                    (_%K202174202207%_ _%rest202213%_)))))
                        (_%else202172202201%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords202284%_ _%static?202152202285%_)
        (let ((_%phi?202287%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords202284%_
           _%static?202152202285%_
           _%phi?202287%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g203782_
        (let ((_g203781_ (let () (declare (not safe)) (##length _g203782_))))
          (cond ((let () (declare (not safe)) (##fx= _g203781_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g203782_))
                ((let () (declare (not safe)) (##fx= _g203781_ 3))
                 (apply gxc#gsc-ld-options__%__% _g203782_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g203782_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords202296%_ . _%args202297%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords202296%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords202296%_
                  'static:
                  absent-value))
               _%args202297%_)))
    (define gxc#gsc-ld-options
      (lambda _%args202153202303%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args202153202303%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir202147%_)
        (let ((_%user-staticdir202149%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir202147%_
                       '" -I "
                       _%user-staticdir202149%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp202059%_ ((_%rest202061%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts202062%_ '()))
          (let* ((_%rest202063202083%_ _%rest202061%_)
                 (_%else202067202091%_ (lambda () _%opts202062%_)))
            (let ((_%K202077202134%_
                   (lambda (_%rest202132%_)
                     (_%lp202059%_ _%rest202132%_ _%opts202062%_)))
                  (_%K202072202112%_
                   (lambda (_%rest202109%_ _%opt202110%_)
                     (_%lp202059%_
                      _%rest202109%_
                      (let ((__tmp203783
                             (let ((__tmp203784
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt202110%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp203784))))
                        (declare (not safe))
                        (##append _%opts202062%_ __tmp203783)))))
                  (_%K202069202097%_
                   (lambda (_%rest202095%_)
                     (_%lp202059%_ _%rest202095%_ _%opts202062%_))))
              (if (pair? _%rest202063202083%_)
                  (let ((_%tl202079202139%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest202063202083%_)))
                        (_%hd202078202137%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest202063202083%_))))
                    (if (equal? _%hd202078202137%_ '"-cc-options")
                        (if (pair? _%tl202079202139%_)
                            (let* ((_%tl202081202142%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl202079202139%_)))
                                   (_%rest202145%_ _%tl202081202142%_))
                              (_%K202077202134%_ _%rest202145%_))
                            (let ((_%rest202103%_ _%tl202079202139%_))
                              (_%K202069202097%_ _%rest202103%_)))
                        (if (equal? _%hd202078202137%_ '"-ld-options")
                            (if (pair? _%tl202079202139%_)
                                (let ((_%tl202076202122%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl202079202139%_)))
                                      (_%hd202075202120%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl202079202139%_))))
                                  (let ((_%opt202125%_ _%hd202075202120%_)
                                        (_%rest202127%_ _%tl202076202122%_))
                                    (_%K202072202112%_
                                     _%rest202127%_
                                     _%opt202125%_)))
                                (let ((_%rest202103%_ _%tl202079202139%_))
                                  (_%K202069202097%_ _%rest202103%_)))
                            (let ((_%rest202103%_ _%tl202079202139%_))
                              (_%K202069202097%_ _%rest202103%_)))))
                  (_%else202067202091%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str202056%_)
        (not (let () (declare (not safe)) (string-empty? _%str202056%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path202049%_ _%phi?202050%_)
        (let ((_%gsc-link-opts202052%_
               (gxc#gsc-link-options__% _%phi?202050%_))
              (_%gsc-cc-opts202053%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?202050%_))
              (_%gsc-ld-opts202054%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?202050%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp203785
                  (let ((__tmp203786
                         (let ((__tmp203787 (cons _%path202049%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp203787
                            _%gsc-link-opts202052%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp203786 _%gsc-ld-opts202054%_))))
             (declare (not safe))
             (__foldr1 cons __tmp203785 _%gsc-cc-opts202053%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx202015%_ _%n202016%_ _%ext202017%_)
        (letrec ((_%module-relative-path202019%_
                  (lambda (_%ctx202047%_)
                    (path-strip-directory
                     (let ((__tmp203788
                            (##structure-ref
                             _%ctx202047%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp203788)))))
                 (_%module-source-directory202020%_
                  (lambda (_%ctx202043%_)
                    (path-directory
                     (let ((_%mpath202045%_
                            (##structure-ref
                             _%ctx202043%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath202045%_)
                           _%mpath202045%_
                           (last _%mpath202045%_))))))
                 (_%section-string202021%_
                  (lambda (_%n202037%_)
                    (if (number? _%n202037%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n202037%_))
                        (if (symbol? _%n202037%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n202037%_))
                            (if (string? _%n202037%_)
                                _%n202037%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n202037%_)))))))
                 (_%file-name202022%_
                  (lambda (_%path202035%_)
                    (if _%n202016%_
                        (string-append
                         _%path202035%_
                         '"~"
                         (_%section-string202021%_ _%n202016%_)
                         _%ext202017%_)
                        (string-append _%path202035%_ _%ext202017%_))))
                 (_%file-path202023%_
                  (lambda ()
                    (let ((_%$e202029%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e202029%_
                          ((lambda (_%outdir202032%_)
                             (path-expand
                              (_%file-name202022%_
                               (let ((__tmp203789
                                      (##structure-ref
                                       _%ctx202015%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp203789)))
                              _%outdir202032%_))
                           _%$e202029%_)
                          (path-expand
                           (_%file-name202022%_
                            (_%module-relative-path202019%_ _%ctx202015%_))
                           (_%module-source-directory202020%_
                            _%ctx202015%_)))))))
          (let ((_%path202025%_ (_%file-path202023%_)))
            (let ((__tmp203790
                   (lambda ()
                     (let ((__tmp203791 (path-directory _%path202025%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp203791)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp203790))
            _%path202025%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx201996%_)
        (letrec ((_%file-name201998%_
                  (lambda (_%id202013%_)
                    (let ((__tmp203792 (gxc#static-module-name _%id202013%_)))
                      (declare (not safe))
                      (##string-append __tmp203792 '".scm"))))
                 (_%file-path201999%_
                  (lambda ()
                    (let* ((_%file202005%_
                            (_%file-name201998%_
                             (##structure-ref
                              _%ctx201996%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e202007%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e202007%_
                          ((lambda (_%outdir202010%_)
                             (path-expand
                              _%file202005%_
                              (path-expand '"static" _%outdir202010%_)))
                           _%$e202007%_)
                          (path-expand _%file202005%_ '"static"))))))
          (let ((_%path202001%_ (_%file-path201999%_)))
            (let ((__tmp203793
                   (lambda ()
                     (let ((__tmp203794 (path-directory _%path202001%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp203794)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp203793))
            _%path202001%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx201989%_ _%opts201990%_)
        (let ((_%$e201992%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts201990%_))))
          (if _%$e201992%_
              _%$e201992%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx201989%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr201979%_)
        (if (string? _%idstr201979%_)
            (let* ((_%str201982%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr201979%_)))
                   (_%strs201984%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str201982%_ '#\/))))
              (declare (not safe))
              (string-join _%strs201984%_ '"__"))
            (if (symbol? _%idstr201979%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr201979%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr201979%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp203795
               (let ((__tmp203796 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp203796 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp203795))))
    (define gxc#invoke__%
      (lambda (_%@@keywords201943%_
               _%stdout-redirection201939201944%_
               _%stderr-redirection201940201946%_
               _%program201948%_
               _%args201949%_)
        (let* ((_%stdout-redirection201951%_
                (if (eq? _%stdout-redirection201939201944%_ absent-value)
                    '#f
                    _%stdout-redirection201939201944%_))
               (_%stderr-redirection201953%_
                (if (eq? _%stderr-redirection201940201946%_ absent-value)
                    '#f
                    _%stderr-redirection201940201946%_)))
          (let ((__tmp203797 (cons _%program201948%_ _%args201949%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp203797))
          (let* ((_%proc201955%_
                  (open-process
                   (cons 'path:
                         (cons _%program201948%_
                               (cons 'arguments:
                                     (cons _%args201949%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection201951%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection201953%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output201960%_
                  (if (or _%stdout-redirection201951%_
                          _%stderr-redirection201953%_)
                      (read-line _%proc201955%_ '#f)
                      '#f))
                 (_%status201963%_ (process-status _%proc201955%_)))
            (let () (declare (not safe)) (##close-port _%proc201955%_))
            (if (zero? _%status201963%_)
                '#!void
                (begin
                  (display _%output201960%_)
                  (let ((__tmp203798 (cons _%program201948%_ _%args201949%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp203798
                     _%status201963%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords201968%_ . _%args201969%_)
        (apply gxc#invoke__%
               _%@@keywords201968%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201968%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201968%_
                  'stderr-redirection:
                  absent-value))
               _%args201969%_)))
    (define gxc#invoke
      (lambda _%args201941201975%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args201941201975%_)))))
