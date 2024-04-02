(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1712093483)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp194590 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp194590))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp194591 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp194591))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path194496%_ _%fun194497%_)
        (with-output-to-file
         (cons 'path: (cons _%path194496%_ gxc#scheme-file-settings))
         _%fun194497%_)))
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
      (lambda (_%gerbil-libdir194491%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir194491%_)))
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
      (lambda (_%dir194489%_) (delete-file-or-directory _%dir194489%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath194463%_ _%opts194464%_)
        (if (let () (declare (not safe)) (string? _%srcpath194463%_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath194463%_)))
        (let ((_%outdir194466%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts194464%_)))
              (_%invoke-gsc?194467%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts194464%_)))
              (_%gsc-options194468%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts194464%_)))
              (_%keep-scm?194469%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts194464%_)))
              (_%verbosity194470%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts194464%_)))
              (_%optimize194471%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts194464%_)))
              (_%debug194472%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts194464%_)))
              (_%gen-ssxi194473%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts194464%_))))
          (if _%outdir194466%_
              (let ((__tmp194592
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir194466%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp194592))
              '#!void)
          (if _%optimize194471%_
              (let ((__tmp194593
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp194593))
              '#!void)
          (let ((__tmp194596
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath194463%_))
                   (let ((__tmp194597
                          (let ((__tmp194598
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0
                                      _%srcpath194463%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp194598))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp194597))))
                (__tmp194595
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp194594
                 (cons 'compile-module (cons _%srcpath194463%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp194596
             gxc#current-compile-output-dir
             _%outdir194466%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?194467%_
             gxc#current-compile-gsc-options
             _%gsc-options194468%_
             gxc#current-compile-keep-scm
             _%keep-scm?194469%_
             gxc#current-compile-verbose
             _%verbosity194470%_
             gxc#current-compile-optimize
             _%optimize194471%_
             gxc#current-compile-debug
             _%debug194472%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi194473%_
             gxc#current-compile-timestamp
             __tmp194595
             gxc#current-compile-context
             __tmp194594
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath194482%_)
        (let ((_%opts194484%_ '()))
          (declare (not safe))
          (gxc#compile-module__% _%srcpath194482%_ _%opts194484%_))))
    (define gxc#compile-module
      (lambda _g194600_
        (let ((_g194599_ (let () (declare (not safe)) (##length _g194600_))))
          (cond ((let () (declare (not safe)) (##fx= _g194599_ 1))
                 (apply (lambda (_%srcpath194482%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _%srcpath194482%_)))
                        _g194600_))
                ((let () (declare (not safe)) (##fx= _g194599_ 2))
                 (apply (lambda (_%srcpath194486%_ _%opts194487%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _%srcpath194486%_
                             _%opts194487%_)))
                        _g194600_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g194600_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath194439%_ _%opts194440%_)
        (if (let () (declare (not safe)) (string? _%srcpath194439%_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath194439%_)))
        (let ((_%outdir194442%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts194440%_)))
              (_%invoke-gsc?194443%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts194440%_)))
              (_%gsc-options194444%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts194440%_)))
              (_%keep-scm?194445%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts194440%_)))
              (_%verbosity194446%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts194440%_)))
              (_%debug194447%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'debug: _%opts194440%_))))
          (if _%outdir194442%_
              (let ((__tmp194601
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir194442%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp194601))
              '#!void)
          (let ((__tmp194604
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath194439%_))
                   (let ((__tmp194605
                          (let ((__tmp194606
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0
                                      _%srcpath194439%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp194606))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp194605
                      _%opts194440%_))))
                (__tmp194603
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp194602 (cons 'compile-exe (cons _%srcpath194439%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp194604
             gxc#current-compile-output-dir
             _%outdir194442%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?194443%_
             gxc#current-compile-gsc-options
             _%gsc-options194444%_
             gxc#current-compile-keep-scm
             _%keep-scm?194445%_
             gxc#current-compile-verbose
             _%verbosity194446%_
             gxc#current-compile-debug
             _%debug194447%_
             gxc#current-compile-timestamp
             __tmp194603
             gxc#current-compile-context
             __tmp194602
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath194455%_)
        (let ((_%opts194457%_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _%srcpath194455%_ _%opts194457%_))))
    (define gxc#compile-exe
      (lambda _g194608_
        (let ((_g194607_ (let () (declare (not safe)) (##length _g194608_))))
          (cond ((let () (declare (not safe)) (##fx= _g194607_ 1))
                 (apply (lambda (_%srcpath194455%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _%srcpath194455%_)))
                        _g194608_))
                ((let () (declare (not safe)) (##fx= _g194607_ 2))
                 (apply (lambda (_%srcpath194459%_ _%opts194460%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__%
                             _%srcpath194459%_
                             _%opts194460%_)))
                        _g194608_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g194608_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx194435%_ _%opts194436%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts194436%_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _%ctx194435%_
               _%opts194436%_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _%ctx194435%_
               _%opts194436%_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx194312%_ _%opts194313%_)
        (letrec ((_%generate-stub194315%_
                  (lambda (_%builtin-modules194431%_)
                    (let ((_%mod-main194433%_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _%ctx194312%_ 'main))))
                      (let ((__tmp194609
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'append
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%builtin-modules194431%_ '()))
                   (cons 'libgerbil-builtin-modules '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))
                        (declare (not safe))
                        (##write __tmp194609))
                      (let ((__tmp194610
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main194433%_
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
                        (##write __tmp194610))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts194316%_
                  (lambda (_%libgerbil194429%_)
                    (let ((__tmp194611
                           (let ()
                             (declare (not safe))
                             (##string-append _%libgerbil194429%_ '".ldd"))))
                      (declare (not safe))
                      (##call-with-input-file __tmp194611 read))))
                 (_%replace-extension194317%_
                  (lambda (_%path194426%_ _%ext194427%_)
                    (string-append
                     (path-strip-extension _%path194426%_)
                     _%ext194427%_)))
                 (_%not-exclude-module?194318%_
                  (lambda (_%ctx194422%_)
                    (let ((_%id-str194424%_
                           (symbol->string
                            (##structure-ref
                             _%ctx194422%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp194612
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str194424%_))))
                            (declare (not safe))
                            (not __tmp194612))
                          (let ((__tmp194613
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"std/"
                                    _%id-str194424%_))))
                            (declare (not safe))
                            (not __tmp194613))
                          '#f))))
                 (_%not-file-empty?194319%_
                  (lambda (_%path194420%_)
                    (let ((__tmp194614
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _%path194420%_))))
                      (declare (not safe))
                      (not __tmp194614))))
                 (_%compile-stub194320%_
                  (lambda (_%output-scm194327%_ _%output-bin194328%_)
                    (let* ((_%gerbil-home194330%_
                            (let ((__tmp194615
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp194615)))
                           (_%gerbil-libdir194332%_
                            (path-expand '"lib" _%gerbil-home194330%_))
                           (_%gerbil-staticdir194334%_
                            (path-expand '"static" _%gerbil-libdir194332%_))
                           (_%gxlink194336%_
                            (path-expand
                             '"libgerbil-link"
                             _%gerbil-libdir194332%_))
                           (_%tmp194338%_
                            (path-expand
                             (let ((__tmp194616
                                    (let ((__tmp194617
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-timestamp-nanos))))
                                      (declare (not safe))
                                      (##number->string __tmp194617))))
                               (declare (not safe))
                               (##string-append '"gxc." __tmp194616))
                             '"/tmp"))
                           (_%tmp-path194342%_
                            (lambda (_%f194340%_)
                              (path-expand
                               (path-strip-directory _%f194340%_)
                               _%tmp194338%_)))
                           (_%deps194344%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _%ctx194312%_)))
                           (_%deps194346%_
                            (filter _%not-exclude-module?194318%_
                                    _%deps194344%_))
                           (_%src-deps-scm194348%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps194346%_)))
                           (_%src-deps-scm194350%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?194319%_
                               _%src-deps-scm194348%_)))
                           (_%src-deps-scm194352%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm194350%_)))
                           (_%deps-scm194354%_
                            (let ()
                              (declare (not safe))
                              (##map _%tmp-path194342%_
                                     _%src-deps-scm194352%_)))
                           (_%deps-c194360%_
                            (let ((__tmp194618
                                   (lambda (_%g194355194357%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%replace-extension194317%_
                                        _%g194355194357%_
                                        '".c")))))
                              (declare (not safe))
                              (##map __tmp194618 _%deps-scm194354%_)))
                           (_%deps-o194366%_
                            (let ((__tmp194619
                                   (lambda (_%g194361194363%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%replace-extension194317%_
                                        _%g194361194363%_
                                        '".o")))))
                              (declare (not safe))
                              (##map __tmp194619 _%deps-scm194354%_)))
                           (_%src-bin-scm194368%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _%ctx194312%_)))
                           (_%src-bin-scm194370%_
                            (path-expand _%src-bin-scm194368%_))
                           (_%bin-scm194372%_
                            (let ()
                              (declare (not safe))
                              (_%tmp-path194342%_ _%src-bin-scm194370%_)))
                           (_%bin-c194374%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194317%_
                               _%bin-scm194372%_
                               '".c")))
                           (_%bin-o194376%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194317%_
                               _%bin-scm194372%_
                               '".o")))
                           (_%output-bin194378%_
                            (path-expand _%output-bin194328%_))
                           (_%output-scm194380%_
                            (path-expand _%output-scm194327%_))
                           (_%output-c194382%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194317%_
                               _%output-scm194380%_
                               '".c")))
                           (_%output-o194384%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194317%_
                               _%output-scm194380%_
                               '".o")))
                           (_%output_-c194386%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194317%_
                               _%output-scm194380%_
                               '"_.c")))
                           (_%output_-o194388%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194317%_
                               _%output-scm194380%_
                               '"_.o")))
                           (_%gsc-link-opts194390%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_%gsc-cc-opts194392%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_%gsc-static-opts194394%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _%gerbil-staticdir194334%_)))
                           (_%output-ld-opts194396%_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_%libgerbil.a194398%_
                            (path-expand
                             '"libgerbil.a"
                             _%gerbil-libdir194332%_))
                           (_%libgerbil.so194400%_
                            (path-expand
                             '"libgerbil.so"
                             _%gerbil-libdir194332%_))
                           (_%libgerbil.dylib194402%_
                            (path-expand
                             '"libgerbil.dylib"
                             _%gerbil-libdir194332%_))
                           (_%libgerbil-ld-opts194408%_
                            (if (let ()
                                  (declare (not safe))
                                  (##file-exists? _%libgerbil.so194400%_))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (_%get-libgerbil-ld-opts194316%_
                                     _%libgerbil.so194400%_)))
                                (if (let ()
                                      (declare (not safe))
                                      (##file-exists?
                                       _%libgerbil.dylib194402%_))
                                    (let ()
                                      (let ()
                                        (declare (not safe))
                                        (_%get-libgerbil-ld-opts194316%_
                                         _%libgerbil.dylib194402%_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (##file-exists?
                                           _%libgerbil.a194398%_))
                                        (let ()
                                          (let ()
                                            (declare (not safe))
                                            (_%get-libgerbil-ld-opts194316%_
                                             _%libgerbil.a194398%_)))
                                        (let ()
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"libgerbil does not exist"
                                             _%libgerbil.a194398%_
                                             _%libgerbil.so194400%_
                                             _%libgerbil.dylib194402%_)))))))
                           (_%rpath194410%_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _%gerbil-libdir194332%_)))
                           (_%builtin-modules194414%_
                            (let ((__tmp194621
                                   (lambda (_%mod194412%_)
                                     (symbol->string
                                      (##structure-ref
                                       _%mod194412%_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                  (__tmp194620
                                   (cons _%ctx194312%_ _%deps194346%_)))
                              (declare (not safe))
                              (##map __tmp194621 __tmp194620))))
                      (let ((__tmp194622
                             (lambda ()
                               (let ((__tmp194623
                                      (path-directory _%output-bin194378%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp194623)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp194622))
                      (let ((__tmp194624
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_%generate-stub194315%_
                                  _%builtin-modules194414%_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%output-scm194380%_
                         __tmp194624))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (begin
                            (let ((__tmp194625
                                   (lambda ()
                                     (create-directory _%tmp194338%_))))
                              (declare (not safe))
                              (__with-lock gxc#+driver-mutex+ __tmp194625))
                            (let ()
                              (declare (not safe))
                              (##for-each
                               copy-file
                               _%src-deps-scm194352%_
                               _%deps-scm194354%_))
                            (let ()
                              (declare (not safe))
                              (##copy-file
                               _%src-bin-scm194370%_
                               _%bin-scm194372%_))
                            (let ((__tmp194629
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp194626
                                   (cons '"-link"
                                         (cons '"-l"
                                               (cons _%gxlink194336%_
                                                     (let ((__tmp194627
                                                            (let ((__tmp194628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%bin-scm194372%_
                                 (cons _%output-scm194380%_ '()))))
                      (declare (not safe))
                      (__foldr1 cons __tmp194628 _%deps-scm194354%_))))
               (declare (not safe))
               (__foldr1 cons __tmp194627 _%gsc-link-opts194390%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke __tmp194629 __tmp194626))
                            (let ((__tmp194634
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp194630
                                   (cons '"-obj"
                                         (let ((__tmp194631
                                                (let ((__tmp194632
                                                       (let ((__tmp194633
                                                              (cons _%bin-c194374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%output-c194382%_
                                  (cons _%output_-c194386%_ '())))))
                 (declare (not safe))
                 (__foldr1 cons __tmp194633 _%deps-c194360%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp194632
                                                   _%gsc-static-opts194394%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp194631
                                            _%gsc-cc-opts194392%_)))))
                              (declare (not safe))
                              (gxc#invoke __tmp194634 __tmp194630))
                            (let ((__tmp194638
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp194635
                                   (cons '"-o"
                                         (cons _%output-bin194378%_
                                               (let ((__tmp194636
                                                      (cons _%bin-o194376%_
                                                            (cons _%output-o194384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%output_-o194388%_
                                (let ((__tmp194637
                                       (cons _%rpath194410%_
                                             (cons '"-L"
                                                   (cons _%gerbil-libdir194332%_
                                                         (cons '"-lgerbil"
                                                               (cons '"-lgambit"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%libgerbil-ld-opts194408%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (declare (not safe))
                                  (__foldr1
                                   cons
                                   __tmp194637
                                   _%output-ld-opts194396%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldr1
                                                  cons
                                                  __tmp194636
                                                  _%deps-o194366%_))))))
                              (declare (not safe))
                              (gxc#invoke __tmp194638 __tmp194635))
                            (let ((__tmp194639
                                   (cons _%output-c194382%_
                                         (cons _%output_-c194386%_
                                               (cons _%output-o194384%_
                                                     (cons _%output_-o194388%_
                                                           '()))))))
                              (declare (not safe))
                              (##for-each delete-file __tmp194639))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _%tmp194338%_)))
                          '#!void)))))
          (let* ((_%output-bin194322%_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file
                     _%ctx194312%_
                     _%opts194313%_)))
                 (_%output-scm194324%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin194322%_ '"__exe.scm"))))
            (let ()
              (declare (not safe))
              (_%compile-stub194320%_
               _%output-scm194324%_
               _%output-bin194322%_))
            (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
                '#!void
                (let ()
                  (declare (not safe))
                  (##delete-file _%output-scm194324%_)))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx194137%_ _%opts194138%_)
        (letrec ((_%reset-declare194140%_
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
                 (_%generate-stub194141%_
                  (lambda (_%deps194303%_)
                    (let ((_%mod-main194305%_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _%ctx194137%_ 'main)))
                          (_%reset-decl194306%_
                           (let ()
                             (declare (not safe))
                             (_%reset-declare194140%_)))
                          (_%user-decl194307%_
                           (let ()
                             (declare (not safe))
                             (_%user-declare194142%_))))
                      (for-each
                       (lambda (_%dep194309%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl194306%_))
                         (newline)
                         (if _%user-decl194307%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl194307%_))
                               (newline))
                             '#!void)
                         (let ((__tmp194640
                                (cons 'include (cons _%dep194309%_ '()))))
                           (declare (not safe))
                           (##write __tmp194640))
                         (newline))
                       _%deps194303%_)
                      (let ((__tmp194641
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main194305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp194641))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare194142%_
                  (lambda ()
                    (let* ((_%gsc-opts194208%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts194138%_)))
                           (_%gsc-prelude194210%_
                            (if _%gsc-opts194208%_
                                (member '"-prelude" _%gsc-opts194208%_)
                                '#f))
                           (_%gsc-prelude194212%_
                            (if _%gsc-prelude194210%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude194210%_)))
                                '#f)))
                      (let _%lp194215%_ ((_%rest194217%_
                                          (cons _%gsc-prelude194212%_ '()))
                                         (_%user-decls194218%_ '()))
                        (let* ((_%rest194219194227%_ _%rest194217%_)
                               (_%else194221194235%_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _%user-decls194218%_))
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls194218%_)))))
                               (_%K194223194291%_
                                (lambda (_%rest194238%_ _%expr194239%_)
                                  (let* ((_%expr194240194252%_ _%expr194239%_)
                                         (_%else194243194260%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_%lp194215%_
                                               _%rest194238%_
                                               _%user-decls194218%_)))))
                                    (let ((_%K194248194281%_
                                           (lambda (_%decls194279%_)
                                             (let ((__tmp194642
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldl1
                                                       cons
                                                       _%user-decls194218%_
                                                       _%decls194279%_))))
                                               (declare (not safe))
                                               (_%lp194215%_
                                                _%rest194238%_
                                                __tmp194642))))
                                          (_%K194245194266%_
                                           (lambda (_%exprs194264%_)
                                             (let ((__tmp194643
                                                    (append _%exprs194264%_
                                                            _%rest194238%_)))
                                               (declare (not safe))
                                               (_%lp194215%_
                                                __tmp194643
                                                _%user-decls194218%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr194240194252%_))
                                          (let ((_%tl194250194286%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr194240194252%_)))
                                                (_%hd194249194284%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr194240194252%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd194249194284%_
                                                         'declare))
                                                (let ((_%decls194289%_
                                                       _%tl194250194286%_))
                                                  (declare (not safe))
                                                  (_%K194248194281%_
                                                   _%decls194289%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd194249194284%_
                                                             'begin))
                                                    (let ((_%exprs194274%_
                                                           _%tl194250194286%_))
                                                      (declare (not safe))
                                                      (_%K194245194266%_
                                                       _%exprs194274%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else194243194260%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else194243194260%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest194219194227%_))
                              (let ((_%hd194224194294%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest194219194227%_)))
                                    (_%tl194225194296%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest194219194227%_))))
                                (let* ((_%expr194299%_ _%hd194224194294%_)
                                       (_%rest194301%_ _%tl194225194296%_))
                                  (declare (not safe))
                                  (_%K194223194291%_
                                   _%rest194301%_
                                   _%expr194299%_)))
                              (let ()
                                (declare (not safe))
                                (_%else194221194235%_))))))))
                 (_%compile-stub194143%_
                  (lambda (_%output-scm194150%_ _%output-bin194151%_)
                    (let* ((_%gerbil-home194153%_
                            (let ((__tmp194644
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp194644)))
                           (_%gerbil-libdir194155%_
                            (path-expand '"lib" _%gerbil-home194153%_))
                           (_%runtime194157%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp194159%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home194153%_))
                           (_%include-gambit-sharp194161%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp194159%_
                               '"\")")))
                           (_%bin-scm194163%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _%ctx194137%_)))
                           (_%deps194165%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _%ctx194137%_)))
                           (_%deps194167%_
                            (map gxc#find-static-module-file _%deps194165%_))
                           (_%deps194172%_
                            (let ((__tmp194645
                                   (lambda (_%$obj194169%_)
                                     (let ((__tmp194646
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty?
                                               _%$obj194169%_))))
                                       (declare (not safe))
                                       (not __tmp194646)))))
                              (declare (not safe))
                              (##filter __tmp194645 _%deps194167%_)))
                           (_%deps194176%_
                            (let ((__tmp194647
                                   (lambda (_%f194174%_)
                                     (let ((__tmp194648
                                            (let ()
                                              (declare (not safe))
                                              (##member
                                               _%f194174%_
                                               _%runtime194157%_))))
                                       (declare (not safe))
                                       (not __tmp194648)))))
                              (declare (not safe))
                              (##filter __tmp194647 _%deps194172%_)))
                           (_%output-base194178%_
                            (let ((__tmp194649
                                   (path-strip-extension
                                    _%output-scm194150%_)))
                              (declare (not safe))
                              (##string-append __tmp194649)))
                           (_%output-c194180%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194178%_ '".c")))
                           (_%output-o194182%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194178%_ '".o")))
                           (_%output-c_194184%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194178%_ '"_.c")))
                           (_%output-o_194186%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194178%_ '"_.o")))
                           (_%gsc-link-opts194188%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_%gsc-cc-opts194190%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_%gsc-static-opts194192%_
                            (let ((__tmp194650
                                   (path-expand
                                    '"static"
                                    _%gerbil-libdir194155%_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp194650)))
                           (_%output-ld-opts194194%_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_%gsc-gx-macros194196%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp194161%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp194161%_
                                            '()))))
                           (_%gsc-link-opts194198%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts194188%_
                               _%gsc-gx-macros194196%_)))
                           (_%rpath194200%_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _%gerbil-libdir194155%_)))
                           (_%default-ld-options194202%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp194651
                             (lambda ()
                               (let ((__tmp194652
                                      (path-directory _%output-bin194151%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp194652)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp194651))
                      (let ((__tmp194653
                             (lambda ()
                               (let ((__tmp194654
                                      (let ((__tmp194655
                                             (let ((__tmp194656
                                                    (cons _%bin-scm194163%_
                                                          '())))
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp194656
                                                _%deps194176%_))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp194655
                                         _%runtime194157%_))))
                                 (declare (not safe))
                                 (_%generate-stub194141%_ __tmp194654)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%output-scm194150%_
                         __tmp194653))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (begin
                            (let ((__tmp194659
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp194657
                                   (cons '"-link"
                                         (cons '"-o"
                                               (cons _%output-c_194184%_
                                                     (let ((__tmp194658
                                                            (cons _%output-scm194150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
               (declare (not safe))
               (__foldr1 cons __tmp194658 _%gsc-link-opts194198%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke __tmp194659 __tmp194657))
                            (let ((__tmp194663
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp194660
                                   (cons '"-obj"
                                         (let ((__tmp194661
                                                (let ((__tmp194662
                                                       (cons _%output-c194180%_
                                                             (cons _%output-c_194184%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp194662
                                                   _%gsc-static-opts194192%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp194661
                                            _%gsc-cc-opts194190%_)))))
                              (declare (not safe))
                              (gxc#invoke __tmp194663 __tmp194660))
                            (let ((__tmp194666
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp194664
                                   (cons '"-o"
                                         (cons _%output-bin194151%_
                                               (cons _%output-o194182%_
                                                     (cons _%output-o_194186%_
                                                           (let ((__tmp194665
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%rpath194200%_
                                (cons '"-L"
                                      (cons _%gerbil-libdir194155%_
                                            (cons '"-lgambit"
                                                  _%default-ld-options194202%_))))))
                     (declare (not safe))
                     (__foldr1
                      cons
                      __tmp194665
                      _%output-ld-opts194194%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke __tmp194666 __tmp194664)))
                          '#!void)))))
          (let* ((_%output-bin194145%_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file
                     _%ctx194137%_
                     _%opts194138%_)))
                 (_%output-scm194147%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin194145%_ '"__exe.scm"))))
            (let ()
              (declare (not safe))
              (_%compile-stub194143%_
               _%output-scm194147%_
               _%output-bin194145%_))
            (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
                '#!void
                (let ()
                  (declare (not safe))
                  (##delete-file _%output-scm194147%_)))))))
    (define gxc#find-export-binding
      (lambda (_%ctx194086%_ _%id194087%_)
        (let ((_%$e194133%_
               (let ((__tmp194668
                      (lambda (_%e194088194090%_)
                        (let* ((_%g194092194102%_ _%e194088194090%_)
                               (_%else194094194110%_ (lambda () '#f))
                               (_%K194096194114%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g194092194102%_
                                 'gx#module-export::t))
                              (let* ((_%e194097194117%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194092194102%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e194098194120%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194092194102%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e194099194123%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194092194102%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e194099194123%_ '0))
                                    (let ((_%e194100194126%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g194092194102%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g194128194130%_)
                                             (eq? _%g194128194130%_
                                                  _%id194087%_))
                                           _%e194100194126%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%K194096194114%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else194094194110%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else194094194110%_))))
                              (let ()
                                (declare (not safe))
                                (_%else194094194110%_))))))
                     (__tmp194667
                      (##structure-ref
                       _%ctx194086%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp194668 __tmp194667))))
          (if _%$e194133%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e194133%_))
              (let () '#f)))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx194077%_ _%id194078%_)
        (let ((_%$e194080%_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _%ctx194077%_ _%id194078%_))))
          (if _%$e194080%_
              ((lambda (_%bind194083%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind194083%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id194078%_)))
                 (##structure-ref _%bind194083%_ '1 gx#binding::t '#f))
               _%$e194080%_)
              (let ()
                (let ((__tmp194669
                       (##structure-ref
                        _%ctx194077%_
                        '1
                        gx#expander-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"module does not export symbol"
                   __tmp194669
                   _%id194078%_)))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx193943%_)
        (letrec* ((_%ht193945%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template193946%_
                   (lambda (_%in194022%_ _%phi194023%_)
                     (let ((_%iphi194025%_
                            (fx+ _%phi194023%_
                                 (##direct-structure-ref
                                  _%in194022%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports194026%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in194022%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp194028%_ ((_%rest194030%_ _%imports194026%_)
                                          (_%r194031%_ '()))
                         (let* ((_%rest194032194040%_ _%rest194030%_)
                                (_%else194034194048%_ (lambda () _%r194031%_))
                                (_%K194036194065%_
                                 (lambda (_%rest194051%_ _%in194052%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in194052%_
                                          'gx#module-context::t))
                                       (let ()
                                         (if (let ()
                                               (declare (not safe))
                                               (##fxzero? _%iphi194025%_))
                                             (let ((__tmp194670
                                                    (cons _%in194052%_
                                                          _%r194031%_)))
                                               (declare (not safe))
                                               (_%lp194028%_
                                                _%rest194051%_
                                                __tmp194670))
                                             (let ()
                                               (declare (not safe))
                                               (_%lp194028%_
                                                _%rest194051%_
                                                _%r194031%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in194052%_
                                              'gx#module-import::t))
                                           (let ()
                                             (let ((_%iphi194056%_
                                                    (fx+ _%phi194023%_
                                                         (##direct-structure-ref
                                                          _%in194052%_
                                                          '3
                                                          gx#module-import::t
                                                          '#f))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##fxzero?
                                                      _%iphi194056%_))
                                                   (let ((__tmp194671
                                                          (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##direct-structure-ref
                          _%in194052%_
                          '1
                          gx#module-import::t
                          '#f)
                         '1
                         gx#module-export::t
                         '#f)
                        _%r194031%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_%lp194028%_
                                                      _%rest194051%_
                                                      __tmp194671))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%lp194028%_
                                                      _%rest194051%_
                                                      _%r194031%_)))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in194052%_
                                                  'gx#import-set::t))
                                               (let ()
                                                 (let ((_%xphi194059%_
                                                        (fx+ _%iphi194025%_
                                                             (##direct-structure-ref
                                                              _%in194052%_
                                                              '2
                                                              gx#import-set::t
                                                              '#f))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##fxzero?
                                                          _%xphi194059%_))
                                                       (let ()
                                                         (let ((__tmp194672
                                                                (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%in194052%_
                               '1
                               gx#import-set::t
                               '#f)
                              _%r194031%_)))
                   (declare (not safe))
                   (_%lp194028%_ _%rest194051%_ __tmp194672)))
               (if (let () (declare (not safe)) (##fxpositive? _%xphi194059%_))
                   (let ()
                     (let ((__tmp194673
                            (let ((__tmp194674
                                   (let ()
                                     (declare (not safe))
                                     (_%import-set-template193946%_
                                      _%in194052%_
                                      _%iphi194025%_))))
                              (declare (not safe))
                              (__foldl1 cons _%r194031%_ __tmp194674))))
                       (declare (not safe))
                       (_%lp194028%_ _%rest194051%_ __tmp194673)))
                   (let ()
                     (let ()
                       (declare (not safe))
                       (_%lp194028%_ _%rest194051%_ _%r194031%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%lp194028%_
                                                    _%rest194051%_
                                                    _%r194031%_)))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest194032194040%_))
                               (let ((_%hd194037194068%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest194032194040%_)))
                                     (_%tl194038194070%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest194032194040%_))))
                                 (let* ((_%in194073%_ _%hd194037194068%_)
                                        (_%rest194075%_ _%tl194038194070%_))
                                   (declare (not safe))
                                   (_%K194036194065%_
                                    _%rest194075%_
                                    _%in194073%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%else194034194048%_))))))))
                  (_%find-deps193947%_
                   (lambda (_%rest193955%_ _%deps193956%_)
                     (let* ((_%rest193957193965%_ _%rest193955%_)
                            (_%else193959193973%_ (lambda () _%deps193956%_))
                            (_%K193961194010%_
                             (lambda (_%rest193976%_ _%hd193977%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd193977%_
                                      'gx#module-context::t))
                                   (let ()
                                     (let ((_%id193980%_
                                            (##structure-ref
                                             _%hd193977%_
                                             '1
                                             gx#expander-context::t
                                             '#f))
                                           (_%imports193981%_
                                            (##structure-ref
                                             _%hd193977%_
                                             '8
                                             gx#module-context::t
                                             '#f)))
                                       (if (let ()
                                             (declare (not safe))
                                             (hash-get
                                              _%ht193945%_
                                              _%id193980%_))
                                           (let ()
                                             (let ()
                                               (declare (not safe))
                                               (_%find-deps193947%_
                                                _%rest193976%_
                                                _%deps193956%_)))
                                           (let ((_%$e193984%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-context-prelude__%
                                                     _%hd193977%_))))
                                             (if _%$e193984%_
                                                 ((lambda (_%pre193987%_)
                                                    (let ((_%xdeps193989%_
                                                           (let ((__tmp194675
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%pre193987%_ _%imports193981%_)))
                     (declare (not safe))
                     (_%find-deps193947%_ __tmp194675 _%deps193956%_))))
              (let ()
                (declare (not safe))
                (hash-put! _%ht193945%_ _%id193980%_ _%hd193977%_))
              (let ((__tmp194676 (cons _%hd193977%_ _%xdeps193989%_)))
                (declare (not safe))
                (_%find-deps193947%_ _%rest193976%_ __tmp194676))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e193984%_)
                                                 (let ()
                                                   (let ((_%xdeps193992%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%find-deps193947%_
                                                             _%imports193981%_
                                                             _%deps193956%_))))
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _%ht193945%_
                                                        _%id193980%_
                                                        _%hd193977%_))
                                                     (let ((__tmp194677
                                                            (cons _%hd193977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%xdeps193992%_)))
               (declare (not safe))
               (_%find-deps193947%_ _%rest193976%_ __tmp194677)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd193977%_
                                          'gx#prelude-context::t))
                                       (let ()
                                         (let ((_%id193995%_
                                                (##structure-ref
                                                 _%hd193977%_
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (hash-get
                                                  _%ht193945%_
                                                  _%id193995%_))
                                               (let ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%find-deps193947%_
                                                    _%rest193976%_
                                                    _%deps193956%_)))
                                               (let ()
                                                 (let ((_%xdeps193999%_
                                                        (let ((__tmp194678
                                                               (##structure-ref
                                                                _%hd193977%_
                                                                '7
                                                                gx#prelude-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (_%find-deps193947%_
                                                           __tmp194678
                                                           _%deps193956%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (hash-get
                                                          _%ht193945%_
                                                          _%id193995%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%find-deps193947%_
                                                          _%rest193976%_
                                                          _%xdeps193999%_))
                                                       (begin
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%ht193945%_
                                                            _%id193995%_
                                                            _%hd193977%_))
                                                         (let ((__tmp194679
                                                                (cons _%hd193977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%xdeps193999%_)))
                   (declare (not safe))
                   (_%find-deps193947%_ _%rest193976%_ __tmp194679)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd193977%_
                                              'gx#module-import::t))
                                           (let ()
                                             (if (fxzero? (##direct-structure-ref
                                                           _%hd193977%_
                                                           '3
                                                           gx#module-import::t
                                                           '#f))
                                                 (let ((__tmp194680
                                                        (cons (##direct-structure-ref
                                                               _%hd193977%_
                                                               '1
                                                               gx#module-import::t
                                                               '#f)
                                                              _%rest193976%_)))
                                                   (declare (not safe))
                                                   (_%find-deps193947%_
                                                    __tmp194680
                                                    _%deps193956%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%find-deps193947%_
                                                    _%rest193976%_
                                                    _%deps193956%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd193977%_
                                                  'gx#module-export::t))
                                               (let ()
                                                 (let ((__tmp194681
                                                        (cons (##direct-structure-ref
                                                               _%hd193977%_
                                                               '1
                                                               gx#module-export::t
                                                               '#f)
                                                              _%rest193976%_)))
                                                   (declare (not safe))
                                                   (_%find-deps193947%_
                                                    __tmp194681
                                                    _%deps193956%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd193977%_
                                                      'gx#import-set::t))
                                                   (let ()
                                                     (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd193977%_
                           '2
                           gx#import-set::t
                           '#f))
                 (let ()
                   (let ((__tmp194682
                          (cons (##direct-structure-ref
                                 _%hd193977%_
                                 '1
                                 gx#import-set::t
                                 '#f)
                                _%rest193976%_)))
                     (declare (not safe))
                     (_%find-deps193947%_ __tmp194682 _%deps193956%_)))
                 (if (fxpositive?
                      (##direct-structure-ref
                       _%hd193977%_
                       '2
                       gx#import-set::t
                       '#f))
                     (let ()
                       (let* ((_%xdeps194006%_
                               (let ()
                                 (declare (not safe))
                                 (_%import-set-template193946%_
                                  _%hd193977%_
                                  '0)))
                              (__tmp194683
                               (let ()
                                 (declare (not safe))
                                 (__foldl1
                                  cons
                                  _%rest193976%_
                                  _%xdeps194006%_))))
                         (declare (not safe))
                         (_%find-deps193947%_ __tmp194683 _%deps193956%_)))
                     (let ()
                       (let ()
                         (declare (not safe))
                         (_%find-deps193947%_
                          _%rest193976%_
                          _%deps193956%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"Unexpected module import"
                                                              _%hd193977%_)))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest193957193965%_))
                           (let ((_%hd193962194013%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest193957193965%_)))
                                 (_%tl193963194015%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest193957193965%_))))
                             (let* ((_%hd194018%_ _%hd193962194013%_)
                                    (_%rest194020%_ _%tl193963194015%_))
                               (declare (not safe))
                               (_%K193961194010%_
                                _%rest194020%_
                                _%hd194018%_)))
                           (let ()
                             (declare (not safe))
                             (_%else193959193973%_)))))))
          (let ((__tmp194684
                 (filter gx#expander-context-id
                         (let ((__tmp194685
                                (let ((_%$e193949%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#core-context-prelude__%
                                          _%ctx193943%_))))
                                  (if _%$e193949%_
                                      ((lambda (_%pre193952%_)
                                         (cons _%pre193952%_
                                               (##structure-ref
                                                _%ctx193943%_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                       _%$e193949%_)
                                      (let ()
                                        (##structure-ref
                                         _%ctx193943%_
                                         '8
                                         gx#module-context::t
                                         '#f))))))
                           (declare (not safe))
                           (_%find-deps193947%_ __tmp194685 '())))))
            (declare (not safe))
            (##reverse __tmp194684)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx193873%_)
        (let* ((_%context-id193875%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx193873%_
                       'gx#module-context::t))
                    (##structure-ref
                     _%ctx193873%_
                     '1
                     gx#expander-context::t
                     '#f)
                    (string->symbol _%ctx193873%_)))
               (_%scm193877%_
                (let ((__tmp194686
                       (let ()
                         (declare (not safe))
                         (gxc#static-module-name _%context-id193875%_))))
                  (declare (not safe))
                  (##string-append __tmp194686 '".scm")))
               (_%dirs193879%_ (let () (declare (not safe)) (load-path)))
               (_%dirs193885%_
                (let ((_%user-libpath193881%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath193881%_
                      (let ((_%user-libpath193883%_
                             (path-expand '"lib" _%user-libpath193881%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath193883%_ _%dirs193879%_))
                            _%dirs193879%_
                            (cons _%user-libpath193883%_ _%dirs193879%_)))
                      _%dirs193879%_)))
               (_%dirs193895%_
                (let ((_%$e193887%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e193887%_
                      ((lambda (_%g193889193891%_)
                         (cons _%g193889193891%_ _%dirs193885%_))
                       _%$e193887%_)
                      (let () _%dirs193885%_))))
               (_%dirs193901%_
                (map (lambda (_%g193896193898%_)
                       (path-expand '"static" _%g193896193898%_))
                     _%dirs193895%_)))
          (let _%lp193904%_ ((_%rest193906%_ _%dirs193901%_))
            (let* ((_%rest193907193915%_ _%rest193906%_)
                   (_%else193909193923%_
                    (lambda ()
                      (let ((__tmp194687
                             (##structure-ref
                              _%ctx193873%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp194687
                         _%scm193877%_))))
                   (_%K193911193931%_
                    (lambda (_%rest193926%_ _%dir193927%_)
                      (let ((_%path193929%_
                             (path-expand _%scm193877%_ _%dir193927%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path193929%_))
                            _%path193929%_
                            (let ()
                              (declare (not safe))
                              (_%lp193904%_ _%rest193926%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest193907193915%_))
                  (let ((_%hd193912193934%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193907193915%_)))
                        (_%tl193913193936%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193907193915%_))))
                    (let* ((_%dir193939%_ _%hd193912193934%_)
                           (_%rest193941%_ _%tl193913193936%_))
                      (declare (not safe))
                      (_%K193911193931%_ _%rest193941%_ _%dir193939%_)))
                  (let () (declare (not safe)) (_%else193909193923%_))))))))
    (define gxc#file-empty?
      (lambda (_%path193871%_)
        (zero? (let ((__tmp194688 (file-info _%path193871%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp194688)))))
    (define gxc#compile-top-module
      (lambda (_%ctx193860%_)
        (let ((__tmp194692
               (lambda ()
                 (let ((__tmp194693
                        (##structure-ref
                         _%ctx193860%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp194693))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp194694
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx193860%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp194694))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _%ctx193860%_))
                 (if (let ((__tmp194695
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _%ctx193860%_))))
                       (declare (not safe))
                       (null? __tmp194695))
                     (let* ((_%thr1193865%_
                             (let ((__tmp194696
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _%ctx193860%_)))))
                               (declare (not safe))
                               (__spawn __tmp194696)))
                            (_%thr2193868%_
                             (let ((__tmp194697
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code
                                         _%ctx193860%_)))))
                               (declare (not safe))
                               (__spawn __tmp194697))))
                       (let () (declare (not safe)) (gxc#join! _%thr1193865%_))
                       (let ()
                         (declare (not safe))
                         (gxc#join! _%thr2193868%_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _%ctx193860%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _%ctx193860%_))))
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _%ctx193860%_))
                     '#!void)))
              (__tmp194691
               (let ((__obj194588
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj194588)
                 __obj194588))
              (__tmp194690 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp194689 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (__call-with-parameters
           __tmp194692
           gx#current-expander-context
           _%ctx193860%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp194691
           gxc#current-compile-runtime-sections
           __tmp194690
           gxc#current-compile-runtime-names
           __tmp194689))))
    (define gxc#collect-bindings
      (lambda (_%ctx193858%_)
        (let ((__tmp194698
               (##structure-ref _%ctx193858%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp194698))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx193802%_)
        (letrec ((_%compile1193804%_
                  (lambda (_%ctx193845%_)
                    (let* ((_%code193847%_
                            (##structure-ref
                             _%ctx193845%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rt193851%_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _%code193847%_))
                                (let ((_%idstr193849%_
                                       (let ((__tmp194699
                                              (##structure-ref
                                               _%ctx193845%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp194699))))
                                  (declare (not safe))
                                  (##string-append _%idstr193849%_ '"~0"))
                                '#f)))
                      (if _%rt193851%_
                          (let ()
                            (let ((__tmp194700
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-put!
                               __tmp194700
                               _%ctx193845%_
                               _%rt193851%_))
                            (let ()
                              (declare (not safe))
                              (_%generate-runtime-code193806%_
                               _%ctx193845%_
                               _%code193847%_)))
                          (let ()
                            (let ((_%path193856%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-static-output-file
                                      _%ctx193845%_))))
                              (declare (not safe))
                              (gxc#with-output-to-scheme-file
                               _%path193856%_
                               void))))
                      (let ()
                        (declare (not safe))
                        (_%generate-loader-code193807%_
                         _%ctx193845%_
                         _%code193847%_
                         _%rt193851%_)))))
                 (_%context-timestamp193805%_
                  (lambda (_%ctx193843%_)
                    (let ((__tmp194701
                           (let ((__tmp194702
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx193843%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp194702 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp194701))))
                 (_%generate-runtime-code193806%_
                  (lambda (_%ctx193825%_ _%code193826%_)
                    (let* ((_%lifts193828%_ (box '()))
                           (_%runtime-code193831%_
                            (let ((__tmp194705
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code193826%_))))
                                  (__tmp194704
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp194703
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp194705
                               gx#current-expander-context
                               _%ctx193825%_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _%lifts193828%_
                               gxc#current-compile-marks
                               __tmp194704
                               gxc#current-compile-identifiers
                               __tmp194703)))
                           (_%runtime-code193833%_
                            (if (let ((__tmp194706 (unbox _%lifts193828%_)))
                                  (declare (not safe))
                                  (null? __tmp194706))
                                _%runtime-code193831%_
                                (cons 'begin
                                      (let ((__tmp194708
                                             (cons _%runtime-code193831%_ '()))
                                            (__tmp194707
                                             (reverse (unbox _%lifts193828%_))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp194708
                                         __tmp194707)))))
                           (_%runtime-code193835%_
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (_%context-timestamp193805%_
                                                       _%ctx193825%_))
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-timestamp))
                                                          '())))
                                        (cons _%runtime-code193833%_ '()))))
                           (_%scm0193837%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _%ctx193825%_
                               '0
                               '".scm"))))
                      (let ((_%scms193840%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file
                                _%ctx193825%_))))
                        (let ((__tmp194709
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _%scm0193837%_
                                    _%runtime-code193835%_)))))
                          (declare (not safe))
                          (__call-with-parameters
                           __tmp194709
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _%scms193840%_)
                            (delete-file _%scms193840%_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _%scm0193837%_
                           '" => "
                           _%scms193840%_))
                        (copy-file _%scm0193837%_ _%scms193840%_)
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-keep-scm))
                            '#!void
                            (delete-file _%scm0193837%_))))))
                 (_%generate-loader-code193807%_
                  (lambda (_%ctx193814%_ _%code193815%_ _%rt193816%_)
                    (let* ((_%loader-code193819%_
                            (let ((__tmp194710
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code193815%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp194710
                               gx#current-expander-context
                               _%ctx193814%_)))
                           (_%loader-code193821%_
                            (if _%rt193816%_
                                (cons 'begin
                                      (cons _%loader-code193819%_
                                            (cons (cons 'load-module
                                                        (cons _%rt193816%_
                                                              '()))
                                                  '())))
                                _%loader-code193819%_)))
                      (let ((__tmp194711
                             (lambda ()
                               (let ((__tmp194712
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _%ctx193814%_
                                         '#f
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp194712
                                  _%loader-code193821%_)))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp194711
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let* ((_%all-modules193809%_
                  (cons _%ctx193802%_
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _%ctx193802%_))))
                 (__tmp194713
                  (lambda (_%ctx193811%_)
                    (let ((__tmp194714
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (_%compile1193804%_ _%ctx193811%_)))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp194714
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp194713 _%all-modules193809%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx193697%_)
        (letrec ((_%compile-ssi193699%_
                  (lambda (_%code193770%_)
                    (let* ((_%path193772%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _%ctx193697%_
                               '#f
                               '".ssi")))
                           (_%prelude193784%_
                            (let* ((_%super193774%_
                                    (##structure-ref
                                     _%ctx193697%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e193776%_
                                    (##structure-ref
                                     _%super193774%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e193776%_
                                  ((lambda (_%g193778193780%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g193778193780%_)))
                                   _%$e193776%_)
                                  (let () ':<root>))))
                           (_%ns193786%_
                            (##structure-ref
                             _%ctx193697%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr193788%_
                            (symbol->string
                             (##structure-ref
                              _%ctx193697%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg193796%_
                            (let ((_%$e193790%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr193788%_ '#\/))))
                              (if _%$e193790%_
                                  ((lambda (_%x193793%_)
                                     (let ((__tmp194715
                                            (substring
                                             _%idstr193788%_
                                             '0
                                             _%x193793%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp194715)))
                                   _%$e193790%_)
                                  (let () '#f))))
                           (_%rt193798%_
                            (let ((__tmp194716
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp194716 _%ctx193697%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path193772%_))
                      (let ((__tmp194717
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln
                                  '"prelude:"
                                  '" "
                                  _%prelude193784%_))
                               (if _%pkg193796%_
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"package:"
                                      '" "
                                      _%pkg193796%_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _%ns193786%_))
                               (newline)
                               (pretty-print _%code193770%_)
                               (if _%rt193798%_
                                   (pretty-print
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%rt193798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%path193772%_
                         __tmp194717)))))
                 (_%compile-phi193700%_
                  (lambda (_%part193710%_)
                    (let* ((_%part193711193724%_ _%part193710%_)
                           (_%E193713193728%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part193711193724%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K193714193739%_
                            (lambda (_%code193731%_
                                     _%n193732%_
                                     _%phi193733%_
                                     _%phi-ctx193734%_)
                              (let* ((_%code193737%_
                                      (let ((__tmp194718
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _%code193731%_)))))
                                        (declare (not safe))
                                        (__call-with-parameters
                                         __tmp194718
                                         gx#current-expander-context
                                         _%phi-ctx193734%_
                                         gx#current-expander-phi
                                         _%phi193733%_)))
                                     (__tmp194719
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _%ctx193697%_
                                         _%n193732%_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp194719
                                 _%code193737%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part193711193724%_))
                          (let ((_%hd193715193742%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part193711193724%_)))
                                (_%tl193716193744%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part193711193724%_))))
                            (let ((_%phi-ctx193747%_ _%hd193715193742%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl193716193744%_))
                                  (let ((_%hd193717193749%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl193716193744%_)))
                                        (_%tl193718193751%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl193716193744%_))))
                                    (let ((_%phi193754%_ _%hd193717193749%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl193718193751%_))
                                          (let ((_%hd193719193756%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl193718193751%_)))
                                                (_%tl193720193758%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl193718193751%_))))
                                            (let ((_%n193761%_
                                                   _%hd193719193756%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl193720193758%_))
                                                  (let ((_%hd193721193763%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl193720193758%_)))
                                                        (_%tl193722193765%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl193720193758%_))))
                                                    (let ((_%code193768%_
                                                           _%hd193721193763%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl193722193765%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%K193714193739%_
                                                             _%code193768%_
                                                             _%n193761%_
                                                             _%phi193754%_
                                                             _%phi-ctx193747%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%E193713193728%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%E193713193728%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E193713193728%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E193713193728%_)))))
                          (let ()
                            (declare (not safe))
                            (_%E193713193728%_)))))))
          (let ((_g194720_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _%ctx193697%_))))
            (begin
              (let ((_g194721_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g194720_)
                           (##vector-length _g194720_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g194721_ 2)))
                    (error "Context expects 2 values" _g194721_)))
              (let ((_%ssi-code193702%_
                     (let () (declare (not safe)) (##vector-ref _g194720_ 0)))
                    (_%phi-code193703%_
                     (let () (declare (not safe)) (##vector-ref _g194720_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_%compile-ssi193699%_ _%ssi-code193702%_))
                  (let ((_%threads193708%_
                         (map (lambda (_%code193705%_)
                                (let ((__tmp194722
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_%compile-phi193700%_
                                            _%code193705%_)))))
                                  (declare (not safe))
                                  (__spawn __tmp194722)))
                              _%phi-code193703%_)))
                    (declare (not safe))
                    (##for-each gxc#join! _%threads193708%_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx193679%_)
        (let* ((_%path193681%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _%ctx193679%_ '#f '".ssxi.ss")))
               (_%code193683%_
                (let ((__tmp194723
                       (##structure-ref
                        _%ctx193679%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp194723)))
               (_%idstr193685%_
                (symbol->string
                 (##structure-ref
                  _%ctx193679%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg193693%_
                (let ((_%$e193687%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr193685%_ '#\/))))
                  (if _%$e193687%_
                      ((lambda (_%x193690%_)
                         (let ((__tmp194724
                                (substring _%idstr193685%_ '0 _%x193690%_)))
                           (declare (not safe))
                           (##string->symbol __tmp194724)))
                       _%$e193687%_)
                      (let () '#f)))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path193681%_))
          (let ((__tmp194725
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _%pkg193693%_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _%pkg193693%_))
                       '#!void)
                   (newline)
                   (pretty-print _%code193683%_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _%path193681%_ __tmp194725)))))
    (define gxc#generate-meta-code
      (lambda (_%ctx193672%_)
        (let* ((_%state193674%_
                (let ((__obj194589
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj194589 _%ctx193672%_)
                  __obj194589))
               (_%ssi-code193676%_
                (let ((__tmp194726
                       (##structure-ref
                        _%ctx193672%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta
                   __tmp194726
                   'state:
                   _%state193674%_))))
          (values _%ssi-code193676%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state193674%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx193665%_)
        (let ((_%lifts193667%_ (box '())))
          (let ((__tmp194729
                 (lambda ()
                   (let ((_%code193670%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx193665%_))))
                     (if (let ((__tmp194730 (unbox _%lifts193667%_)))
                           (declare (not safe))
                           (null? __tmp194730))
                         _%code193670%_
                         (cons 'begin
                               (let ((__tmp194732 (cons _%code193670%_ '()))
                                     (__tmp194731
                                      (reverse (unbox _%lifts193667%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp194732 __tmp194731)))))))
                (__tmp194728
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp194727
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp194729
             gxc#current-compile-lift
             _%lifts193667%_
             gxc#current-compile-marks
             __tmp194728
             gxc#current-compile-identifiers
             __tmp194727)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx193661%_)
        (let ((_%modules193663%_ (box '())))
          (let ((__tmp194733
                 (##structure-ref _%ctx193661%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp194733 'modules: _%modules193663%_))
          (reverse (unbox _%modules193663%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path193644%_ _%code193645%_ _%phi?193646%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path193644%_))
        (let ((__tmp194734
               (lambda ()
                 (pretty-print
                  (cons 'declare
                        (cons (cons 'block '())
                              (cons (cons 'standard-bindings '())
                                    (cons (cons 'extended-bindings '())
                                          (let ((__tmp194735
                                                 (if _%phi?193646%_
                                                     '((inlining-limit 200))
                                                     '())))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             '()
                                             __tmp194735)))))))
                 (pretty-print _%code193645%_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _%path193644%_ __tmp194734))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _%path193644%_ _%phi?193646%_))
            '#!void)
        (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
            '#!void
            (delete-file _%path193644%_))))
    (define gxc#compile-scm-file__0
      (lambda (_%path193652%_ _%code193653%_)
        (let ((_%phi?193655%_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__%
           _%path193652%_
           _%code193653%_
           _%phi?193655%_))))
    (define gxc#compile-scm-file
      (lambda _g194737_
        (let ((_g194736_ (let () (declare (not safe)) (##length _g194737_))))
          (cond ((let () (declare (not safe)) (##fx= _g194736_ 2))
                 (apply (lambda (_%path193652%_ _%code193653%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _%path193652%_
                             _%code193653%_)))
                        _g194737_))
                ((let () (declare (not safe)) (##fx= _g194736_ 3))
                 (apply (lambda (_%path193657%_ _%code193658%_ _%phi?193659%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _%path193657%_
                             _%code193658%_
                             _%phi?193659%_)))
                        _g194737_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g194737_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?193545%_)
        (let _%lp193547%_ ((_%rest193549%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts193550%_ '()))
          (let* ((_%rest193551193571%_ _%rest193549%_)
                 (_%else193555193579%_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _%phi?193545%_))
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-debug)))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts193550%_)))
                        (reverse _%opts193550%_)))))
            (let ((_%K193565193622%_
                   (lambda (_%rest193620%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193547%_ _%rest193620%_ _%opts193550%_))))
                  (_%K193560193604%_
                   (lambda (_%rest193602%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193547%_ _%rest193602%_ _%opts193550%_))))
                  (_%K193557193586%_
                   (lambda (_%rest193583%_ _%opt193584%_)
                     (let ((__tmp194738 (cons _%opt193584%_ _%opts193550%_)))
                       (declare (not safe))
                       (_%lp193547%_ _%rest193583%_ __tmp194738)))))
              (if (let () (declare (not safe)) (##pair? _%rest193551193571%_))
                  (let ((_%tl193567193627%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193551193571%_)))
                        (_%hd193566193625%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193551193571%_))))
                    (if (equal? _%hd193566193625%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl193567193627%_))
                            (let* ((_%tl193569193630%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl193567193627%_)))
                                   (_%rest193633%_ _%tl193569193630%_))
                              (declare (not safe))
                              (_%K193565193622%_ _%rest193633%_))
                            (let ((_%opt193594%_ _%hd193566193625%_)
                                  (_%rest193596%_ _%tl193567193627%_))
                              (let ()
                                (declare (not safe))
                                (_%K193557193586%_
                                 _%rest193596%_
                                 _%opt193594%_))))
                        (if (equal? _%hd193566193625%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl193567193627%_))
                                (let* ((_%tl193564193612%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl193567193627%_)))
                                       (_%rest193615%_ _%tl193564193612%_))
                                  (declare (not safe))
                                  (_%K193560193604%_ _%rest193615%_))
                                (let ((_%opt193594%_ _%hd193566193625%_)
                                      (_%rest193596%_ _%tl193567193627%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%K193557193586%_
                                     _%rest193596%_
                                     _%opt193594%_))))
                            (let ((_%opt193594%_ _%hd193566193625%_)
                                  (_%rest193596%_ _%tl193567193627%_))
                              (let ()
                                (declare (not safe))
                                (_%K193557193586%_
                                 _%rest193596%_
                                 _%opt193594%_))))))
                  (let () (declare (not safe)) (_%else193555193579%_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?193639%_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _%phi?193639%_))))
    (define gxc#gsc-link-options
      (lambda _g194740_
        (let ((_g194739_ (let () (declare (not safe)) (##length _g194740_))))
          (cond ((let () (declare (not safe)) (##fx= _g194739_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g194740_))
                ((let () (declare (not safe)) (##fx= _g194739_ 1))
                 (apply (lambda (_%phi?193641%_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _%phi?193641%_)))
                        _g194740_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g194740_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_%phi?193446%_)
        (let _%lp193448%_ ((_%rest193450%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts193451%_ '()))
          (let* ((_%rest193452193472%_ _%rest193450%_)
                 (_%else193456193480%_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _%phi?193446%_))
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-debug)))
                        (cons '"-cc-options"
                              (cons '"-g" (reverse _%opts193451%_)))
                        (reverse _%opts193451%_)))))
            (let ((_%K193466193519%_
                   (lambda (_%rest193516%_ _%opt193517%_)
                     (let ((__tmp194741
                            (let ((__tmp194742
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _%opts193451%_))))
                              (declare (not safe))
                              (cons _%opt193517%_ __tmp194742))))
                       (declare (not safe))
                       (_%lp193448%_ _%rest193516%_ __tmp194741))))
                  (_%K193461193500%_
                   (lambda (_%rest193498%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193448%_ _%rest193498%_ _%opts193451%_))))
                  (_%K193458193486%_
                   (lambda (_%rest193484%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193448%_ _%rest193484%_ _%opts193451%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest193452193472%_))
                  (let ((_%tl193468193524%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193452193472%_)))
                        (_%hd193467193522%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193452193472%_))))
                    (if (equal? _%hd193467193522%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl193468193524%_))
                            (let ((_%tl193470193529%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl193468193524%_)))
                                  (_%hd193469193527%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl193468193524%_))))
                              (let ((_%opt193532%_ _%hd193469193527%_)
                                    (_%rest193534%_ _%tl193470193529%_))
                                (let ()
                                  (declare (not safe))
                                  (_%K193466193519%_
                                   _%rest193534%_
                                   _%opt193532%_))))
                            (let ((_%rest193492%_ _%tl193468193524%_))
                              (declare (not safe))
                              (_%K193458193486%_ _%rest193492%_)))
                        (if (equal? _%hd193467193522%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl193468193524%_))
                                (let* ((_%tl193465193508%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl193468193524%_)))
                                       (_%rest193511%_ _%tl193465193508%_))
                                  (declare (not safe))
                                  (_%K193461193500%_ _%rest193511%_))
                                (let ((_%rest193492%_ _%tl193468193524%_))
                                  (declare (not safe))
                                  (_%K193458193486%_ _%rest193492%_)))
                            (let ((_%rest193492%_ _%tl193468193524%_))
                              (declare (not safe))
                              (_%K193458193486%_ _%rest193492%_)))))
                  (let () (declare (not safe)) (_%else193456193480%_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_%phi?193540%_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _%phi?193540%_))))
    (define gxc#gsc-cc-options
      (lambda _g194744_
        (let ((_g194743_ (let () (declare (not safe)) (##length _g194744_))))
          (cond ((let () (declare (not safe)) (##fx= _g194743_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g194744_))
                ((let () (declare (not safe)) (##fx= _g194743_ 1))
                 (apply (lambda (_%phi?193542%_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _%phi?193542%_)))
                        _g194744_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g194744_))))))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir193441%_)
        (let ((_%user-staticdir193443%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir193441%_
                       '" -I "
                       _%user-staticdir193443%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp193353%_ ((_%rest193355%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts193356%_ '()))
          (let* ((_%rest193357193377%_ _%rest193355%_)
                 (_%else193361193385%_ (lambda () _%opts193356%_)))
            (let ((_%K193371193428%_
                   (lambda (_%rest193426%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193353%_ _%rest193426%_ _%opts193356%_))))
                  (_%K193366193406%_
                   (lambda (_%rest193403%_ _%opt193404%_)
                     (let ((__tmp194745
                            (let ((__tmp194746
                                   (let ((__tmp194747
                                          (let ()
                                            (declare (not safe))
                                            (string-split
                                             _%opt193404%_
                                             '#\space))))
                                     (declare (not safe))
                                     (##filter
                                      gxc#not-string-empty?
                                      __tmp194747))))
                              (declare (not safe))
                              (##append _%opts193356%_ __tmp194746))))
                       (declare (not safe))
                       (_%lp193353%_ _%rest193403%_ __tmp194745))))
                  (_%K193363193391%_
                   (lambda (_%rest193389%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193353%_ _%rest193389%_ _%opts193356%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest193357193377%_))
                  (let ((_%tl193373193433%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193357193377%_)))
                        (_%hd193372193431%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193357193377%_))))
                    (if (equal? _%hd193372193431%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl193373193433%_))
                            (let* ((_%tl193375193436%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl193373193433%_)))
                                   (_%rest193439%_ _%tl193375193436%_))
                              (declare (not safe))
                              (_%K193371193428%_ _%rest193439%_))
                            (let ((_%rest193397%_ _%tl193373193433%_))
                              (declare (not safe))
                              (_%K193363193391%_ _%rest193397%_)))
                        (if (equal? _%hd193372193431%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl193373193433%_))
                                (let ((_%tl193370193416%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl193373193433%_)))
                                      (_%hd193369193414%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl193373193433%_))))
                                  (let ((_%opt193419%_ _%hd193369193414%_)
                                        (_%rest193421%_ _%tl193370193416%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%K193366193406%_
                                       _%rest193421%_
                                       _%opt193419%_))))
                                (let ((_%rest193397%_ _%tl193373193433%_))
                                  (declare (not safe))
                                  (_%K193363193391%_ _%rest193397%_)))
                            (let ((_%rest193397%_ _%tl193373193433%_))
                              (declare (not safe))
                              (_%K193363193391%_ _%rest193397%_)))))
                  (let () (declare (not safe)) (_%else193361193385%_))))))))
    (define gxc#not-string-empty?
      (lambda (_%str193350%_)
        (let ((__tmp194748
               (let () (declare (not safe)) (string-empty? _%str193350%_))))
          (declare (not safe))
          (not __tmp194748))))
    (define gxc#gsc-compile-file
      (lambda (_%path193318%_ _%phi?193319%_)
        (letrec ((_%gsc-link-path193321%_
                  (lambda (_%base-path193342%_)
                    (let _%lp193344%_ ((_%n193346%_ '1))
                      (let ((_%path193348%_
                             (let ((__tmp194749 (number->string _%n193346%_)))
                               (declare (not safe))
                               (##string-append
                                _%base-path193342%_
                                '".o"
                                __tmp194749))))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path193348%_))
                            (let ((__tmp194750
                                   (let ()
                                     (declare (not safe))
                                     (+ _%n193346%_ '1))))
                              (declare (not safe))
                              (_%lp193344%_ __tmp194750))
                            _%path193348%_))))))
          (let* ((_%base-path193323%_ (path-strip-extension _%path193318%_))
                 (_%path-c193325%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%base-path193323%_ '".c")))
                 (_%path-o193327%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%base-path193323%_ '".o")))
                 (_%link-path193329%_
                  (let ()
                    (declare (not safe))
                    (_%gsc-link-path193321%_ _%base-path193323%_)))
                 (_%link-path-c193331%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%link-path193329%_ '".c")))
                 (_%link-path-o193333%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%link-path193329%_ '".o")))
                 (_%gsc-link-opts193335%_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _%phi?193319%_)))
                 (_%gsc-cc-opts193337%_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _%phi?193319%_)))
                 (_%gcc-ld-opts193339%_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp194753 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp194751
                   (cons '"-link"
                         (cons '"-flat"
                               (cons '"-o"
                                     (cons _%link-path-c193331%_
                                           (let ((__tmp194752
                                                  (cons _%path193318%_ '())))
                                             (declare (not safe))
                                             (__foldr1
                                              cons
                                              __tmp194752
                                              _%gsc-link-opts193335%_))))))))
              (declare (not safe))
              (gxc#invoke __tmp194753 __tmp194751 'stdout-redirection: '#t))
            (let ((__tmp194756 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp194754
                   (cons '"-obj"
                         (cons '"-cc-options"
                               (cons '"-D___DYNAMIC"
                                     (let ((__tmp194755
                                            (cons _%path-c193325%_
                                                  (cons _%link-path-c193331%_
                                                        '()))))
                                       (declare (not safe))
                                       (__foldr1
                                        cons
                                        __tmp194755
                                        _%gsc-cc-opts193337%_)))))))
              (declare (not safe))
              (gxc#invoke __tmp194756 __tmp194754 'stdout-redirection: '#t))
            (let ((__tmp194758 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp194757
                   (cons '"-shared"
                         (cons '"-o"
                               (cons _%link-path193329%_
                                     (cons _%path-o193327%_
                                           (cons _%link-path-o193333%_
                                                 _%gcc-ld-opts193339%_)))))))
              (declare (not safe))
              (gxc#invoke __tmp194758 __tmp194757))
            (let ((__tmp194759
                   (cons _%path-c193325%_
                         (cons _%path-o193327%_
                               (cons _%link-path-c193331%_
                                     (cons _%link-path-o193333%_ '()))))))
              (declare (not safe))
              (##for-each delete-file __tmp194759))))))
    (define gxc#compile-output-file
      (lambda (_%ctx193284%_ _%n193285%_ _%ext193286%_)
        (letrec ((_%module-relative-path193288%_
                  (lambda (_%ctx193316%_)
                    (path-strip-directory
                     (let ((__tmp194760
                            (##structure-ref
                             _%ctx193316%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp194760)))))
                 (_%module-source-directory193289%_
                  (lambda (_%ctx193312%_)
                    (path-directory
                     (let ((_%mpath193314%_
                            (##structure-ref
                             _%ctx193312%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _%mpath193314%_))
                           _%mpath193314%_
                           (last _%mpath193314%_))))))
                 (_%section-string193290%_
                  (lambda (_%n193306%_)
                    (if (let () (declare (not safe)) (number? _%n193306%_))
                        (let () (number->string _%n193306%_))
                        (if (let () (declare (not safe)) (symbol? _%n193306%_))
                            (let () (symbol->string _%n193306%_))
                            (if (let ()
                                  (declare (not safe))
                                  (string? _%n193306%_))
                                (let () _%n193306%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"Unexpected section"
                                     _%n193306%_))))))))
                 (_%file-name193291%_
                  (lambda (_%path193304%_)
                    (if _%n193285%_
                        (string-append
                         _%path193304%_
                         '"~"
                         (let ()
                           (declare (not safe))
                           (_%section-string193290%_ _%n193285%_))
                         _%ext193286%_)
                        (string-append _%path193304%_ _%ext193286%_))))
                 (_%file-path193292%_
                  (lambda ()
                    (let ((_%$e193298%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e193298%_
                          ((lambda (_%outdir193301%_)
                             (path-expand
                              (let ((__tmp194761
                                     (let ((__tmp194762
                                            (##structure-ref
                                             _%ctx193284%_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp194762))))
                                (declare (not safe))
                                (_%file-name193291%_ __tmp194761))
                              _%outdir193301%_))
                           _%$e193298%_)
                          (let ()
                            (path-expand
                             (let ((__tmp194763
                                    (let ()
                                      (declare (not safe))
                                      (_%module-relative-path193288%_
                                       _%ctx193284%_))))
                               (declare (not safe))
                               (_%file-name193291%_ __tmp194763))
                             (let ()
                               (declare (not safe))
                               (_%module-source-directory193289%_
                                _%ctx193284%_)))))))))
          (let ((_%path193294%_
                 (let () (declare (not safe)) (_%file-path193292%_))))
            (let ((__tmp194764
                   (lambda ()
                     (let ((__tmp194765 (path-directory _%path193294%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp194765)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp194764))
            _%path193294%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx193265%_)
        (letrec ((_%file-name193267%_
                  (lambda (_%id193282%_)
                    (let ((__tmp194766
                           (let ()
                             (declare (not safe))
                             (gxc#static-module-name _%id193282%_))))
                      (declare (not safe))
                      (##string-append __tmp194766 '".scm"))))
                 (_%file-path193268%_
                  (lambda ()
                    (let* ((_%file193274%_
                            (let ((__tmp194767
                                   (##structure-ref
                                    _%ctx193265%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_%file-name193267%_ __tmp194767)))
                           (_%$e193276%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e193276%_
                          ((lambda (_%outdir193279%_)
                             (path-expand
                              _%file193274%_
                              (path-expand '"static" _%outdir193279%_)))
                           _%$e193276%_)
                          (let () (path-expand _%file193274%_ '"static")))))))
          (let ((_%path193270%_
                 (let () (declare (not safe)) (_%file-path193268%_))))
            (let ((__tmp194768
                   (lambda ()
                     (let ((__tmp194769 (path-directory _%path193270%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp194769)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp194768))
            _%path193270%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx193258%_ _%opts193259%_)
        (let ((_%$e193261%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts193259%_))))
          (if _%$e193261%_
              (values _%$e193261%_)
              (let ()
                (path-strip-directory
                 (symbol->string
                  (##structure-ref
                   _%ctx193258%_
                   '1
                   gx#expander-context::t
                   '#f))))))))
    (define gxc#static-module-name
      (lambda (_%idstr193248%_)
        (if (let () (declare (not safe)) (string? _%idstr193248%_))
            (let ()
              (let* ((_%str193251%_
                      (let ()
                        (declare (not safe))
                        (gxc#module-id->path-string _%idstr193248%_)))
                     (_%strs193253%_
                      (let ()
                        (declare (not safe))
                        (string-split _%str193251%_ '#\/))))
                (let ()
                  (declare (not safe))
                  (string-join _%strs193253%_ '"__"))))
            (if (let () (declare (not safe)) (symbol? _%idstr193248%_))
                (let ()
                  (let ((__tmp194770 (symbol->string _%idstr193248%_)))
                    (declare (not safe))
                    (gxc#static-module-name __tmp194770)))
                (let ()
                  (let ()
                    (declare (not safe))
                    (error '"Bad module id" _%idstr193248%_)))))))
    (define gxc#invoke__%
      (lambda (_%_193212%_
               _%stdout-redirection193208193214%_
               _%stderr-redirection193209193216%_
               _%program193218%_
               _%args193219%_)
        (let* ((_%stdout-redirection193221%_
                (if (eq? _%stdout-redirection193208193214%_ absent-value)
                    '#f
                    _%stdout-redirection193208193214%_))
               (_%stderr-redirection193223%_
                (if (eq? _%stderr-redirection193209193216%_ absent-value)
                    '#f
                    _%stderr-redirection193209193216%_)))
          (let ((__tmp194771 (cons _%program193218%_ _%args193219%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp194771))
          (let* ((_%proc193225%_
                  (open-process
                   (cons 'path:
                         (cons _%program193218%_
                               (cons 'arguments:
                                     (cons _%args193219%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection193221%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection193223%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output193230%_
                  (if (or _%stdout-redirection193221%_
                          _%stderr-redirection193223%_)
                      (read-line _%proc193225%_ '#f)
                      '#f)))
            (let ((_%status193233%_ (process-status _%proc193225%_)))
              (let () (declare (not safe)) (##close-port _%proc193225%_))
              (if (zero? _%status193233%_)
                  '#!void
                  (begin
                    (display _%output193230%_)
                    (let ((__tmp194772
                           (cons _%program193218%_ _%args193219%_)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp194772
                       _%status193233%_)))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords193238%_ . _%args193239%_)
        (apply gxc#invoke__%
               _%@@keywords193238%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193238%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193238%_
                  'stderr-redirection:
                  absent-value))
               _%args193239%_)))
    (define gxc#invoke
      (lambda _%args193210193245%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args193210193245%_)))
    (define gxc#join!
      (lambda (_%thread193202%_)
        (let ((__tmp194774
               (lambda (_%exn193204%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn193204%_))
                     (let ((__tmp194775
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn193204%_))))
                       (declare (not safe))
                       (raise __tmp194775))
                     (let () (declare (not safe)) (raise _%exn193204%_)))))
              (__tmp194773 (lambda () (thread-join! _%thread193202%_))))
          (declare (not safe))
          (__with-catch __tmp194774 __tmp194773))))))
