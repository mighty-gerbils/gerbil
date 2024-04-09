(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1712696219)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp196507 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp196507))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp196508 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp196508))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path196364%_ _%fun196365%_)
        (with-output-to-file
         (cons 'path: (cons _%path196364%_ gxc#scheme-file-settings))
         _%fun196365%_)))
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
      (lambda (_%gerbil-libdir196359%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir196359%_)))
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
      (lambda (_%dir196357%_) (delete-file-or-directory _%dir196357%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath196330%_ _%opts196331%_)
        (if (let () (declare (not safe)) (string? _%srcpath196330%_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath196330%_)))
        (let ((_%outdir196333%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts196331%_)))
              (_%invoke-gsc?196334%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts196331%_)))
              (_%gsc-options196335%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts196331%_)))
              (_%keep-scm?196336%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts196331%_)))
              (_%verbosity196337%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts196331%_)))
              (_%optimize196338%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts196331%_)))
              (_%debug196339%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts196331%_)))
              (_%gen-ssxi196340%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts196331%_)))
              (_%parallel?196341%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts196331%_))))
          (if _%outdir196333%_
              (let ((__tmp196509
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir196333%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp196509))
              '#!void)
          (if _%optimize196338%_
              (let ((__tmp196510
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp196510))
              '#!void)
          (let ((__tmp196513
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath196330%_))
                   (let ((__tmp196514
                          (let ((__tmp196515
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0
                                      _%srcpath196330%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp196515))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp196514))))
                (__tmp196512
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp196511
                 (cons 'compile-module (cons _%srcpath196330%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp196513
             gxc#current-compile-output-dir
             _%outdir196333%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?196334%_
             gxc#current-compile-gsc-options
             _%gsc-options196335%_
             gxc#current-compile-keep-scm
             _%keep-scm?196336%_
             gxc#current-compile-verbose
             _%verbosity196337%_
             gxc#current-compile-optimize
             _%optimize196338%_
             gxc#current-compile-debug
             _%debug196339%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi196340%_
             gxc#current-compile-timestamp
             __tmp196512
             gxc#current-compile-context
             __tmp196511
             gxc#current-compile-parallel
             _%parallel?196341%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath196350%_)
        (let ((_%opts196352%_ '()))
          (declare (not safe))
          (gxc#compile-module__% _%srcpath196350%_ _%opts196352%_))))
    (define gxc#compile-module
      (lambda _g196517_
        (let ((_g196516_ (let () (declare (not safe)) (##length _g196517_))))
          (cond ((let () (declare (not safe)) (##fx= _g196516_ 1))
                 (apply (lambda (_%srcpath196350%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _%srcpath196350%_)))
                        _g196517_))
                ((let () (declare (not safe)) (##fx= _g196516_ 2))
                 (apply (lambda (_%srcpath196354%_ _%opts196355%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _%srcpath196354%_
                             _%opts196355%_)))
                        _g196517_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g196517_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath196305%_ _%opts196306%_)
        (if (let () (declare (not safe)) (string? _%srcpath196305%_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath196305%_)))
        (let ((_%outdir196308%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts196306%_)))
              (_%invoke-gsc?196309%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts196306%_)))
              (_%gsc-options196310%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts196306%_)))
              (_%keep-scm?196311%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts196306%_)))
              (_%verbosity196312%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts196306%_)))
              (_%debug196313%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts196306%_)))
              (_%parallel?196314%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'parallel: _%opts196306%_))))
          (if _%outdir196308%_
              (let ((__tmp196518
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir196308%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp196518))
              '#!void)
          (let ((__tmp196521
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath196305%_))
                   (let ((__tmp196522
                          (let ((__tmp196523
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0
                                      _%srcpath196305%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp196523))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp196522
                      _%opts196306%_))))
                (__tmp196520
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp196519 (cons 'compile-exe (cons _%srcpath196305%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp196521
             gxc#current-compile-output-dir
             _%outdir196308%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?196309%_
             gxc#current-compile-gsc-options
             _%gsc-options196310%_
             gxc#current-compile-keep-scm
             _%keep-scm?196311%_
             gxc#current-compile-verbose
             _%verbosity196312%_
             gxc#current-compile-debug
             _%debug196313%_
             gxc#current-compile-timestamp
             __tmp196520
             gxc#current-compile-context
             __tmp196519
             gxc#current-compile-parallel
             _%parallel?196314%_
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath196322%_)
        (let ((_%opts196324%_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _%srcpath196322%_ _%opts196324%_))))
    (define gxc#compile-exe
      (lambda _g196525_
        (let ((_g196524_ (let () (declare (not safe)) (##length _g196525_))))
          (cond ((let () (declare (not safe)) (##fx= _g196524_ 1))
                 (apply (lambda (_%srcpath196322%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _%srcpath196322%_)))
                        _g196525_))
                ((let () (declare (not safe)) (##fx= _g196524_ 2))
                 (apply (lambda (_%srcpath196326%_ _%opts196327%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__%
                             _%srcpath196326%_
                             _%opts196327%_)))
                        _g196525_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g196525_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx196301%_ _%opts196302%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts196302%_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _%ctx196301%_
               _%opts196302%_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _%ctx196301%_
               _%opts196302%_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx196091%_ _%opts196092%_)
        (letrec ((_%generate-stub196094%_
                  (lambda (_%builtin-modules196297%_)
                    (let ((_%mod-main196299%_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _%ctx196091%_ 'main))))
                      (let ((__tmp196526
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules196297%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp196526))
                      (let ((__tmp196527
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main196299%_
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
                        (##write __tmp196527))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts196095%_
                  (lambda (_%gerbil-libdir196295%_)
                    (let ((__tmp196528
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir196295%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp196528 read))))
                 (_%replace-extension196096%_
                  (lambda (_%path196292%_ _%ext196293%_)
                    (string-append
                     (path-strip-extension _%path196292%_)
                     _%ext196293%_)))
                 (_%userlib-module?196097%_
                  (lambda (_%ctx196290%_)
                    (if (let ((__tmp196529
                               (let ()
                                 (declare (not safe))
                                 (_%exclude-module?196099%_ _%ctx196290%_))))
                          (declare (not safe))
                          (not __tmp196529))
                        (let ((__tmp196530
                               (let ()
                                 (declare (not safe))
                                 (_%libgerbil-module?196098%_ _%ctx196290%_))))
                          (declare (not safe))
                          (not __tmp196530))
                        '#f)))
                 (_%libgerbil-module?196098%_
                  (lambda (_%ctx196283%_)
                    (let ((_%id-str196285%_
                           (symbol->string
                            (##structure-ref
                             _%ctx196283%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp196531
                                 (let ()
                                   (declare (not safe))
                                   (_%exclude-module?196099%_
                                    _%id-str196285%_))))
                            (declare (not safe))
                            (not __tmp196531))
                          (let ((_%$e196287%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str196285%_))))
                            (if _%$e196287%_
                                _%$e196287%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str196285%_))))
                          '#f))))
                 (_%exclude-module?196099%_
                  (lambda (_%ctx-or-str196279%_)
                    (let ((_%str196281%_
                           (if (let ()
                                 (declare (not safe))
                                 (string? _%ctx-or-str196279%_))
                               _%ctx-or-str196279%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str196279%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (string-prefix? '"gerbil/core" _%str196281%_))))
                 (_%not-file-empty?196100%_
                  (lambda (_%path196277%_)
                    (let ((__tmp196532
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _%path196277%_))))
                      (declare (not safe))
                      (not __tmp196532))))
                 (_%fold-libgerbil-runtime-scm196101%_
                  (lambda (_%gerbil-staticdir196270%_ _%libgerbil-scm196271%_)
                    (let* ((_%gerbil-runtime-scm196275%_
                            (let ((__tmp196533
                                   (lambda (_%rtm196273%_)
                                     (path-expand
                                      (let ((__tmp196534
                                             (let ((__tmp196535
                                                    (let ()
                                                      (declare (not safe))
                                                      (string-split
                                                       _%rtm196273%_
                                                       '#\/))))
                                               (declare (not safe))
                                               (string-join
                                                __tmp196535
                                                '"__"))))
                                        (declare (not safe))
                                        (##string-append __tmp196534 '".scm"))
                                      _%gerbil-staticdir196270%_))))
                              (declare (not safe))
                              (##map __tmp196533 gxc#gerbil-runtime-modules)))
                           (__tmp196536
                            (append _%gerbil-runtime-scm196275%_
                                    _%libgerbil-scm196271%_)))
                      (declare (not safe))
                      (_%remove-duplicates196102%_ __tmp196536))))
                 (_%remove-duplicates196102%_
                  (lambda (_%strlst196230%_)
                    (let _%loop196232%_ ((_%rest196234%_ _%strlst196230%_)
                                         (_%result196235%_ '()))
                      (let* ((_%rest196236196244%_ _%rest196234%_)
                             (_%else196238196252%_
                              (lambda () (reverse! _%result196235%_)))
                             (_%K196240196258%_
                              (lambda (_%rest196255%_ _%path196256%_)
                                (if (member _%path196256%_ _%result196235%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%loop196232%_
                                       _%rest196255%_
                                       _%result196235%_))
                                    (let ((__tmp196537
                                           (cons _%path196256%_
                                                 _%result196235%_)))
                                      (declare (not safe))
                                      (_%loop196232%_
                                       _%rest196255%_
                                       __tmp196537))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest196236196244%_))
                            (let ((_%hd196241196261%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest196236196244%_)))
                                  (_%tl196242196263%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest196236196244%_))))
                              (let* ((_%path196266%_ _%hd196241196261%_)
                                     (_%rest196268%_ _%tl196242196263%_))
                                (declare (not safe))
                                (_%K196240196258%_
                                 _%rest196268%_
                                 _%path196266%_)))
                            (let ()
                              (declare (not safe))
                              (_%else196238196252%_)))))))
                 (_%compile-stub196103%_
                  (lambda (_%output-scm196110%_ _%output-bin196111%_)
                    (let* ((_%gerbil-home196113%_
                            (let ((__tmp196538
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp196538)))
                           (_%gerbil-libdir196115%_
                            (path-expand '"lib" _%gerbil-home196113%_))
                           (_%gerbil-staticdir196117%_
                            (path-expand '"static" _%gerbil-libdir196115%_))
                           (_%deps196119%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _%ctx196091%_)))
                           (_%libgerbil-deps196121%_
                            (filter _%libgerbil-module?196098%_
                                    _%deps196119%_))
                           (_%libgerbil-scm196123%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps196121%_)))
                           (_%libgerbil-scm196125%_
                            (let ()
                              (declare (not safe))
                              (_%fold-libgerbil-runtime-scm196101%_
                               _%gerbil-staticdir196117%_
                               _%libgerbil-scm196123%_)))
                           (_%libgerbil-c196131%_
                            (map (lambda (_%g196126196128%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%replace-extension196096%_
                                      _%g196126196128%_
                                      '".c")))
                                 _%libgerbil-scm196125%_))
                           (_%libgerbil-o196137%_
                            (map (lambda (_%g196132196134%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%replace-extension196096%_
                                      _%g196132196134%_
                                      '".o")))
                                 _%libgerbil-scm196125%_))
                           (_%src-deps196139%_
                            (filter _%userlib-module?196097%_ _%deps196119%_))
                           (_%src-deps-scm196141%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps196139%_)))
                           (_%src-deps-scm196143%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?196100%_
                               _%src-deps-scm196141%_)))
                           (_%src-deps-scm196145%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm196143%_)))
                           (_%src-deps-c196151%_
                            (let ((__tmp196539
                                   (lambda (_%g196146196148%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%replace-extension196096%_
                                        _%g196146196148%_
                                        '".c")))))
                              (declare (not safe))
                              (##map __tmp196539 _%src-deps-scm196145%_)))
                           (_%src-deps-o196157%_
                            (let ((__tmp196540
                                   (lambda (_%g196152196154%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%replace-extension196096%_
                                        _%g196152196154%_
                                        '".o")))))
                              (declare (not safe))
                              (##map __tmp196540 _%src-deps-scm196145%_)))
                           (_%src-bin-scm196159%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _%ctx196091%_)))
                           (_%src-bin-scm196161%_
                            (path-expand _%src-bin-scm196159%_))
                           (_%src-bin-c196163%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension196096%_
                               _%src-bin-scm196161%_
                               '".c")))
                           (_%src-bin-o196165%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension196096%_
                               _%src-bin-scm196161%_
                               '".o")))
                           (_%output-bin196167%_
                            (path-expand _%output-bin196111%_))
                           (_%output-scm196169%_
                            (path-expand _%output-scm196110%_))
                           (_%output-c196171%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension196096%_
                               _%output-scm196169%_
                               '".c")))
                           (_%output-o196173%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension196096%_
                               _%output-scm196169%_
                               '".o")))
                           (_%output_-c196175%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension196096%_
                               _%output-scm196169%_
                               '"_.c")))
                           (_%output_-o196177%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension196096%_
                               _%output-scm196169%_
                               '"_.o")))
                           (_%gsc-link-opts196179%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_%gsc-cc-opts196181%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__%__0 '#f '#t)))
                           (_%gsc-static-opts196183%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _%gerbil-staticdir196117%_)))
                           (_%output-ld-opts196185%_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_%libgerbil-ld-opts196187%_
                            (let ()
                              (declare (not safe))
                              (_%get-libgerbil-ld-opts196095%_
                               _%gerbil-libdir196115%_)))
                           (_%rpath196189%_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _%gerbil-libdir196115%_)))
                           (_%builtin-modules196193%_
                            (let ((__tmp196541
                                   (let ((__tmp196542
                                          (let ((__tmp196544
                                                 (lambda (_%mod196191%_)
                                                   (symbol->string
                                                    (##structure-ref
                                                     _%mod196191%_
                                                     '1
                                                     gx#expander-context::t
                                                     '#f))))
                                                (__tmp196543
                                                 (cons _%ctx196091%_
                                                       _%deps196119%_)))
                                            (declare (not safe))
                                            (##map __tmp196544 __tmp196543))))
                                     (declare (not safe))
                                     (##append
                                      gxc#gerbil-runtime-modules
                                      __tmp196542))))
                              (declare (not safe))
                              (_%remove-duplicates196102%_ __tmp196541))))
                      (letrec ((_%compile-obj196196%_
                                (lambda (_%scm-path196203%_ _%c-path196204%_)
                                  (let* ((_%o-path196206%_
                                          (let ()
                                            (declare (not safe))
                                            (_%replace-extension196096%_
                                             _%c-path196204%_
                                             '".o")))
                                         (_%lock196208%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path196206%_
                                             '".lock")))
                                         (_%locked196210%_ '#f)
                                         (_%unlock196213%_
                                          (lambda ()
                                            (close-port _%locked196210%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock196208%_)))))
                                    (let _%retry196216%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock196208%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (let ()
                                              (declare (not safe))
                                              (_%retry196216%_)))
                                          (begin
                                            (set! _%locked196210%_
                                                  (let ((__tmp196545
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock196208%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp196545)))
                                            (if _%locked196210%_
                                                '#!void
                                                (let ()
                                                  (declare (not safe))
                                                  (_%retry196216%_))))))
                                    (let ((__tmp196547
                                           (lambda ()
                                             (if (or (let ((__tmp196548
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##file-exists?
                                                               _%o-path196206%_))))
                                                       (declare (not safe))
                                                       (not __tmp196548))
                                                     (let ()
                                                       (declare (not safe))
                                                       (not _%scm-path196203%_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path196203%_
                                                        _%o-path196206%_)))
                                                 (let ((_%gsc-cc-opts196227%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#gsc-cc-options__%__0
                                                           '#f
                                                           '#f))))
                                                   (let ((__tmp196552
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#gerbil-gsc)))
                                                         (__tmp196549
                                                          (cons '"-obj"
                                                                (let ((__tmp196550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp196551 (cons _%c-path196204%_ '())))
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  __tmp196551
                                  _%gsc-static-opts196183%_))))
                          (declare (not safe))
                          (__foldr1 cons __tmp196550 _%gsc-cc-opts196227%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#invoke__%
                                                      '#f
                                                      absent-value
                                                      absent-value
                                                      __tmp196552
                                                      __tmp196549)))
                                                 '#!void)))
                                          (__tmp196546
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (_%unlock196213%_)))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp196547
                                       __tmp196546))))))
                        (let ((__tmp196553
                               (lambda ()
                                 (let ((__tmp196554
                                        (path-directory _%output-bin196167%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp196554)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp196553))
                        (let ((__tmp196555
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (_%generate-stub196094%_
                                    _%builtin-modules196193%_)))))
                          (declare (not safe))
                          (gxc#with-output-to-scheme-file
                           _%output-scm196169%_
                           __tmp196555))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it196201%_
                                   (lambda ()
                                     (let ((__tmp196560
                                            (let ()
                                              (declare (not safe))
                                              (gxc#gerbil-gsc)))
                                           (__tmp196556
                                            (cons '"-link"
                                                  (let ((__tmp196557
                                                         (let ((__tmp196558
                                                                (let ((__tmp196559
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%src-bin-scm196161%_
                                     (cons _%output-scm196169%_ '()))))
                          (declare (not safe))
                          (__foldr1 cons __tmp196559 _%src-deps-scm196145%_))))
                   (declare (not safe))
                   (__foldr1 cons __tmp196558 _%libgerbil-c196131%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__foldr1
                                                     cons
                                                     __tmp196557
                                                     _%gsc-link-opts196179%_)))))
                                       (declare (not safe))
                                       (gxc#invoke__%
                                        '#f
                                        absent-value
                                        absent-value
                                        __tmp196560
                                        __tmp196556))
                                     (for-each
                                      _%compile-obj196196%_
                                      (let ((__tmp196561
                                             (cons _%src-bin-scm196161%_
                                                   (cons _%output-scm196169%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp196561
                                         _%src-deps-scm196145%_))
                                      (let ((__tmp196562
                                             (cons _%src-bin-c196163%_
                                                   (cons _%output-c196171%_
                                                         (cons _%output_-c196175%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp196562
                                         _%src-deps-c196151%_)))
                                     (let ((__tmp196569
                                            (let ()
                                              (declare (not safe))
                                              (gxc#gerbil-gcc)))
                                           (__tmp196563
                                            (cons '"-w"
                                                  (cons '"-o"
                                                        (cons _%output-bin196167%_
                                                              (let ((__tmp196564
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%src-bin-o196165%_
                                   (cons _%output-o196173%_
                                         (cons _%output_-o196177%_
                                               (let ((__tmp196565
                                                      (let ((__tmp196566
                                                             (let ((__tmp196568
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons '"-L"
                                  (cons _%gerbil-libdir196115%_
                                        (cons '"-lgambit"
                                              _%libgerbil-ld-opts196187%_))))
                           (__tmp196567
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#gerbil-enable-shared?))
                                (cons _%rpath196189%_ '())
                                '())))
                       (declare (not safe))
                       (__foldr1 cons __tmp196568 __tmp196567))))
                (declare (not safe))
                (__foldr1 cons __tmp196566 _%output-ld-opts196185%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldr1
                                                  cons
                                                  __tmp196565
                                                  _%libgerbil-o196137%_)))))))
                        (declare (not safe))
                        (__foldr1 cons __tmp196564 _%src-deps-o196157%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (gxc#invoke__%
                                        '#f
                                        absent-value
                                        absent-value
                                        __tmp196569
                                        __tmp196563))
                                     (let ((__tmp196570
                                            (cons _%output-c196171%_
                                                  (cons _%output_-c196175%_
                                                        (cons _%output-o196173%_
                                                              (cons _%output_-o196177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp196570)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it196201%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%compile-it196201%_))))
                            '#!void))))))
          (let* ((_%output-bin196105%_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file
                     _%ctx196091%_
                     _%opts196092%_)))
                 (_%output-scm196107%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin196105%_ '"__exe.scm"))))
            (declare (not safe))
            (_%compile-stub196103%_
             _%output-scm196107%_
             _%output-bin196105%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx195913%_ _%opts195914%_)
        (letrec ((_%reset-declare195916%_
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
                 (_%generate-stub195917%_
                  (lambda (_%deps196082%_)
                    (let ((_%mod-main196084%_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _%ctx195913%_ 'main)))
                          (_%reset-decl196085%_
                           (let ()
                             (declare (not safe))
                             (_%reset-declare195916%_)))
                          (_%user-decl196086%_
                           (let ()
                             (declare (not safe))
                             (_%user-declare195918%_))))
                      (for-each
                       (lambda (_%dep196088%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl196085%_))
                         (newline)
                         (if _%user-decl196086%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl196086%_))
                               (newline))
                             '#!void)
                         (let ((__tmp196571
                                (cons 'include (cons _%dep196088%_ '()))))
                           (declare (not safe))
                           (##write __tmp196571))
                         (newline))
                       _%deps196082%_)
                      (let ((__tmp196572
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main196084%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp196572))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare195918%_
                  (lambda ()
                    (let* ((_%gsc-opts195987%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts195914%_)))
                           (_%gsc-prelude195989%_
                            (if _%gsc-opts195987%_
                                (member '"-prelude" _%gsc-opts195987%_)
                                '#f))
                           (_%gsc-prelude195991%_
                            (if _%gsc-prelude195989%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude195989%_)))
                                '#f)))
                      (let _%lp195994%_ ((_%rest195996%_
                                          (cons _%gsc-prelude195991%_ '()))
                                         (_%user-decls195997%_ '()))
                        (let* ((_%rest195998196006%_ _%rest195996%_)
                               (_%else196000196014%_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _%user-decls195997%_))
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls195997%_)))))
                               (_%K196002196070%_
                                (lambda (_%rest196017%_ _%expr196018%_)
                                  (let* ((_%expr196019196031%_ _%expr196018%_)
                                         (_%else196022196039%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_%lp195994%_
                                               _%rest196017%_
                                               _%user-decls195997%_)))))
                                    (let ((_%K196027196060%_
                                           (lambda (_%decls196058%_)
                                             (let ((__tmp196573
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldl1
                                                       cons
                                                       _%user-decls195997%_
                                                       _%decls196058%_))))
                                               (declare (not safe))
                                               (_%lp195994%_
                                                _%rest196017%_
                                                __tmp196573))))
                                          (_%K196024196045%_
                                           (lambda (_%exprs196043%_)
                                             (let ((__tmp196574
                                                    (append _%exprs196043%_
                                                            _%rest196017%_)))
                                               (declare (not safe))
                                               (_%lp195994%_
                                                __tmp196574
                                                _%user-decls195997%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr196019196031%_))
                                          (let ((_%tl196029196065%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr196019196031%_)))
                                                (_%hd196028196063%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr196019196031%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd196028196063%_
                                                         'declare))
                                                (let ((_%decls196068%_
                                                       _%tl196029196065%_))
                                                  (declare (not safe))
                                                  (_%K196027196060%_
                                                   _%decls196068%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd196028196063%_
                                                             'begin))
                                                    (let ((_%exprs196053%_
                                                           _%tl196029196065%_))
                                                      (declare (not safe))
                                                      (_%K196024196045%_
                                                       _%exprs196053%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else196022196039%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else196022196039%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest195998196006%_))
                              (let ((_%hd196003196073%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest195998196006%_)))
                                    (_%tl196004196075%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest195998196006%_))))
                                (let* ((_%expr196078%_ _%hd196003196073%_)
                                       (_%rest196080%_ _%tl196004196075%_))
                                  (declare (not safe))
                                  (_%K196002196070%_
                                   _%rest196080%_
                                   _%expr196078%_)))
                              (let ()
                                (declare (not safe))
                                (_%else196000196014%_))))))))
                 (_%compile-stub195919%_
                  (lambda (_%output-scm195926%_ _%output-bin195927%_)
                    (let* ((_%gerbil-home195929%_
                            (let ((__tmp196575
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp196575)))
                           (_%gerbil-libdir195931%_
                            (path-expand '"lib" _%gerbil-home195929%_))
                           (_%runtime195933%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp195935%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home195929%_))
                           (_%include-gambit-sharp195937%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp195935%_
                               '"\")")))
                           (_%bin-scm195939%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _%ctx195913%_)))
                           (_%deps195941%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _%ctx195913%_)))
                           (_%deps195943%_
                            (map gxc#find-static-module-file _%deps195941%_))
                           (_%deps195948%_
                            (let ((__tmp196576
                                   (lambda (_%$obj195945%_)
                                     (let ((__tmp196577
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty?
                                               _%$obj195945%_))))
                                       (declare (not safe))
                                       (not __tmp196577)))))
                              (declare (not safe))
                              (##filter __tmp196576 _%deps195943%_)))
                           (_%deps195952%_
                            (let ((__tmp196578
                                   (lambda (_%f195950%_)
                                     (let ((__tmp196579
                                            (let ()
                                              (declare (not safe))
                                              (##member
                                               _%f195950%_
                                               _%runtime195933%_))))
                                       (declare (not safe))
                                       (not __tmp196579)))))
                              (declare (not safe))
                              (##filter __tmp196578 _%deps195948%_)))
                           (_%output-base195954%_
                            (let ((__tmp196580
                                   (path-strip-extension
                                    _%output-scm195926%_)))
                              (declare (not safe))
                              (##string-append __tmp196580)))
                           (_%output-c195956%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195954%_ '".c")))
                           (_%output-o195958%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195954%_ '".o")))
                           (_%output-c_195960%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195954%_ '"_.c")))
                           (_%output-o_195962%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base195954%_ '"_.o")))
                           (_%gsc-link-opts195964%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_%gsc-cc-opts195966%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__%__0 '#f '#t)))
                           (_%gsc-static-opts195968%_
                            (let ((__tmp196581
                                   (path-expand
                                    '"static"
                                    _%gerbil-libdir195931%_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp196581)))
                           (_%output-ld-opts195970%_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_%gsc-gx-macros195972%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp195937%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp195937%_
                                            '()))))
                           (_%gsc-link-opts195974%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts195964%_
                               _%gsc-gx-macros195972%_)))
                           (_%rpath195976%_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _%gerbil-libdir195931%_)))
                           (_%default-ld-options195978%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp196582
                             (lambda ()
                               (let ((__tmp196583
                                      (path-directory _%output-bin195927%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp196583)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp196582))
                      (let ((__tmp196584
                             (lambda ()
                               (let ((__tmp196585
                                      (let ((__tmp196586
                                             (let ((__tmp196587
                                                    (cons _%bin-scm195939%_
                                                          '())))
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp196587
                                                _%deps195952%_))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp196586
                                         _%runtime195933%_))))
                                 (declare (not safe))
                                 (_%generate-stub195917%_ __tmp196585)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%output-scm195926%_
                         __tmp196584))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it195984%_
                                 (lambda ()
                                   (let ((__tmp196590
                                          (let ()
                                            (declare (not safe))
                                            (gxc#gerbil-gsc)))
                                         (__tmp196588
                                          (cons '"-link"
                                                (cons '"-o"
                                                      (cons _%output-c_195960%_
                                                            (let ((__tmp196589
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%output-scm195926%_ '())))
                      (declare (not safe))
                      (__foldr1 cons __tmp196589 _%gsc-link-opts195974%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      __tmp196590
                                      __tmp196588))
                                   (let ((__tmp196594
                                          (let ()
                                            (declare (not safe))
                                            (gxc#gerbil-gsc)))
                                         (__tmp196591
                                          (cons '"-obj"
                                                (let ((__tmp196592
                                                       (let ((__tmp196593
                                                              (cons _%output-c195956%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%output-c_195960%_ '()))))
                 (declare (not safe))
                 (__foldr1 cons __tmp196593 _%gsc-static-opts195968%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp196592
                                                   _%gsc-cc-opts195966%_)))))
                                     (declare (not safe))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      __tmp196594
                                      __tmp196591))
                                   (let ((__tmp196599
                                          (let ()
                                            (declare (not safe))
                                            (gxc#gerbil-gcc)))
                                         (__tmp196595
                                          (cons '"-w"
                                                (cons '"-o"
                                                      (cons _%output-bin195927%_
                                                            (cons _%output-o195958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%output-o_195962%_
                                (let ((__tmp196596
                                       (let ((__tmp196598
                                              (cons '"-L"
                                                    (cons _%gerbil-libdir195931%_
                                                          (cons '"-lgambit"
                                                                _%default-ld-options195978%_))))
                                             (__tmp196597
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gxc#gerbil-enable-shared?))
                                                  (cons _%rpath195976%_ '())
                                                  '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp196598
                                          __tmp196597))))
                                  (declare (not safe))
                                  (__foldr1
                                   cons
                                   __tmp196596
                                   _%output-ld-opts195970%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      __tmp196599
                                      __tmp196595)))))
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it195984%_))
                                (let ()
                                  (declare (not safe))
                                  (_%compile-it195984%_))))
                          '#!void)))))
          (let* ((_%output-bin195921%_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file
                     _%ctx195913%_
                     _%opts195914%_)))
                 (_%output-scm195923%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin195921%_ '"__exe.scm"))))
            (declare (not safe))
            (_%compile-stub195919%_
             _%output-scm195923%_
             _%output-bin195921%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx195862%_ _%id195863%_)
        (let ((_%$e195909%_
               (let ((__tmp196601
                      (lambda (_%e195864195866%_)
                        (let* ((_%g195868195878%_ _%e195864195866%_)
                               (_%else195870195886%_ (lambda () '#f))
                               (_%K195872195890%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g195868195878%_
                                 'gx#module-export::t))
                              (let* ((_%e195873195893%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g195868195878%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e195874195896%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g195868195878%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e195875195899%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g195868195878%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e195875195899%_ '0))
                                    (let ((_%e195876195902%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g195868195878%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g195904195906%_)
                                             (eq? _%g195904195906%_
                                                  _%id195863%_))
                                           _%e195876195902%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%K195872195890%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else195870195886%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else195870195886%_))))
                              (let ()
                                (declare (not safe))
                                (_%else195870195886%_))))))
                     (__tmp196600
                      (##structure-ref
                       _%ctx195862%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp196601 __tmp196600))))
          (if _%$e195909%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e195909%_))
              (let () '#f)))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx195853%_ _%id195854%_)
        (let ((_%$e195856%_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _%ctx195853%_ _%id195854%_))))
          (if _%$e195856%_
              ((lambda (_%bind195859%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind195859%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id195854%_)))
                 (##structure-ref _%bind195859%_ '1 gx#binding::t '#f))
               _%$e195856%_)
              (let ((__tmp196602
                     (##structure-ref
                      _%ctx195853%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp196602
                 _%id195854%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx195719%_)
        (letrec* ((_%ht195721%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template195722%_
                   (lambda (_%in195798%_ _%phi195799%_)
                     (let ((_%iphi195801%_
                            (fx+ _%phi195799%_
                                 (##direct-structure-ref
                                  _%in195798%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports195802%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in195798%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp195804%_ ((_%rest195806%_ _%imports195802%_)
                                          (_%r195807%_ '()))
                         (let* ((_%rest195808195816%_ _%rest195806%_)
                                (_%else195810195824%_ (lambda () _%r195807%_))
                                (_%K195812195841%_
                                 (lambda (_%rest195827%_ _%in195828%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in195828%_
                                          'gx#module-context::t))
                                       (let ()
                                         (if (let ()
                                               (declare (not safe))
                                               (##fxzero? _%iphi195801%_))
                                             (let ((__tmp196603
                                                    (cons _%in195828%_
                                                          _%r195807%_)))
                                               (declare (not safe))
                                               (_%lp195804%_
                                                _%rest195827%_
                                                __tmp196603))
                                             (let ()
                                               (declare (not safe))
                                               (_%lp195804%_
                                                _%rest195827%_
                                                _%r195807%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in195828%_
                                              'gx#module-import::t))
                                           (let ((_%iphi195832%_
                                                  (fx+ _%phi195799%_
                                                       (##direct-structure-ref
                                                        _%in195828%_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi195832%_))
                                                 (let ((__tmp196604
                                                        (cons (##direct-structure-ref
                                                               (##direct-structure-ref
                                                                _%in195828%_
                                                                '1
                                                                gx#module-import::t
                                                                '#f)
                                                               '1
                                                               gx#module-export::t
                                                               '#f)
                                                              _%r195807%_)))
                                                   (declare (not safe))
                                                   (_%lp195804%_
                                                    _%rest195827%_
                                                    __tmp196604))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%lp195804%_
                                                    _%rest195827%_
                                                    _%r195807%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in195828%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi195835%_
                                                      (fx+ _%iphi195801%_
                                                           (##direct-structure-ref
                                                            _%in195828%_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi195835%_))
                                                     (let ((__tmp196605
                                                            (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%in195828%_
                           '1
                           gx#import-set::t
                           '#f)
                          _%r195807%_)))
               (declare (not safe))
               (_%lp195804%_ _%rest195827%_ __tmp196605))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi195835%_))
                                                         (let ((__tmp196606
                                                                (let ((__tmp196607
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_%import-set-template195722%_
                                  _%in195828%_
                                  _%iphi195801%_))))
                          (declare (not safe))
                          (__foldl1 cons _%r195807%_ __tmp196607))))
                   (declare (not safe))
                   (_%lp195804%_ _%rest195827%_ __tmp196606))
                 (let ()
                   (declare (not safe))
                   (_%lp195804%_ _%rest195827%_ _%r195807%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp195804%_
                                                  _%rest195827%_
                                                  _%r195807%_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest195808195816%_))
                               (let ((_%hd195813195844%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest195808195816%_)))
                                     (_%tl195814195846%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest195808195816%_))))
                                 (let* ((_%in195849%_ _%hd195813195844%_)
                                        (_%rest195851%_ _%tl195814195846%_))
                                   (declare (not safe))
                                   (_%K195812195841%_
                                    _%rest195851%_
                                    _%in195849%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%else195810195824%_))))))))
                  (_%find-deps195723%_
                   (lambda (_%rest195731%_ _%deps195732%_)
                     (let* ((_%rest195733195741%_ _%rest195731%_)
                            (_%else195735195749%_ (lambda () _%deps195732%_))
                            (_%K195737195786%_
                             (lambda (_%rest195752%_ _%hd195753%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd195753%_
                                      'gx#module-context::t))
                                   (let ((_%id195756%_
                                          (##structure-ref
                                           _%hd195753%_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_%imports195757%_
                                          (##structure-ref
                                           _%hd195753%_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get
                                            _%ht195721%_
                                            _%id195756%_))
                                         (let ()
                                           (declare (not safe))
                                           (_%find-deps195723%_
                                            _%rest195752%_
                                            _%deps195732%_))
                                         (let ((_%$e195760%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd195753%_))))
                                           (if _%$e195760%_
                                               ((lambda (_%pre195763%_)
                                                  (let ((_%xdeps195765%_
                                                         (let ((__tmp196608
                                                                (cons _%pre195763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%imports195757%_)))
                   (declare (not safe))
                   (_%find-deps195723%_ __tmp196608 _%deps195732%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _%ht195721%_
                                                       _%id195756%_
                                                       _%hd195753%_))
                                                    (let ((__tmp196609
                                                           (cons _%hd195753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xdeps195765%_)))
              (declare (not safe))
              (_%find-deps195723%_ _%rest195752%_ __tmp196609))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$e195760%_)
                                               (let ((_%xdeps195768%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%find-deps195723%_
                                                         _%imports195757%_
                                                         _%deps195732%_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _%ht195721%_
                                                    _%id195756%_
                                                    _%hd195753%_))
                                                 (let ((__tmp196610
                                                        (cons _%hd195753%_
                                                              _%xdeps195768%_)))
                                                   (declare (not safe))
                                                   (_%find-deps195723%_
                                                    _%rest195752%_
                                                    __tmp196610)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd195753%_
                                          'gx#prelude-context::t))
                                       (let ((_%id195771%_
                                              (##structure-ref
                                               _%hd195753%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _%ht195721%_
                                                _%id195771%_))
                                             (let ()
                                               (declare (not safe))
                                               (_%find-deps195723%_
                                                _%rest195752%_
                                                _%deps195732%_))
                                             (let ((_%xdeps195775%_
                                                    (let ((__tmp196611
                                                           (##structure-ref
                                                            _%hd195753%_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_%find-deps195723%_
                                                       __tmp196611
                                                       _%deps195732%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _%ht195721%_
                                                      _%id195771%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%find-deps195723%_
                                                      _%rest195752%_
                                                      _%xdeps195775%_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _%ht195721%_
                                                        _%id195771%_
                                                        _%hd195753%_))
                                                     (let ((__tmp196612
                                                            (cons _%hd195753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%xdeps195775%_)))
               (declare (not safe))
               (_%find-deps195723%_ _%rest195752%_ __tmp196612)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd195753%_
                                              'gx#module-import::t))
                                           (let ()
                                             (if (fxzero? (##direct-structure-ref
                                                           _%hd195753%_
                                                           '3
                                                           gx#module-import::t
                                                           '#f))
                                                 (let ((__tmp196613
                                                        (cons (##direct-structure-ref
                                                               _%hd195753%_
                                                               '1
                                                               gx#module-import::t
                                                               '#f)
                                                              _%rest195752%_)))
                                                   (declare (not safe))
                                                   (_%find-deps195723%_
                                                    __tmp196613
                                                    _%deps195732%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%find-deps195723%_
                                                    _%rest195752%_
                                                    _%deps195732%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd195753%_
                                                  'gx#module-export::t))
                                               (let ((__tmp196614
                                                      (cons (##direct-structure-ref
                                                             _%hd195753%_
                                                             '1
                                                             gx#module-export::t
                                                             '#f)
                                                            _%rest195752%_)))
                                                 (declare (not safe))
                                                 (_%find-deps195723%_
                                                  __tmp196614
                                                  _%deps195732%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd195753%_
                                                      'gx#import-set::t))
                                                   (let ()
                                                     (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd195753%_
                           '2
                           gx#import-set::t
                           '#f))
                 (let ((__tmp196615
                        (cons (##direct-structure-ref
                               _%hd195753%_
                               '1
                               gx#import-set::t
                               '#f)
                              _%rest195752%_)))
                   (declare (not safe))
                   (_%find-deps195723%_ __tmp196615 _%deps195732%_))
                 (if (fxpositive?
                      (##direct-structure-ref
                       _%hd195753%_
                       '2
                       gx#import-set::t
                       '#f))
                     (let ()
                       (let* ((_%xdeps195782%_
                               (let ()
                                 (declare (not safe))
                                 (_%import-set-template195722%_
                                  _%hd195753%_
                                  '0)))
                              (__tmp196616
                               (let ()
                                 (declare (not safe))
                                 (__foldl1
                                  cons
                                  _%rest195752%_
                                  _%xdeps195782%_))))
                         (declare (not safe))
                         (_%find-deps195723%_ __tmp196616 _%deps195732%_)))
                     (let ()
                       (declare (not safe))
                       (_%find-deps195723%_ _%rest195752%_ _%deps195732%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd195753%_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest195733195741%_))
                           (let ((_%hd195738195789%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest195733195741%_)))
                                 (_%tl195739195791%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest195733195741%_))))
                             (let* ((_%hd195794%_ _%hd195738195789%_)
                                    (_%rest195796%_ _%tl195739195791%_))
                               (declare (not safe))
                               (_%K195737195786%_
                                _%rest195796%_
                                _%hd195794%_)))
                           (let ()
                             (declare (not safe))
                             (_%else195735195749%_)))))))
          (let ((__tmp196617
                 (filter gx#expander-context-id
                         (let ((__tmp196618
                                (let ((_%$e195725%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#core-context-prelude__%
                                          _%ctx195719%_))))
                                  (if _%$e195725%_
                                      ((lambda (_%pre195728%_)
                                         (cons _%pre195728%_
                                               (##structure-ref
                                                _%ctx195719%_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                       _%$e195725%_)
                                      (let ()
                                        (##structure-ref
                                         _%ctx195719%_
                                         '8
                                         gx#module-context::t
                                         '#f))))))
                           (declare (not safe))
                           (_%find-deps195723%_ __tmp196618 '())))))
            (declare (not safe))
            (##reverse __tmp196617)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx195649%_)
        (let* ((_%context-id195651%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx195649%_
                       'gx#module-context::t))
                    (##structure-ref
                     _%ctx195649%_
                     '1
                     gx#expander-context::t
                     '#f)
                    (string->symbol _%ctx195649%_)))
               (_%scm195653%_
                (let ((__tmp196619
                       (let ()
                         (declare (not safe))
                         (gxc#static-module-name _%context-id195651%_))))
                  (declare (not safe))
                  (##string-append __tmp196619 '".scm")))
               (_%dirs195655%_ (let () (declare (not safe)) (load-path)))
               (_%dirs195661%_
                (let ((_%user-libpath195657%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath195657%_
                      (let ((_%user-libpath195659%_
                             (path-expand '"lib" _%user-libpath195657%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath195659%_ _%dirs195655%_))
                            _%dirs195655%_
                            (cons _%user-libpath195659%_ _%dirs195655%_)))
                      _%dirs195655%_)))
               (_%dirs195671%_
                (let ((_%$e195663%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e195663%_
                      ((lambda (_%g195665195667%_)
                         (cons _%g195665195667%_ _%dirs195661%_))
                       _%$e195663%_)
                      (let () _%dirs195661%_))))
               (_%dirs195677%_
                (let ((__tmp196620
                       (lambda (_%g195672195674%_)
                         (path-expand '"static" _%g195672195674%_))))
                  (declare (not safe))
                  (##map __tmp196620 _%dirs195671%_))))
          (let _%lp195680%_ ((_%rest195682%_ _%dirs195677%_))
            (let* ((_%rest195683195691%_ _%rest195682%_)
                   (_%else195685195699%_
                    (lambda ()
                      (let ((__tmp196621
                             (##structure-ref
                              _%ctx195649%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp196621
                         _%scm195653%_))))
                   (_%K195687195707%_
                    (lambda (_%rest195702%_ _%dir195703%_)
                      (let ((_%path195705%_
                             (path-expand _%scm195653%_ _%dir195703%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path195705%_))
                            _%path195705%_
                            (let ()
                              (declare (not safe))
                              (_%lp195680%_ _%rest195702%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest195683195691%_))
                  (let ((_%hd195688195710%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest195683195691%_)))
                        (_%tl195689195712%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest195683195691%_))))
                    (let* ((_%dir195715%_ _%hd195688195710%_)
                           (_%rest195717%_ _%tl195689195712%_))
                      (declare (not safe))
                      (_%K195687195707%_ _%rest195717%_ _%dir195715%_)))
                  (let () (declare (not safe)) (_%else195685195699%_))))))))
    (define gxc#file-empty?
      (lambda (_%path195647%_)
        (zero? (let ((__tmp196622 (file-info _%path195647%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp196622)))))
    (define gxc#compile-top-module
      (lambda (_%ctx195643%_)
        (let ((__tmp196626
               (lambda ()
                 (let ((__tmp196627
                        (##structure-ref
                         _%ctx195643%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp196627))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp196628
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx195643%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp196628))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _%ctx195643%_))
                 (let ()
                   (declare (not safe))
                   (gxc#compile-runtime-code _%ctx195643%_))
                 (let ()
                   (declare (not safe))
                   (gxc#compile-meta-code _%ctx195643%_))
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _%ctx195643%_))
                     '#!void)))
              (__tmp196625
               (let ((__obj196505
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj196505)
                 __obj196505))
              (__tmp196624 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp196623
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
           __tmp196626
           gx#current-expander-context
           _%ctx195643%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp196625
           gxc#current-compile-runtime-sections
           __tmp196624
           gxc#current-compile-runtime-names
           __tmp196623))))
    (define gxc#collect-bindings
      (lambda (_%ctx195641%_)
        (let ((__tmp196629
               (##structure-ref _%ctx195641%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp196629))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx195589%_)
        (letrec ((_%compile1195591%_
                  (lambda (_%ctx195630%_)
                    (let* ((_%code195632%_
                            (##structure-ref
                             _%ctx195630%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm195636%_
                            (let ((_%idstr195634%_
                                   (let ((__tmp196630
                                          (##structure-ref
                                           _%ctx195630%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp196630))))
                              (declare (not safe))
                              (##string-append _%idstr195634%_ '"~0")))
                           (_%rtc?195638%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code195632%_))))
                      (if _%rtc?195638%_
                          (let ((__tmp196631
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp196631
                             _%ctx195630%_
                             _%rtm195636%_))
                          '#!void)
                      (let ((__tmp196632
                             (if _%rtc?195638%_ _%rtm195636%_ '#f)))
                        (declare (not safe))
                        (_%generate-runtime-code195593%_
                         _%ctx195630%_
                         _%code195632%_
                         __tmp196632)))))
                 (_%context-timestamp195592%_
                  (lambda (_%ctx195628%_)
                    (let ((__tmp196633
                           (let ((__tmp196634
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx195628%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp196634 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp196633))))
                 (_%generate-runtime-code195593%_
                  (lambda (_%ctx195600%_ _%code195601%_ _%rtm195602%_)
                    (let* ((_%runtime-code?195604%_ (if _%rtm195602%_ '#t '#f))
                           (_%lifts195606%_ (box '()))
                           (_%runtime-code195609%_
                            (if _%runtime-code?195604%_
                                (let ((__tmp196637
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (gxc#apply-generate-runtime
                                            _%code195601%_))))
                                      (__tmp196636
                                       (let ()
                                         (declare (not safe))
                                         (make-hash-table-eq)))
                                      (__tmp196635
                                       (let ()
                                         (declare (not safe))
                                         (gxc#make-bound-identifier-table))))
                                  (declare (not safe))
                                  (__call-with-parameters
                                   __tmp196637
                                   gx#current-expander-context
                                   _%ctx195600%_
                                   gx#current-expander-phi
                                   '0
                                   gxc#current-compile-lift
                                   _%lifts195606%_
                                   gxc#current-compile-marks
                                   __tmp196636
                                   gxc#current-compile-identifiers
                                   __tmp196635))
                                '#f))
                           (_%runtime-code195611%_
                            (if _%runtime-code?195604%_
                                (if (let ((__tmp196638
                                           (unbox _%lifts195606%_)))
                                      (declare (not safe))
                                      (null? __tmp196638))
                                    _%runtime-code195609%_
                                    (cons 'begin
                                          (let ((__tmp196640
                                                 (cons _%runtime-code195609%_
                                                       '()))
                                                (__tmp196639
                                                 (reverse (unbox _%lifts195606%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp196640
                                             __tmp196639))))
                                '#f))
                           (_%runtime-code195613%_
                            (if _%runtime-code?195604%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (_%context-timestamp195592%_
                                                           _%ctx195600%_))
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code195611%_ '())))
                                '#f))
                           (_%loader-code195616%_
                            (let ((__tmp196641
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code195601%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp196641
                               gx#current-expander-context
                               _%ctx195600%_)))
                           (_%loader-code195618%_
                            (cons 'begin
                                  (cons _%loader-code195616%_
                                        (cons (if _%runtime-code?195604%_
                                                  (cons 'load-module
                                                        (cons _%rtm195602%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0195620%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _%ctx195600%_
                               '0
                               '".scm")))
                           (_%scmrt195622%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _%ctx195600%_
                               '#f
                               '".scm")))
                           (_%scms195624%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-static-output-file _%ctx195600%_))))
                      (if _%runtime-code?195604%_
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _%scm0195620%_
                             _%runtime-code195613%_))
                          '#!void)
                      (let ((__tmp196642
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  _%scmrt195622%_
                                  _%loader-code195618%_)))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp196642
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (file-exists? _%scms195624%_)
                          (delete-file _%scms195624%_)
                          '#!void)
                      (if _%runtime-code?195604%_
                          (copy-file _%scm0195620%_ _%scms195624%_)
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms195624%_ void)))))))
          (let* ((_%all-modules195595%_
                  (cons _%ctx195589%_
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _%ctx195589%_))))
                 (__tmp196643
                  (lambda (_%ctx195597%_)
                    (let ((__tmp196644
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (_%compile1195591%_ _%ctx195597%_)))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp196644
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp196643 _%all-modules195595%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx195489%_)
        (letrec ((_%compile-ssi195491%_
                  (lambda (_%code195557%_)
                    (let* ((_%path195559%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _%ctx195489%_
                               '#f
                               '".ssi")))
                           (_%prelude195571%_
                            (let* ((_%super195561%_
                                    (##structure-ref
                                     _%ctx195489%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e195563%_
                                    (##structure-ref
                                     _%super195561%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e195563%_
                                  ((lambda (_%g195565195567%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g195565195567%_)))
                                   _%$e195563%_)
                                  (let () ':<root>))))
                           (_%ns195573%_
                            (##structure-ref
                             _%ctx195489%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr195575%_
                            (symbol->string
                             (##structure-ref
                              _%ctx195489%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg195583%_
                            (let ((_%$e195577%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr195575%_ '#\/))))
                              (if _%$e195577%_
                                  ((lambda (_%x195580%_)
                                     (let ((__tmp196645
                                            (substring
                                             _%idstr195575%_
                                             '0
                                             _%x195580%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp196645)))
                                   _%$e195577%_)
                                  (let () '#f))))
                           (_%rt195585%_
                            (let ((__tmp196646
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp196646 _%ctx195489%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path195559%_))
                      (let ((__tmp196647
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln
                                  '"prelude:"
                                  '" "
                                  _%prelude195571%_))
                               (if _%pkg195583%_
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"package:"
                                      '" "
                                      _%pkg195583%_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _%ns195573%_))
                               (newline)
                               (pretty-print _%code195557%_)
                               (if _%rt195585%_
                                   (pretty-print
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%rt195585%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%path195559%_
                         __tmp196647)))))
                 (_%compile-phi195492%_
                  (lambda (_%part195497%_)
                    (let* ((_%part195498195511%_ _%part195497%_)
                           (_%E195500195515%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part195498195511%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K195501195526%_
                            (lambda (_%code195518%_
                                     _%n195519%_
                                     _%phi195520%_
                                     _%phi-ctx195521%_)
                              (let* ((_%code195524%_
                                      (let ((__tmp196648
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _%code195518%_)))))
                                        (declare (not safe))
                                        (__call-with-parameters
                                         __tmp196648
                                         gx#current-expander-context
                                         _%phi-ctx195521%_
                                         gx#current-expander-phi
                                         _%phi195520%_)))
                                     (__tmp196649
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _%ctx195489%_
                                         _%n195519%_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp196649
                                 _%code195524%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part195498195511%_))
                          (let ((_%hd195502195529%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part195498195511%_)))
                                (_%tl195503195531%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part195498195511%_))))
                            (let ((_%phi-ctx195534%_ _%hd195502195529%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl195503195531%_))
                                  (let ((_%hd195504195536%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl195503195531%_)))
                                        (_%tl195505195538%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl195503195531%_))))
                                    (let ((_%phi195541%_ _%hd195504195536%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl195505195538%_))
                                          (let ((_%hd195506195543%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl195505195538%_)))
                                                (_%tl195507195545%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl195505195538%_))))
                                            (let ((_%n195548%_
                                                   _%hd195506195543%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl195507195545%_))
                                                  (let ((_%hd195508195550%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl195507195545%_)))
                                                        (_%tl195509195552%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl195507195545%_))))
                                                    (let ((_%code195555%_
                                                           _%hd195508195550%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl195509195552%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%K195501195526%_
                                                             _%code195555%_
                                                             _%n195548%_
                                                             _%phi195541%_
                                                             _%phi-ctx195534%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%E195500195515%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%E195500195515%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E195500195515%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E195500195515%_)))))
                          (let ()
                            (declare (not safe))
                            (_%E195500195515%_)))))))
          (let ((_g196650_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _%ctx195489%_))))
            (begin
              (let ((_g196651_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g196650_)
                           (##vector-length _g196650_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g196651_ 2)))
                    (error "Context expects 2 values" _g196651_)))
              (let ((_%ssi-code195494%_
                     (let () (declare (not safe)) (##vector-ref _g196650_ 0)))
                    (_%phi-code195495%_
                     (let () (declare (not safe)) (##vector-ref _g196650_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_%compile-ssi195491%_ _%ssi-code195494%_))
                  (for-each _%compile-phi195492%_ _%phi-code195495%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx195471%_)
        (let* ((_%path195473%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _%ctx195471%_ '#f '".ssxi.ss")))
               (_%code195475%_
                (let ((__tmp196652
                       (##structure-ref
                        _%ctx195471%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp196652)))
               (_%idstr195477%_
                (symbol->string
                 (##structure-ref
                  _%ctx195471%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg195485%_
                (let ((_%$e195479%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr195477%_ '#\/))))
                  (if _%$e195479%_
                      ((lambda (_%x195482%_)
                         (let ((__tmp196653
                                (substring _%idstr195477%_ '0 _%x195482%_)))
                           (declare (not safe))
                           (##string->symbol __tmp196653)))
                       _%$e195479%_)
                      (let () '#f)))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path195473%_))
          (let ((__tmp196654
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _%pkg195485%_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _%pkg195485%_))
                       '#!void)
                   (newline)
                   (pretty-print _%code195475%_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _%path195473%_ __tmp196654)))))
    (define gxc#generate-meta-code
      (lambda (_%ctx195464%_)
        (let* ((_%state195466%_
                (let ((__obj196506
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj196506 _%ctx195464%_)
                  __obj196506))
               (_%ssi-code195468%_
                (let ((__tmp196655
                       (##structure-ref
                        _%ctx195464%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state195466%_
                   __tmp196655))))
          (values _%ssi-code195468%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state195466%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx195457%_)
        (let ((_%lifts195459%_ (box '())))
          (let ((__tmp196658
                 (lambda ()
                   (let ((_%code195462%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx195457%_))))
                     (if (let ((__tmp196659 (unbox _%lifts195459%_)))
                           (declare (not safe))
                           (null? __tmp196659))
                         _%code195462%_
                         (cons 'begin
                               (let ((__tmp196661 (cons _%code195462%_ '()))
                                     (__tmp196660
                                      (reverse (unbox _%lifts195459%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp196661 __tmp196660)))))))
                (__tmp196657
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp196656
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp196658
             gxc#current-compile-lift
             _%lifts195459%_
             gxc#current-compile-marks
             __tmp196657
             gxc#current-compile-identifiers
             __tmp196656)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx195453%_)
        (let ((_%modules195455%_ (box '())))
          (let ((__tmp196662
                 (##structure-ref _%ctx195453%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules195455%_ __tmp196662))
          (reverse (unbox _%modules195455%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path195433%_ _%code195434%_ _%phi?195435%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path195433%_))
        (let ((__tmp196663
               (lambda ()
                 (pretty-print
                  (cons 'declare
                        (cons (cons 'block '())
                              (cons (cons 'standard-bindings '())
                                    (cons (cons 'extended-bindings '())
                                          (let ((__tmp196664
                                                 (if _%phi?195435%_
                                                     '((inlining-limit 200))
                                                     '())))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             '()
                                             __tmp196664)))))))
                 (pretty-print _%code195434%_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _%path195433%_ __tmp196663))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it195439%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#gsc-compile-file _%path195433%_ _%phi?195435%_)))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp196665
                         (cons 'compile-file (cons _%path195433%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it195439%_ __tmp196665))
                  (let () (declare (not safe)) (_%compile-it195439%_))))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path195444%_ _%code195445%_)
        (let ((_%phi?195447%_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__%
           _%path195444%_
           _%code195445%_
           _%phi?195447%_))))
    (define gxc#compile-scm-file
      (lambda _g196667_
        (let ((_g196666_ (let () (declare (not safe)) (##length _g196667_))))
          (cond ((let () (declare (not safe)) (##fx= _g196666_ 2))
                 (apply (lambda (_%path195444%_ _%code195445%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _%path195444%_
                             _%code195445%_)))
                        _g196667_))
                ((let () (declare (not safe)) (##fx= _g196666_ 3))
                 (apply (lambda (_%path195449%_ _%code195450%_ _%phi?195451%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _%path195449%_
                             _%code195450%_
                             _%phi?195451%_)))
                        _g196667_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g196667_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?195334%_)
        (let _%lp195336%_ ((_%rest195338%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts195339%_ '()))
          (let* ((_%rest195340195360%_ _%rest195338%_)
                 (_%else195344195368%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts195339%_)))
                        (reverse _%opts195339%_)))))
            (let ((_%K195354195411%_
                   (lambda (_%rest195409%_)
                     (let ()
                       (declare (not safe))
                       (_%lp195336%_ _%rest195409%_ _%opts195339%_))))
                  (_%K195349195393%_
                   (lambda (_%rest195391%_)
                     (let ()
                       (declare (not safe))
                       (_%lp195336%_ _%rest195391%_ _%opts195339%_))))
                  (_%K195346195375%_
                   (lambda (_%rest195372%_ _%opt195373%_)
                     (let ((__tmp196668 (cons _%opt195373%_ _%opts195339%_)))
                       (declare (not safe))
                       (_%lp195336%_ _%rest195372%_ __tmp196668)))))
              (if (let () (declare (not safe)) (##pair? _%rest195340195360%_))
                  (let ((_%tl195356195416%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest195340195360%_)))
                        (_%hd195355195414%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest195340195360%_))))
                    (if (equal? _%hd195355195414%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl195356195416%_))
                            (let* ((_%tl195358195419%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl195356195416%_)))
                                   (_%rest195422%_ _%tl195358195419%_))
                              (declare (not safe))
                              (_%K195354195411%_ _%rest195422%_))
                            (let ((_%opt195383%_ _%hd195355195414%_)
                                  (_%rest195385%_ _%tl195356195416%_))
                              (let ()
                                (declare (not safe))
                                (_%K195346195375%_
                                 _%rest195385%_
                                 _%opt195383%_))))
                        (if (equal? _%hd195355195414%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl195356195416%_))
                                (let* ((_%tl195353195401%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl195356195416%_)))
                                       (_%rest195404%_ _%tl195353195401%_))
                                  (declare (not safe))
                                  (_%K195349195393%_ _%rest195404%_))
                                (let ((_%opt195383%_ _%hd195355195414%_)
                                      (_%rest195385%_ _%tl195356195416%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%K195346195375%_
                                     _%rest195385%_
                                     _%opt195383%_))))
                            (let ((_%opt195383%_ _%hd195355195414%_)
                                  (_%rest195385%_ _%tl195356195416%_))
                              (let ()
                                (declare (not safe))
                                (_%K195346195375%_
                                 _%rest195385%_
                                 _%opt195383%_))))))
                  (let () (declare (not safe)) (_%else195344195368%_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?195428%_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _%phi?195428%_))))
    (define gxc#gsc-link-options
      (lambda _g196670_
        (let ((_g196669_ (let () (declare (not safe)) (##length _g196670_))))
          (cond ((let () (declare (not safe)) (##fx= _g196669_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g196670_))
                ((let () (declare (not safe)) (##fx= _g196669_ 1))
                 (apply (lambda (_%phi?195430%_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _%phi?195430%_)))
                        _g196670_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g196670_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords195183%_ _%static?195179195184%_ _%phi?195186%_)
        (let ((_%static?195188%_
               (if (eq? _%static?195179195184%_ absent-value)
                   '#f
                   _%static?195179195184%_)))
          (if _%phi?195186%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp195190%_ ((_%rest195192%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts195193%_ '()))
                (let* ((_%rest195194195220%_ _%rest195192%_)
                       (_%else195199195228%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts195193%_)))
                              (reverse! _%opts195193%_)))))
                  (let ((_%K195214195291%_
                         (lambda (_%rest195288%_ _%opt195289%_)
                           (if _%static?195188%_
                               (let ((__tmp196671
                                      (let ((__tmp196672
                                             (let ()
                                               (declare (not safe))
                                               (cons '"-cc-options"
                                                     _%opts195193%_))))
                                        (declare (not safe))
                                        (cons _%opt195289%_ __tmp196672))))
                                 (declare (not safe))
                                 (_%lp195190%_ _%rest195288%_ __tmp196671))
                               (let ()
                                 (declare (not safe))
                                 (_%lp195190%_
                                  _%rest195288%_
                                  _%opts195193%_)))))
                        (_%K195209195268%_
                         (lambda (_%rest195265%_ _%opt195266%_)
                           (let ((__tmp196673
                                  (let ((__tmp196674
                                         (let ()
                                           (declare (not safe))
                                           (cons '"-cc-options"
                                                 _%opts195193%_))))
                                    (declare (not safe))
                                    (cons _%opt195266%_ __tmp196674))))
                             (declare (not safe))
                             (_%lp195190%_ _%rest195265%_ __tmp196673))))
                        (_%K195204195248%_
                         (lambda (_%rest195246%_)
                           (let ()
                             (declare (not safe))
                             (_%lp195190%_ _%rest195246%_ _%opts195193%_))))
                        (_%K195201195234%_
                         (lambda (_%rest195232%_)
                           (let ()
                             (declare (not safe))
                             (_%lp195190%_ _%rest195232%_ _%opts195193%_)))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest195194195220%_))
                        (let ((_%tl195216195296%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest195194195220%_)))
                              (_%hd195215195294%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest195194195220%_))))
                          (if (equal? _%hd195215195294%_ '"-cc-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl195216195296%_))
                                  (let ((_%tl195218195301%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl195216195296%_)))
                                        (_%hd195217195299%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl195216195296%_))))
                                    (if (equal? _%hd195217195299%_ '"-Bstatic")
                                        (let ((_%opt195304%_
                                               _%hd195217195299%_)
                                              (_%rest195306%_
                                               _%tl195218195301%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%K195214195291%_
                                             _%rest195306%_
                                             _%opt195304%_)))
                                        (let ((_%opt195281%_
                                               _%hd195217195299%_)
                                              (_%rest195283%_
                                               _%tl195218195301%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%K195209195268%_
                                             _%rest195283%_
                                             _%opt195281%_)))))
                                  (let ((_%rest195240%_ _%tl195216195296%_))
                                    (declare (not safe))
                                    (_%K195201195234%_ _%rest195240%_)))
                              (if (equal? _%hd195215195294%_ '"-ld-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl195216195296%_))
                                      (let* ((_%tl195208195256%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl195216195296%_)))
                                             (_%rest195259%_
                                              _%tl195208195256%_))
                                        (declare (not safe))
                                        (_%K195204195248%_ _%rest195259%_))
                                      (let ((_%rest195240%_
                                             _%tl195216195296%_))
                                        (declare (not safe))
                                        (_%K195201195234%_ _%rest195240%_)))
                                  (let ((_%rest195240%_ _%tl195216195296%_))
                                    (declare (not safe))
                                    (_%K195201195234%_ _%rest195240%_)))))
                        (let ()
                          (declare (not safe))
                          (_%else195199195228%_))))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords195311%_ _%static?195179195312%_)
        (let ((_%phi?195314%_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__%__%
           _%@@keywords195311%_
           _%static?195179195312%_
           _%phi?195314%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g196676_
        (let ((_g196675_ (let () (declare (not safe)) (##length _g196676_))))
          (cond ((let () (declare (not safe)) (##fx= _g196675_ 2))
                 (apply (lambda (_%@@keywords195311%_ _%static?195179195312%_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__%__0
                             _%@@keywords195311%_
                             _%static?195179195312%_)))
                        _g196676_))
                ((let () (declare (not safe)) (##fx= _g196675_ 3))
                 (apply (lambda (_%@@keywords195316%_
                                 _%static?195179195317%_
                                 _%phi?195318%_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__%__%
                             _%@@keywords195316%_
                             _%static?195179195317%_
                             _%phi?195318%_)))
                        _g196676_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g196676_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords195323%_ . _%args195324%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords195323%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords195323%_
                  'static:
                  absent-value))
               _%args195324%_)))
    (define gxc#gsc-cc-options
      (lambda _%args195180195330%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args195180195330%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords195028%_ _%static?195024195029%_ _%phi?195031%_)
        (let ((_%static?195033%_
               (if (eq? _%static?195024195029%_ absent-value)
                   '#f
                   _%static?195024195029%_)))
          (if _%phi?195031%_
              '()
              (let _%lp195035%_ ((_%rest195037%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts195038%_ '()))
                (let* ((_%rest195039195065%_ _%rest195037%_)
                       (_%else195044195073%_
                        (lambda () (reverse! _%opts195038%_))))
                  (let ((_%K195059195136%_
                         (lambda (_%rest195133%_ _%opt195134%_)
                           (if _%static?195033%_
                               (let ((__tmp196677
                                      (let ((__tmp196678
                                             (let ()
                                               (declare (not safe))
                                               (cons '"-ld-options"
                                                     _%opts195038%_))))
                                        (declare (not safe))
                                        (cons _%opt195134%_ __tmp196678))))
                                 (declare (not safe))
                                 (_%lp195035%_ _%rest195133%_ __tmp196677))
                               (let ()
                                 (declare (not safe))
                                 (_%lp195035%_
                                  _%rest195133%_
                                  _%opts195038%_)))))
                        (_%K195054195113%_
                         (lambda (_%rest195110%_ _%opt195111%_)
                           (let ((__tmp196679
                                  (let ((__tmp196680
                                         (let ()
                                           (declare (not safe))
                                           (cons '"-ld-options"
                                                 _%opts195038%_))))
                                    (declare (not safe))
                                    (cons _%opt195111%_ __tmp196680))))
                             (declare (not safe))
                             (_%lp195035%_ _%rest195110%_ __tmp196679))))
                        (_%K195049195093%_
                         (lambda (_%rest195091%_)
                           (let ()
                             (declare (not safe))
                             (_%lp195035%_ _%rest195091%_ _%opts195038%_))))
                        (_%K195046195079%_
                         (lambda (_%rest195077%_)
                           (let ()
                             (declare (not safe))
                             (_%lp195035%_ _%rest195077%_ _%opts195038%_)))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest195039195065%_))
                        (let ((_%tl195061195141%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest195039195065%_)))
                              (_%hd195060195139%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest195039195065%_))))
                          (if (equal? _%hd195060195139%_ '"-ld-options")
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl195061195141%_))
                                  (let ((_%tl195063195146%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl195061195141%_)))
                                        (_%hd195062195144%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl195061195141%_))))
                                    (if (equal? _%hd195062195144%_ '"-static")
                                        (let ((_%opt195149%_
                                               _%hd195062195144%_)
                                              (_%rest195151%_
                                               _%tl195063195146%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%K195059195136%_
                                             _%rest195151%_
                                             _%opt195149%_)))
                                        (let ((_%opt195126%_
                                               _%hd195062195144%_)
                                              (_%rest195128%_
                                               _%tl195063195146%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%K195054195113%_
                                             _%rest195128%_
                                             _%opt195126%_)))))
                                  (let ((_%rest195085%_ _%tl195061195141%_))
                                    (declare (not safe))
                                    (_%K195046195079%_ _%rest195085%_)))
                              (if (equal? _%hd195060195139%_ '"-cc-options")
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl195061195141%_))
                                      (let* ((_%tl195053195101%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl195061195141%_)))
                                             (_%rest195104%_
                                              _%tl195053195101%_))
                                        (declare (not safe))
                                        (_%K195049195093%_ _%rest195104%_))
                                      (let ((_%rest195085%_
                                             _%tl195061195141%_))
                                        (declare (not safe))
                                        (_%K195046195079%_ _%rest195085%_)))
                                  (let ((_%rest195085%_ _%tl195061195141%_))
                                    (declare (not safe))
                                    (_%K195046195079%_ _%rest195085%_)))))
                        (let ()
                          (declare (not safe))
                          (_%else195044195073%_))))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords195156%_ _%static?195024195157%_)
        (let ((_%phi?195159%_ '#f))
          (declare (not safe))
          (gxc#gsc-ld-options__%__%
           _%@@keywords195156%_
           _%static?195024195157%_
           _%phi?195159%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g196682_
        (let ((_g196681_ (let () (declare (not safe)) (##length _g196682_))))
          (cond ((let () (declare (not safe)) (##fx= _g196681_ 2))
                 (apply (lambda (_%@@keywords195156%_ _%static?195024195157%_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-ld-options__%__0
                             _%@@keywords195156%_
                             _%static?195024195157%_)))
                        _g196682_))
                ((let () (declare (not safe)) (##fx= _g196681_ 3))
                 (apply (lambda (_%@@keywords195161%_
                                 _%static?195024195162%_
                                 _%phi?195163%_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-ld-options__%__%
                             _%@@keywords195161%_
                             _%static?195024195162%_
                             _%phi?195163%_)))
                        _g196682_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g196682_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords195168%_ . _%args195169%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords195168%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords195168%_
                  'static:
                  absent-value))
               _%args195169%_)))
    (define gxc#gsc-ld-options
      (lambda _%args195025195175%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args195025195175%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir195019%_)
        (let ((_%user-staticdir195021%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir195019%_
                       '" -I "
                       _%user-staticdir195021%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp194931%_ ((_%rest194933%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts194934%_ '()))
          (let* ((_%rest194935194955%_ _%rest194933%_)
                 (_%else194939194963%_ (lambda () _%opts194934%_)))
            (let ((_%K194949195006%_
                   (lambda (_%rest195004%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194931%_ _%rest195004%_ _%opts194934%_))))
                  (_%K194944194984%_
                   (lambda (_%rest194981%_ _%opt194982%_)
                     (let ((__tmp196683
                            (let ((__tmp196684
                                   (let ((__tmp196685
                                          (let ()
                                            (declare (not safe))
                                            (string-split
                                             _%opt194982%_
                                             '#\space))))
                                     (declare (not safe))
                                     (##filter
                                      gxc#not-string-empty?
                                      __tmp196685))))
                              (declare (not safe))
                              (##append _%opts194934%_ __tmp196684))))
                       (declare (not safe))
                       (_%lp194931%_ _%rest194981%_ __tmp196683))))
                  (_%K194941194969%_
                   (lambda (_%rest194967%_)
                     (let ()
                       (declare (not safe))
                       (_%lp194931%_ _%rest194967%_ _%opts194934%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest194935194955%_))
                  (let ((_%tl194951195011%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest194935194955%_)))
                        (_%hd194950195009%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest194935194955%_))))
                    (if (equal? _%hd194950195009%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl194951195011%_))
                            (let* ((_%tl194953195014%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl194951195011%_)))
                                   (_%rest195017%_ _%tl194953195014%_))
                              (declare (not safe))
                              (_%K194949195006%_ _%rest195017%_))
                            (let ((_%rest194975%_ _%tl194951195011%_))
                              (declare (not safe))
                              (_%K194941194969%_ _%rest194975%_)))
                        (if (equal? _%hd194950195009%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl194951195011%_))
                                (let ((_%tl194948194994%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl194951195011%_)))
                                      (_%hd194947194992%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl194951195011%_))))
                                  (let ((_%opt194997%_ _%hd194947194992%_)
                                        (_%rest194999%_ _%tl194948194994%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%K194944194984%_
                                       _%rest194999%_
                                       _%opt194997%_))))
                                (let ((_%rest194975%_ _%tl194951195011%_))
                                  (declare (not safe))
                                  (_%K194941194969%_ _%rest194975%_)))
                            (let ((_%rest194975%_ _%tl194951195011%_))
                              (declare (not safe))
                              (_%K194941194969%_ _%rest194975%_)))))
                  (let () (declare (not safe)) (_%else194939194963%_))))))))
    (define gxc#not-string-empty?
      (lambda (_%str194928%_)
        (let ((__tmp196686
               (let () (declare (not safe)) (string-empty? _%str194928%_))))
          (declare (not safe))
          (not __tmp196686))))
    (define gxc#gsc-compile-file
      (lambda (_%path194921%_ _%phi?194922%_)
        (let ((_%gsc-link-opts194924%_
               (let ()
                 (declare (not safe))
                 (gxc#gsc-link-options__% _%phi?194922%_)))
              (_%gsc-cc-opts194925%_
               (let ()
                 (declare (not safe))
                 (gxc#gsc-cc-options__%__% '#f absent-value _%phi?194922%_)))
              (_%gsc-ld-opts194926%_
               (let ()
                 (declare (not safe))
                 (gxc#gsc-ld-options__%__% '#f absent-value _%phi?194922%_))))
          (let ((__tmp196691 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                (__tmp196687
                 (let ((__tmp196688
                        (let ((__tmp196689
                               (let ((__tmp196690 (cons _%path194921%_ '())))
                                 (declare (not safe))
                                 (__foldr1
                                  cons
                                  __tmp196690
                                  _%gsc-link-opts194924%_))))
                          (declare (not safe))
                          (__foldr1 cons __tmp196689 _%gsc-ld-opts194926%_))))
                   (declare (not safe))
                   (__foldr1 cons __tmp196688 _%gsc-cc-opts194925%_))))
            (declare (not safe))
            (gxc#invoke__%
             '#f
             absent-value
             absent-value
             __tmp196691
             __tmp196687)))))
    (define gxc#compile-output-file
      (lambda (_%ctx194887%_ _%n194888%_ _%ext194889%_)
        (letrec ((_%module-relative-path194891%_
                  (lambda (_%ctx194919%_)
                    (path-strip-directory
                     (let ((__tmp196692
                            (##structure-ref
                             _%ctx194919%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp196692)))))
                 (_%module-source-directory194892%_
                  (lambda (_%ctx194915%_)
                    (path-directory
                     (let ((_%mpath194917%_
                            (##structure-ref
                             _%ctx194915%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _%mpath194917%_))
                           _%mpath194917%_
                           (last _%mpath194917%_))))))
                 (_%section-string194893%_
                  (lambda (_%n194909%_)
                    (if (let () (declare (not safe)) (number? _%n194909%_))
                        (let () (number->string _%n194909%_))
                        (if (let () (declare (not safe)) (symbol? _%n194909%_))
                            (let () (symbol->string _%n194909%_))
                            (if (let ()
                                  (declare (not safe))
                                  (string? _%n194909%_))
                                (let () _%n194909%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n194909%_)))))))
                 (_%file-name194894%_
                  (lambda (_%path194907%_)
                    (if _%n194888%_
                        (string-append
                         _%path194907%_
                         '"~"
                         (let ()
                           (declare (not safe))
                           (_%section-string194893%_ _%n194888%_))
                         _%ext194889%_)
                        (string-append _%path194907%_ _%ext194889%_))))
                 (_%file-path194895%_
                  (lambda ()
                    (let ((_%$e194901%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e194901%_
                          ((lambda (_%outdir194904%_)
                             (path-expand
                              (let ((__tmp196693
                                     (let ((__tmp196694
                                            (##structure-ref
                                             _%ctx194887%_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp196694))))
                                (declare (not safe))
                                (_%file-name194894%_ __tmp196693))
                              _%outdir194904%_))
                           _%$e194901%_)
                          (let ()
                            (path-expand
                             (let ((__tmp196695
                                    (let ()
                                      (declare (not safe))
                                      (_%module-relative-path194891%_
                                       _%ctx194887%_))))
                               (declare (not safe))
                               (_%file-name194894%_ __tmp196695))
                             (let ()
                               (declare (not safe))
                               (_%module-source-directory194892%_
                                _%ctx194887%_)))))))))
          (let ((_%path194897%_
                 (let () (declare (not safe)) (_%file-path194895%_))))
            (let ((__tmp196696
                   (lambda ()
                     (let ((__tmp196697 (path-directory _%path194897%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp196697)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp196696))
            _%path194897%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx194868%_)
        (letrec ((_%file-name194870%_
                  (lambda (_%id194885%_)
                    (let ((__tmp196698
                           (let ()
                             (declare (not safe))
                             (gxc#static-module-name _%id194885%_))))
                      (declare (not safe))
                      (##string-append __tmp196698 '".scm"))))
                 (_%file-path194871%_
                  (lambda ()
                    (let* ((_%file194877%_
                            (let ((__tmp196699
                                   (##structure-ref
                                    _%ctx194868%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_%file-name194870%_ __tmp196699)))
                           (_%$e194879%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e194879%_
                          ((lambda (_%outdir194882%_)
                             (path-expand
                              _%file194877%_
                              (path-expand '"static" _%outdir194882%_)))
                           _%$e194879%_)
                          (let () (path-expand _%file194877%_ '"static")))))))
          (let ((_%path194873%_
                 (let () (declare (not safe)) (_%file-path194871%_))))
            (let ((__tmp196700
                   (lambda ()
                     (let ((__tmp196701 (path-directory _%path194873%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp196701)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp196700))
            _%path194873%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx194861%_ _%opts194862%_)
        (let ((_%$e194864%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts194862%_))))
          (if _%$e194864%_
              (values _%$e194864%_)
              (let ()
                (path-strip-directory
                 (symbol->string
                  (##structure-ref
                   _%ctx194861%_
                   '1
                   gx#expander-context::t
                   '#f))))))))
    (define gxc#static-module-name
      (lambda (_%idstr194851%_)
        (if (let () (declare (not safe)) (string? _%idstr194851%_))
            (let ()
              (let* ((_%str194854%_
                      (let ()
                        (declare (not safe))
                        (gxc#module-id->path-string _%idstr194851%_)))
                     (_%strs194856%_
                      (let ()
                        (declare (not safe))
                        (string-split _%str194854%_ '#\/))))
                (declare (not safe))
                (string-join _%strs194856%_ '"__")))
            (if (let () (declare (not safe)) (symbol? _%idstr194851%_))
                (let ((__tmp196702 (symbol->string _%idstr194851%_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp196702))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr194851%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp196703
               (let ((__tmp196704 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp196704 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp196703))))
    (define gxc#invoke__%
      (lambda (_%@@keywords194815%_
               _%stdout-redirection194811194816%_
               _%stderr-redirection194812194818%_
               _%program194820%_
               _%args194821%_)
        (let* ((_%stdout-redirection194823%_
                (if (eq? _%stdout-redirection194811194816%_ absent-value)
                    '#f
                    _%stdout-redirection194811194816%_))
               (_%stderr-redirection194825%_
                (if (eq? _%stderr-redirection194812194818%_ absent-value)
                    '#f
                    _%stderr-redirection194812194818%_)))
          (let ((__tmp196705 (cons _%program194820%_ _%args194821%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp196705))
          (let* ((_%proc194827%_
                  (open-process
                   (cons 'path:
                         (cons _%program194820%_
                               (cons 'arguments:
                                     (cons _%args194821%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection194823%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection194825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output194832%_
                  (if (or _%stdout-redirection194823%_
                          _%stderr-redirection194825%_)
                      (read-line _%proc194827%_ '#f)
                      '#f))
                 (_%status194835%_ (process-status _%proc194827%_)))
            (let () (declare (not safe)) (##close-port _%proc194827%_))
            (if (zero? _%status194835%_)
                '#!void
                (begin
                  (display _%output194832%_)
                  (let ((__tmp196706 (cons _%program194820%_ _%args194821%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp196706
                     _%status194835%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords194840%_ . _%args194841%_)
        (apply gxc#invoke__%
               _%@@keywords194840%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords194840%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords194840%_
                  'stderr-redirection:
                  absent-value))
               _%args194841%_)))
    (define gxc#invoke
      (lambda _%args194813194847%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args194813194847%_)))))
