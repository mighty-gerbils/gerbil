(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1712773532)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp196294 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp196294))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp196295 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp196295))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path196151%_ _%fun196152%_)
        (with-output-to-file
         (cons 'path: (cons _%path196151%_ gxc#scheme-file-settings))
         _%fun196152%_)))
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
      (lambda (_%gerbil-libdir196146%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir196146%_)))
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
      (lambda (_%dir196144%_) (delete-file-or-directory _%dir196144%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath196117%_ _%opts196118%_)
        (if (string? _%srcpath196117%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath196117%_)))
        (let ((_%outdir196120%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts196118%_)))
              (_%invoke-gsc?196121%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts196118%_)))
              (_%gsc-options196122%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts196118%_)))
              (_%keep-scm?196123%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts196118%_)))
              (_%verbosity196124%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts196118%_)))
              (_%optimize196125%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts196118%_)))
              (_%debug196126%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts196118%_)))
              (_%gen-ssxi196127%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts196118%_)))
              (_%parallel?196128%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts196118%_))))
          (if _%outdir196120%_
              (let ((__tmp196296
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir196120%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp196296))
              '#!void)
          (if _%optimize196125%_
              (let ((__tmp196297
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp196297))
              '#!void)
          (let ((__tmp196300
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath196117%_))
                   (gxc#compile-top-module
                    (let ((__tmp196301
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath196117%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp196301)))))
                (__tmp196299 (gxc#compile-timestamp))
                (__tmp196298
                 (cons 'compile-module (cons _%srcpath196117%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp196300
             gxc#current-compile-output-dir
             _%outdir196120%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?196121%_
             gxc#current-compile-gsc-options
             _%gsc-options196122%_
             gxc#current-compile-keep-scm
             _%keep-scm?196123%_
             gxc#current-compile-verbose
             _%verbosity196124%_
             gxc#current-compile-optimize
             _%optimize196125%_
             gxc#current-compile-debug
             _%debug196126%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi196127%_
             gxc#current-compile-timestamp
             __tmp196299
             gxc#current-compile-context
             __tmp196298
             gxc#current-compile-parallel
             _%parallel?196128%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath196137%_)
        (let ((_%opts196139%_ '()))
          (gxc#compile-module__% _%srcpath196137%_ _%opts196139%_))))
    (define gxc#compile-module
      (lambda _g196303_
        (let ((_g196302_ (let () (declare (not safe)) (##length _g196303_))))
          (cond ((let () (declare (not safe)) (##fx= _g196302_ 1))
                 (apply gxc#compile-module__0 _g196303_))
                ((let () (declare (not safe)) (##fx= _g196302_ 2))
                 (apply gxc#compile-module__% _g196303_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g196303_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath196092%_ _%opts196093%_)
        (if (string? _%srcpath196092%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath196092%_)))
        (let ((_%outdir196095%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts196093%_)))
              (_%invoke-gsc?196096%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts196093%_)))
              (_%gsc-options196097%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts196093%_)))
              (_%keep-scm?196098%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts196093%_)))
              (_%verbosity196099%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts196093%_)))
              (_%debug196100%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts196093%_)))
              (_%parallel?196101%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts196093%_))))
          (if _%outdir196095%_
              (let ((__tmp196304
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir196095%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp196304))
              '#!void)
          (let ((__tmp196307
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath196092%_))
                   (gxc#compile-executable-module
                    (let ((__tmp196308
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gx#import-module__0 _%srcpath196092%_)))))
                      (declare (not safe))
                      (__with-lock gxc#+driver-mutex+ __tmp196308))
                    _%opts196093%_)))
                (__tmp196306 (gxc#compile-timestamp))
                (__tmp196305 (cons 'compile-exe (cons _%srcpath196092%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp196307
             gxc#current-compile-output-dir
             _%outdir196095%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?196096%_
             gxc#current-compile-gsc-options
             _%gsc-options196097%_
             gxc#current-compile-keep-scm
             _%keep-scm?196098%_
             gxc#current-compile-verbose
             _%verbosity196099%_
             gxc#current-compile-debug
             _%debug196100%_
             gxc#current-compile-timestamp
             __tmp196306
             gxc#current-compile-context
             __tmp196305
             gxc#current-compile-parallel
             _%parallel?196101%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath196109%_)
        (let ((_%opts196111%_ '()))
          (gxc#compile-exe__% _%srcpath196109%_ _%opts196111%_))))
    (define gxc#compile-exe
      (lambda _g196310_
        (let ((_g196309_ (let () (declare (not safe)) (##length _g196310_))))
          (cond ((let () (declare (not safe)) (##fx= _g196309_ 1))
                 (apply gxc#compile-exe__0 _g196310_))
                ((let () (declare (not safe)) (##fx= _g196309_ 2))
                 (apply gxc#compile-exe__% _g196310_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g196310_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx196088%_ _%opts196089%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts196089%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx196088%_
             _%opts196089%_)
            (gxc#compile-executable-module/separate
             _%ctx196088%_
             _%opts196089%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx195878%_ _%opts195879%_)
        (letrec ((_%generate-stub195881%_
                  (lambda (_%builtin-modules196084%_)
                    (let ((_%mod-main196086%_
                           (gxc#find-runtime-symbol _%ctx195878%_ 'main)))
                      (let ((__tmp196311
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules196084%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp196311))
                      (let ((__tmp196312
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main196086%_
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
                        (##write __tmp196312))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts195882%_
                  (lambda (_%gerbil-libdir196082%_)
                    (let ((__tmp196313
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir196082%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp196313 read))))
                 (_%replace-extension195883%_
                  (lambda (_%path196079%_ _%ext196080%_)
                    (string-append
                     (path-strip-extension _%path196079%_)
                     _%ext196080%_)))
                 (_%userlib-module?195884%_
                  (lambda (_%ctx196077%_)
                    (if (not (_%exclude-module?195886%_ _%ctx196077%_))
                        (not (_%libgerbil-module?195885%_ _%ctx196077%_))
                        '#f)))
                 (_%libgerbil-module?195885%_
                  (lambda (_%ctx196070%_)
                    (let ((_%id-str196072%_
                           (symbol->string
                            (##structure-ref
                             _%ctx196070%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (not (_%exclude-module?195886%_ _%id-str196072%_))
                          (let ((_%$e196074%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str196072%_))))
                            (if _%$e196074%_
                                _%$e196074%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str196072%_))))
                          '#f))))
                 (_%exclude-module?195886%_
                  (lambda (_%ctx-or-str196066%_)
                    (let ((_%str196068%_
                           (if (string? _%ctx-or-str196066%_)
                               _%ctx-or-str196066%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str196066%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (string-prefix? '"gerbil/core" _%str196068%_))))
                 (_%not-file-empty?195887%_
                  (lambda (_%path196064%_)
                    (not (gxc#file-empty? _%path196064%_))))
                 (_%fold-libgerbil-runtime-scm195888%_
                  (lambda (_%gerbil-staticdir196057%_ _%libgerbil-scm196058%_)
                    (let ((_%gerbil-runtime-scm196062%_
                           (let ((__tmp196314
                                  (lambda (_%rtm196060%_)
                                    (path-expand
                                     (let ((__tmp196315
                                            (let ((__tmp196316
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm196060%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp196316
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp196315 '".scm"))
                                     _%gerbil-staticdir196057%_))))
                             (declare (not safe))
                             (##map __tmp196314 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates195889%_
                       (append _%gerbil-runtime-scm196062%_
                               _%libgerbil-scm196058%_)))))
                 (_%remove-duplicates195889%_
                  (lambda (_%strlst196017%_)
                    (let _%loop196019%_ ((_%rest196021%_ _%strlst196017%_)
                                         (_%result196022%_ '()))
                      (let* ((_%rest196023196031%_ _%rest196021%_)
                             (_%else196025196039%_
                              (lambda () (reverse! _%result196022%_)))
                             (_%K196027196045%_
                              (lambda (_%rest196042%_ _%path196043%_)
                                (if (member _%path196043%_ _%result196022%_)
                                    (_%loop196019%_
                                     _%rest196042%_
                                     _%result196022%_)
                                    (_%loop196019%_
                                     _%rest196042%_
                                     (cons _%path196043%_
                                           _%result196022%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest196023196031%_))
                            (let ((_%hd196028196048%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest196023196031%_)))
                                  (_%tl196029196050%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest196023196031%_))))
                              (let* ((_%path196053%_ _%hd196028196048%_)
                                     (_%rest196055%_ _%tl196029196050%_))
                                (_%K196027196045%_
                                 _%rest196055%_
                                 _%path196053%_)))
                            (_%else196025196039%_))))))
                 (_%compile-stub195890%_
                  (lambda (_%output-scm195897%_ _%output-bin195898%_)
                    (let* ((_%gerbil-home195900%_
                            (let ((__tmp196317
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp196317)))
                           (_%gerbil-libdir195902%_
                            (path-expand '"lib" _%gerbil-home195900%_))
                           (_%gerbil-staticdir195904%_
                            (path-expand '"static" _%gerbil-libdir195902%_))
                           (_%deps195906%_
                            (gxc#find-runtime-module-deps _%ctx195878%_))
                           (_%libgerbil-deps195908%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?195885%_
                               _%deps195906%_)))
                           (_%libgerbil-scm195910%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps195908%_)))
                           (_%libgerbil-scm195912%_
                            (_%fold-libgerbil-runtime-scm195888%_
                             _%gerbil-staticdir195904%_
                             _%libgerbil-scm195910%_))
                           (_%libgerbil-c195918%_
                            (map (lambda (_%g195913195915%_)
                                   (_%replace-extension195883%_
                                    _%g195913195915%_
                                    '".c"))
                                 _%libgerbil-scm195912%_))
                           (_%libgerbil-o195924%_
                            (map (lambda (_%g195919195921%_)
                                   (_%replace-extension195883%_
                                    _%g195919195921%_
                                    '".o"))
                                 _%libgerbil-scm195912%_))
                           (_%src-deps195926%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?195884%_
                               _%deps195906%_)))
                           (_%src-deps-scm195928%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps195926%_)))
                           (_%src-deps-scm195930%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?195887%_
                               _%src-deps-scm195928%_)))
                           (_%src-deps-scm195932%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm195930%_)))
                           (_%src-deps-c195938%_
                            (let ((__tmp196318
                                   (lambda (_%g195933195935%_)
                                     (_%replace-extension195883%_
                                      _%g195933195935%_
                                      '".c"))))
                              (declare (not safe))
                              (##map __tmp196318 _%src-deps-scm195932%_)))
                           (_%src-deps-o195944%_
                            (let ((__tmp196319
                                   (lambda (_%g195939195941%_)
                                     (_%replace-extension195883%_
                                      _%g195939195941%_
                                      '".o"))))
                              (declare (not safe))
                              (##map __tmp196319 _%src-deps-scm195932%_)))
                           (_%src-bin-scm195946%_
                            (gxc#find-static-module-file _%ctx195878%_))
                           (_%src-bin-scm195948%_
                            (path-expand _%src-bin-scm195946%_))
                           (_%src-bin-c195950%_
                            (_%replace-extension195883%_
                             _%src-bin-scm195948%_
                             '".c"))
                           (_%src-bin-o195952%_
                            (_%replace-extension195883%_
                             _%src-bin-scm195948%_
                             '".o"))
                           (_%output-bin195954%_
                            (path-expand _%output-bin195898%_))
                           (_%output-scm195956%_
                            (path-expand _%output-scm195897%_))
                           (_%output-c195958%_
                            (_%replace-extension195883%_
                             _%output-scm195956%_
                             '".c"))
                           (_%output-o195960%_
                            (_%replace-extension195883%_
                             _%output-scm195956%_
                             '".o"))
                           (_%output_-c195962%_
                            (_%replace-extension195883%_
                             _%output-scm195956%_
                             '"_.c"))
                           (_%output_-o195964%_
                            (_%replace-extension195883%_
                             _%output-scm195956%_
                             '"_.o"))
                           (_%gsc-link-opts195966%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts195968%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts195970%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir195904%_))
                           (_%output-ld-opts195972%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts195974%_
                            (_%get-libgerbil-ld-opts195882%_
                             _%gerbil-libdir195902%_))
                           (_%rpath195976%_
                            (gxc#gerbil-rpath _%gerbil-libdir195902%_))
                           (_%builtin-modules195980%_
                            (_%remove-duplicates195889%_
                             (let ((__tmp196320
                                    (let ((__tmp196322
                                           (lambda (_%mod195978%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod195978%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp196321
                                           (cons _%ctx195878%_
                                                 _%deps195906%_)))
                                      (declare (not safe))
                                      (##map __tmp196322 __tmp196321))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp196320)))))
                      (letrec ((_%compile-obj195983%_
                                (lambda (_%scm-path195990%_ _%c-path195991%_)
                                  (let* ((_%o-path195993%_
                                          (_%replace-extension195883%_
                                           _%c-path195991%_
                                           '".o"))
                                         (_%lock195995%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path195993%_
                                             '".lock")))
                                         (_%locked195997%_ '#f)
                                         (_%unlock196000%_
                                          (lambda ()
                                            (close-port _%locked195997%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock195995%_)))))
                                    (let _%retry196003%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock195995%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry196003%_))
                                          (begin
                                            (set! _%locked195997%_
                                                  (let ((__tmp196323
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock195995%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp196323)))
                                            (if _%locked195997%_
                                                '#!void
                                                (_%retry196003%_)))))
                                    (let ((__tmp196325
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path195993%_)))
                                                     (not _%scm-path195990%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path195990%_
                                                        _%o-path195993%_)))
                                                 (let ((_%gsc-cc-opts196014%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp196326
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp196327 (cons _%c-path195991%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp196327
                            _%gsc-static-opts195970%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp196326 _%gsc-cc-opts196014%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp196324
                                           (lambda () (_%unlock196000%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp196325
                                       __tmp196324))))))
                        (let ((__tmp196328
                               (lambda ()
                                 (let ((__tmp196329
                                        (path-directory _%output-bin195954%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp196329)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp196328))
                        (gxc#with-output-to-scheme-file
                         _%output-scm195956%_
                         (lambda ()
                           (_%generate-stub195881%_
                            _%builtin-modules195980%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it195988%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp196330
                                                   (let ((__tmp196331
                                                          (let ((__tmp196332
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm195948%_
                               (cons _%output-scm195956%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp196332 _%src-deps-scm195932%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp196331
                                                      _%libgerbil-c195918%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp196330
                                               _%gsc-link-opts195966%_))))
                                     (for-each
                                      _%compile-obj195983%_
                                      (let ((__tmp196333
                                             (cons _%src-bin-scm195948%_
                                                   (cons _%output-scm195956%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp196333
                                         _%src-deps-scm195932%_))
                                      (let ((__tmp196334
                                             (cons _%src-bin-c195950%_
                                                   (cons _%output-c195958%_
                                                         (cons _%output_-c195962%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp196334
                                         _%src-deps-c195938%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin195954%_
                                                        (let ((__tmp196335
                                                               (cons _%src-bin-o195952%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o195960%_
                                   (cons _%output_-o195964%_
                                         (let ((__tmp196336
                                                (let ((__tmp196337
                                                       (let ((__tmp196339
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir195902%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts195974%_))))
                     (__tmp196338
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath195976%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp196339 __tmp196338))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp196337
                                                   _%output-ld-opts195972%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp196336
                                            _%libgerbil-o195924%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp196335 _%src-deps-o195944%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp196340
                                            (cons _%output-c195958%_
                                                  (cons _%output_-c195962%_
                                                        (cons _%output-o195960%_
                                                              (cons _%output_-o195964%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp196340)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it195988%_))
                                  (_%compile-it195988%_)))
                            '#!void))))))
          (let* ((_%output-bin195892%_
                  (gxc#compile-exe-output-file _%ctx195878%_ _%opts195879%_))
                 (_%output-scm195894%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin195892%_ '"__exe.scm"))))
            (_%compile-stub195890%_
             _%output-scm195894%_
             _%output-bin195892%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx195700%_ _%opts195701%_)
        (letrec ((_%reset-declare195703%_
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
                 (_%generate-stub195704%_
                  (lambda (_%deps195869%_)
                    (let ((_%mod-main195871%_
                           (gxc#find-runtime-symbol _%ctx195700%_ 'main))
                          (_%reset-decl195872%_ (_%reset-declare195703%_))
                          (_%user-decl195873%_ (_%user-declare195705%_)))
                      (for-each
                       (lambda (_%dep195875%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl195872%_))
                         (newline)
                         (if _%user-decl195873%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl195873%_))
                               (newline))
                             '#!void)
                         (let ((__tmp196341
                                (cons 'include (cons _%dep195875%_ '()))))
                           (declare (not safe))
                           (##write __tmp196341))
                         (newline))
                       _%deps195869%_)
                      (let ((__tmp196342
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main195871%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp196342))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare195705%_
                  (lambda ()
                    (let* ((_%gsc-opts195774%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts195701%_)))
                           (_%gsc-prelude195776%_
                            (if _%gsc-opts195774%_
                                (member '"-prelude" _%gsc-opts195774%_)
                                '#f))
                           (_%gsc-prelude195778%_
                            (if _%gsc-prelude195776%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude195776%_)))
                                '#f)))
                      (let _%lp195781%_ ((_%rest195783%_
                                          (cons _%gsc-prelude195778%_ '()))
                                         (_%user-decls195784%_ '()))
                        (let* ((_%rest195785195793%_ _%rest195783%_)
                               (_%else195787195801%_
                                (lambda ()
                                  (if (null? _%user-decls195784%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls195784%_)))))
                               (_%K195789195857%_
                                (lambda (_%rest195804%_ _%expr195805%_)
                                  (let* ((_%expr195806195818%_ _%expr195805%_)
                                         (_%else195809195826%_
                                          (lambda ()
                                            (_%lp195781%_
                                             _%rest195804%_
                                             _%user-decls195784%_))))
                                    (let ((_%K195814195847%_
                                           (lambda (_%decls195845%_)
                                             (_%lp195781%_
                                              _%rest195804%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls195784%_
                                                 _%decls195845%_)))))
                                          (_%K195811195832%_
                                           (lambda (_%exprs195830%_)
                                             (_%lp195781%_
                                              (append _%exprs195830%_
                                                      _%rest195804%_)
                                              _%user-decls195784%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr195806195818%_))
                                          (let ((_%tl195816195852%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr195806195818%_)))
                                                (_%hd195815195850%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr195806195818%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd195815195850%_
                                                         'declare))
                                                (let ((_%decls195855%_
                                                       _%tl195816195852%_))
                                                  (_%K195814195847%_
                                                   _%decls195855%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd195815195850%_
                                                             'begin))
                                                    (let ((_%exprs195840%_
                                                           _%tl195816195852%_))
                                                      (_%K195811195832%_
                                                       _%exprs195840%_))
                                                    (_%else195809195826%_))))
                                          (_%else195809195826%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest195785195793%_))
                              (let ((_%hd195790195860%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest195785195793%_)))
                                    (_%tl195791195862%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest195785195793%_))))
                                (let* ((_%expr195865%_ _%hd195790195860%_)
                                       (_%rest195867%_ _%tl195791195862%_))
                                  (_%K195789195857%_
                                   _%rest195867%_
                                   _%expr195865%_)))
                              (_%else195787195801%_)))))))
                 (_%compile-stub195706%_
                  (lambda (_%output-scm195713%_ _%output-bin195714%_)
                    (let* ((_%gerbil-home195716%_
                            (let ((__tmp196343
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp196343)))
                           (_%gerbil-libdir195718%_
                            (path-expand '"lib" _%gerbil-home195716%_))
                           (_%runtime195720%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp195722%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home195716%_))
                           (_%include-gambit-sharp195724%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp195722%_
                               '"\")")))
                           (_%bin-scm195726%_
                            (gxc#find-static-module-file _%ctx195700%_))
                           (_%deps195728%_
                            (gxc#find-runtime-module-deps _%ctx195700%_))
                           (_%deps195730%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps195728%_)))
                           (_%deps195735%_
                            (let ((__tmp196344
                                   (lambda (_%$obj195732%_)
                                     (not (gxc#file-empty? _%$obj195732%_)))))
                              (declare (not safe))
                              (##filter __tmp196344 _%deps195730%_)))
                           (_%deps195739%_
                            (let ((__tmp196345
                                   (lambda (_%f195737%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f195737%_
                                             _%runtime195720%_))))))
                              (declare (not safe))
                              (##filter __tmp196345 _%deps195735%_)))
                           (_%output-base195741%_
                            (let ((__tmp196346
                                   (path-strip-extension
                                    _%output-scm195713%_)))
                              (declare (not safe))
                              (##string-append __tmp196346)))
                           (_%output-c195743%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195741%_ '".c")))
                           (_%output-o195745%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195741%_ '".o")))
                           (_%output-c_195747%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195741%_ '"_.c")))
                           (_%output-o_195749%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195741%_ '"_.o")))
                           (_%gsc-link-opts195751%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts195753%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts195755%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir195718%_)))
                           (_%output-ld-opts195757%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros195759%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp195724%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp195724%_
                                            '()))))
                           (_%gsc-link-opts195761%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts195751%_
                               _%gsc-gx-macros195759%_)))
                           (_%rpath195763%_
                            (gxc#gerbil-rpath _%gerbil-libdir195718%_))
                           (_%default-ld-options195765%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp196347
                             (lambda ()
                               (let ((__tmp196348
                                      (path-directory _%output-bin195714%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp196348)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp196347))
                      (gxc#with-output-to-scheme-file
                       _%output-scm195713%_
                       (lambda ()
                         (_%generate-stub195704%_
                          (let ((__tmp196349
                                 (let ((__tmp196350
                                        (cons _%bin-scm195726%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp196350
                                    _%deps195739%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp196349 _%runtime195720%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it195771%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_195747%_
                                                      (let ((__tmp196351
                                                             (cons _%output-scm195713%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp196351 _%gsc-link-opts195761%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp196352
                                                 (let ((__tmp196353
                                                        (cons _%output-c195743%_
                                                              (cons _%output-c_195747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp196353
                                                    _%gsc-static-opts195755%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp196352
                                             _%gsc-cc-opts195753%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin195714%_
                                                      (cons _%output-o195745%_
                                                            (cons _%output-o_195749%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp196354
                                 (let ((__tmp196356
                                        (cons '"-L"
                                              (cons _%gerbil-libdir195718%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options195765%_))))
                                       (__tmp196355
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath195763%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp196356 __tmp196355))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp196354
                             _%output-ld-opts195757%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it195771%_))
                                (_%compile-it195771%_)))
                          '#!void)))))
          (let* ((_%output-bin195708%_
                  (gxc#compile-exe-output-file _%ctx195700%_ _%opts195701%_))
                 (_%output-scm195710%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin195708%_ '"__exe.scm"))))
            (_%compile-stub195706%_
             _%output-scm195710%_
             _%output-bin195708%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx195649%_ _%id195650%_)
        (let ((_%$e195696%_
               (let ((__tmp196358
                      (lambda (_%e195651195653%_)
                        (let* ((_%g195655195665%_ _%e195651195653%_)
                               (_%else195657195673%_ (lambda () '#f))
                               (_%K195659195677%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g195655195665%_
                                 'gx#module-export::t))
                              (let* ((_%e195660195680%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g195655195665%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e195661195683%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g195655195665%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e195662195686%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g195655195665%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e195662195686%_ '0))
                                    (let ((_%e195663195689%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g195655195665%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g195691195693%_)
                                             (eq? _%g195691195693%_
                                                  _%id195650%_))
                                           _%e195663195689%_)
                                          (_%K195659195677%_)
                                          (_%else195657195673%_)))
                                    (_%else195657195673%_)))
                              (_%else195657195673%_)))))
                     (__tmp196357
                      (##structure-ref
                       _%ctx195649%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp196358 __tmp196357))))
          (if _%$e195696%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e195696%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx195640%_ _%id195641%_)
        (let ((_%$e195643%_
               (gxc#find-export-binding _%ctx195640%_ _%id195641%_)))
          (if _%$e195643%_
              ((lambda (_%bind195646%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind195646%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id195641%_)))
                 (##structure-ref _%bind195646%_ '1 gx#binding::t '#f))
               _%$e195643%_)
              (let ((__tmp196359
                     (##structure-ref
                      _%ctx195640%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp196359
                 _%id195641%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx195506%_)
        (letrec* ((_%ht195508%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template195509%_
                   (lambda (_%in195585%_ _%phi195586%_)
                     (let ((_%iphi195588%_
                            (fx+ _%phi195586%_
                                 (##direct-structure-ref
                                  _%in195585%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports195589%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in195585%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp195591%_ ((_%rest195593%_ _%imports195589%_)
                                          (_%r195594%_ '()))
                         (let* ((_%rest195595195603%_ _%rest195593%_)
                                (_%else195597195611%_ (lambda () _%r195594%_))
                                (_%K195599195628%_
                                 (lambda (_%rest195614%_ _%in195615%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in195615%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi195588%_))
                                           (_%lp195591%_
                                            _%rest195614%_
                                            (cons _%in195615%_ _%r195594%_))
                                           (_%lp195591%_
                                            _%rest195614%_
                                            _%r195594%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in195615%_
                                              'gx#module-import::t))
                                           (let ((_%iphi195619%_
                                                  (fx+ _%phi195586%_
                                                       (##direct-structure-ref
                                                        _%in195615%_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi195619%_))
                                                 (_%lp195591%_
                                                  _%rest195614%_
                                                  (cons (##direct-structure-ref
                                                         (##direct-structure-ref
                                                          _%in195615%_
                                                          '1
                                                          gx#module-import::t
                                                          '#f)
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r195594%_))
                                                 (_%lp195591%_
                                                  _%rest195614%_
                                                  _%r195594%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in195615%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi195622%_
                                                      (fx+ _%iphi195588%_
                                                           (##direct-structure-ref
                                                            _%in195615%_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi195622%_))
                                                     (_%lp195591%_
                                                      _%rest195614%_
                                                      (cons (##direct-structure-ref
                                                             _%in195615%_
                                                             '1
                                                             gx#import-set::t
                                                             '#f)
                                                            _%r195594%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi195622%_))
                                                         (_%lp195591%_
                                                          _%rest195614%_
                                                          (let ((__tmp196360
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template195509%_
                          _%in195615%_
                          _%iphi195588%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r195594%_ __tmp196360)))
                 (_%lp195591%_ _%rest195614%_ _%r195594%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp195591%_
                                                _%rest195614%_
                                                _%r195594%_)))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest195595195603%_))
                               (let ((_%hd195600195631%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest195595195603%_)))
                                     (_%tl195601195633%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest195595195603%_))))
                                 (let* ((_%in195636%_ _%hd195600195631%_)
                                        (_%rest195638%_ _%tl195601195633%_))
                                   (_%K195599195628%_
                                    _%rest195638%_
                                    _%in195636%_)))
                               (_%else195597195611%_)))))))
                  (_%find-deps195510%_
                   (lambda (_%rest195518%_ _%deps195519%_)
                     (let* ((_%rest195520195528%_ _%rest195518%_)
                            (_%else195522195536%_ (lambda () _%deps195519%_))
                            (_%K195524195573%_
                             (lambda (_%rest195539%_ _%hd195540%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd195540%_
                                      'gx#module-context::t))
                                   (let ((_%id195543%_
                                          (##structure-ref
                                           _%hd195540%_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_%imports195544%_
                                          (##structure-ref
                                           _%hd195540%_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get
                                            _%ht195508%_
                                            _%id195543%_))
                                         (_%find-deps195510%_
                                          _%rest195539%_
                                          _%deps195519%_)
                                         (let ((_%$e195547%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd195540%_))))
                                           (if _%$e195547%_
                                               ((lambda (_%pre195550%_)
                                                  (let ((_%xdeps195552%_
                                                         (_%find-deps195510%_
                                                          (cons _%pre195550%_
                                                                _%imports195544%_)
                                                          _%deps195519%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _%ht195508%_
                                                       _%id195543%_
                                                       _%hd195540%_))
                                                    (_%find-deps195510%_
                                                     _%rest195539%_
                                                     (cons _%hd195540%_
                                                           _%xdeps195552%_))))
                                                _%$e195547%_)
                                               (let ((_%xdeps195555%_
                                                      (_%find-deps195510%_
                                                       _%imports195544%_
                                                       _%deps195519%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _%ht195508%_
                                                    _%id195543%_
                                                    _%hd195540%_))
                                                 (_%find-deps195510%_
                                                  _%rest195539%_
                                                  (cons _%hd195540%_
                                                        _%xdeps195555%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd195540%_
                                          'gx#prelude-context::t))
                                       (let ((_%id195558%_
                                              (##structure-ref
                                               _%hd195540%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _%ht195508%_
                                                _%id195558%_))
                                             (_%find-deps195510%_
                                              _%rest195539%_
                                              _%deps195519%_)
                                             (let ((_%xdeps195562%_
                                                    (_%find-deps195510%_
                                                     (##structure-ref
                                                      _%hd195540%_
                                                      '7
                                                      gx#prelude-context::t
                                                      '#f)
                                                     _%deps195519%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _%ht195508%_
                                                      _%id195558%_))
                                                   (_%find-deps195510%_
                                                    _%rest195539%_
                                                    _%xdeps195562%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _%ht195508%_
                                                        _%id195558%_
                                                        _%hd195540%_))
                                                     (_%find-deps195510%_
                                                      _%rest195539%_
                                                      (cons _%hd195540%_
                                                            _%xdeps195562%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd195540%_
                                              'gx#module-import::t))
                                           (if (fxzero? (##direct-structure-ref
                                                         _%hd195540%_
                                                         '3
                                                         gx#module-import::t
                                                         '#f))
                                               (_%find-deps195510%_
                                                (cons (##direct-structure-ref
                                                       _%hd195540%_
                                                       '1
                                                       gx#module-import::t
                                                       '#f)
                                                      _%rest195539%_)
                                                _%deps195519%_)
                                               (_%find-deps195510%_
                                                _%rest195539%_
                                                _%deps195519%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd195540%_
                                                  'gx#module-export::t))
                                               (_%find-deps195510%_
                                                (cons (##direct-structure-ref
                                                       _%hd195540%_
                                                       '1
                                                       gx#module-export::t
                                                       '#f)
                                                      _%rest195539%_)
                                                _%deps195519%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd195540%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd195540%_
                         '2
                         gx#import-set::t
                         '#f))
               (_%find-deps195510%_
                (cons (##direct-structure-ref
                       _%hd195540%_
                       '1
                       gx#import-set::t
                       '#f)
                      _%rest195539%_)
                _%deps195519%_)
               (if (fxpositive?
                    (##direct-structure-ref
                     _%hd195540%_
                     '2
                     gx#import-set::t
                     '#f))
                   (let ((_%xdeps195569%_
                          (_%import-set-template195509%_ _%hd195540%_ '0)))
                     (_%find-deps195510%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest195539%_ _%xdeps195569%_))
                      _%deps195519%_))
                   (_%find-deps195510%_ _%rest195539%_ _%deps195519%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd195540%_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest195520195528%_))
                           (let ((_%hd195525195576%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest195520195528%_)))
                                 (_%tl195526195578%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest195520195528%_))))
                             (let* ((_%hd195581%_ _%hd195525195576%_)
                                    (_%rest195583%_ _%tl195526195578%_))
                               (_%K195524195573%_
                                _%rest195583%_
                                _%hd195581%_)))
                           (_%else195522195536%_))))))
          (let ((__tmp196361
                 (filter gx#expander-context-id
                         (_%find-deps195510%_
                          (let ((_%$e195512%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx195506%_))))
                            (if _%$e195512%_
                                ((lambda (_%pre195515%_)
                                   (cons _%pre195515%_
                                         (##structure-ref
                                          _%ctx195506%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e195512%_)
                                (##structure-ref
                                 _%ctx195506%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp196361)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx195436%_)
        (let* ((_%context-id195438%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx195436%_
                       'gx#module-context::t))
                    (##structure-ref
                     _%ctx195436%_
                     '1
                     gx#expander-context::t
                     '#f)
                    (string->symbol _%ctx195436%_)))
               (_%scm195440%_
                (let ((__tmp196362
                       (gxc#static-module-name _%context-id195438%_)))
                  (declare (not safe))
                  (##string-append __tmp196362 '".scm")))
               (_%dirs195442%_ (let () (declare (not safe)) (load-path)))
               (_%dirs195448%_
                (let ((_%user-libpath195444%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath195444%_
                      (let ((_%user-libpath195446%_
                             (path-expand '"lib" _%user-libpath195444%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath195446%_ _%dirs195442%_))
                            _%dirs195442%_
                            (cons _%user-libpath195446%_ _%dirs195442%_)))
                      _%dirs195442%_)))
               (_%dirs195458%_
                (let ((_%$e195450%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e195450%_
                      ((lambda (_%g195452195454%_)
                         (cons _%g195452195454%_ _%dirs195448%_))
                       _%$e195450%_)
                      _%dirs195448%_)))
               (_%dirs195464%_
                (let ((__tmp196363
                       (lambda (_%g195459195461%_)
                         (path-expand '"static" _%g195459195461%_))))
                  (declare (not safe))
                  (##map __tmp196363 _%dirs195458%_))))
          (let _%lp195467%_ ((_%rest195469%_ _%dirs195464%_))
            (let* ((_%rest195470195478%_ _%rest195469%_)
                   (_%else195472195486%_
                    (lambda ()
                      (let ((__tmp196364
                             (##structure-ref
                              _%ctx195436%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp196364
                         _%scm195440%_))))
                   (_%K195474195494%_
                    (lambda (_%rest195489%_ _%dir195490%_)
                      (let ((_%path195492%_
                             (path-expand _%scm195440%_ _%dir195490%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path195492%_))
                            _%path195492%_
                            (_%lp195467%_ _%rest195489%_))))))
              (if (let () (declare (not safe)) (##pair? _%rest195470195478%_))
                  (let ((_%hd195475195497%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest195470195478%_)))
                        (_%tl195476195499%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest195470195478%_))))
                    (let* ((_%dir195502%_ _%hd195475195497%_)
                           (_%rest195504%_ _%tl195476195499%_))
                      (_%K195474195494%_ _%rest195504%_ _%dir195502%_)))
                  (_%else195472195486%_)))))))
    (define gxc#file-empty?
      (lambda (_%path195434%_)
        (zero? (let ((__tmp196365 (file-info _%path195434%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp196365)))))
    (define gxc#compile-top-module
      (lambda (_%ctx195430%_)
        (let ((__tmp196369
               (lambda ()
                 (let ((__tmp196370
                        (##structure-ref
                         _%ctx195430%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp196370))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp196371
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx195430%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp196371))
                     '#!void)
                 (gxc#collect-bindings _%ctx195430%_)
                 (gxc#compile-runtime-code _%ctx195430%_)
                 (gxc#compile-meta-code _%ctx195430%_)
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (gxc#compile-ssxi-code _%ctx195430%_)
                     '#!void)))
              (__tmp196368
               (let ((__obj196292
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj196292)
                 __obj196292))
              (__tmp196367 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp196366
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
           __tmp196369
           gx#current-expander-context
           _%ctx195430%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp196368
           gxc#current-compile-runtime-sections
           __tmp196367
           gxc#current-compile-runtime-names
           __tmp196366))))
    (define gxc#collect-bindings
      (lambda (_%ctx195428%_)
        (let ((__tmp196372
               (##structure-ref _%ctx195428%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp196372))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx195376%_)
        (letrec ((_%compile1195378%_
                  (lambda (_%ctx195417%_)
                    (let* ((_%code195419%_
                            (##structure-ref
                             _%ctx195417%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm195423%_
                            (let ((_%idstr195421%_
                                   (let ((__tmp196373
                                          (##structure-ref
                                           _%ctx195417%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp196373))))
                              (declare (not safe))
                              (##string-append _%idstr195421%_ '"~0")))
                           (_%rtc?195425%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code195419%_))))
                      (if _%rtc?195425%_
                          (let ((__tmp196374
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp196374
                             _%ctx195417%_
                             _%rtm195423%_))
                          '#!void)
                      (_%generate-runtime-code195380%_
                       _%ctx195417%_
                       _%code195419%_
                       (if _%rtc?195425%_ _%rtm195423%_ '#f)))))
                 (_%context-timestamp195379%_
                  (lambda (_%ctx195415%_)
                    (let ((__tmp196375
                           (let ((__tmp196376
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx195415%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp196376 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp196375))))
                 (_%generate-runtime-code195380%_
                  (lambda (_%ctx195387%_ _%code195388%_ _%rtm195389%_)
                    (let* ((_%runtime-code?195391%_ (if _%rtm195389%_ '#t '#f))
                           (_%lifts195393%_ (box '()))
                           (_%runtime-code195396%_
                            (if _%runtime-code?195391%_
                                (let ((__tmp196379
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code195388%_))))
                                      (__tmp196378
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp196377
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp196379
                                   gx#current-expander-context
                                   _%ctx195387%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts195393%_
                                   gxc#current-compile-marks
                                   __tmp196378
                                   gxc#current-compile-identifiers
                                   __tmp196377))
                                '#f))
                           (_%runtime-code195398%_
                            (if _%runtime-code?195391%_
                                (if (null? (unbox _%lifts195393%_))
                                    _%runtime-code195396%_
                                    (cons 'begin
                                          (let ((__tmp196381
                                                 (cons _%runtime-code195396%_
                                                       '()))
                                                (__tmp196380
                                                 (reverse (unbox _%lifts195393%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp196381
                                             __tmp196380))))
                                '#f))
                           (_%runtime-code195400%_
                            (if _%runtime-code?195391%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp195379%_
                                                         _%ctx195387%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code195398%_ '())))
                                '#f))
                           (_%loader-code195403%_
                            (let ((__tmp196382
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code195388%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp196382
                               gx#current-expander-context
                               _%ctx195387%_)))
                           (_%loader-code195405%_
                            (cons 'begin
                                  (cons _%loader-code195403%_
                                        (cons (if _%runtime-code?195391%_
                                                  (cons 'load-module
                                                        (cons _%rtm195389%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0195407%_
                            (gxc#compile-output-file _%ctx195387%_ '0 '".scm"))
                           (_%scmrt195409%_
                            (gxc#compile-output-file
                             _%ctx195387%_
                             '#f
                             '".scm"))
                           (_%scms195411%_
                            (gxc#compile-static-output-file _%ctx195387%_)))
                      (if _%runtime-code?195391%_
                          (gxc#compile-scm-file__0
                           _%scm0195407%_
                           _%runtime-code195400%_)
                          '#!void)
                      (let ((__tmp196383
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt195409%_
                                _%loader-code195405%_))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp196383
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms195411%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms195411%_))
                          '#!void)
                      (if _%runtime-code?195391%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0195407%_ _%scms195411%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms195411%_ void)))))))
          (let* ((_%all-modules195382%_
                  (cons _%ctx195376%_ (gxc#lift-nested-modules _%ctx195376%_)))
                 (__tmp196384
                  (lambda (_%ctx195384%_)
                    (let ((__tmp196385
                           (lambda () (_%compile1195378%_ _%ctx195384%_))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp196385
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp196384 _%all-modules195382%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx195276%_)
        (letrec ((_%compile-ssi195278%_
                  (lambda (_%code195344%_)
                    (let* ((_%path195346%_
                            (gxc#compile-output-file
                             _%ctx195276%_
                             '#f
                             '".ssi"))
                           (_%prelude195358%_
                            (let* ((_%super195348%_
                                    (##structure-ref
                                     _%ctx195276%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e195350%_
                                    (##structure-ref
                                     _%super195348%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e195350%_
                                  ((lambda (_%g195352195354%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g195352195354%_)))
                                   _%$e195350%_)
                                  ':<root>)))
                           (_%ns195360%_
                            (##structure-ref
                             _%ctx195276%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr195362%_
                            (symbol->string
                             (##structure-ref
                              _%ctx195276%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg195370%_
                            (let ((_%$e195364%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr195362%_ '#\/))))
                              (if _%$e195364%_
                                  ((lambda (_%x195367%_)
                                     (let ((__tmp196386
                                            (substring
                                             _%idstr195362%_
                                             '0
                                             _%x195367%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp196386)))
                                   _%$e195364%_)
                                  '#f)))
                           (_%rt195372%_
                            (let ((__tmp196387
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp196387 _%ctx195276%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path195346%_))
                      (gxc#with-output-to-scheme-file
                       _%path195346%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude195358%_))
                         (if _%pkg195370%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg195370%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns195360%_))
                         (newline)
                         (pretty-print _%code195344%_)
                         (if _%rt195372%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt195372%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi195279%_
                  (lambda (_%part195284%_)
                    (let* ((_%part195285195298%_ _%part195284%_)
                           (_%E195287195302%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part195285195298%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K195288195313%_
                            (lambda (_%code195305%_
                                     _%n195306%_
                                     _%phi195307%_
                                     _%phi-ctx195308%_)
                              (let ((_%code195311%_
                                     (let ((__tmp196388
                                            (lambda ()
                                              (gxc#generate-runtime-phi
                                               _%code195305%_))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp196388
                                        gx#current-expander-context
                                        _%phi-ctx195308%_
                                        gx#current-expander-phi
                                        _%phi195307%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx195276%_
                                  _%n195306%_
                                  '".scm")
                                 _%code195311%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part195285195298%_))
                          (let ((_%hd195289195316%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part195285195298%_)))
                                (_%tl195290195318%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part195285195298%_))))
                            (let ((_%phi-ctx195321%_ _%hd195289195316%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl195290195318%_))
                                  (let ((_%hd195291195323%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl195290195318%_)))
                                        (_%tl195292195325%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl195290195318%_))))
                                    (let ((_%phi195328%_ _%hd195291195323%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl195292195325%_))
                                          (let ((_%hd195293195330%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl195292195325%_)))
                                                (_%tl195294195332%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl195292195325%_))))
                                            (let ((_%n195335%_
                                                   _%hd195293195330%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl195294195332%_))
                                                  (let ((_%hd195295195337%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl195294195332%_)))
                                                        (_%tl195296195339%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl195294195332%_))))
                                                    (let ((_%code195342%_
                                                           _%hd195295195337%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl195296195339%_))
                                                          (_%K195288195313%_
                                                           _%code195342%_
                                                           _%n195335%_
                                                           _%phi195328%_
                                                           _%phi-ctx195321%_)
                                                          (_%E195287195302%_))))
                                                  (_%E195287195302%_))))
                                          (_%E195287195302%_))))
                                  (_%E195287195302%_))))
                          (_%E195287195302%_))))))
          (let ((_g196389_ (gxc#generate-meta-code _%ctx195276%_)))
            (begin
              (let ((_g196390_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g196389_)
                           (##vector-length _g196389_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g196390_ 2)))
                    (error "Context expects 2 values" _g196390_)))
              (let ((_%ssi-code195281%_
                     (let () (declare (not safe)) (##vector-ref _g196389_ 0)))
                    (_%phi-code195282%_
                     (let () (declare (not safe)) (##vector-ref _g196389_ 1))))
                (begin
                  (_%compile-ssi195278%_ _%ssi-code195281%_)
                  (for-each _%compile-phi195279%_ _%phi-code195282%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx195258%_)
        (let* ((_%path195260%_
                (gxc#compile-output-file _%ctx195258%_ '#f '".ssxi.ss"))
               (_%code195262%_
                (let ((__tmp196391
                       (##structure-ref
                        _%ctx195258%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp196391)))
               (_%idstr195264%_
                (symbol->string
                 (##structure-ref
                  _%ctx195258%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg195272%_
                (let ((_%$e195266%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr195264%_ '#\/))))
                  (if _%$e195266%_
                      ((lambda (_%x195269%_)
                         (let ((__tmp196392
                                (substring _%idstr195264%_ '0 _%x195269%_)))
                           (declare (not safe))
                           (##string->symbol __tmp196392)))
                       _%$e195266%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path195260%_))
          (gxc#with-output-to-scheme-file
           _%path195260%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg195272%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg195272%_))
                 '#!void)
             (newline)
             (pretty-print _%code195262%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx195251%_)
        (let* ((_%state195253%_
                (let ((__obj196293
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj196293 _%ctx195251%_)
                  __obj196293))
               (_%ssi-code195255%_
                (let ((__tmp196393
                       (##structure-ref
                        _%ctx195251%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state195253%_
                   __tmp196393))))
          (values _%ssi-code195255%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state195253%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx195244%_)
        (let ((_%lifts195246%_ (box '())))
          (let ((__tmp196396
                 (lambda ()
                   (let ((_%code195249%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx195244%_))))
                     (if (null? (unbox _%lifts195246%_))
                         _%code195249%_
                         (cons 'begin
                               (let ((__tmp196398 (cons _%code195249%_ '()))
                                     (__tmp196397
                                      (reverse (unbox _%lifts195246%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp196398 __tmp196397)))))))
                (__tmp196395
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp196394
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp196396
             gxc#current-compile-lift
             _%lifts195246%_
             gxc#current-compile-marks
             __tmp196395
             gxc#current-compile-identifiers
             __tmp196394)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx195240%_)
        (let ((_%modules195242%_ (box '())))
          (let ((__tmp196399
                 (##structure-ref _%ctx195240%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules195242%_ __tmp196399))
          (reverse (unbox _%modules195242%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path195220%_ _%code195221%_ _%phi?195222%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path195220%_))
        (gxc#with-output-to-scheme-file
         _%path195220%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp196400
                                           (if _%phi?195222%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp196400)))))))
           (pretty-print _%code195221%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it195226%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path195220%_ _%phi?195222%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp196401
                         (cons 'compile-file (cons _%path195220%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it195226%_ __tmp196401))
                  (_%compile-it195226%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path195231%_ _%code195232%_)
        (let ((_%phi?195234%_ '#f))
          (gxc#compile-scm-file__%
           _%path195231%_
           _%code195232%_
           _%phi?195234%_))))
    (define gxc#compile-scm-file
      (lambda _g196403_
        (let ((_g196402_ (let () (declare (not safe)) (##length _g196403_))))
          (cond ((let () (declare (not safe)) (##fx= _g196402_ 2))
                 (apply gxc#compile-scm-file__0 _g196403_))
                ((let () (declare (not safe)) (##fx= _g196402_ 3))
                 (apply gxc#compile-scm-file__% _g196403_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g196403_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?195121%_)
        (let _%lp195123%_ ((_%rest195125%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts195126%_ '()))
          (let* ((_%rest195127195147%_ _%rest195125%_)
                 (_%else195131195155%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts195126%_)))
                        (reverse _%opts195126%_)))))
            (let ((_%K195141195198%_
                   (lambda (_%rest195196%_)
                     (_%lp195123%_ _%rest195196%_ _%opts195126%_)))
                  (_%K195136195180%_
                   (lambda (_%rest195178%_)
                     (_%lp195123%_ _%rest195178%_ _%opts195126%_)))
                  (_%K195133195162%_
                   (lambda (_%rest195159%_ _%opt195160%_)
                     (_%lp195123%_
                      _%rest195159%_
                      (cons _%opt195160%_ _%opts195126%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest195127195147%_))
                  (let ((_%tl195143195203%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest195127195147%_)))
                        (_%hd195142195201%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest195127195147%_))))
                    (if (equal? _%hd195142195201%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl195143195203%_))
                            (let* ((_%tl195145195206%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl195143195203%_)))
                                   (_%rest195209%_ _%tl195145195206%_))
                              (_%K195141195198%_ _%rest195209%_))
                            (let ((_%opt195170%_ _%hd195142195201%_)
                                  (_%rest195172%_ _%tl195143195203%_))
                              (_%K195133195162%_
                               _%rest195172%_
                               _%opt195170%_)))
                        (if (equal? _%hd195142195201%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl195143195203%_))
                                (let* ((_%tl195140195188%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl195143195203%_)))
                                       (_%rest195191%_ _%tl195140195188%_))
                                  (_%K195136195180%_ _%rest195191%_))
                                (let ((_%opt195170%_ _%hd195142195201%_)
                                      (_%rest195172%_ _%tl195143195203%_))
                                  (_%K195133195162%_
                                   _%rest195172%_
                                   _%opt195170%_)))
                            (let ((_%opt195170%_ _%hd195142195201%_)
                                  (_%rest195172%_ _%tl195143195203%_))
                              (_%K195133195162%_
                               _%rest195172%_
                               _%opt195170%_)))))
                  (_%else195131195155%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?195215%_ '#f)) (gxc#gsc-link-options__% _%phi?195215%_))))
    (define gxc#gsc-link-options
      (lambda _g196405_
        (let ((_g196404_ (let () (declare (not safe)) (##length _g196405_))))
          (cond ((let () (declare (not safe)) (##fx= _g196404_ 0))
                 (apply gxc#gsc-link-options__0 _g196405_))
                ((let () (declare (not safe)) (##fx= _g196404_ 1))
                 (apply gxc#gsc-link-options__% _g196405_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g196405_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords194970%_ _%static?194966194971%_ _%phi?194973%_)
        (let ((_%static?194975%_
               (if (eq? _%static?194966194971%_ absent-value)
                   '#f
                   _%static?194966194971%_)))
          (if _%phi?194973%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp194977%_ ((_%rest194979%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts194980%_ '()))
                (let* ((_%rest194981195007%_ _%rest194979%_)
                       (_%else194986195015%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts194980%_)))
                              (reverse! _%opts194980%_)))))
                  (let ((_%K195001195078%_
                         (lambda (_%rest195075%_ _%opt195076%_)
                           (if _%static?194975%_
                               (_%lp194977%_
                                _%rest195075%_
                                (cons _%opt195076%_
                                      (cons '"-cc-options" _%opts194980%_)))
                               (_%lp194977%_ _%rest195075%_ _%opts194980%_))))
                        (_%K194996195055%_
                         (lambda (_%rest195052%_ _%opt195053%_)
                           (_%lp194977%_
                            _%rest195052%_
                            (cons _%opt195053%_
                                  (cons '"-cc-options" _%opts194980%_)))))
                        (_%K194991195035%_
                         (lambda (_%rest195033%_)
                           (_%lp194977%_ _%rest195033%_ _%opts194980%_)))
                        (_%K194988195021%_
                         (lambda (_%rest195019%_)
                           (_%lp194977%_ _%rest195019%_ _%opts194980%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest194981195007%_))
                        (let ((_%tl195003195083%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest194981195007%_)))
                              (_%hd195002195081%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest194981195007%_))))
                          (if (equal? _%hd195002195081%_ '"-cc-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl195003195083%_))
                                  (let ((_%tl195005195088%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl195003195083%_)))
                                        (_%hd195004195086%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl195003195083%_))))
                                    (if (equal? _%hd195004195086%_ '"-Bstatic")
                                        (let ((_%opt195091%_
                                               _%hd195004195086%_)
                                              (_%rest195093%_
                                               _%tl195005195088%_))
                                          (_%K195001195078%_
                                           _%rest195093%_
                                           _%opt195091%_))
                                        (let ((_%opt195068%_
                                               _%hd195004195086%_)
                                              (_%rest195070%_
                                               _%tl195005195088%_))
                                          (_%K194996195055%_
                                           _%rest195070%_
                                           _%opt195068%_))))
                                  (let ((_%rest195027%_ _%tl195003195083%_))
                                    (_%K194988195021%_ _%rest195027%_)))
                              (if (equal? _%hd195002195081%_ '"-ld-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl195003195083%_))
                                      (let* ((_%tl194995195043%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl195003195083%_)))
                                             (_%rest195046%_
                                              _%tl194995195043%_))
                                        (_%K194991195035%_ _%rest195046%_))
                                      (let ((_%rest195027%_
                                             _%tl195003195083%_))
                                        (_%K194988195021%_ _%rest195027%_)))
                                  (let ((_%rest195027%_ _%tl195003195083%_))
                                    (_%K194988195021%_ _%rest195027%_)))))
                        (_%else194986195015%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords195098%_ _%static?194966195099%_)
        (let ((_%phi?195101%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords195098%_
           _%static?194966195099%_
           _%phi?195101%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g196407_
        (let ((_g196406_ (let () (declare (not safe)) (##length _g196407_))))
          (cond ((let () (declare (not safe)) (##fx= _g196406_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g196407_))
                ((let () (declare (not safe)) (##fx= _g196406_ 3))
                 (apply gxc#gsc-cc-options__%__% _g196407_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g196407_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords195110%_ . _%args195111%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords195110%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords195110%_
                  'static:
                  absent-value))
               _%args195111%_)))
    (define gxc#gsc-cc-options
      (lambda _%args194967195117%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args194967195117%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords194815%_ _%static?194811194816%_ _%phi?194818%_)
        (let ((_%static?194820%_
               (if (eq? _%static?194811194816%_ absent-value)
                   '#f
                   _%static?194811194816%_)))
          (if _%phi?194818%_
              '()
              (let _%lp194822%_ ((_%rest194824%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts194825%_ '()))
                (let* ((_%rest194826194852%_ _%rest194824%_)
                       (_%else194831194860%_
                        (lambda () (reverse! _%opts194825%_))))
                  (let ((_%K194846194923%_
                         (lambda (_%rest194920%_ _%opt194921%_)
                           (if _%static?194820%_
                               (_%lp194822%_
                                _%rest194920%_
                                (cons _%opt194921%_
                                      (cons '"-ld-options" _%opts194825%_)))
                               (_%lp194822%_ _%rest194920%_ _%opts194825%_))))
                        (_%K194841194900%_
                         (lambda (_%rest194897%_ _%opt194898%_)
                           (_%lp194822%_
                            _%rest194897%_
                            (cons _%opt194898%_
                                  (cons '"-ld-options" _%opts194825%_)))))
                        (_%K194836194880%_
                         (lambda (_%rest194878%_)
                           (_%lp194822%_ _%rest194878%_ _%opts194825%_)))
                        (_%K194833194866%_
                         (lambda (_%rest194864%_)
                           (_%lp194822%_ _%rest194864%_ _%opts194825%_))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest194826194852%_))
                        (let ((_%tl194848194928%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest194826194852%_)))
                              (_%hd194847194926%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest194826194852%_))))
                          (if (equal? _%hd194847194926%_ '"-ld-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl194848194928%_))
                                  (let ((_%tl194850194933%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl194848194928%_)))
                                        (_%hd194849194931%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl194848194928%_))))
                                    (if (equal? _%hd194849194931%_ '"-static")
                                        (let ((_%opt194936%_
                                               _%hd194849194931%_)
                                              (_%rest194938%_
                                               _%tl194850194933%_))
                                          (_%K194846194923%_
                                           _%rest194938%_
                                           _%opt194936%_))
                                        (let ((_%opt194913%_
                                               _%hd194849194931%_)
                                              (_%rest194915%_
                                               _%tl194850194933%_))
                                          (_%K194841194900%_
                                           _%rest194915%_
                                           _%opt194913%_))))
                                  (let ((_%rest194872%_ _%tl194848194928%_))
                                    (_%K194833194866%_ _%rest194872%_)))
                              (if (equal? _%hd194847194926%_ '"-cc-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl194848194928%_))
                                      (let* ((_%tl194840194888%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl194848194928%_)))
                                             (_%rest194891%_
                                              _%tl194840194888%_))
                                        (_%K194836194880%_ _%rest194891%_))
                                      (let ((_%rest194872%_
                                             _%tl194848194928%_))
                                        (_%K194833194866%_ _%rest194872%_)))
                                  (let ((_%rest194872%_ _%tl194848194928%_))
                                    (_%K194833194866%_ _%rest194872%_)))))
                        (_%else194831194860%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords194943%_ _%static?194811194944%_)
        (let ((_%phi?194946%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords194943%_
           _%static?194811194944%_
           _%phi?194946%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g196409_
        (let ((_g196408_ (let () (declare (not safe)) (##length _g196409_))))
          (cond ((let () (declare (not safe)) (##fx= _g196408_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g196409_))
                ((let () (declare (not safe)) (##fx= _g196408_ 3))
                 (apply gxc#gsc-ld-options__%__% _g196409_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g196409_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords194955%_ . _%args194956%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords194955%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords194955%_
                  'static:
                  absent-value))
               _%args194956%_)))
    (define gxc#gsc-ld-options
      (lambda _%args194812194962%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args194812194962%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir194806%_)
        (let ((_%user-staticdir194808%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir194806%_
                       '" -I "
                       _%user-staticdir194808%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp194718%_ ((_%rest194720%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts194721%_ '()))
          (let* ((_%rest194722194742%_ _%rest194720%_)
                 (_%else194726194750%_ (lambda () _%opts194721%_)))
            (let ((_%K194736194793%_
                   (lambda (_%rest194791%_)
                     (_%lp194718%_ _%rest194791%_ _%opts194721%_)))
                  (_%K194731194771%_
                   (lambda (_%rest194768%_ _%opt194769%_)
                     (_%lp194718%_
                      _%rest194768%_
                      (let ((__tmp196410
                             (let ((__tmp196411
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt194769%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp196411))))
                        (declare (not safe))
                        (##append _%opts194721%_ __tmp196410)))))
                  (_%K194728194756%_
                   (lambda (_%rest194754%_)
                     (_%lp194718%_ _%rest194754%_ _%opts194721%_))))
              (if (let () (declare (not safe)) (##pair? _%rest194722194742%_))
                  (let ((_%tl194738194798%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194722194742%_)))
                        (_%hd194737194796%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194722194742%_))))
                    (if (equal? _%hd194737194796%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl194738194798%_))
                            (let* ((_%tl194740194801%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl194738194798%_)))
                                   (_%rest194804%_ _%tl194740194801%_))
                              (_%K194736194793%_ _%rest194804%_))
                            (let ((_%rest194762%_ _%tl194738194798%_))
                              (_%K194728194756%_ _%rest194762%_)))
                        (if (equal? _%hd194737194796%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl194738194798%_))
                                (let ((_%tl194735194781%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl194738194798%_)))
                                      (_%hd194734194779%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl194738194798%_))))
                                  (let ((_%opt194784%_ _%hd194734194779%_)
                                        (_%rest194786%_ _%tl194735194781%_))
                                    (_%K194731194771%_
                                     _%rest194786%_
                                     _%opt194784%_)))
                                (let ((_%rest194762%_ _%tl194738194798%_))
                                  (_%K194728194756%_ _%rest194762%_)))
                            (let ((_%rest194762%_ _%tl194738194798%_))
                              (_%K194728194756%_ _%rest194762%_)))))
                  (_%else194726194750%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str194715%_)
        (not (let () (declare (not safe)) (string-empty? _%str194715%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path194708%_ _%phi?194709%_)
        (let ((_%gsc-link-opts194711%_
               (gxc#gsc-link-options__% _%phi?194709%_))
              (_%gsc-cc-opts194712%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?194709%_))
              (_%gsc-ld-opts194713%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?194709%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp196412
                  (let ((__tmp196413
                         (let ((__tmp196414 (cons _%path194708%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp196414
                            _%gsc-link-opts194711%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp196413 _%gsc-ld-opts194713%_))))
             (declare (not safe))
             (__foldr1 cons __tmp196412 _%gsc-cc-opts194712%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx194674%_ _%n194675%_ _%ext194676%_)
        (letrec ((_%module-relative-path194678%_
                  (lambda (_%ctx194706%_)
                    (path-strip-directory
                     (let ((__tmp196415
                            (##structure-ref
                             _%ctx194706%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp196415)))))
                 (_%module-source-directory194679%_
                  (lambda (_%ctx194702%_)
                    (path-directory
                     (let ((_%mpath194704%_
                            (##structure-ref
                             _%ctx194702%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath194704%_)
                           _%mpath194704%_
                           (last _%mpath194704%_))))))
                 (_%section-string194680%_
                  (lambda (_%n194696%_)
                    (if (number? _%n194696%_)
                        (number->string _%n194696%_)
                        (if (symbol? _%n194696%_)
                            (symbol->string _%n194696%_)
                            (if (string? _%n194696%_)
                                _%n194696%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n194696%_)))))))
                 (_%file-name194681%_
                  (lambda (_%path194694%_)
                    (if _%n194675%_
                        (string-append
                         _%path194694%_
                         '"~"
                         (_%section-string194680%_ _%n194675%_)
                         _%ext194676%_)
                        (string-append _%path194694%_ _%ext194676%_))))
                 (_%file-path194682%_
                  (lambda ()
                    (let ((_%$e194688%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e194688%_
                          ((lambda (_%outdir194691%_)
                             (path-expand
                              (_%file-name194681%_
                               (let ((__tmp196416
                                      (##structure-ref
                                       _%ctx194674%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp196416)))
                              _%outdir194691%_))
                           _%$e194688%_)
                          (path-expand
                           (_%file-name194681%_
                            (_%module-relative-path194678%_ _%ctx194674%_))
                           (_%module-source-directory194679%_
                            _%ctx194674%_)))))))
          (let ((_%path194684%_ (_%file-path194682%_)))
            (let ((__tmp196417
                   (lambda ()
                     (let ((__tmp196418 (path-directory _%path194684%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp196418)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp196417))
            _%path194684%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx194655%_)
        (letrec ((_%file-name194657%_
                  (lambda (_%id194672%_)
                    (let ((__tmp196419 (gxc#static-module-name _%id194672%_)))
                      (declare (not safe))
                      (##string-append __tmp196419 '".scm"))))
                 (_%file-path194658%_
                  (lambda ()
                    (let* ((_%file194664%_
                            (_%file-name194657%_
                             (##structure-ref
                              _%ctx194655%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e194666%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e194666%_
                          ((lambda (_%outdir194669%_)
                             (path-expand
                              _%file194664%_
                              (path-expand '"static" _%outdir194669%_)))
                           _%$e194666%_)
                          (path-expand _%file194664%_ '"static"))))))
          (let ((_%path194660%_ (_%file-path194658%_)))
            (let ((__tmp196420
                   (lambda ()
                     (let ((__tmp196421 (path-directory _%path194660%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp196421)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp196420))
            _%path194660%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx194648%_ _%opts194649%_)
        (let ((_%$e194651%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts194649%_))))
          (if _%$e194651%_
              (values _%$e194651%_)
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx194648%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr194638%_)
        (if (string? _%idstr194638%_)
            (let* ((_%str194641%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr194638%_)))
                   (_%strs194643%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str194641%_ '#\/))))
              (declare (not safe))
              (string-join _%strs194643%_ '"__"))
            (if (symbol? _%idstr194638%_)
                (gxc#static-module-name (symbol->string _%idstr194638%_))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr194638%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp196422
               (let ((__tmp196423 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp196423 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp196422))))
    (define gxc#invoke__%
      (lambda (_%@@keywords194602%_
               _%stdout-redirection194598194603%_
               _%stderr-redirection194599194605%_
               _%program194607%_
               _%args194608%_)
        (let* ((_%stdout-redirection194610%_
                (if (eq? _%stdout-redirection194598194603%_ absent-value)
                    '#f
                    _%stdout-redirection194598194603%_))
               (_%stderr-redirection194612%_
                (if (eq? _%stderr-redirection194599194605%_ absent-value)
                    '#f
                    _%stderr-redirection194599194605%_)))
          (let ((__tmp196424 (cons _%program194607%_ _%args194608%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp196424))
          (let* ((_%proc194614%_
                  (open-process
                   (cons 'path:
                         (cons _%program194607%_
                               (cons 'arguments:
                                     (cons _%args194608%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection194610%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection194612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output194619%_
                  (if (or _%stdout-redirection194610%_
                          _%stderr-redirection194612%_)
                      (read-line _%proc194614%_ '#f)
                      '#f))
                 (_%status194622%_ (process-status _%proc194614%_)))
            (let () (declare (not safe)) (##close-port _%proc194614%_))
            (if (zero? _%status194622%_)
                '#!void
                (begin
                  (display _%output194619%_)
                  (let ((__tmp196425 (cons _%program194607%_ _%args194608%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp196425
                     _%status194622%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords194627%_ . _%args194628%_)
        (apply gxc#invoke__%
               _%@@keywords194627%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords194627%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords194627%_
                  'stderr-redirection:
                  absent-value))
               _%args194628%_)))
    (define gxc#invoke
      (lambda _%args194600194634%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args194600194634%_)))))
