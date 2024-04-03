(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1712146034)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp194601 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp194601))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp194602 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp194602))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path194507%_ _%fun194508%_)
        (with-output-to-file
         (cons 'path: (cons _%path194507%_ gxc#scheme-file-settings))
         _%fun194508%_)))
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
      (lambda (_%gerbil-libdir194502%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir194502%_)))
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
      (lambda (_%dir194500%_) (delete-file-or-directory _%dir194500%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath194474%_ _%opts194475%_)
        (if (let () (declare (not safe)) (string? _%srcpath194474%_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath194474%_)))
        (let ((_%outdir194477%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts194475%_)))
              (_%invoke-gsc?194478%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts194475%_)))
              (_%gsc-options194479%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts194475%_)))
              (_%keep-scm?194480%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts194475%_)))
              (_%verbosity194481%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts194475%_)))
              (_%optimize194482%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts194475%_)))
              (_%debug194483%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts194475%_)))
              (_%gen-ssxi194484%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts194475%_))))
          (if _%outdir194477%_
              (let ((__tmp194603
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir194477%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp194603))
              '#!void)
          (if _%optimize194482%_
              (let ((__tmp194604
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp194604))
              '#!void)
          (let ((__tmp194607
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath194474%_))
                   (let ((__tmp194608
                          (let ((__tmp194609
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0
                                      _%srcpath194474%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp194609))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp194608))))
                (__tmp194606
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp194605
                 (cons 'compile-module (cons _%srcpath194474%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp194607
             gxc#current-compile-output-dir
             _%outdir194477%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?194478%_
             gxc#current-compile-gsc-options
             _%gsc-options194479%_
             gxc#current-compile-keep-scm
             _%keep-scm?194480%_
             gxc#current-compile-verbose
             _%verbosity194481%_
             gxc#current-compile-optimize
             _%optimize194482%_
             gxc#current-compile-debug
             _%debug194483%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi194484%_
             gxc#current-compile-timestamp
             __tmp194606
             gxc#current-compile-context
             __tmp194605
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath194493%_)
        (let ((_%opts194495%_ '()))
          (declare (not safe))
          (gxc#compile-module__% _%srcpath194493%_ _%opts194495%_))))
    (define gxc#compile-module
      (lambda _g194611_
        (let ((_g194610_ (let () (declare (not safe)) (##length _g194611_))))
          (cond ((let () (declare (not safe)) (##fx= _g194610_ 1))
                 (apply (lambda (_%srcpath194493%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _%srcpath194493%_)))
                        _g194611_))
                ((let () (declare (not safe)) (##fx= _g194610_ 2))
                 (apply (lambda (_%srcpath194497%_ _%opts194498%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _%srcpath194497%_
                             _%opts194498%_)))
                        _g194611_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g194611_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath194450%_ _%opts194451%_)
        (if (let () (declare (not safe)) (string? _%srcpath194450%_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath194450%_)))
        (let ((_%outdir194453%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts194451%_)))
              (_%invoke-gsc?194454%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts194451%_)))
              (_%gsc-options194455%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts194451%_)))
              (_%keep-scm?194456%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts194451%_)))
              (_%verbosity194457%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts194451%_)))
              (_%debug194458%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'debug: _%opts194451%_))))
          (if _%outdir194453%_
              (let ((__tmp194612
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir194453%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp194612))
              '#!void)
          (let ((__tmp194615
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath194450%_))
                   (let ((__tmp194616
                          (let ((__tmp194617
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0
                                      _%srcpath194450%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp194617))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp194616
                      _%opts194451%_))))
                (__tmp194614
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp194613 (cons 'compile-exe (cons _%srcpath194450%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp194615
             gxc#current-compile-output-dir
             _%outdir194453%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?194454%_
             gxc#current-compile-gsc-options
             _%gsc-options194455%_
             gxc#current-compile-keep-scm
             _%keep-scm?194456%_
             gxc#current-compile-verbose
             _%verbosity194457%_
             gxc#current-compile-debug
             _%debug194458%_
             gxc#current-compile-timestamp
             __tmp194614
             gxc#current-compile-context
             __tmp194613
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath194466%_)
        (let ((_%opts194468%_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _%srcpath194466%_ _%opts194468%_))))
    (define gxc#compile-exe
      (lambda _g194619_
        (let ((_g194618_ (let () (declare (not safe)) (##length _g194619_))))
          (cond ((let () (declare (not safe)) (##fx= _g194618_ 1))
                 (apply (lambda (_%srcpath194466%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _%srcpath194466%_)))
                        _g194619_))
                ((let () (declare (not safe)) (##fx= _g194618_ 2))
                 (apply (lambda (_%srcpath194470%_ _%opts194471%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__%
                             _%srcpath194470%_
                             _%opts194471%_)))
                        _g194619_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g194619_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx194446%_ _%opts194447%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts194447%_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _%ctx194446%_
               _%opts194447%_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _%ctx194446%_
               _%opts194447%_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx194323%_ _%opts194324%_)
        (letrec ((_%generate-stub194326%_
                  (lambda (_%builtin-modules194442%_)
                    (let ((_%mod-main194444%_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _%ctx194323%_ 'main))))
                      (let ((__tmp194620
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'append
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%builtin-modules194442%_ '()))
                   (cons 'libgerbil-builtin-modules '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))
                        (declare (not safe))
                        (##write __tmp194620))
                      (let ((__tmp194621
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main194444%_
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
                        (##write __tmp194621))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts194327%_
                  (lambda (_%libgerbil194440%_)
                    (let ((__tmp194622
                           (let ()
                             (declare (not safe))
                             (##string-append _%libgerbil194440%_ '".ldd"))))
                      (declare (not safe))
                      (##call-with-input-file __tmp194622 read))))
                 (_%replace-extension194328%_
                  (lambda (_%path194437%_ _%ext194438%_)
                    (string-append
                     (path-strip-extension _%path194437%_)
                     _%ext194438%_)))
                 (_%not-exclude-module?194329%_
                  (lambda (_%ctx194433%_)
                    (let ((_%id-str194435%_
                           (symbol->string
                            (##structure-ref
                             _%ctx194433%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp194623
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str194435%_))))
                            (declare (not safe))
                            (not __tmp194623))
                          (let ((__tmp194624
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"std/"
                                    _%id-str194435%_))))
                            (declare (not safe))
                            (not __tmp194624))
                          '#f))))
                 (_%not-file-empty?194330%_
                  (lambda (_%path194431%_)
                    (let ((__tmp194625
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _%path194431%_))))
                      (declare (not safe))
                      (not __tmp194625))))
                 (_%compile-stub194331%_
                  (lambda (_%output-scm194338%_ _%output-bin194339%_)
                    (let* ((_%gerbil-home194341%_
                            (let ((__tmp194626
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp194626)))
                           (_%gerbil-libdir194343%_
                            (path-expand '"lib" _%gerbil-home194341%_))
                           (_%gerbil-staticdir194345%_
                            (path-expand '"static" _%gerbil-libdir194343%_))
                           (_%gxlink194347%_
                            (path-expand
                             '"libgerbil-link"
                             _%gerbil-libdir194343%_))
                           (_%tmp194349%_
                            (path-expand
                             (let ((__tmp194627
                                    (let ((__tmp194628
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-timestamp-nanos))))
                                      (declare (not safe))
                                      (##number->string __tmp194628))))
                               (declare (not safe))
                               (##string-append '"gxc." __tmp194627))
                             '"/tmp"))
                           (_%tmp-path194353%_
                            (lambda (_%f194351%_)
                              (path-expand
                               (path-strip-directory _%f194351%_)
                               _%tmp194349%_)))
                           (_%deps194355%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _%ctx194323%_)))
                           (_%deps194357%_
                            (filter _%not-exclude-module?194329%_
                                    _%deps194355%_))
                           (_%src-deps-scm194359%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps194357%_)))
                           (_%src-deps-scm194361%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?194330%_
                               _%src-deps-scm194359%_)))
                           (_%src-deps-scm194363%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm194361%_)))
                           (_%deps-scm194365%_
                            (let ()
                              (declare (not safe))
                              (##map _%tmp-path194353%_
                                     _%src-deps-scm194363%_)))
                           (_%deps-c194371%_
                            (let ((__tmp194629
                                   (lambda (_%g194366194368%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%replace-extension194328%_
                                        _%g194366194368%_
                                        '".c")))))
                              (declare (not safe))
                              (##map __tmp194629 _%deps-scm194365%_)))
                           (_%deps-o194377%_
                            (let ((__tmp194630
                                   (lambda (_%g194372194374%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%replace-extension194328%_
                                        _%g194372194374%_
                                        '".o")))))
                              (declare (not safe))
                              (##map __tmp194630 _%deps-scm194365%_)))
                           (_%src-bin-scm194379%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _%ctx194323%_)))
                           (_%src-bin-scm194381%_
                            (path-expand _%src-bin-scm194379%_))
                           (_%bin-scm194383%_
                            (let ()
                              (declare (not safe))
                              (_%tmp-path194353%_ _%src-bin-scm194381%_)))
                           (_%bin-c194385%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194328%_
                               _%bin-scm194383%_
                               '".c")))
                           (_%bin-o194387%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194328%_
                               _%bin-scm194383%_
                               '".o")))
                           (_%output-bin194389%_
                            (path-expand _%output-bin194339%_))
                           (_%output-scm194391%_
                            (path-expand _%output-scm194338%_))
                           (_%output-c194393%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194328%_
                               _%output-scm194391%_
                               '".c")))
                           (_%output-o194395%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194328%_
                               _%output-scm194391%_
                               '".o")))
                           (_%output_-c194397%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194328%_
                               _%output-scm194391%_
                               '"_.c")))
                           (_%output_-o194399%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194328%_
                               _%output-scm194391%_
                               '"_.o")))
                           (_%gsc-link-opts194401%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_%gsc-cc-opts194403%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_%gsc-static-opts194405%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _%gerbil-staticdir194345%_)))
                           (_%output-ld-opts194407%_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_%libgerbil.a194409%_
                            (path-expand
                             '"libgerbil.a"
                             _%gerbil-libdir194343%_))
                           (_%libgerbil.so194411%_
                            (path-expand
                             '"libgerbil.so"
                             _%gerbil-libdir194343%_))
                           (_%libgerbil.dylib194413%_
                            (path-expand
                             '"libgerbil.dylib"
                             _%gerbil-libdir194343%_))
                           (_%libgerbil-ld-opts194419%_
                            (if (let ()
                                  (declare (not safe))
                                  (##file-exists? _%libgerbil.so194411%_))
                                (let ()
                                  (declare (not safe))
                                  (_%get-libgerbil-ld-opts194327%_
                                   _%libgerbil.so194411%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##file-exists?
                                       _%libgerbil.dylib194413%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%get-libgerbil-ld-opts194327%_
                                       _%libgerbil.dylib194413%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##file-exists?
                                           _%libgerbil.a194409%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%get-libgerbil-ld-opts194327%_
                                           _%libgerbil.a194409%_))
                                        (let ()
                                          (declare (not safe))
                                          (gxc#raise-compile-error
                                           '"libgerbil does not exist"
                                           _%libgerbil.a194409%_
                                           _%libgerbil.so194411%_
                                           _%libgerbil.dylib194413%_))))))
                           (_%rpath194421%_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _%gerbil-libdir194343%_)))
                           (_%builtin-modules194425%_
                            (let ((__tmp194632
                                   (lambda (_%mod194423%_)
                                     (symbol->string
                                      (##structure-ref
                                       _%mod194423%_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                  (__tmp194631
                                   (cons _%ctx194323%_ _%deps194357%_)))
                              (declare (not safe))
                              (##map __tmp194632 __tmp194631))))
                      (let ((__tmp194633
                             (lambda ()
                               (let ((__tmp194634
                                      (path-directory _%output-bin194389%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp194634)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp194633))
                      (let ((__tmp194635
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_%generate-stub194326%_
                                  _%builtin-modules194425%_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%output-scm194391%_
                         __tmp194635))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (begin
                            (let ((__tmp194636
                                   (lambda ()
                                     (create-directory _%tmp194349%_))))
                              (declare (not safe))
                              (__with-lock gxc#+driver-mutex+ __tmp194636))
                            (let ()
                              (declare (not safe))
                              (##for-each
                               copy-file
                               _%src-deps-scm194363%_
                               _%deps-scm194365%_))
                            (let ()
                              (declare (not safe))
                              (##copy-file
                               _%src-bin-scm194381%_
                               _%bin-scm194383%_))
                            (let ((__tmp194640
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp194637
                                   (cons '"-link"
                                         (cons '"-l"
                                               (cons _%gxlink194347%_
                                                     (let ((__tmp194638
                                                            (let ((__tmp194639
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%bin-scm194383%_
                                 (cons _%output-scm194391%_ '()))))
                      (declare (not safe))
                      (__foldr1 cons __tmp194639 _%deps-scm194365%_))))
               (declare (not safe))
               (__foldr1 cons __tmp194638 _%gsc-link-opts194401%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke __tmp194640 __tmp194637))
                            (let ((__tmp194645
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp194641
                                   (cons '"-obj"
                                         (let ((__tmp194642
                                                (let ((__tmp194643
                                                       (let ((__tmp194644
                                                              (cons _%bin-c194385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%output-c194393%_
                                  (cons _%output_-c194397%_ '())))))
                 (declare (not safe))
                 (__foldr1 cons __tmp194644 _%deps-c194371%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp194643
                                                   _%gsc-static-opts194405%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp194642
                                            _%gsc-cc-opts194403%_)))))
                              (declare (not safe))
                              (gxc#invoke __tmp194645 __tmp194641))
                            (let ((__tmp194649
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp194646
                                   (cons '"-o"
                                         (cons _%output-bin194389%_
                                               (let ((__tmp194647
                                                      (cons _%bin-o194387%_
                                                            (cons _%output-o194395%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%output_-o194399%_
                                (let ((__tmp194648
                                       (cons _%rpath194421%_
                                             (cons '"-L"
                                                   (cons _%gerbil-libdir194343%_
                                                         (cons '"-lgerbil"
                                                               (cons '"-lgambit"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%libgerbil-ld-opts194419%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (declare (not safe))
                                  (__foldr1
                                   cons
                                   __tmp194648
                                   _%output-ld-opts194407%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldr1
                                                  cons
                                                  __tmp194647
                                                  _%deps-o194377%_))))))
                              (declare (not safe))
                              (gxc#invoke __tmp194649 __tmp194646))
                            (let ((__tmp194650
                                   (cons _%output-c194393%_
                                         (cons _%output_-c194397%_
                                               (cons _%output-o194395%_
                                                     (cons _%output_-o194399%_
                                                           '()))))))
                              (declare (not safe))
                              (##for-each delete-file __tmp194650))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _%tmp194349%_)))
                          '#!void)))))
          (let* ((_%output-bin194333%_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file
                     _%ctx194323%_
                     _%opts194324%_)))
                 (_%output-scm194335%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin194333%_ '"__exe.scm"))))
            (let ()
              (declare (not safe))
              (_%compile-stub194331%_
               _%output-scm194335%_
               _%output-bin194333%_))
            (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
                '#!void
                (let ()
                  (declare (not safe))
                  (##delete-file _%output-scm194335%_)))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx194148%_ _%opts194149%_)
        (letrec ((_%reset-declare194151%_
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
                 (_%generate-stub194152%_
                  (lambda (_%deps194314%_)
                    (let ((_%mod-main194316%_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _%ctx194148%_ 'main)))
                          (_%reset-decl194317%_
                           (let ()
                             (declare (not safe))
                             (_%reset-declare194151%_)))
                          (_%user-decl194318%_
                           (let ()
                             (declare (not safe))
                             (_%user-declare194153%_))))
                      (for-each
                       (lambda (_%dep194320%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl194317%_))
                         (newline)
                         (if _%user-decl194318%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl194318%_))
                               (newline))
                             '#!void)
                         (let ((__tmp194651
                                (cons 'include (cons _%dep194320%_ '()))))
                           (declare (not safe))
                           (##write __tmp194651))
                         (newline))
                       _%deps194314%_)
                      (let ((__tmp194652
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main194316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp194652))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare194153%_
                  (lambda ()
                    (let* ((_%gsc-opts194219%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts194149%_)))
                           (_%gsc-prelude194221%_
                            (if _%gsc-opts194219%_
                                (member '"-prelude" _%gsc-opts194219%_)
                                '#f))
                           (_%gsc-prelude194223%_
                            (if _%gsc-prelude194221%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude194221%_)))
                                '#f)))
                      (let _%lp194226%_ ((_%rest194228%_
                                          (cons _%gsc-prelude194223%_ '()))
                                         (_%user-decls194229%_ '()))
                        (let* ((_%rest194230194238%_ _%rest194228%_)
                               (_%else194232194246%_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _%user-decls194229%_))
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls194229%_)))))
                               (_%K194234194302%_
                                (lambda (_%rest194249%_ _%expr194250%_)
                                  (let* ((_%expr194251194263%_ _%expr194250%_)
                                         (_%else194254194271%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_%lp194226%_
                                               _%rest194249%_
                                               _%user-decls194229%_)))))
                                    (let ((_%K194259194292%_
                                           (lambda (_%decls194290%_)
                                             (let ((__tmp194653
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldl1
                                                       cons
                                                       _%user-decls194229%_
                                                       _%decls194290%_))))
                                               (declare (not safe))
                                               (_%lp194226%_
                                                _%rest194249%_
                                                __tmp194653))))
                                          (_%K194256194277%_
                                           (lambda (_%exprs194275%_)
                                             (let ((__tmp194654
                                                    (append _%exprs194275%_
                                                            _%rest194249%_)))
                                               (declare (not safe))
                                               (_%lp194226%_
                                                __tmp194654
                                                _%user-decls194229%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr194251194263%_))
                                          (let ((_%tl194261194297%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr194251194263%_)))
                                                (_%hd194260194295%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr194251194263%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd194260194295%_
                                                         'declare))
                                                (let ((_%decls194300%_
                                                       _%tl194261194297%_))
                                                  (declare (not safe))
                                                  (_%K194259194292%_
                                                   _%decls194300%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd194260194295%_
                                                             'begin))
                                                    (let ((_%exprs194285%_
                                                           _%tl194261194297%_))
                                                      (declare (not safe))
                                                      (_%K194256194277%_
                                                       _%exprs194285%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else194254194271%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else194254194271%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest194230194238%_))
                              (let ((_%hd194235194305%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest194230194238%_)))
                                    (_%tl194236194307%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest194230194238%_))))
                                (let* ((_%expr194310%_ _%hd194235194305%_)
                                       (_%rest194312%_ _%tl194236194307%_))
                                  (declare (not safe))
                                  (_%K194234194302%_
                                   _%rest194312%_
                                   _%expr194310%_)))
                              (let ()
                                (declare (not safe))
                                (_%else194232194246%_))))))))
                 (_%compile-stub194154%_
                  (lambda (_%output-scm194161%_ _%output-bin194162%_)
                    (let* ((_%gerbil-home194164%_
                            (let ((__tmp194655
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp194655)))
                           (_%gerbil-libdir194166%_
                            (path-expand '"lib" _%gerbil-home194164%_))
                           (_%runtime194168%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp194170%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home194164%_))
                           (_%include-gambit-sharp194172%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp194170%_
                               '"\")")))
                           (_%bin-scm194174%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _%ctx194148%_)))
                           (_%deps194176%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _%ctx194148%_)))
                           (_%deps194178%_
                            (map gxc#find-static-module-file _%deps194176%_))
                           (_%deps194183%_
                            (let ((__tmp194656
                                   (lambda (_%$obj194180%_)
                                     (let ((__tmp194657
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty?
                                               _%$obj194180%_))))
                                       (declare (not safe))
                                       (not __tmp194657)))))
                              (declare (not safe))
                              (##filter __tmp194656 _%deps194178%_)))
                           (_%deps194187%_
                            (let ((__tmp194658
                                   (lambda (_%f194185%_)
                                     (let ((__tmp194659
                                            (let ()
                                              (declare (not safe))
                                              (##member
                                               _%f194185%_
                                               _%runtime194168%_))))
                                       (declare (not safe))
                                       (not __tmp194659)))))
                              (declare (not safe))
                              (##filter __tmp194658 _%deps194183%_)))
                           (_%output-base194189%_
                            (let ((__tmp194660
                                   (path-strip-extension
                                    _%output-scm194161%_)))
                              (declare (not safe))
                              (##string-append __tmp194660)))
                           (_%output-c194191%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194189%_ '".c")))
                           (_%output-o194193%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194189%_ '".o")))
                           (_%output-c_194195%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194189%_ '"_.c")))
                           (_%output-o_194197%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194189%_ '"_.o")))
                           (_%gsc-link-opts194199%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_%gsc-cc-opts194201%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_%gsc-static-opts194203%_
                            (let ((__tmp194661
                                   (path-expand
                                    '"static"
                                    _%gerbil-libdir194166%_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp194661)))
                           (_%output-ld-opts194205%_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_%gsc-gx-macros194207%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp194172%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp194172%_
                                            '()))))
                           (_%gsc-link-opts194209%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts194199%_
                               _%gsc-gx-macros194207%_)))
                           (_%rpath194211%_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _%gerbil-libdir194166%_)))
                           (_%default-ld-options194213%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp194662
                             (lambda ()
                               (let ((__tmp194663
                                      (path-directory _%output-bin194162%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp194663)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp194662))
                      (let ((__tmp194664
                             (lambda ()
                               (let ((__tmp194665
                                      (let ((__tmp194666
                                             (let ((__tmp194667
                                                    (cons _%bin-scm194174%_
                                                          '())))
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp194667
                                                _%deps194187%_))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp194666
                                         _%runtime194168%_))))
                                 (declare (not safe))
                                 (_%generate-stub194152%_ __tmp194665)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%output-scm194161%_
                         __tmp194664))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (begin
                            (let ((__tmp194670
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp194668
                                   (cons '"-link"
                                         (cons '"-o"
                                               (cons _%output-c_194195%_
                                                     (let ((__tmp194669
                                                            (cons _%output-scm194161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
               (declare (not safe))
               (__foldr1 cons __tmp194669 _%gsc-link-opts194209%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke __tmp194670 __tmp194668))
                            (let ((__tmp194674
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp194671
                                   (cons '"-obj"
                                         (let ((__tmp194672
                                                (let ((__tmp194673
                                                       (cons _%output-c194191%_
                                                             (cons _%output-c_194195%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp194673
                                                   _%gsc-static-opts194203%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp194672
                                            _%gsc-cc-opts194201%_)))))
                              (declare (not safe))
                              (gxc#invoke __tmp194674 __tmp194671))
                            (let ((__tmp194677
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp194675
                                   (cons '"-o"
                                         (cons _%output-bin194162%_
                                               (cons _%output-o194193%_
                                                     (cons _%output-o_194197%_
                                                           (let ((__tmp194676
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%rpath194211%_
                                (cons '"-L"
                                      (cons _%gerbil-libdir194166%_
                                            (cons '"-lgambit"
                                                  _%default-ld-options194213%_))))))
                     (declare (not safe))
                     (__foldr1
                      cons
                      __tmp194676
                      _%output-ld-opts194205%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke __tmp194677 __tmp194675)))
                          '#!void)))))
          (let* ((_%output-bin194156%_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file
                     _%ctx194148%_
                     _%opts194149%_)))
                 (_%output-scm194158%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin194156%_ '"__exe.scm"))))
            (let ()
              (declare (not safe))
              (_%compile-stub194154%_
               _%output-scm194158%_
               _%output-bin194156%_))
            (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
                '#!void
                (let ()
                  (declare (not safe))
                  (##delete-file _%output-scm194158%_)))))))
    (define gxc#find-export-binding
      (lambda (_%ctx194097%_ _%id194098%_)
        (let ((_%$e194144%_
               (let ((__tmp194679
                      (lambda (_%e194099194101%_)
                        (let* ((_%g194103194113%_ _%e194099194101%_)
                               (_%else194105194121%_ (lambda () '#f))
                               (_%K194107194125%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g194103194113%_
                                 'gx#module-export::t))
                              (let* ((_%e194108194128%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194103194113%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e194109194131%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194103194113%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e194110194134%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194103194113%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e194110194134%_ '0))
                                    (let ((_%e194111194137%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g194103194113%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g194139194141%_)
                                             (eq? _%g194139194141%_
                                                  _%id194098%_))
                                           _%e194111194137%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%K194107194125%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else194105194121%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else194105194121%_))))
                              (let ()
                                (declare (not safe))
                                (_%else194105194121%_))))))
                     (__tmp194678
                      (##structure-ref
                       _%ctx194097%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp194679 __tmp194678))))
          (if _%$e194144%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e194144%_))
              (let () '#f)))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx194088%_ _%id194089%_)
        (let ((_%$e194091%_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _%ctx194088%_ _%id194089%_))))
          (if _%$e194091%_
              ((lambda (_%bind194094%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind194094%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id194089%_)))
                 (##structure-ref _%bind194094%_ '1 gx#binding::t '#f))
               _%$e194091%_)
              (let ((__tmp194680
                     (##structure-ref
                      _%ctx194088%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp194680
                 _%id194089%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx193954%_)
        (letrec* ((_%ht193956%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template193957%_
                   (lambda (_%in194033%_ _%phi194034%_)
                     (let ((_%iphi194036%_
                            (fx+ _%phi194034%_
                                 (##direct-structure-ref
                                  _%in194033%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports194037%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in194033%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp194039%_ ((_%rest194041%_ _%imports194037%_)
                                          (_%r194042%_ '()))
                         (let* ((_%rest194043194051%_ _%rest194041%_)
                                (_%else194045194059%_ (lambda () _%r194042%_))
                                (_%K194047194076%_
                                 (lambda (_%rest194062%_ _%in194063%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in194063%_
                                          'gx#module-context::t))
                                       (let ()
                                         (if (let ()
                                               (declare (not safe))
                                               (##fxzero? _%iphi194036%_))
                                             (let ((__tmp194681
                                                    (cons _%in194063%_
                                                          _%r194042%_)))
                                               (declare (not safe))
                                               (_%lp194039%_
                                                _%rest194062%_
                                                __tmp194681))
                                             (let ()
                                               (declare (not safe))
                                               (_%lp194039%_
                                                _%rest194062%_
                                                _%r194042%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in194063%_
                                              'gx#module-import::t))
                                           (let ((_%iphi194067%_
                                                  (fx+ _%phi194034%_
                                                       (##direct-structure-ref
                                                        _%in194063%_
                                                        '3
                                                        gx#module-import::t
                                                        '#f))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi194067%_))
                                                 (let ((__tmp194682
                                                        (cons (##direct-structure-ref
                                                               (##direct-structure-ref
                                                                _%in194063%_
                                                                '1
                                                                gx#module-import::t
                                                                '#f)
                                                               '1
                                                               gx#module-export::t
                                                               '#f)
                                                              _%r194042%_)))
                                                   (declare (not safe))
                                                   (_%lp194039%_
                                                    _%rest194062%_
                                                    __tmp194682))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%lp194039%_
                                                    _%rest194062%_
                                                    _%r194042%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in194063%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi194070%_
                                                      (fx+ _%iphi194036%_
                                                           (##direct-structure-ref
                                                            _%in194063%_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi194070%_))
                                                     (let ((__tmp194683
                                                            (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%in194063%_
                           '1
                           gx#import-set::t
                           '#f)
                          _%r194042%_)))
               (declare (not safe))
               (_%lp194039%_ _%rest194062%_ __tmp194683))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi194070%_))
                                                         (let ((__tmp194684
                                                                (let ((__tmp194685
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (_%import-set-template193957%_
                                  _%in194063%_
                                  _%iphi194036%_))))
                          (declare (not safe))
                          (__foldl1 cons _%r194042%_ __tmp194685))))
                   (declare (not safe))
                   (_%lp194039%_ _%rest194062%_ __tmp194684))
                 (let ()
                   (declare (not safe))
                   (_%lp194039%_ _%rest194062%_ _%r194042%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_%lp194039%_
                                                  _%rest194062%_
                                                  _%r194042%_))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest194043194051%_))
                               (let ((_%hd194048194079%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest194043194051%_)))
                                     (_%tl194049194081%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest194043194051%_))))
                                 (let* ((_%in194084%_ _%hd194048194079%_)
                                        (_%rest194086%_ _%tl194049194081%_))
                                   (declare (not safe))
                                   (_%K194047194076%_
                                    _%rest194086%_
                                    _%in194084%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%else194045194059%_))))))))
                  (_%find-deps193958%_
                   (lambda (_%rest193966%_ _%deps193967%_)
                     (let* ((_%rest193968193976%_ _%rest193966%_)
                            (_%else193970193984%_ (lambda () _%deps193967%_))
                            (_%K193972194021%_
                             (lambda (_%rest193987%_ _%hd193988%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd193988%_
                                      'gx#module-context::t))
                                   (let ((_%id193991%_
                                          (##structure-ref
                                           _%hd193988%_
                                           '1
                                           gx#expander-context::t
                                           '#f))
                                         (_%imports193992%_
                                          (##structure-ref
                                           _%hd193988%_
                                           '8
                                           gx#module-context::t
                                           '#f)))
                                     (if (let ()
                                           (declare (not safe))
                                           (hash-get
                                            _%ht193956%_
                                            _%id193991%_))
                                         (let ()
                                           (declare (not safe))
                                           (_%find-deps193958%_
                                            _%rest193987%_
                                            _%deps193967%_))
                                         (let ((_%$e193995%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd193988%_))))
                                           (if _%$e193995%_
                                               ((lambda (_%pre193998%_)
                                                  (let ((_%xdeps194000%_
                                                         (let ((__tmp194686
                                                                (cons _%pre193998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%imports193992%_)))
                   (declare (not safe))
                   (_%find-deps193958%_ __tmp194686 _%deps193967%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-put!
                                                       _%ht193956%_
                                                       _%id193991%_
                                                       _%hd193988%_))
                                                    (let ((__tmp194687
                                                           (cons _%hd193988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%xdeps194000%_)))
              (declare (not safe))
              (_%find-deps193958%_ _%rest193987%_ __tmp194687))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$e193995%_)
                                               (let ((_%xdeps194003%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%find-deps193958%_
                                                         _%imports193992%_
                                                         _%deps193967%_))))
                                                 (let ()
                                                   (declare (not safe))
                                                   (hash-put!
                                                    _%ht193956%_
                                                    _%id193991%_
                                                    _%hd193988%_))
                                                 (let ((__tmp194688
                                                        (cons _%hd193988%_
                                                              _%xdeps194003%_)))
                                                   (declare (not safe))
                                                   (_%find-deps193958%_
                                                    _%rest193987%_
                                                    __tmp194688)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd193988%_
                                          'gx#prelude-context::t))
                                       (let ((_%id194006%_
                                              (##structure-ref
                                               _%hd193988%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (if (let ()
                                               (declare (not safe))
                                               (hash-get
                                                _%ht193956%_
                                                _%id194006%_))
                                             (let ()
                                               (declare (not safe))
                                               (_%find-deps193958%_
                                                _%rest193987%_
                                                _%deps193967%_))
                                             (let ((_%xdeps194010%_
                                                    (let ((__tmp194689
                                                           (##structure-ref
                                                            _%hd193988%_
                                                            '7
                                                            gx#prelude-context::t
                                                            '#f)))
                                                      (declare (not safe))
                                                      (_%find-deps193958%_
                                                       __tmp194689
                                                       _%deps193967%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (hash-get
                                                      _%ht193956%_
                                                      _%id194006%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%find-deps193958%_
                                                      _%rest193987%_
                                                      _%xdeps194010%_))
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _%ht193956%_
                                                        _%id194006%_
                                                        _%hd193988%_))
                                                     (let ((__tmp194690
                                                            (cons _%hd193988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%xdeps194010%_)))
               (declare (not safe))
               (_%find-deps193958%_ _%rest193987%_ __tmp194690)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd193988%_
                                              'gx#module-import::t))
                                           (let ()
                                             (if (fxzero? (##direct-structure-ref
                                                           _%hd193988%_
                                                           '3
                                                           gx#module-import::t
                                                           '#f))
                                                 (let ((__tmp194691
                                                        (cons (##direct-structure-ref
                                                               _%hd193988%_
                                                               '1
                                                               gx#module-import::t
                                                               '#f)
                                                              _%rest193987%_)))
                                                   (declare (not safe))
                                                   (_%find-deps193958%_
                                                    __tmp194691
                                                    _%deps193967%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%find-deps193958%_
                                                    _%rest193987%_
                                                    _%deps193967%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd193988%_
                                                  'gx#module-export::t))
                                               (let ((__tmp194692
                                                      (cons (##direct-structure-ref
                                                             _%hd193988%_
                                                             '1
                                                             gx#module-export::t
                                                             '#f)
                                                            _%rest193987%_)))
                                                 (declare (not safe))
                                                 (_%find-deps193958%_
                                                  __tmp194692
                                                  _%deps193967%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd193988%_
                                                      'gx#import-set::t))
                                                   (let ()
                                                     (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd193988%_
                           '2
                           gx#import-set::t
                           '#f))
                 (let ((__tmp194693
                        (cons (##direct-structure-ref
                               _%hd193988%_
                               '1
                               gx#import-set::t
                               '#f)
                              _%rest193987%_)))
                   (declare (not safe))
                   (_%find-deps193958%_ __tmp194693 _%deps193967%_))
                 (if (fxpositive?
                      (##direct-structure-ref
                       _%hd193988%_
                       '2
                       gx#import-set::t
                       '#f))
                     (let ()
                       (let* ((_%xdeps194017%_
                               (let ()
                                 (declare (not safe))
                                 (_%import-set-template193957%_
                                  _%hd193988%_
                                  '0)))
                              (__tmp194694
                               (let ()
                                 (declare (not safe))
                                 (__foldl1
                                  cons
                                  _%rest193987%_
                                  _%xdeps194017%_))))
                         (declare (not safe))
                         (_%find-deps193958%_ __tmp194694 _%deps193967%_)))
                     (let ()
                       (declare (not safe))
                       (_%find-deps193958%_ _%rest193987%_ _%deps193967%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd193988%_))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest193968193976%_))
                           (let ((_%hd193973194024%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest193968193976%_)))
                                 (_%tl193974194026%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest193968193976%_))))
                             (let* ((_%hd194029%_ _%hd193973194024%_)
                                    (_%rest194031%_ _%tl193974194026%_))
                               (declare (not safe))
                               (_%K193972194021%_
                                _%rest194031%_
                                _%hd194029%_)))
                           (let ()
                             (declare (not safe))
                             (_%else193970193984%_)))))))
          (let ((__tmp194695
                 (filter gx#expander-context-id
                         (let ((__tmp194696
                                (let ((_%$e193960%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#core-context-prelude__%
                                          _%ctx193954%_))))
                                  (if _%$e193960%_
                                      ((lambda (_%pre193963%_)
                                         (cons _%pre193963%_
                                               (##structure-ref
                                                _%ctx193954%_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                       _%$e193960%_)
                                      (let ()
                                        (##structure-ref
                                         _%ctx193954%_
                                         '8
                                         gx#module-context::t
                                         '#f))))))
                           (declare (not safe))
                           (_%find-deps193958%_ __tmp194696 '())))))
            (declare (not safe))
            (##reverse __tmp194695)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx193884%_)
        (let* ((_%context-id193886%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx193884%_
                       'gx#module-context::t))
                    (##structure-ref
                     _%ctx193884%_
                     '1
                     gx#expander-context::t
                     '#f)
                    (string->symbol _%ctx193884%_)))
               (_%scm193888%_
                (let ((__tmp194697
                       (let ()
                         (declare (not safe))
                         (gxc#static-module-name _%context-id193886%_))))
                  (declare (not safe))
                  (##string-append __tmp194697 '".scm")))
               (_%dirs193890%_ (let () (declare (not safe)) (load-path)))
               (_%dirs193896%_
                (let ((_%user-libpath193892%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath193892%_
                      (let ((_%user-libpath193894%_
                             (path-expand '"lib" _%user-libpath193892%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath193894%_ _%dirs193890%_))
                            _%dirs193890%_
                            (cons _%user-libpath193894%_ _%dirs193890%_)))
                      _%dirs193890%_)))
               (_%dirs193906%_
                (let ((_%$e193898%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e193898%_
                      ((lambda (_%g193900193902%_)
                         (cons _%g193900193902%_ _%dirs193896%_))
                       _%$e193898%_)
                      (let () _%dirs193896%_))))
               (_%dirs193912%_
                (map (lambda (_%g193907193909%_)
                       (path-expand '"static" _%g193907193909%_))
                     _%dirs193906%_)))
          (let _%lp193915%_ ((_%rest193917%_ _%dirs193912%_))
            (let* ((_%rest193918193926%_ _%rest193917%_)
                   (_%else193920193934%_
                    (lambda ()
                      (let ((__tmp194698
                             (##structure-ref
                              _%ctx193884%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp194698
                         _%scm193888%_))))
                   (_%K193922193942%_
                    (lambda (_%rest193937%_ _%dir193938%_)
                      (let ((_%path193940%_
                             (path-expand _%scm193888%_ _%dir193938%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path193940%_))
                            _%path193940%_
                            (let ()
                              (declare (not safe))
                              (_%lp193915%_ _%rest193937%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest193918193926%_))
                  (let ((_%hd193923193945%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193918193926%_)))
                        (_%tl193924193947%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193918193926%_))))
                    (let* ((_%dir193950%_ _%hd193923193945%_)
                           (_%rest193952%_ _%tl193924193947%_))
                      (declare (not safe))
                      (_%K193922193942%_ _%rest193952%_ _%dir193950%_)))
                  (let () (declare (not safe)) (_%else193920193934%_))))))))
    (define gxc#file-empty?
      (lambda (_%path193882%_)
        (zero? (let ((__tmp194699 (file-info _%path193882%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp194699)))))
    (define gxc#compile-top-module
      (lambda (_%ctx193871%_)
        (let ((__tmp194703
               (lambda ()
                 (let ((__tmp194704
                        (##structure-ref
                         _%ctx193871%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp194704))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp194705
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx193871%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp194705))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _%ctx193871%_))
                 (if (let ((__tmp194706
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _%ctx193871%_))))
                       (declare (not safe))
                       (null? __tmp194706))
                     (let* ((_%thr1193876%_
                             (let ((__tmp194707
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _%ctx193871%_)))))
                               (declare (not safe))
                               (__spawn __tmp194707)))
                            (_%thr2193879%_
                             (let ((__tmp194708
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code
                                         _%ctx193871%_)))))
                               (declare (not safe))
                               (__spawn __tmp194708))))
                       (let () (declare (not safe)) (gxc#join! _%thr1193876%_))
                       (let ()
                         (declare (not safe))
                         (gxc#join! _%thr2193879%_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _%ctx193871%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _%ctx193871%_))))
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _%ctx193871%_))
                     '#!void)))
              (__tmp194702
               (let ((__obj194599
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj194599)
                 __obj194599))
              (__tmp194701 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp194700 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (__call-with-parameters
           __tmp194703
           gx#current-expander-context
           _%ctx193871%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp194702
           gxc#current-compile-runtime-sections
           __tmp194701
           gxc#current-compile-runtime-names
           __tmp194700))))
    (define gxc#collect-bindings
      (lambda (_%ctx193869%_)
        (let ((__tmp194709
               (##structure-ref _%ctx193869%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp194709))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx193813%_)
        (letrec ((_%compile1193815%_
                  (lambda (_%ctx193856%_)
                    (let* ((_%code193858%_
                            (##structure-ref
                             _%ctx193856%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rt193862%_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _%code193858%_))
                                (let ((_%idstr193860%_
                                       (let ((__tmp194710
                                              (##structure-ref
                                               _%ctx193856%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp194710))))
                                  (declare (not safe))
                                  (##string-append _%idstr193860%_ '"~0"))
                                '#f)))
                      (if _%rt193862%_
                          (let ()
                            (let ((__tmp194711
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-put!
                               __tmp194711
                               _%ctx193856%_
                               _%rt193862%_))
                            (let ()
                              (declare (not safe))
                              (_%generate-runtime-code193817%_
                               _%ctx193856%_
                               _%code193858%_)))
                          (let ((_%path193867%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-static-output-file
                                    _%ctx193856%_))))
                            (declare (not safe))
                            (gxc#with-output-to-scheme-file
                             _%path193867%_
                             void)))
                      (let ()
                        (declare (not safe))
                        (_%generate-loader-code193818%_
                         _%ctx193856%_
                         _%code193858%_
                         _%rt193862%_)))))
                 (_%context-timestamp193816%_
                  (lambda (_%ctx193854%_)
                    (let ((__tmp194712
                           (let ((__tmp194713
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx193854%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp194713 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp194712))))
                 (_%generate-runtime-code193817%_
                  (lambda (_%ctx193836%_ _%code193837%_)
                    (let* ((_%lifts193839%_ (box '()))
                           (_%runtime-code193842%_
                            (let ((__tmp194716
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code193837%_))))
                                  (__tmp194715
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp194714
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp194716
                               gx#current-expander-context
                               _%ctx193836%_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _%lifts193839%_
                               gxc#current-compile-marks
                               __tmp194715
                               gxc#current-compile-identifiers
                               __tmp194714)))
                           (_%runtime-code193844%_
                            (if (let ((__tmp194717 (unbox _%lifts193839%_)))
                                  (declare (not safe))
                                  (null? __tmp194717))
                                _%runtime-code193842%_
                                (cons 'begin
                                      (let ((__tmp194719
                                             (cons _%runtime-code193842%_ '()))
                                            (__tmp194718
                                             (reverse (unbox _%lifts193839%_))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp194719
                                         __tmp194718)))))
                           (_%runtime-code193846%_
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (_%context-timestamp193816%_
                                                       _%ctx193836%_))
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-timestamp))
                                                          '())))
                                        (cons _%runtime-code193844%_ '()))))
                           (_%scm0193848%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _%ctx193836%_
                               '0
                               '".scm")))
                           (_%scms193851%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-static-output-file _%ctx193836%_))))
                      (let ((__tmp194720
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  _%scm0193848%_
                                  _%runtime-code193846%_)))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp194720
                         gxc#current-compile-keep-scm
                         '#t))
                      (if (file-exists? _%scms193851%_)
                          (delete-file _%scms193851%_)
                          '#!void)
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"copy static module "
                         _%scm0193848%_
                         '" => "
                         _%scms193851%_))
                      (copy-file _%scm0193848%_ _%scms193851%_)
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-keep-scm))
                          '#!void
                          (delete-file _%scm0193848%_)))))
                 (_%generate-loader-code193818%_
                  (lambda (_%ctx193825%_ _%code193826%_ _%rt193827%_)
                    (let* ((_%loader-code193830%_
                            (let ((__tmp194721
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code193826%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp194721
                               gx#current-expander-context
                               _%ctx193825%_)))
                           (_%loader-code193832%_
                            (if _%rt193827%_
                                (cons 'begin
                                      (cons _%loader-code193830%_
                                            (cons (cons 'load-module
                                                        (cons _%rt193827%_
                                                              '()))
                                                  '())))
                                _%loader-code193830%_))
                           (__tmp194722
                            (lambda ()
                              (let ((__tmp194723
                                     (let ()
                                       (declare (not safe))
                                       (gxc#compile-output-file
                                        _%ctx193825%_
                                        '#f
                                        '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__0
                                 __tmp194723
                                 _%loader-code193832%_)))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp194722
                       gxc#current-compile-gsc-options
                       '#f)))))
          (let* ((_%all-modules193820%_
                  (cons _%ctx193813%_
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _%ctx193813%_))))
                 (__tmp194724
                  (lambda (_%ctx193822%_)
                    (let ((__tmp194725
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (_%compile1193815%_ _%ctx193822%_)))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp194725
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp194724 _%all-modules193820%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx193708%_)
        (letrec ((_%compile-ssi193710%_
                  (lambda (_%code193781%_)
                    (let* ((_%path193783%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _%ctx193708%_
                               '#f
                               '".ssi")))
                           (_%prelude193795%_
                            (let* ((_%super193785%_
                                    (##structure-ref
                                     _%ctx193708%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e193787%_
                                    (##structure-ref
                                     _%super193785%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e193787%_
                                  ((lambda (_%g193789193791%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g193789193791%_)))
                                   _%$e193787%_)
                                  (let () ':<root>))))
                           (_%ns193797%_
                            (##structure-ref
                             _%ctx193708%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr193799%_
                            (symbol->string
                             (##structure-ref
                              _%ctx193708%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg193807%_
                            (let ((_%$e193801%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr193799%_ '#\/))))
                              (if _%$e193801%_
                                  ((lambda (_%x193804%_)
                                     (let ((__tmp194726
                                            (substring
                                             _%idstr193799%_
                                             '0
                                             _%x193804%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp194726)))
                                   _%$e193801%_)
                                  (let () '#f))))
                           (_%rt193809%_
                            (let ((__tmp194727
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp194727 _%ctx193708%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path193783%_))
                      (let ((__tmp194728
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln
                                  '"prelude:"
                                  '" "
                                  _%prelude193795%_))
                               (if _%pkg193807%_
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"package:"
                                      '" "
                                      _%pkg193807%_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _%ns193797%_))
                               (newline)
                               (pretty-print _%code193781%_)
                               (if _%rt193809%_
                                   (pretty-print
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%rt193809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%path193783%_
                         __tmp194728)))))
                 (_%compile-phi193711%_
                  (lambda (_%part193721%_)
                    (let* ((_%part193722193735%_ _%part193721%_)
                           (_%E193724193739%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part193722193735%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K193725193750%_
                            (lambda (_%code193742%_
                                     _%n193743%_
                                     _%phi193744%_
                                     _%phi-ctx193745%_)
                              (let* ((_%code193748%_
                                      (let ((__tmp194729
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _%code193742%_)))))
                                        (declare (not safe))
                                        (__call-with-parameters
                                         __tmp194729
                                         gx#current-expander-context
                                         _%phi-ctx193745%_
                                         gx#current-expander-phi
                                         _%phi193744%_)))
                                     (__tmp194730
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _%ctx193708%_
                                         _%n193743%_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp194730
                                 _%code193748%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part193722193735%_))
                          (let ((_%hd193726193753%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part193722193735%_)))
                                (_%tl193727193755%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part193722193735%_))))
                            (let ((_%phi-ctx193758%_ _%hd193726193753%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl193727193755%_))
                                  (let ((_%hd193728193760%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl193727193755%_)))
                                        (_%tl193729193762%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl193727193755%_))))
                                    (let ((_%phi193765%_ _%hd193728193760%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl193729193762%_))
                                          (let ((_%hd193730193767%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl193729193762%_)))
                                                (_%tl193731193769%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl193729193762%_))))
                                            (let ((_%n193772%_
                                                   _%hd193730193767%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl193731193769%_))
                                                  (let ((_%hd193732193774%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl193731193769%_)))
                                                        (_%tl193733193776%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl193731193769%_))))
                                                    (let ((_%code193779%_
                                                           _%hd193732193774%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl193733193776%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%K193725193750%_
                                                             _%code193779%_
                                                             _%n193772%_
                                                             _%phi193765%_
                                                             _%phi-ctx193758%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%E193724193739%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%E193724193739%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E193724193739%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E193724193739%_)))))
                          (let ()
                            (declare (not safe))
                            (_%E193724193739%_)))))))
          (let ((_g194731_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _%ctx193708%_))))
            (begin
              (let ((_g194732_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g194731_)
                           (##vector-length _g194731_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g194732_ 2)))
                    (error "Context expects 2 values" _g194732_)))
              (let ((_%ssi-code193713%_
                     (let () (declare (not safe)) (##vector-ref _g194731_ 0)))
                    (_%phi-code193714%_
                     (let () (declare (not safe)) (##vector-ref _g194731_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_%compile-ssi193710%_ _%ssi-code193713%_))
                  (let ((_%threads193719%_
                         (map (lambda (_%code193716%_)
                                (let ((__tmp194733
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_%compile-phi193711%_
                                            _%code193716%_)))))
                                  (declare (not safe))
                                  (__spawn __tmp194733)))
                              _%phi-code193714%_)))
                    (declare (not safe))
                    (##for-each gxc#join! _%threads193719%_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx193690%_)
        (let* ((_%path193692%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _%ctx193690%_ '#f '".ssxi.ss")))
               (_%code193694%_
                (let ((__tmp194734
                       (##structure-ref
                        _%ctx193690%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp194734)))
               (_%idstr193696%_
                (symbol->string
                 (##structure-ref
                  _%ctx193690%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg193704%_
                (let ((_%$e193698%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr193696%_ '#\/))))
                  (if _%$e193698%_
                      ((lambda (_%x193701%_)
                         (let ((__tmp194735
                                (substring _%idstr193696%_ '0 _%x193701%_)))
                           (declare (not safe))
                           (##string->symbol __tmp194735)))
                       _%$e193698%_)
                      (let () '#f)))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path193692%_))
          (let ((__tmp194736
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _%pkg193704%_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _%pkg193704%_))
                       '#!void)
                   (newline)
                   (pretty-print _%code193694%_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _%path193692%_ __tmp194736)))))
    (define gxc#generate-meta-code
      (lambda (_%ctx193683%_)
        (let* ((_%state193685%_
                (let ((__obj194600
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj194600 _%ctx193683%_)
                  __obj194600))
               (_%ssi-code193687%_
                (let ((__tmp194737
                       (##structure-ref
                        _%ctx193683%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta
                   __tmp194737
                   'state:
                   _%state193685%_))))
          (values _%ssi-code193687%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state193685%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx193676%_)
        (let ((_%lifts193678%_ (box '())))
          (let ((__tmp194740
                 (lambda ()
                   (let ((_%code193681%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx193676%_))))
                     (if (let ((__tmp194741 (unbox _%lifts193678%_)))
                           (declare (not safe))
                           (null? __tmp194741))
                         _%code193681%_
                         (cons 'begin
                               (let ((__tmp194743 (cons _%code193681%_ '()))
                                     (__tmp194742
                                      (reverse (unbox _%lifts193678%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp194743 __tmp194742)))))))
                (__tmp194739
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp194738
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp194740
             gxc#current-compile-lift
             _%lifts193678%_
             gxc#current-compile-marks
             __tmp194739
             gxc#current-compile-identifiers
             __tmp194738)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx193672%_)
        (let ((_%modules193674%_ (box '())))
          (let ((__tmp194744
                 (##structure-ref _%ctx193672%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp194744 'modules: _%modules193674%_))
          (reverse (unbox _%modules193674%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path193655%_ _%code193656%_ _%phi?193657%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path193655%_))
        (let ((__tmp194745
               (lambda ()
                 (pretty-print
                  (cons 'declare
                        (cons (cons 'block '())
                              (cons (cons 'standard-bindings '())
                                    (cons (cons 'extended-bindings '())
                                          (let ((__tmp194746
                                                 (if _%phi?193657%_
                                                     '((inlining-limit 200))
                                                     '())))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             '()
                                             __tmp194746)))))))
                 (pretty-print _%code193656%_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _%path193655%_ __tmp194745))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _%path193655%_ _%phi?193657%_))
            '#!void)
        (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
            '#!void
            (delete-file _%path193655%_))))
    (define gxc#compile-scm-file__0
      (lambda (_%path193663%_ _%code193664%_)
        (let ((_%phi?193666%_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__%
           _%path193663%_
           _%code193664%_
           _%phi?193666%_))))
    (define gxc#compile-scm-file
      (lambda _g194748_
        (let ((_g194747_ (let () (declare (not safe)) (##length _g194748_))))
          (cond ((let () (declare (not safe)) (##fx= _g194747_ 2))
                 (apply (lambda (_%path193663%_ _%code193664%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _%path193663%_
                             _%code193664%_)))
                        _g194748_))
                ((let () (declare (not safe)) (##fx= _g194747_ 3))
                 (apply (lambda (_%path193668%_ _%code193669%_ _%phi?193670%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _%path193668%_
                             _%code193669%_
                             _%phi?193670%_)))
                        _g194748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g194748_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?193556%_)
        (let _%lp193558%_ ((_%rest193560%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts193561%_ '()))
          (let* ((_%rest193562193582%_ _%rest193560%_)
                 (_%else193566193590%_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _%phi?193556%_))
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-debug)))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts193561%_)))
                        (reverse _%opts193561%_)))))
            (let ((_%K193576193633%_
                   (lambda (_%rest193631%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193558%_ _%rest193631%_ _%opts193561%_))))
                  (_%K193571193615%_
                   (lambda (_%rest193613%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193558%_ _%rest193613%_ _%opts193561%_))))
                  (_%K193568193597%_
                   (lambda (_%rest193594%_ _%opt193595%_)
                     (let ((__tmp194749 (cons _%opt193595%_ _%opts193561%_)))
                       (declare (not safe))
                       (_%lp193558%_ _%rest193594%_ __tmp194749)))))
              (if (let () (declare (not safe)) (##pair? _%rest193562193582%_))
                  (let ((_%tl193578193638%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193562193582%_)))
                        (_%hd193577193636%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193562193582%_))))
                    (if (equal? _%hd193577193636%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl193578193638%_))
                            (let* ((_%tl193580193641%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl193578193638%_)))
                                   (_%rest193644%_ _%tl193580193641%_))
                              (declare (not safe))
                              (_%K193576193633%_ _%rest193644%_))
                            (let ((_%opt193605%_ _%hd193577193636%_)
                                  (_%rest193607%_ _%tl193578193638%_))
                              (let ()
                                (declare (not safe))
                                (_%K193568193597%_
                                 _%rest193607%_
                                 _%opt193605%_))))
                        (if (equal? _%hd193577193636%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl193578193638%_))
                                (let* ((_%tl193575193623%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl193578193638%_)))
                                       (_%rest193626%_ _%tl193575193623%_))
                                  (declare (not safe))
                                  (_%K193571193615%_ _%rest193626%_))
                                (let ((_%opt193605%_ _%hd193577193636%_)
                                      (_%rest193607%_ _%tl193578193638%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%K193568193597%_
                                     _%rest193607%_
                                     _%opt193605%_))))
                            (let ((_%opt193605%_ _%hd193577193636%_)
                                  (_%rest193607%_ _%tl193578193638%_))
                              (let ()
                                (declare (not safe))
                                (_%K193568193597%_
                                 _%rest193607%_
                                 _%opt193605%_))))))
                  (let () (declare (not safe)) (_%else193566193590%_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?193650%_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _%phi?193650%_))))
    (define gxc#gsc-link-options
      (lambda _g194751_
        (let ((_g194750_ (let () (declare (not safe)) (##length _g194751_))))
          (cond ((let () (declare (not safe)) (##fx= _g194750_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g194751_))
                ((let () (declare (not safe)) (##fx= _g194750_ 1))
                 (apply (lambda (_%phi?193652%_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _%phi?193652%_)))
                        _g194751_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g194751_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_%phi?193457%_)
        (let _%lp193459%_ ((_%rest193461%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts193462%_ '()))
          (let* ((_%rest193463193483%_ _%rest193461%_)
                 (_%else193467193491%_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _%phi?193457%_))
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-debug)))
                        (cons '"-cc-options"
                              (cons '"-g" (reverse _%opts193462%_)))
                        (reverse _%opts193462%_)))))
            (let ((_%K193477193530%_
                   (lambda (_%rest193527%_ _%opt193528%_)
                     (let ((__tmp194752
                            (let ((__tmp194753
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _%opts193462%_))))
                              (declare (not safe))
                              (cons _%opt193528%_ __tmp194753))))
                       (declare (not safe))
                       (_%lp193459%_ _%rest193527%_ __tmp194752))))
                  (_%K193472193511%_
                   (lambda (_%rest193509%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193459%_ _%rest193509%_ _%opts193462%_))))
                  (_%K193469193497%_
                   (lambda (_%rest193495%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193459%_ _%rest193495%_ _%opts193462%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest193463193483%_))
                  (let ((_%tl193479193535%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193463193483%_)))
                        (_%hd193478193533%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193463193483%_))))
                    (if (equal? _%hd193478193533%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl193479193535%_))
                            (let ((_%tl193481193540%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl193479193535%_)))
                                  (_%hd193480193538%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl193479193535%_))))
                              (let ((_%opt193543%_ _%hd193480193538%_)
                                    (_%rest193545%_ _%tl193481193540%_))
                                (let ()
                                  (declare (not safe))
                                  (_%K193477193530%_
                                   _%rest193545%_
                                   _%opt193543%_))))
                            (let ((_%rest193503%_ _%tl193479193535%_))
                              (declare (not safe))
                              (_%K193469193497%_ _%rest193503%_)))
                        (if (equal? _%hd193478193533%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl193479193535%_))
                                (let* ((_%tl193476193519%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl193479193535%_)))
                                       (_%rest193522%_ _%tl193476193519%_))
                                  (declare (not safe))
                                  (_%K193472193511%_ _%rest193522%_))
                                (let ((_%rest193503%_ _%tl193479193535%_))
                                  (declare (not safe))
                                  (_%K193469193497%_ _%rest193503%_)))
                            (let ((_%rest193503%_ _%tl193479193535%_))
                              (declare (not safe))
                              (_%K193469193497%_ _%rest193503%_)))))
                  (let () (declare (not safe)) (_%else193467193491%_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_%phi?193551%_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _%phi?193551%_))))
    (define gxc#gsc-cc-options
      (lambda _g194755_
        (let ((_g194754_ (let () (declare (not safe)) (##length _g194755_))))
          (cond ((let () (declare (not safe)) (##fx= _g194754_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g194755_))
                ((let () (declare (not safe)) (##fx= _g194754_ 1))
                 (apply (lambda (_%phi?193553%_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _%phi?193553%_)))
                        _g194755_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g194755_))))))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir193452%_)
        (let ((_%user-staticdir193454%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir193452%_
                       '" -I "
                       _%user-staticdir193454%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp193364%_ ((_%rest193366%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts193367%_ '()))
          (let* ((_%rest193368193388%_ _%rest193366%_)
                 (_%else193372193396%_ (lambda () _%opts193367%_)))
            (let ((_%K193382193439%_
                   (lambda (_%rest193437%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193364%_ _%rest193437%_ _%opts193367%_))))
                  (_%K193377193417%_
                   (lambda (_%rest193414%_ _%opt193415%_)
                     (let ((__tmp194756
                            (let ((__tmp194757
                                   (let ((__tmp194758
                                          (let ()
                                            (declare (not safe))
                                            (string-split
                                             _%opt193415%_
                                             '#\space))))
                                     (declare (not safe))
                                     (##filter
                                      gxc#not-string-empty?
                                      __tmp194758))))
                              (declare (not safe))
                              (##append _%opts193367%_ __tmp194757))))
                       (declare (not safe))
                       (_%lp193364%_ _%rest193414%_ __tmp194756))))
                  (_%K193374193402%_
                   (lambda (_%rest193400%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193364%_ _%rest193400%_ _%opts193367%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest193368193388%_))
                  (let ((_%tl193384193444%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193368193388%_)))
                        (_%hd193383193442%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193368193388%_))))
                    (if (equal? _%hd193383193442%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl193384193444%_))
                            (let* ((_%tl193386193447%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl193384193444%_)))
                                   (_%rest193450%_ _%tl193386193447%_))
                              (declare (not safe))
                              (_%K193382193439%_ _%rest193450%_))
                            (let ((_%rest193408%_ _%tl193384193444%_))
                              (declare (not safe))
                              (_%K193374193402%_ _%rest193408%_)))
                        (if (equal? _%hd193383193442%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl193384193444%_))
                                (let ((_%tl193381193427%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl193384193444%_)))
                                      (_%hd193380193425%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl193384193444%_))))
                                  (let ((_%opt193430%_ _%hd193380193425%_)
                                        (_%rest193432%_ _%tl193381193427%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%K193377193417%_
                                       _%rest193432%_
                                       _%opt193430%_))))
                                (let ((_%rest193408%_ _%tl193384193444%_))
                                  (declare (not safe))
                                  (_%K193374193402%_ _%rest193408%_)))
                            (let ((_%rest193408%_ _%tl193384193444%_))
                              (declare (not safe))
                              (_%K193374193402%_ _%rest193408%_)))))
                  (let () (declare (not safe)) (_%else193372193396%_))))))))
    (define gxc#not-string-empty?
      (lambda (_%str193361%_)
        (let ((__tmp194759
               (let () (declare (not safe)) (string-empty? _%str193361%_))))
          (declare (not safe))
          (not __tmp194759))))
    (define gxc#gsc-compile-file
      (lambda (_%path193329%_ _%phi?193330%_)
        (letrec ((_%gsc-link-path193332%_
                  (lambda (_%base-path193353%_)
                    (let _%lp193355%_ ((_%n193357%_ '1))
                      (let ((_%path193359%_
                             (let ((__tmp194760 (number->string _%n193357%_)))
                               (declare (not safe))
                               (##string-append
                                _%base-path193353%_
                                '".o"
                                __tmp194760))))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path193359%_))
                            (let ((__tmp194761
                                   (let ()
                                     (declare (not safe))
                                     (+ _%n193357%_ '1))))
                              (declare (not safe))
                              (_%lp193355%_ __tmp194761))
                            _%path193359%_))))))
          (let* ((_%base-path193334%_ (path-strip-extension _%path193329%_))
                 (_%path-c193336%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%base-path193334%_ '".c")))
                 (_%path-o193338%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%base-path193334%_ '".o")))
                 (_%link-path193340%_
                  (let ()
                    (declare (not safe))
                    (_%gsc-link-path193332%_ _%base-path193334%_)))
                 (_%link-path-c193342%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%link-path193340%_ '".c")))
                 (_%link-path-o193344%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%link-path193340%_ '".o")))
                 (_%gsc-link-opts193346%_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _%phi?193330%_)))
                 (_%gsc-cc-opts193348%_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _%phi?193330%_)))
                 (_%gcc-ld-opts193350%_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp194764 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp194762
                   (cons '"-link"
                         (cons '"-flat"
                               (cons '"-o"
                                     (cons _%link-path-c193342%_
                                           (let ((__tmp194763
                                                  (cons _%path193329%_ '())))
                                             (declare (not safe))
                                             (__foldr1
                                              cons
                                              __tmp194763
                                              _%gsc-link-opts193346%_))))))))
              (declare (not safe))
              (gxc#invoke __tmp194764 __tmp194762 'stdout-redirection: '#t))
            (let ((__tmp194767 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp194765
                   (cons '"-obj"
                         (cons '"-cc-options"
                               (cons '"-D___DYNAMIC"
                                     (let ((__tmp194766
                                            (cons _%path-c193336%_
                                                  (cons _%link-path-c193342%_
                                                        '()))))
                                       (declare (not safe))
                                       (__foldr1
                                        cons
                                        __tmp194766
                                        _%gsc-cc-opts193348%_)))))))
              (declare (not safe))
              (gxc#invoke __tmp194767 __tmp194765 'stdout-redirection: '#t))
            (let ((__tmp194769 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp194768
                   (cons '"-shared"
                         (cons '"-o"
                               (cons _%link-path193340%_
                                     (cons _%path-o193338%_
                                           (cons _%link-path-o193344%_
                                                 _%gcc-ld-opts193350%_)))))))
              (declare (not safe))
              (gxc#invoke __tmp194769 __tmp194768))
            (let ((__tmp194770
                   (cons _%path-c193336%_
                         (cons _%path-o193338%_
                               (cons _%link-path-c193342%_
                                     (cons _%link-path-o193344%_ '()))))))
              (declare (not safe))
              (##for-each delete-file __tmp194770))))))
    (define gxc#compile-output-file
      (lambda (_%ctx193295%_ _%n193296%_ _%ext193297%_)
        (letrec ((_%module-relative-path193299%_
                  (lambda (_%ctx193327%_)
                    (path-strip-directory
                     (let ((__tmp194771
                            (##structure-ref
                             _%ctx193327%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp194771)))))
                 (_%module-source-directory193300%_
                  (lambda (_%ctx193323%_)
                    (path-directory
                     (let ((_%mpath193325%_
                            (##structure-ref
                             _%ctx193323%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _%mpath193325%_))
                           _%mpath193325%_
                           (last _%mpath193325%_))))))
                 (_%section-string193301%_
                  (lambda (_%n193317%_)
                    (if (let () (declare (not safe)) (number? _%n193317%_))
                        (let () (number->string _%n193317%_))
                        (if (let () (declare (not safe)) (symbol? _%n193317%_))
                            (let () (symbol->string _%n193317%_))
                            (if (let ()
                                  (declare (not safe))
                                  (string? _%n193317%_))
                                (let () _%n193317%_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n193317%_)))))))
                 (_%file-name193302%_
                  (lambda (_%path193315%_)
                    (if _%n193296%_
                        (string-append
                         _%path193315%_
                         '"~"
                         (let ()
                           (declare (not safe))
                           (_%section-string193301%_ _%n193296%_))
                         _%ext193297%_)
                        (string-append _%path193315%_ _%ext193297%_))))
                 (_%file-path193303%_
                  (lambda ()
                    (let ((_%$e193309%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e193309%_
                          ((lambda (_%outdir193312%_)
                             (path-expand
                              (let ((__tmp194772
                                     (let ((__tmp194773
                                            (##structure-ref
                                             _%ctx193295%_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp194773))))
                                (declare (not safe))
                                (_%file-name193302%_ __tmp194772))
                              _%outdir193312%_))
                           _%$e193309%_)
                          (let ()
                            (path-expand
                             (let ((__tmp194774
                                    (let ()
                                      (declare (not safe))
                                      (_%module-relative-path193299%_
                                       _%ctx193295%_))))
                               (declare (not safe))
                               (_%file-name193302%_ __tmp194774))
                             (let ()
                               (declare (not safe))
                               (_%module-source-directory193300%_
                                _%ctx193295%_)))))))))
          (let ((_%path193305%_
                 (let () (declare (not safe)) (_%file-path193303%_))))
            (let ((__tmp194775
                   (lambda ()
                     (let ((__tmp194776 (path-directory _%path193305%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp194776)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp194775))
            _%path193305%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx193276%_)
        (letrec ((_%file-name193278%_
                  (lambda (_%id193293%_)
                    (let ((__tmp194777
                           (let ()
                             (declare (not safe))
                             (gxc#static-module-name _%id193293%_))))
                      (declare (not safe))
                      (##string-append __tmp194777 '".scm"))))
                 (_%file-path193279%_
                  (lambda ()
                    (let* ((_%file193285%_
                            (let ((__tmp194778
                                   (##structure-ref
                                    _%ctx193276%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_%file-name193278%_ __tmp194778)))
                           (_%$e193287%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e193287%_
                          ((lambda (_%outdir193290%_)
                             (path-expand
                              _%file193285%_
                              (path-expand '"static" _%outdir193290%_)))
                           _%$e193287%_)
                          (let () (path-expand _%file193285%_ '"static")))))))
          (let ((_%path193281%_
                 (let () (declare (not safe)) (_%file-path193279%_))))
            (let ((__tmp194779
                   (lambda ()
                     (let ((__tmp194780 (path-directory _%path193281%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp194780)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp194779))
            _%path193281%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx193269%_ _%opts193270%_)
        (let ((_%$e193272%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts193270%_))))
          (if _%$e193272%_
              (values _%$e193272%_)
              (let ()
                (path-strip-directory
                 (symbol->string
                  (##structure-ref
                   _%ctx193269%_
                   '1
                   gx#expander-context::t
                   '#f))))))))
    (define gxc#static-module-name
      (lambda (_%idstr193259%_)
        (if (let () (declare (not safe)) (string? _%idstr193259%_))
            (let ()
              (let* ((_%str193262%_
                      (let ()
                        (declare (not safe))
                        (gxc#module-id->path-string _%idstr193259%_)))
                     (_%strs193264%_
                      (let ()
                        (declare (not safe))
                        (string-split _%str193262%_ '#\/))))
                (declare (not safe))
                (string-join _%strs193264%_ '"__")))
            (if (let () (declare (not safe)) (symbol? _%idstr193259%_))
                (let ((__tmp194781 (symbol->string _%idstr193259%_)))
                  (declare (not safe))
                  (gxc#static-module-name __tmp194781))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr193259%_))))))
    (define gxc#invoke__%
      (lambda (_%_193223%_
               _%stdout-redirection193219193225%_
               _%stderr-redirection193220193227%_
               _%program193229%_
               _%args193230%_)
        (let* ((_%stdout-redirection193232%_
                (if (eq? _%stdout-redirection193219193225%_ absent-value)
                    '#f
                    _%stdout-redirection193219193225%_))
               (_%stderr-redirection193234%_
                (if (eq? _%stderr-redirection193220193227%_ absent-value)
                    '#f
                    _%stderr-redirection193220193227%_)))
          (let ((__tmp194782 (cons _%program193229%_ _%args193230%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp194782))
          (let* ((_%proc193236%_
                  (open-process
                   (cons 'path:
                         (cons _%program193229%_
                               (cons 'arguments:
                                     (cons _%args193230%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection193232%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection193234%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output193241%_
                  (if (or _%stdout-redirection193232%_
                          _%stderr-redirection193234%_)
                      (read-line _%proc193236%_ '#f)
                      '#f))
                 (_%status193244%_ (process-status _%proc193236%_)))
            (let () (declare (not safe)) (##close-port _%proc193236%_))
            (if (zero? _%status193244%_)
                '#!void
                (begin
                  (display _%output193241%_)
                  (let ((__tmp194783 (cons _%program193229%_ _%args193230%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp194783
                     _%status193244%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords193249%_ . _%args193250%_)
        (apply gxc#invoke__%
               _%@@keywords193249%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193249%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193249%_
                  'stderr-redirection:
                  absent-value))
               _%args193250%_)))
    (define gxc#invoke
      (lambda _%args193221193256%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args193221193256%_)))
    (define gxc#join!
      (lambda (_%thread193213%_)
        (let ((__tmp194785
               (lambda (_%exn193215%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn193215%_))
                     (let ((__tmp194786
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn193215%_))))
                       (declare (not safe))
                       (raise __tmp194786))
                     (let () (declare (not safe)) (raise _%exn193215%_)))))
              (__tmp194784 (lambda () (thread-join! _%thread193213%_))))
          (declare (not safe))
          (__with-catch __tmp194785 __tmp194784))))))
