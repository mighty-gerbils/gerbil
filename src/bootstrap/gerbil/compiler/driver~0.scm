(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1734280453)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp203568 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp203568))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp203569 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp203569))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path203425%_ _%fun203426%_)
        (with-output-to-file
         (cons 'path: (cons _%path203425%_ gxc#scheme-file-settings))
         _%fun203426%_)))
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
      (lambda (_%gerbil-libdir203420%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir203420%_)))
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
      (lambda (_%dir203418%_) (delete-file-or-directory _%dir203418%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath203374%_ _%opts203375%_)
        (if (string? _%srcpath203374%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath203374%_)))
        (let* ((_%outdir203377%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts203375%_)))
               (_%invoke-gsc?203379%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts203375%_)))
               (_%target203384%_
                (let ((_%$e203381%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts203375%_))))
                  (if _%$e203381%_ _%$e203381%_ 'C)))
               (_%gsc-options203389%_
                (append (cons '"-target"
                              (cons (symbol->string _%target203384%_) '()))
                        (let ((_%$e203386%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts203375%_))))
                          (if _%$e203386%_ _%$e203386%_ '()))))
               (_%keep-scm?203391%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts203375%_)))
               (_%verbosity203393%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts203375%_)))
               (_%optimize203395%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts203375%_)))
               (_%debug203397%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts203375%_)))
               (_%gen-ssxi203399%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts203375%_)))
               (_%parallel?203401%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts203375%_))))
          (if _%outdir203377%_
              (let ((__tmp203570
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir203377%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp203570))
              '#!void)
          (if _%optimize203395%_
              (let ((__tmp203571
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp203571))
              '#!void)
          (let ((__tmp203574
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath203374%_))
                   (gxc#compile-top-module
                    (let ((__tmp203575
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath203374%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp203575)))))
                (__tmp203573 (gxc#compile-timestamp))
                (__tmp203572
                 (cons 'compile-module (cons _%srcpath203374%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp203574
             gxc#current-compile-output-dir
             _%outdir203377%_
             gx#current-compilation-target
             _%target203384%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?203379%_
             gxc#current-compile-gsc-options
             _%gsc-options203389%_
             gxc#current-compile-keep-scm
             _%keep-scm?203391%_
             gxc#current-compile-verbose
             _%verbosity203393%_
             gxc#current-compile-optimize
             _%optimize203395%_
             gxc#current-compile-debug
             _%debug203397%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi203399%_
             gxc#current-compile-timestamp
             __tmp203573
             gxc#current-compile-context
             __tmp203572
             gxc#current-compile-parallel
             _%parallel?203401%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath203411%_)
        (let ((_%opts203413%_ '()))
          (gxc#compile-module__% _%srcpath203411%_ _%opts203413%_))))
    (define gxc#compile-module
      (lambda _g203577_
        (let ((_g203576_ (let () (declare (not safe)) (##length _g203577_))))
          (cond ((let () (declare (not safe)) (##fx= _g203576_ 1))
                 (apply gxc#compile-module__0 _g203577_))
                ((let () (declare (not safe)) (##fx= _g203576_ 2))
                 (apply gxc#compile-module__% _g203577_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g203577_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath203334%_ _%opts203335%_)
        (if (string? _%srcpath203334%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath203334%_)))
        (let* ((_%outdir203337%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts203335%_)))
               (_%invoke-gsc?203339%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts203335%_)))
               (_%target203344%_
                (let ((_%$e203341%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts203335%_))))
                  (if _%$e203341%_ _%$e203341%_ 'C)))
               (_%gsc-options203349%_
                (append (cons '"-target"
                              (cons (symbol->string _%target203344%_) '()))
                        (let ((_%$e203346%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts203335%_))))
                          (if _%$e203346%_ _%$e203346%_ '()))))
               (_%keep-scm?203351%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts203335%_)))
               (_%verbosity203353%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts203335%_)))
               (_%debug203355%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts203335%_)))
               (_%parallel?203357%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts203335%_))))
          (if _%outdir203337%_
              (let ((__tmp203578
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir203337%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp203578))
              '#!void)
          (let ((__tmp203581
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath203334%_))
                   (gxc#compile-executable-module
                    (let ((__tmp203582
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath203334%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp203582))
                    _%opts203335%_)))
                (__tmp203580 (gxc#compile-timestamp))
                (__tmp203579 (cons 'compile-exe (cons _%srcpath203334%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp203581
             gxc#current-compile-output-dir
             _%outdir203337%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?203339%_
             gx#current-compilation-target
             _%target203344%_
             gxc#current-compile-gsc-options
             _%gsc-options203349%_
             gxc#current-compile-keep-scm
             _%keep-scm?203351%_
             gxc#current-compile-verbose
             _%verbosity203353%_
             gxc#current-compile-debug
             _%debug203355%_
             gxc#current-compile-timestamp
             __tmp203580
             gxc#current-compile-context
             __tmp203579
             gxc#current-compile-parallel
             _%parallel?203357%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath203366%_)
        (let ((_%opts203368%_ '()))
          (gxc#compile-exe__% _%srcpath203366%_ _%opts203368%_))))
    (define gxc#compile-exe
      (lambda _g203584_
        (let ((_g203583_ (let () (declare (not safe)) (##length _g203584_))))
          (cond ((let () (declare (not safe)) (##fx= _g203583_ 1))
                 (apply gxc#compile-exe__0 _g203584_))
                ((let () (declare (not safe)) (##fx= _g203583_ 2))
                 (apply gxc#compile-exe__% _g203584_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g203584_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx203330%_ _%opts203331%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts203331%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx203330%_
             _%opts203331%_)
            (gxc#compile-executable-module/separate
             _%ctx203330%_
             _%opts203331%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx203120%_ _%opts203121%_)
        (letrec ((_%generate-stub203123%_
                  (lambda (_%builtin-modules203326%_)
                    (let ((_%mod-main203328%_
                           (gxc#find-runtime-symbol _%ctx203120%_ 'main)))
                      (let ((__tmp203585
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules203326%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp203585))
                      (let ((__tmp203586
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main203328%_
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
                        (##write __tmp203586))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts203124%_
                  (lambda (_%gerbil-libdir203324%_)
                    (let ((__tmp203587
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir203324%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp203587 read))))
                 (_%replace-extension203125%_
                  (lambda (_%path203321%_ _%ext203322%_)
                    (string-append
                     (path-strip-extension _%path203321%_)
                     _%ext203322%_)))
                 (_%userlib-module?203126%_
                  (lambda (_%ctx203319%_)
                    (if (_%exclude-module?203128%_ _%ctx203319%_)
                        '#f
                        (not (_%libgerbil-module?203127%_ _%ctx203319%_)))))
                 (_%libgerbil-module?203127%_
                  (lambda (_%ctx203312%_)
                    (let ((_%id-str203314%_
                           (symbol->string
                            (##structure-ref
                             _%ctx203312%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?203128%_ _%id-str203314%_)
                          '#f
                          (let ((_%$e203316%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str203314%_))))
                            (if _%$e203316%_
                                _%$e203316%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str203314%_))))))))
                 (_%exclude-module?203128%_
                  (lambda (_%ctx-or-str203308%_)
                    (let ((_%str203310%_
                           (if (string? _%ctx-or-str203308%_)
                               _%ctx-or-str203308%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str203308%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str203310%_))))
                 (_%not-file-empty?203129%_
                  (lambda (_%path203306%_)
                    (not (gxc#file-empty? _%path203306%_))))
                 (_%fold-libgerbil-runtime-scm203130%_
                  (lambda (_%gerbil-staticdir203299%_ _%libgerbil-scm203300%_)
                    (let ((_%gerbil-runtime-scm203304%_
                           (let ((__tmp203588
                                  (lambda (_%rtm203302%_)
                                    (path-expand
                                     (let ((__tmp203589
                                            (let ((__tmp203590
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm203302%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp203590
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp203589 '".scm"))
                                     _%gerbil-staticdir203299%_))))
                             (declare (not safe))
                             (##map __tmp203588 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates203131%_
                       (append _%gerbil-runtime-scm203304%_
                               _%libgerbil-scm203300%_)))))
                 (_%remove-duplicates203131%_
                  (lambda (_%strlst203259%_)
                    (let _%loop203261%_ ((_%rest203263%_ _%strlst203259%_)
                                         (_%result203264%_ '()))
                      (let* ((_%rest203265203273%_ _%rest203263%_)
                             (_%else203267203281%_
                              (lambda () (reverse! _%result203264%_)))
                             (_%K203269203287%_
                              (lambda (_%rest203284%_ _%path203285%_)
                                (if (member _%path203285%_ _%result203264%_)
                                    (_%loop203261%_
                                     _%rest203284%_
                                     _%result203264%_)
                                    (_%loop203261%_
                                     _%rest203284%_
                                     (cons _%path203285%_
                                           _%result203264%_))))))
                        (if (pair? _%rest203265203273%_)
                            (let ((_%hd203270203290%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest203265203273%_)))
                                  (_%tl203271203292%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest203265203273%_))))
                              (let* ((_%path203295%_ _%hd203270203290%_)
                                     (_%rest203297%_ _%tl203271203292%_))
                                (_%K203269203287%_
                                 _%rest203297%_
                                 _%path203295%_)))
                            (_%else203267203281%_))))))
                 (_%compile-stub203132%_
                  (lambda (_%output-scm203139%_ _%output-bin203140%_)
                    (let* ((_%gerbil-home203142%_
                            (let ((__tmp203591
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp203591)))
                           (_%gerbil-libdir203144%_
                            (path-expand '"lib" _%gerbil-home203142%_))
                           (_%gerbil-staticdir203146%_
                            (path-expand '"static" _%gerbil-libdir203144%_))
                           (_%deps203148%_
                            (gxc#find-runtime-module-deps _%ctx203120%_))
                           (_%libgerbil-deps203150%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?203127%_
                               _%deps203148%_)))
                           (_%libgerbil-scm203152%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps203150%_)))
                           (_%libgerbil-scm203154%_
                            (_%fold-libgerbil-runtime-scm203130%_
                             _%gerbil-staticdir203146%_
                             _%libgerbil-scm203152%_))
                           (_%libgerbil-c203160%_
                            (map (lambda (_%g203155203157%_)
                                   (_%replace-extension203125%_
                                    _%g203155203157%_
                                    '".c"))
                                 _%libgerbil-scm203154%_))
                           (_%libgerbil-o203166%_
                            (map (lambda (_%g203161203163%_)
                                   (_%replace-extension203125%_
                                    _%g203161203163%_
                                    '".o"))
                                 _%libgerbil-scm203154%_))
                           (_%src-deps203168%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?203126%_
                               _%deps203148%_)))
                           (_%src-deps-scm203170%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps203168%_)))
                           (_%src-deps-scm203172%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?203129%_
                               _%src-deps-scm203170%_)))
                           (_%src-deps-scm203174%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm203172%_)))
                           (_%src-deps-c203180%_
                            (let ((__tmp203592
                                   (lambda (_%g203175203177%_)
                                     (_%replace-extension203125%_
                                      _%g203175203177%_
                                      '".c"))))
                              (declare (not safe))
                              (##map __tmp203592 _%src-deps-scm203174%_)))
                           (_%src-deps-o203186%_
                            (let ((__tmp203593
                                   (lambda (_%g203181203183%_)
                                     (_%replace-extension203125%_
                                      _%g203181203183%_
                                      '".o"))))
                              (declare (not safe))
                              (##map __tmp203593 _%src-deps-scm203174%_)))
                           (_%src-bin-scm203188%_
                            (gxc#find-static-module-file _%ctx203120%_))
                           (_%src-bin-scm203190%_
                            (path-expand _%src-bin-scm203188%_))
                           (_%src-bin-c203192%_
                            (_%replace-extension203125%_
                             _%src-bin-scm203190%_
                             '".c"))
                           (_%src-bin-o203194%_
                            (_%replace-extension203125%_
                             _%src-bin-scm203190%_
                             '".o"))
                           (_%output-bin203196%_
                            (path-expand _%output-bin203140%_))
                           (_%output-scm203198%_
                            (path-expand _%output-scm203139%_))
                           (_%output-c203200%_
                            (_%replace-extension203125%_
                             _%output-scm203198%_
                             '".c"))
                           (_%output-o203202%_
                            (_%replace-extension203125%_
                             _%output-scm203198%_
                             '".o"))
                           (_%output_-c203204%_
                            (_%replace-extension203125%_
                             _%output-scm203198%_
                             '"_.c"))
                           (_%output_-o203206%_
                            (_%replace-extension203125%_
                             _%output-scm203198%_
                             '"_.o"))
                           (_%gsc-link-opts203208%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts203210%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts203212%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir203146%_))
                           (_%output-ld-opts203214%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts203216%_
                            (_%get-libgerbil-ld-opts203124%_
                             _%gerbil-libdir203144%_))
                           (_%rpath203218%_
                            (gxc#gerbil-rpath _%gerbil-libdir203144%_))
                           (_%builtin-modules203222%_
                            (_%remove-duplicates203131%_
                             (let ((__tmp203594
                                    (let ((__tmp203596
                                           (lambda (_%mod203220%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod203220%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp203595
                                           (cons _%ctx203120%_
                                                 _%deps203148%_)))
                                      (declare (not safe))
                                      (##map __tmp203596 __tmp203595))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp203594)))))
                      (letrec ((_%compile-obj203225%_
                                (lambda (_%scm-path203232%_ _%c-path203233%_)
                                  (let* ((_%o-path203235%_
                                          (_%replace-extension203125%_
                                           _%c-path203233%_
                                           '".o"))
                                         (_%lock203237%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path203235%_
                                             '".lock")))
                                         (_%locked203239%_ '#f)
                                         (_%unlock203242%_
                                          (lambda ()
                                            (close-port _%locked203239%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock203237%_)))))
                                    (let _%retry203245%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock203237%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry203245%_))
                                          (begin
                                            (set! _%locked203239%_
                                                  (let ((__tmp203597
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock203237%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp203597)))
                                            (if _%locked203239%_
                                                '#!void
                                                (_%retry203245%_)))))
                                    (let ((__tmp203599
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path203235%_)))
                                                     (not _%scm-path203232%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path203232%_
                                                        _%o-path203235%_)))
                                                 (let ((_%gsc-cc-opts203256%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp203600
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp203601 (cons _%c-path203233%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp203601
                            _%gsc-static-opts203212%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp203600 _%gsc-cc-opts203256%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp203598
                                           (lambda () (_%unlock203242%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp203599
                                       __tmp203598))))))
                        (let ((__tmp203602
                               (lambda ()
                                 (let ((__tmp203603
                                        (path-directory _%output-bin203196%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp203603)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp203602))
                        (gxc#with-output-to-scheme-file
                         _%output-scm203198%_
                         (lambda ()
                           (_%generate-stub203123%_
                            _%builtin-modules203222%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it203230%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp203604
                                                   (let ((__tmp203605
                                                          (let ((__tmp203606
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm203190%_
                               (cons _%output-scm203198%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp203606 _%src-deps-scm203174%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp203605
                                                      _%libgerbil-c203160%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp203604
                                               _%gsc-link-opts203208%_))))
                                     (for-each
                                      _%compile-obj203225%_
                                      (let ((__tmp203607
                                             (cons _%src-bin-scm203190%_
                                                   (cons _%output-scm203198%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp203607
                                         _%src-deps-scm203174%_))
                                      (let ((__tmp203608
                                             (cons _%src-bin-c203192%_
                                                   (cons _%output-c203200%_
                                                         (cons _%output_-c203204%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp203608
                                         _%src-deps-c203180%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin203196%_
                                                        (let ((__tmp203609
                                                               (cons _%src-bin-o203194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o203202%_
                                   (cons _%output_-o203206%_
                                         (let ((__tmp203610
                                                (let ((__tmp203611
                                                       (let ((__tmp203613
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir203144%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts203216%_))))
                     (__tmp203612
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath203218%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp203613 __tmp203612))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp203611
                                                   _%output-ld-opts203214%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp203610
                                            _%libgerbil-o203166%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp203609 _%src-deps-o203186%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp203614
                                            (cons _%output-c203200%_
                                                  (cons _%output_-c203204%_
                                                        (cons _%output-o203202%_
                                                              (cons _%output_-o203206%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp203614)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it203230%_))
                                  (_%compile-it203230%_)))
                            '#!void))))))
          (let* ((_%output-bin203134%_
                  (gxc#compile-exe-output-file _%ctx203120%_ _%opts203121%_))
                 (_%output-scm203136%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin203134%_ '"__exe.scm"))))
            (_%compile-stub203132%_
             _%output-scm203136%_
             _%output-bin203134%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx202942%_ _%opts202943%_)
        (letrec ((_%reset-declare202945%_
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
                 (_%generate-stub202946%_
                  (lambda (_%deps203111%_)
                    (let ((_%mod-main203113%_
                           (gxc#find-runtime-symbol _%ctx202942%_ 'main))
                          (_%reset-decl203114%_ (_%reset-declare202945%_))
                          (_%user-decl203115%_ (_%user-declare202947%_)))
                      (for-each
                       (lambda (_%dep203117%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl203114%_))
                         (newline)
                         (if _%user-decl203115%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl203115%_))
                               (newline))
                             '#!void)
                         (let ((__tmp203615
                                (cons 'include (cons _%dep203117%_ '()))))
                           (declare (not safe))
                           (##write __tmp203615))
                         (newline))
                       _%deps203111%_)
                      (let ((__tmp203616
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main203113%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp203616))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare202947%_
                  (lambda ()
                    (let* ((_%gsc-opts203016%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts202943%_)))
                           (_%gsc-prelude203018%_
                            (if _%gsc-opts203016%_
                                (member '"-prelude" _%gsc-opts203016%_)
                                '#f))
                           (_%gsc-prelude203020%_
                            (if _%gsc-prelude203018%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude203018%_)))
                                '#f)))
                      (let _%lp203023%_ ((_%rest203025%_
                                          (cons _%gsc-prelude203020%_ '()))
                                         (_%user-decls203026%_ '()))
                        (let* ((_%rest203027203035%_ _%rest203025%_)
                               (_%else203029203043%_
                                (lambda ()
                                  (if (null? _%user-decls203026%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls203026%_)))))
                               (_%K203031203099%_
                                (lambda (_%rest203046%_ _%expr203047%_)
                                  (let* ((_%expr203048203060%_ _%expr203047%_)
                                         (_%else203051203068%_
                                          (lambda ()
                                            (_%lp203023%_
                                             _%rest203046%_
                                             _%user-decls203026%_))))
                                    (let ((_%K203056203089%_
                                           (lambda (_%decls203087%_)
                                             (_%lp203023%_
                                              _%rest203046%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls203026%_
                                                 _%decls203087%_)))))
                                          (_%K203053203074%_
                                           (lambda (_%exprs203072%_)
                                             (_%lp203023%_
                                              (append _%exprs203072%_
                                                      _%rest203046%_)
                                              _%user-decls203026%_))))
                                      (if (pair? _%expr203048203060%_)
                                          (let ((_%tl203058203094%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr203048203060%_)))
                                                (_%hd203057203092%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr203048203060%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd203057203092%_
                                                         'declare))
                                                (let ((_%decls203097%_
                                                       _%tl203058203094%_))
                                                  (_%K203056203089%_
                                                   _%decls203097%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd203057203092%_
                                                             'begin))
                                                    (let ((_%exprs203082%_
                                                           _%tl203058203094%_))
                                                      (_%K203053203074%_
                                                       _%exprs203082%_))
                                                    (_%else203051203068%_))))
                                          (_%else203051203068%_)))))))
                          (if (pair? _%rest203027203035%_)
                              (let ((_%hd203032203102%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest203027203035%_)))
                                    (_%tl203033203104%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest203027203035%_))))
                                (let* ((_%expr203107%_ _%hd203032203102%_)
                                       (_%rest203109%_ _%tl203033203104%_))
                                  (_%K203031203099%_
                                   _%rest203109%_
                                   _%expr203107%_)))
                              (_%else203029203043%_)))))))
                 (_%compile-stub202948%_
                  (lambda (_%output-scm202955%_ _%output-bin202956%_)
                    (let* ((_%gerbil-home202958%_
                            (let ((__tmp203617
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp203617)))
                           (_%gerbil-libdir202960%_
                            (path-expand '"lib" _%gerbil-home202958%_))
                           (_%runtime202962%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp202964%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home202958%_))
                           (_%include-gambit-sharp202966%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp202964%_
                               '"\")")))
                           (_%bin-scm202968%_
                            (gxc#find-static-module-file _%ctx202942%_))
                           (_%deps202970%_
                            (gxc#find-runtime-module-deps _%ctx202942%_))
                           (_%deps202972%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps202970%_)))
                           (_%deps202977%_
                            (let ((__tmp203618
                                   (lambda (_%$obj202974%_)
                                     (not (gxc#file-empty? _%$obj202974%_)))))
                              (declare (not safe))
                              (##filter __tmp203618 _%deps202972%_)))
                           (_%deps202981%_
                            (let ((__tmp203619
                                   (lambda (_%f202979%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f202979%_
                                             _%runtime202962%_))))))
                              (declare (not safe))
                              (##filter __tmp203619 _%deps202977%_)))
                           (_%output-base202983%_
                            (let ((__tmp203620
                                   (path-strip-extension
                                    _%output-scm202955%_)))
                              (declare (not safe))
                              (##string-append __tmp203620)))
                           (_%output-c202985%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base202983%_ '".c")))
                           (_%output-o202987%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base202983%_ '".o")))
                           (_%output-c_202989%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base202983%_ '"_.c")))
                           (_%output-o_202991%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base202983%_ '"_.o")))
                           (_%gsc-link-opts202993%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts202995%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts202997%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir202960%_)))
                           (_%output-ld-opts202999%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros203001%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp202966%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp202966%_
                                            '()))))
                           (_%gsc-link-opts203003%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts202993%_
                               _%gsc-gx-macros203001%_)))
                           (_%rpath203005%_
                            (gxc#gerbil-rpath _%gerbil-libdir202960%_))
                           (_%default-ld-options203007%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp203621
                             (lambda ()
                               (let ((__tmp203622
                                      (path-directory _%output-bin202956%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp203622)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp203621))
                      (gxc#with-output-to-scheme-file
                       _%output-scm202955%_
                       (lambda ()
                         (_%generate-stub202946%_
                          (let ((__tmp203623
                                 (let ((__tmp203624
                                        (cons _%bin-scm202968%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp203624
                                    _%deps202981%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp203623 _%runtime202962%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it203013%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_202989%_
                                                      (let ((__tmp203625
                                                             (cons _%output-scm202955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp203625 _%gsc-link-opts203003%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp203626
                                                 (let ((__tmp203627
                                                        (cons _%output-c202985%_
                                                              (cons _%output-c_202989%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp203627
                                                    _%gsc-static-opts202997%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp203626
                                             _%gsc-cc-opts202995%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin202956%_
                                                      (cons _%output-o202987%_
                                                            (cons _%output-o_202991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp203628
                                 (let ((__tmp203630
                                        (cons '"-L"
                                              (cons _%gerbil-libdir202960%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options203007%_))))
                                       (__tmp203629
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath203005%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp203630 __tmp203629))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp203628
                             _%output-ld-opts202999%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it203013%_))
                                (_%compile-it203013%_)))
                          '#!void)))))
          (let* ((_%output-bin202950%_
                  (gxc#compile-exe-output-file _%ctx202942%_ _%opts202943%_))
                 (_%output-scm202952%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin202950%_ '"__exe.scm"))))
            (_%compile-stub202948%_
             _%output-scm202952%_
             _%output-bin202950%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx202891%_ _%id202892%_)
        (let ((_%$e202938%_
               (let ((__tmp203632
                      (lambda (_%e202893202895%_)
                        (let* ((_%g202897202907%_ _%e202893202895%_)
                               (_%else202899202915%_ (lambda () '#f))
                               (_%K202901202919%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g202897202907%_
                                 'gx#module-export::t))
                              (let* ((_%e202902202922%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g202897202907%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e202903202925%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g202897202907%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e202904202928%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g202897202907%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e202904202928%_ '0))
                                    (let ((_%e202905202931%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g202897202907%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g202933202935%_)
                                             (eq? _%g202933202935%_
                                                  _%id202892%_))
                                           _%e202905202931%_)
                                          (_%K202901202919%_)
                                          (_%else202899202915%_)))
                                    (_%else202899202915%_)))
                              (_%else202899202915%_)))))
                     (__tmp203631
                      (##structure-ref
                       _%ctx202891%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp203632 __tmp203631))))
          (if _%$e202938%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e202938%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx202882%_ _%id202883%_)
        (let ((_%$e202885%_
               (gxc#find-export-binding _%ctx202882%_ _%id202883%_)))
          (if _%$e202885%_
              ((lambda (_%bind202888%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind202888%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id202883%_)))
                 (##structure-ref _%bind202888%_ '1 gx#binding::t '#f))
               _%$e202885%_)
              (let ((__tmp203633
                     (##structure-ref
                      _%ctx202882%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp203633
                 _%id202883%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx202748%_)
        (letrec* ((_%ht202750%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template202751%_
                   (lambda (_%in202827%_ _%phi202828%_)
                     (let ((_%iphi202830%_
                            (fx+ _%phi202828%_
                                 (##direct-structure-ref
                                  _%in202827%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports202831%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in202827%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp202833%_ ((_%rest202835%_ _%imports202831%_)
                                          (_%r202836%_ '()))
                         (let* ((_%rest202837202845%_ _%rest202835%_)
                                (_%else202839202853%_ (lambda () _%r202836%_))
                                (_%K202841202870%_
                                 (lambda (_%rest202856%_ _%in202857%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in202857%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi202830%_))
                                           (_%lp202833%_
                                            _%rest202856%_
                                            (cons _%in202857%_ _%r202836%_))
                                           (_%lp202833%_
                                            _%rest202856%_
                                            _%r202836%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in202857%_
                                              'gx#module-import::t))
                                           (let ((_%iphi202861%_
                                                  (fx+ _%phi202828%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in202857%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi202861%_))
                                                 (_%lp202833%_
                                                  _%rest202856%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in202857%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r202836%_))
                                                 (_%lp202833%_
                                                  _%rest202856%_
                                                  _%r202836%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in202857%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi202864%_
                                                      (fx+ _%iphi202830%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in202857%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi202864%_))
                                                     (_%lp202833%_
                                                      _%rest202856%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in202857%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r202836%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi202864%_))
                                                         (_%lp202833%_
                                                          _%rest202856%_
                                                          (let ((__tmp203634
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template202751%_
                          _%in202857%_
                          _%iphi202830%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r202836%_ __tmp203634)))
                 (_%lp202833%_ _%rest202856%_ _%r202836%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp202833%_
                                                _%rest202856%_
                                                _%r202836%_)))))))
                           (if (pair? _%rest202837202845%_)
                               (let ((_%hd202842202873%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest202837202845%_)))
                                     (_%tl202843202875%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest202837202845%_))))
                                 (let* ((_%in202878%_ _%hd202842202873%_)
                                        (_%rest202880%_ _%tl202843202875%_))
                                   (_%K202841202870%_
                                    _%rest202880%_
                                    _%in202878%_)))
                               (_%else202839202853%_)))))))
                  (_%find-deps202752%_
                   (lambda (_%rest202760%_ _%deps202761%_)
                     (let* ((_%rest202762202770%_ _%rest202760%_)
                            (_%else202764202778%_ (lambda () _%deps202761%_))
                            (_%K202766202815%_
                             (lambda (_%rest202781%_ _%hd202782%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd202782%_
                                      'gx#module-context::t))
                                   (let ((_%id202785%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd202782%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports202786%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd202782%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht202750%_
                                            _%id202785%_))
                                         (_%find-deps202752%_
                                          _%rest202781%_
                                          _%deps202761%_)
                                         (let ((_%$e202789%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd202782%_))))
                                           (if _%$e202789%_
                                               ((lambda (_%pre202792%_)
                                                  (let ((_%xdeps202794%_
                                                         (_%find-deps202752%_
                                                          (cons _%pre202792%_
                                                                _%imports202786%_)
                                                          _%deps202761%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht202750%_
                                                       _%id202785%_
                                                       _%hd202782%_))
                                                    (_%find-deps202752%_
                                                     _%rest202781%_
                                                     (cons _%hd202782%_
                                                           _%xdeps202794%_))))
                                                _%$e202789%_)
                                               (let ((_%xdeps202797%_
                                                      (_%find-deps202752%_
                                                       _%imports202786%_
                                                       _%deps202761%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht202750%_
                                                    _%id202785%_
                                                    _%hd202782%_))
                                                 (_%find-deps202752%_
                                                  _%rest202781%_
                                                  (cons _%hd202782%_
                                                        _%xdeps202797%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd202782%_
                                          'gx#prelude-context::t))
                                       (let ((_%id202800%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd202782%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht202750%_
                                                _%id202800%_))
                                             (_%find-deps202752%_
                                              _%rest202781%_
                                              _%deps202761%_)
                                             (let ((_%xdeps202804%_
                                                    (_%find-deps202752%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd202782%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps202761%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht202750%_
                                                      _%id202800%_))
                                                   (_%find-deps202752%_
                                                    _%rest202781%_
                                                    _%xdeps202804%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht202750%_
                                                        _%id202800%_
                                                        _%hd202782%_))
                                                     (_%find-deps202752%_
                                                      _%rest202781%_
                                                      (cons _%hd202782%_
                                                            _%xdeps202804%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd202782%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd202782%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps202752%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd202782%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest202781%_)
                                                _%deps202761%_)
                                               (_%find-deps202752%_
                                                _%rest202781%_
                                                _%deps202761%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd202782%_
                                                  'gx#module-export::t))
                                               (_%find-deps202752%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd202782%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest202781%_)
                                                _%deps202761%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd202782%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd202782%_ '2 '#f '#f)))
               (_%find-deps202752%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd202782%_ '1 '#f '#f))
                      _%rest202781%_)
                _%deps202761%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd202782%_ '2 '#f '#f)))
                   (let ((_%xdeps202811%_
                          (_%import-set-template202751%_ _%hd202782%_ '0)))
                     (_%find-deps202752%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest202781%_ _%xdeps202811%_))
                      _%deps202761%_))
                   (_%find-deps202752%_ _%rest202781%_ _%deps202761%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd202782%_))))))))))
                       (if (pair? _%rest202762202770%_)
                           (let ((_%hd202767202818%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest202762202770%_)))
                                 (_%tl202768202820%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest202762202770%_))))
                             (let* ((_%hd202823%_ _%hd202767202818%_)
                                    (_%rest202825%_ _%tl202768202820%_))
                               (_%K202766202815%_
                                _%rest202825%_
                                _%hd202823%_)))
                           (_%else202764202778%_))))))
          (let ((__tmp203635
                 (filter gx#expander-context-id
                         (_%find-deps202752%_
                          (let ((_%$e202754%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx202748%_))))
                            (if _%$e202754%_
                                ((lambda (_%pre202757%_)
                                   (cons _%pre202757%_
                                         (##structure-ref
                                          _%ctx202748%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e202754%_)
                                (##structure-ref
                                 _%ctx202748%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp203635)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx202678%_)
        (let* ((_%context-id202680%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx202678%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx202678%_ '1 '#f '#f))
                    (string->symbol _%ctx202678%_)))
               (_%scm202682%_
                (let ((__tmp203636
                       (gxc#static-module-name _%context-id202680%_)))
                  (declare (not safe))
                  (##string-append __tmp203636 '".scm")))
               (_%dirs202684%_ (let () (declare (not safe)) (load-path)))
               (_%dirs202690%_
                (let ((_%user-libpath202686%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath202686%_
                      (let ((_%user-libpath202688%_
                             (path-expand '"lib" _%user-libpath202686%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath202688%_ _%dirs202684%_))
                            _%dirs202684%_
                            (cons _%user-libpath202688%_ _%dirs202684%_)))
                      _%dirs202684%_)))
               (_%dirs202700%_
                (let ((_%$e202692%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e202692%_
                      ((lambda (_%g202694202696%_)
                         (cons _%g202694202696%_ _%dirs202690%_))
                       _%$e202692%_)
                      _%dirs202690%_)))
               (_%dirs202706%_
                (let ((__tmp203637
                       (lambda (_%g202701202703%_)
                         (path-expand '"static" _%g202701202703%_))))
                  (declare (not safe))
                  (##map __tmp203637 _%dirs202700%_))))
          (let _%lp202709%_ ((_%rest202711%_ _%dirs202706%_))
            (let* ((_%rest202712202720%_ _%rest202711%_)
                   (_%else202714202728%_
                    (lambda ()
                      (let ((__tmp203638
                             (##structure-ref
                              _%ctx202678%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp203638
                         _%scm202682%_))))
                   (_%K202716202736%_
                    (lambda (_%rest202731%_ _%dir202732%_)
                      (let ((_%path202734%_
                             (path-expand _%scm202682%_ _%dir202732%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path202734%_))
                            _%path202734%_
                            (_%lp202709%_ _%rest202731%_))))))
              (if (pair? _%rest202712202720%_)
                  (let ((_%hd202717202739%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest202712202720%_)))
                        (_%tl202718202741%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest202712202720%_))))
                    (let* ((_%dir202744%_ _%hd202717202739%_)
                           (_%rest202746%_ _%tl202718202741%_))
                      (_%K202716202736%_ _%rest202746%_ _%dir202744%_)))
                  (_%else202714202728%_)))))))
    (define gxc#file-empty?
      (lambda (_%path202676%_)
        (zero? (let ((__tmp203639 (file-info _%path202676%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp203639)))))
    (define gxc#compile-top-module
      (lambda (_%ctx202672%_)
        (let ((__tmp203643
               (lambda ()
                 (let ((__tmp203644
                        (##structure-ref
                         _%ctx202672%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp203644))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp203645
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx202672%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp203645))
                     '#!void)
                 (gxc#collect-bindings _%ctx202672%_)
                 (gxc#compile-runtime-code _%ctx202672%_)
                 (gxc#compile-meta-code _%ctx202672%_)
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx202672%_)
                     '#!void)))
              (__tmp203642
               (let ((__obj203566
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (gxc#symbol-table:::init! __obj203566))
                 __obj203566))
              (__tmp203641 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp203640
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
           __tmp203643
           gx#current-expander-context
           _%ctx202672%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp203642
           gxc#current-compile-runtime-sections
           __tmp203641
           gxc#current-compile-runtime-names
           __tmp203640))))
    (define gxc#collect-bindings
      (lambda (_%ctx202670%_)
        (let ((__tmp203646
               (##structure-ref _%ctx202670%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp203646))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx202618%_)
        (letrec ((_%compile1202620%_
                  (lambda (_%ctx202659%_)
                    (let* ((_%code202661%_
                            (##structure-ref
                             _%ctx202659%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm202665%_
                            (let ((_%idstr202663%_
                                   (let ((__tmp203647
                                          (##structure-ref
                                           _%ctx202659%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp203647))))
                              (declare (not safe))
                              (##string-append _%idstr202663%_ '"~0")))
                           (_%rtc?202667%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code202661%_))))
                      (if _%rtc?202667%_
                          (let ((__tmp203648
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp203648
                             _%ctx202659%_
                             _%rtm202665%_))
                          '#!void)
                      (_%generate-runtime-code202622%_
                       _%ctx202659%_
                       _%code202661%_
                       (if _%rtc?202667%_ _%rtm202665%_ '#f)))))
                 (_%context-timestamp202621%_
                  (lambda (_%ctx202657%_)
                    (let ((__tmp203649
                           (let ((__tmp203650
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx202657%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp203650 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp203649))))
                 (_%generate-runtime-code202622%_
                  (lambda (_%ctx202629%_ _%code202630%_ _%rtm202631%_)
                    (let* ((_%runtime-code?202633%_ (if _%rtm202631%_ '#t '#f))
                           (_%lifts202635%_ (box '()))
                           (_%runtime-code202638%_
                            (if _%runtime-code?202633%_
                                (let ((__tmp203653
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code202630%_))))
                                      (__tmp203652
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp203651
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp203653
                                   gx#current-expander-context
                                   _%ctx202629%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts202635%_
                                   gxc#current-compile-marks
                                   __tmp203652
                                   gxc#current-compile-identifiers
                                   __tmp203651))
                                '#f))
                           (_%runtime-code202640%_
                            (if _%runtime-code?202633%_
                                (if (null? (unbox _%lifts202635%_))
                                    _%runtime-code202638%_
                                    (cons 'begin
                                          (let ((__tmp203655
                                                 (cons _%runtime-code202638%_
                                                       '()))
                                                (__tmp203654
                                                 (reverse (unbox _%lifts202635%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp203655
                                             __tmp203654))))
                                '#f))
                           (_%runtime-code202642%_
                            (if _%runtime-code?202633%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp202621%_
                                                         _%ctx202629%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code202640%_ '())))
                                '#f))
                           (_%loader-code202645%_
                            (let ((__tmp203656
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code202630%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp203656
                               gx#current-expander-context
                               _%ctx202629%_)))
                           (_%loader-code202647%_
                            (cons 'begin
                                  (cons _%loader-code202645%_
                                        (cons (if _%runtime-code?202633%_
                                                  (cons 'load-module
                                                        (cons _%rtm202631%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0202649%_
                            (gxc#compile-output-file _%ctx202629%_ '0 '".scm"))
                           (_%scmrt202651%_
                            (gxc#compile-output-file
                             _%ctx202629%_
                             '#f
                             '".scm"))
                           (_%scms202653%_
                            (gxc#compile-static-output-file _%ctx202629%_)))
                      (if _%runtime-code?202633%_
                          (gxc#compile-scm-file__0
                           _%scm0202649%_
                           _%runtime-code202642%_)
                          '#!void)
                      (let ((__tmp203657
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt202651%_
                                _%loader-code202647%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp203657
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms202653%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms202653%_))
                          '#!void)
                      (if _%runtime-code?202633%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0202649%_ _%scms202653%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms202653%_ void)))))))
          (let* ((_%all-modules202624%_
                  (cons _%ctx202618%_ (gxc#lift-nested-modules _%ctx202618%_)))
                 (__tmp203658
                  (lambda (_%ctx202626%_)
                    (let ((__tmp203659
                           (lambda () (_%compile1202620%_ _%ctx202626%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp203659
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp203658 _%all-modules202624%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx202518%_)
        (letrec ((_%compile-ssi202520%_
                  (lambda (_%code202586%_)
                    (let* ((_%path202588%_
                            (gxc#compile-output-file
                             _%ctx202518%_
                             '#f
                             '".ssi"))
                           (_%prelude202600%_
                            (let* ((_%super202590%_
                                    (##structure-ref
                                     _%ctx202518%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e202592%_
                                    (##structure-ref
                                     _%super202590%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e202592%_
                                  ((lambda (_%g202594202596%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g202594202596%_)))
                                   _%$e202592%_)
                                  ':<root>)))
                           (_%ns202602%_
                            (##structure-ref
                             _%ctx202518%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr202604%_
                            (symbol->string
                             (##structure-ref
                              _%ctx202518%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg202612%_
                            (let ((_%$e202606%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr202604%_ '#\/))))
                              (if _%$e202606%_
                                  ((lambda (_%x202609%_)
                                     (let ((__tmp203660
                                            (substring
                                             _%idstr202604%_
                                             '0
                                             _%x202609%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp203660)))
                                   _%$e202606%_)
                                  '#f)))
                           (_%rt202614%_
                            (let ((__tmp203661
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp203661 _%ctx202518%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path202588%_))
                      (gxc#with-output-to-scheme-file
                       _%path202588%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude202600%_))
                         (if _%pkg202612%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg202612%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns202602%_))
                         (newline)
                         (pretty-print _%code202586%_)
                         (if _%rt202614%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt202614%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi202521%_
                  (lambda (_%part202526%_)
                    (let* ((_%part202527202540%_ _%part202526%_)
                           (_%E202529202544%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part202527202540%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K202530202555%_
                            (lambda (_%code202547%_
                                     _%n202548%_
                                     _%phi202549%_
                                     _%phi-ctx202550%_)
                              (let ((_%code202553%_
                                     (let ((__tmp203662
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code202547%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp203662
                                        gx#current-expander-context
                                        _%phi-ctx202550%_
                                        gx#current-expander-phi
                                        _%phi202549%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx202518%_
                                  _%n202548%_
                                  '".scm")
                                 _%code202553%_
                                 '#t)))))
                      (if (pair? _%part202527202540%_)
                          (let ((_%hd202531202558%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part202527202540%_)))
                                (_%tl202532202560%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part202527202540%_))))
                            (let ((_%phi-ctx202563%_ _%hd202531202558%_))
                              (if (pair? _%tl202532202560%_)
                                  (let ((_%hd202533202565%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl202532202560%_)))
                                        (_%tl202534202567%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl202532202560%_))))
                                    (let ((_%phi202570%_ _%hd202533202565%_))
                                      (if (pair? _%tl202534202567%_)
                                          (let ((_%hd202535202572%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl202534202567%_)))
                                                (_%tl202536202574%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl202534202567%_))))
                                            (let ((_%n202577%_
                                                   _%hd202535202572%_))
                                              (if (pair? _%tl202536202574%_)
                                                  (let ((_%hd202537202579%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl202536202574%_)))
                                                        (_%tl202538202581%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl202536202574%_))))
                                                    (let ((_%code202584%_
                                                           _%hd202537202579%_))
                                                      (if (null? _%tl202538202581%_)
                                                          (_%K202530202555%_
                                                           _%code202584%_
                                                           _%n202577%_
                                                           _%phi202570%_
                                                           _%phi-ctx202563%_)
                                                          (_%E202529202544%_))))
                                                  (_%E202529202544%_))))
                                          (_%E202529202544%_))))
                                  (_%E202529202544%_))))
                          (_%E202529202544%_))))))
          (let ((_g203663_ (gxc#generate-meta-code _%ctx202518%_)))
            (begin
              (let ((_g203664_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g203663_)
                           (##values-length _g203663_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g203664_ 2)))
                    (error "Context expects 2 values" _g203664_)))
              (let ((_%ssi-code202523%_
                     (let () (declare (not safe)) (##values-ref _g203663_ 0)))
                    (_%phi-code202524%_
                     (let () (declare (not safe)) (##values-ref _g203663_ 1))))
                (begin
                  (_%compile-ssi202520%_ _%ssi-code202523%_)
                  (for-each _%compile-phi202521%_ _%phi-code202524%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx202500%_)
        (let* ((_%path202502%_
                (gxc#compile-output-file _%ctx202500%_ '#f '".ssxi.ss"))
               (_%code202504%_
                (let ((__tmp203665
                       (##structure-ref
                        _%ctx202500%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp203665)))
               (_%idstr202506%_
                (symbol->string
                 (##structure-ref
                  _%ctx202500%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg202514%_
                (let ((_%$e202508%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr202506%_ '#\/))))
                  (if _%$e202508%_
                      ((lambda (_%x202511%_)
                         (let ((__tmp203666
                                (substring _%idstr202506%_ '0 _%x202511%_)))
                           (declare (not safe))
                           (##string->symbol __tmp203666)))
                       _%$e202508%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path202502%_))
          (gxc#with-output-to-scheme-file
           _%path202502%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg202514%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg202514%_))
                 '#!void)
             (newline)
             (pretty-print _%code202504%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx202493%_)
        (let* ((_%state202495%_
                (let ((__obj203567
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj203567 _%ctx202493%_))
                  __obj203567))
               (_%ssi-code202497%_
                (let ((__tmp203667
                       (##structure-ref
                        _%ctx202493%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state202495%_
                   __tmp203667))))
          (values _%ssi-code202497%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state202495%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx202486%_)
        (let ((_%lifts202488%_ (box '())))
          (let ((__tmp203670
                 (lambda ()
                   (let ((_%code202491%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx202486%_))))
                     (if (null? (unbox _%lifts202488%_))
                         _%code202491%_
                         (cons 'begin
                               (let ((__tmp203672 (cons _%code202491%_ '()))
                                     (__tmp203671
                                      (reverse (unbox _%lifts202488%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp203672 __tmp203671)))))))
                (__tmp203669
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp203668
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp203670
             gxc#current-compile-lift
             _%lifts202488%_
             gxc#current-compile-marks
             __tmp203669
             gxc#current-compile-identifiers
             __tmp203668)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx202482%_)
        (let ((_%modules202484%_ (box '())))
          (let ((__tmp203673
                 (##structure-ref _%ctx202482%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules202484%_ __tmp203673))
          (reverse (unbox _%modules202484%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path202462%_ _%code202463%_ _%phi?202464%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path202462%_))
        (gxc#with-output-to-scheme-file
         _%path202462%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp203674
                                           (if _%phi?202464%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp203674)))))))
           (pretty-print _%code202463%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it202468%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path202462%_ _%phi?202464%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp203675
                         (cons 'compile-file (cons _%path202462%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it202468%_ __tmp203675))
                  (_%compile-it202468%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path202473%_ _%code202474%_)
        (let ((_%phi?202476%_ '#f))
          (gxc#compile-scm-file__%
           _%path202473%_
           _%code202474%_
           _%phi?202476%_))))
    (define gxc#compile-scm-file
      (lambda _g203677_
        (let ((_g203676_ (let () (declare (not safe)) (##length _g203677_))))
          (cond ((let () (declare (not safe)) (##fx= _g203676_ 2))
                 (apply gxc#compile-scm-file__0 _g203677_))
                ((let () (declare (not safe)) (##fx= _g203676_ 3))
                 (apply gxc#compile-scm-file__% _g203677_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g203677_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?202363%_)
        (let _%lp202365%_ ((_%rest202367%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts202368%_ '()))
          (let* ((_%rest202369202389%_ _%rest202367%_)
                 (_%else202373202397%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts202368%_)))
                        (reverse _%opts202368%_)))))
            (let ((_%K202383202440%_
                   (lambda (_%rest202438%_)
                     (_%lp202365%_ _%rest202438%_ _%opts202368%_)))
                  (_%K202378202422%_
                   (lambda (_%rest202420%_)
                     (_%lp202365%_ _%rest202420%_ _%opts202368%_)))
                  (_%K202375202404%_
                   (lambda (_%rest202401%_ _%opt202402%_)
                     (_%lp202365%_
                      _%rest202401%_
                      (cons _%opt202402%_ _%opts202368%_)))))
              (if (pair? _%rest202369202389%_)
                  (let ((_%tl202385202445%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest202369202389%_)))
                        (_%hd202384202443%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest202369202389%_))))
                    (if (equal? _%hd202384202443%_ '"-cc-options")
                        (if (pair? _%tl202385202445%_)
                            (let* ((_%tl202387202448%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl202385202445%_)))
                                   (_%rest202451%_ _%tl202387202448%_))
                              (_%K202383202440%_ _%rest202451%_))
                            (let ((_%opt202412%_ _%hd202384202443%_)
                                  (_%rest202414%_ _%tl202385202445%_))
                              (_%K202375202404%_
                               _%rest202414%_
                               _%opt202412%_)))
                        (if (equal? _%hd202384202443%_ '"-ld-options")
                            (if (pair? _%tl202385202445%_)
                                (let* ((_%tl202382202430%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl202385202445%_)))
                                       (_%rest202433%_ _%tl202382202430%_))
                                  (_%K202378202422%_ _%rest202433%_))
                                (let ((_%opt202412%_ _%hd202384202443%_)
                                      (_%rest202414%_ _%tl202385202445%_))
                                  (_%K202375202404%_
                                   _%rest202414%_
                                   _%opt202412%_)))
                            (let ((_%opt202412%_ _%hd202384202443%_)
                                  (_%rest202414%_ _%tl202385202445%_))
                              (_%K202375202404%_
                               _%rest202414%_
                               _%opt202412%_)))))
                  (_%else202373202397%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?202457%_ '#f)) (gxc#gsc-link-options__% _%phi?202457%_))))
    (define gxc#gsc-link-options
      (lambda _g203679_
        (let ((_g203678_ (let () (declare (not safe)) (##length _g203679_))))
          (cond ((let () (declare (not safe)) (##fx= _g203678_ 0))
                 (apply gxc#gsc-link-options__0 _g203679_))
                ((let () (declare (not safe)) (##fx= _g203678_ 1))
                 (apply gxc#gsc-link-options__% _g203679_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g203679_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords202212%_ _%static?202208202213%_ _%phi?202215%_)
        (let ((_%static?202217%_
               (if (eq? _%static?202208202213%_ absent-value)
                   '#f
                   _%static?202208202213%_)))
          (if _%phi?202215%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp202219%_ ((_%rest202221%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts202222%_ '()))
                (let* ((_%rest202223202249%_ _%rest202221%_)
                       (_%else202228202257%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts202222%_)))
                              (reverse! _%opts202222%_)))))
                  (let ((_%K202243202320%_
                         (lambda (_%rest202317%_ _%opt202318%_)
                           (if _%static?202217%_
                               (_%lp202219%_
                                _%rest202317%_
                                (cons _%opt202318%_
                                      (cons '"-cc-options" _%opts202222%_)))
                               (_%lp202219%_ _%rest202317%_ _%opts202222%_))))
                        (_%K202238202297%_
                         (lambda (_%rest202294%_ _%opt202295%_)
                           (_%lp202219%_
                            _%rest202294%_
                            (cons _%opt202295%_
                                  (cons '"-cc-options" _%opts202222%_)))))
                        (_%K202233202277%_
                         (lambda (_%rest202275%_)
                           (_%lp202219%_ _%rest202275%_ _%opts202222%_)))
                        (_%K202230202263%_
                         (lambda (_%rest202261%_)
                           (_%lp202219%_ _%rest202261%_ _%opts202222%_))))
                    (if (pair? _%rest202223202249%_)
                        (let ((_%tl202245202325%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest202223202249%_)))
                              (_%hd202244202323%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest202223202249%_))))
                          (if (equal? _%hd202244202323%_ '"-cc-options")
                              (if (pair? _%tl202245202325%_)
                                  (let ((_%tl202247202330%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl202245202325%_)))
                                        (_%hd202246202328%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl202245202325%_))))
                                    (if (equal? _%hd202246202328%_ '"-Bstatic")
                                        (let ((_%opt202333%_
                                               _%hd202246202328%_)
                                              (_%rest202335%_
                                               _%tl202247202330%_))
                                          (_%K202243202320%_
                                           _%rest202335%_
                                           _%opt202333%_))
                                        (let ((_%opt202310%_
                                               _%hd202246202328%_)
                                              (_%rest202312%_
                                               _%tl202247202330%_))
                                          (_%K202238202297%_
                                           _%rest202312%_
                                           _%opt202310%_))))
                                  (let ((_%rest202269%_ _%tl202245202325%_))
                                    (_%K202230202263%_ _%rest202269%_)))
                              (if (equal? _%hd202244202323%_ '"-ld-options")
                                  (if (pair? _%tl202245202325%_)
                                      (let* ((_%tl202237202285%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl202245202325%_)))
                                             (_%rest202288%_
                                              _%tl202237202285%_))
                                        (_%K202233202277%_ _%rest202288%_))
                                      (let ((_%rest202269%_
                                             _%tl202245202325%_))
                                        (_%K202230202263%_ _%rest202269%_)))
                                  (let ((_%rest202269%_ _%tl202245202325%_))
                                    (_%K202230202263%_ _%rest202269%_)))))
                        (_%else202228202257%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords202340%_ _%static?202208202341%_)
        (let ((_%phi?202343%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords202340%_
           _%static?202208202341%_
           _%phi?202343%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g203681_
        (let ((_g203680_ (let () (declare (not safe)) (##length _g203681_))))
          (cond ((let () (declare (not safe)) (##fx= _g203680_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g203681_))
                ((let () (declare (not safe)) (##fx= _g203680_ 3))
                 (apply gxc#gsc-cc-options__%__% _g203681_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g203681_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords202352%_ . _%args202353%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords202352%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords202352%_
                  'static:
                  absent-value))
               _%args202353%_)))
    (define gxc#gsc-cc-options
      (lambda _%args202209202359%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args202209202359%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords202057%_ _%static?202053202058%_ _%phi?202060%_)
        (let ((_%static?202062%_
               (if (eq? _%static?202053202058%_ absent-value)
                   '#f
                   _%static?202053202058%_)))
          (if _%phi?202060%_
              '()
              (let _%lp202064%_ ((_%rest202066%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts202067%_ '()))
                (let* ((_%rest202068202094%_ _%rest202066%_)
                       (_%else202073202102%_
                        (lambda () (reverse! _%opts202067%_))))
                  (let ((_%K202088202165%_
                         (lambda (_%rest202162%_ _%opt202163%_)
                           (if _%static?202062%_
                               (_%lp202064%_
                                _%rest202162%_
                                (cons _%opt202163%_
                                      (cons '"-ld-options" _%opts202067%_)))
                               (_%lp202064%_ _%rest202162%_ _%opts202067%_))))
                        (_%K202083202142%_
                         (lambda (_%rest202139%_ _%opt202140%_)
                           (_%lp202064%_
                            _%rest202139%_
                            (cons _%opt202140%_
                                  (cons '"-ld-options" _%opts202067%_)))))
                        (_%K202078202122%_
                         (lambda (_%rest202120%_)
                           (_%lp202064%_ _%rest202120%_ _%opts202067%_)))
                        (_%K202075202108%_
                         (lambda (_%rest202106%_)
                           (_%lp202064%_ _%rest202106%_ _%opts202067%_))))
                    (if (pair? _%rest202068202094%_)
                        (let ((_%tl202090202170%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest202068202094%_)))
                              (_%hd202089202168%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest202068202094%_))))
                          (if (equal? _%hd202089202168%_ '"-ld-options")
                              (if (pair? _%tl202090202170%_)
                                  (let ((_%tl202092202175%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl202090202170%_)))
                                        (_%hd202091202173%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl202090202170%_))))
                                    (if (equal? _%hd202091202173%_ '"-static")
                                        (let ((_%opt202178%_
                                               _%hd202091202173%_)
                                              (_%rest202180%_
                                               _%tl202092202175%_))
                                          (_%K202088202165%_
                                           _%rest202180%_
                                           _%opt202178%_))
                                        (let ((_%opt202155%_
                                               _%hd202091202173%_)
                                              (_%rest202157%_
                                               _%tl202092202175%_))
                                          (_%K202083202142%_
                                           _%rest202157%_
                                           _%opt202155%_))))
                                  (let ((_%rest202114%_ _%tl202090202170%_))
                                    (_%K202075202108%_ _%rest202114%_)))
                              (if (equal? _%hd202089202168%_ '"-cc-options")
                                  (if (pair? _%tl202090202170%_)
                                      (let* ((_%tl202082202130%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl202090202170%_)))
                                             (_%rest202133%_
                                              _%tl202082202130%_))
                                        (_%K202078202122%_ _%rest202133%_))
                                      (let ((_%rest202114%_
                                             _%tl202090202170%_))
                                        (_%K202075202108%_ _%rest202114%_)))
                                  (let ((_%rest202114%_ _%tl202090202170%_))
                                    (_%K202075202108%_ _%rest202114%_)))))
                        (_%else202073202102%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords202185%_ _%static?202053202186%_)
        (let ((_%phi?202188%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords202185%_
           _%static?202053202186%_
           _%phi?202188%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g203683_
        (let ((_g203682_ (let () (declare (not safe)) (##length _g203683_))))
          (cond ((let () (declare (not safe)) (##fx= _g203682_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g203683_))
                ((let () (declare (not safe)) (##fx= _g203682_ 3))
                 (apply gxc#gsc-ld-options__%__% _g203683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g203683_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords202197%_ . _%args202198%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords202197%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords202197%_
                  'static:
                  absent-value))
               _%args202198%_)))
    (define gxc#gsc-ld-options
      (lambda _%args202054202204%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args202054202204%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir202048%_)
        (let ((_%user-staticdir202050%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir202048%_
                       '" -I "
                       _%user-staticdir202050%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp201960%_ ((_%rest201962%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts201963%_ '()))
          (let* ((_%rest201964201984%_ _%rest201962%_)
                 (_%else201968201992%_ (lambda () _%opts201963%_)))
            (let ((_%K201978202035%_
                   (lambda (_%rest202033%_)
                     (_%lp201960%_ _%rest202033%_ _%opts201963%_)))
                  (_%K201973202013%_
                   (lambda (_%rest202010%_ _%opt202011%_)
                     (_%lp201960%_
                      _%rest202010%_
                      (let ((__tmp203684
                             (let ((__tmp203685
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt202011%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp203685))))
                        (declare (not safe))
                        (##append _%opts201963%_ __tmp203684)))))
                  (_%K201970201998%_
                   (lambda (_%rest201996%_)
                     (_%lp201960%_ _%rest201996%_ _%opts201963%_))))
              (if (pair? _%rest201964201984%_)
                  (let ((_%tl201980202040%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest201964201984%_)))
                        (_%hd201979202038%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest201964201984%_))))
                    (if (equal? _%hd201979202038%_ '"-cc-options")
                        (if (pair? _%tl201980202040%_)
                            (let* ((_%tl201982202043%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl201980202040%_)))
                                   (_%rest202046%_ _%tl201982202043%_))
                              (_%K201978202035%_ _%rest202046%_))
                            (let ((_%rest202004%_ _%tl201980202040%_))
                              (_%K201970201998%_ _%rest202004%_)))
                        (if (equal? _%hd201979202038%_ '"-ld-options")
                            (if (pair? _%tl201980202040%_)
                                (let ((_%tl201977202023%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl201980202040%_)))
                                      (_%hd201976202021%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl201980202040%_))))
                                  (let ((_%opt202026%_ _%hd201976202021%_)
                                        (_%rest202028%_ _%tl201977202023%_))
                                    (_%K201973202013%_
                                     _%rest202028%_
                                     _%opt202026%_)))
                                (let ((_%rest202004%_ _%tl201980202040%_))
                                  (_%K201970201998%_ _%rest202004%_)))
                            (let ((_%rest202004%_ _%tl201980202040%_))
                              (_%K201970201998%_ _%rest202004%_)))))
                  (_%else201968201992%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str201957%_)
        (not (let () (declare (not safe)) (string-empty? _%str201957%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path201950%_ _%phi?201951%_)
        (let ((_%gsc-link-opts201953%_
               (gxc#gsc-link-options__% _%phi?201951%_))
              (_%gsc-cc-opts201954%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?201951%_))
              (_%gsc-ld-opts201955%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?201951%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp203686
                  (let ((__tmp203687
                         (let ((__tmp203688 (cons _%path201950%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp203688
                            _%gsc-link-opts201953%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp203687 _%gsc-ld-opts201955%_))))
             (declare (not safe))
             (__foldr1 cons __tmp203686 _%gsc-cc-opts201954%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx201916%_ _%n201917%_ _%ext201918%_)
        (letrec ((_%module-relative-path201920%_
                  (lambda (_%ctx201948%_)
                    (path-strip-directory
                     (let ((__tmp203689
                            (##structure-ref
                             _%ctx201948%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp203689)))))
                 (_%module-source-directory201921%_
                  (lambda (_%ctx201944%_)
                    (path-directory
                     (let ((_%mpath201946%_
                            (##structure-ref
                             _%ctx201944%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath201946%_)
                           _%mpath201946%_
                           (last _%mpath201946%_))))))
                 (_%section-string201922%_
                  (lambda (_%n201938%_)
                    (if (number? _%n201938%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n201938%_))
                        (if (symbol? _%n201938%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n201938%_))
                            (if (string? _%n201938%_)
                                _%n201938%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n201938%_)))))))
                 (_%file-name201923%_
                  (lambda (_%path201936%_)
                    (if _%n201917%_
                        (string-append
                         _%path201936%_
                         '"~"
                         (_%section-string201922%_ _%n201917%_)
                         _%ext201918%_)
                        (string-append _%path201936%_ _%ext201918%_))))
                 (_%file-path201924%_
                  (lambda ()
                    (let ((_%$e201930%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e201930%_
                          ((lambda (_%outdir201933%_)
                             (path-expand
                              (_%file-name201923%_
                               (let ((__tmp203690
                                      (##structure-ref
                                       _%ctx201916%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp203690)))
                              _%outdir201933%_))
                           _%$e201930%_)
                          (path-expand
                           (_%file-name201923%_
                            (_%module-relative-path201920%_ _%ctx201916%_))
                           (_%module-source-directory201921%_
                            _%ctx201916%_)))))))
          (let ((_%path201926%_ (_%file-path201924%_)))
            (let ((__tmp203691
                   (lambda ()
                     (let ((__tmp203692 (path-directory _%path201926%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp203692)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp203691))
            _%path201926%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx201897%_)
        (letrec ((_%file-name201899%_
                  (lambda (_%id201914%_)
                    (let ((__tmp203693 (gxc#static-module-name _%id201914%_)))
                      (declare (not safe))
                      (##string-append __tmp203693 '".scm"))))
                 (_%file-path201900%_
                  (lambda ()
                    (let* ((_%file201906%_
                            (_%file-name201899%_
                             (##structure-ref
                              _%ctx201897%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e201908%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e201908%_
                          ((lambda (_%outdir201911%_)
                             (path-expand
                              _%file201906%_
                              (path-expand '"static" _%outdir201911%_)))
                           _%$e201908%_)
                          (path-expand _%file201906%_ '"static"))))))
          (let ((_%path201902%_ (_%file-path201900%_)))
            (let ((__tmp203694
                   (lambda ()
                     (let ((__tmp203695 (path-directory _%path201902%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp203695)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp203694))
            _%path201902%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx201890%_ _%opts201891%_)
        (let ((_%$e201893%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts201891%_))))
          (if _%$e201893%_
              _%$e201893%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx201890%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr201880%_)
        (if (string? _%idstr201880%_)
            (let* ((_%str201883%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr201880%_)))
                   (_%strs201885%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str201883%_ '#\/))))
              (declare (not safe))
              (string-join _%strs201885%_ '"__"))
            (if (symbol? _%idstr201880%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr201880%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr201880%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp203696
               (let ((__tmp203697 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp203697 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp203696))))
    (define gxc#invoke__%
      (lambda (_%@@keywords201844%_
               _%stdout-redirection201840201845%_
               _%stderr-redirection201841201847%_
               _%program201849%_
               _%args201850%_)
        (let* ((_%stdout-redirection201852%_
                (if (eq? _%stdout-redirection201840201845%_ absent-value)
                    '#f
                    _%stdout-redirection201840201845%_))
               (_%stderr-redirection201854%_
                (if (eq? _%stderr-redirection201841201847%_ absent-value)
                    '#f
                    _%stderr-redirection201841201847%_)))
          (let ((__tmp203698 (cons _%program201849%_ _%args201850%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp203698))
          (let* ((_%proc201856%_
                  (open-process
                   (cons 'path:
                         (cons _%program201849%_
                               (cons 'arguments:
                                     (cons _%args201850%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection201852%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection201854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output201861%_
                  (if (or _%stdout-redirection201852%_
                          _%stderr-redirection201854%_)
                      (read-line _%proc201856%_ '#f)
                      '#f))
                 (_%status201864%_ (process-status _%proc201856%_)))
            (let () (declare (not safe)) (##close-port _%proc201856%_))
            (if (zero? _%status201864%_)
                '#!void
                (begin
                  (display _%output201861%_)
                  (let ((__tmp203699 (cons _%program201849%_ _%args201850%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp203699
                     _%status201864%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords201869%_ . _%args201870%_)
        (apply gxc#invoke__%
               _%@@keywords201869%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201869%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords201869%_
                  'stderr-redirection:
                  absent-value))
               _%args201870%_)))
    (define gxc#invoke
      (lambda _%args201842201876%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args201842201876%_)))))
