(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1712124241)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp194536 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp194536))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp194537 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp194537))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path194442%_ _%fun194443%_)
        (with-output-to-file
         (cons 'path: (cons _%path194442%_ gxc#scheme-file-settings))
         _%fun194443%_)))
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
      (lambda (_%gerbil-libdir194437%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir194437%_)))
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
      (lambda (_%dir194435%_) (delete-file-or-directory _%dir194435%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath194409%_ _%opts194410%_)
        (if (let () (declare (not safe)) (string? _%srcpath194409%_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath194409%_)))
        (let ((_%outdir194412%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts194410%_)))
              (_%invoke-gsc?194413%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts194410%_)))
              (_%gsc-options194414%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts194410%_)))
              (_%keep-scm?194415%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts194410%_)))
              (_%verbosity194416%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts194410%_)))
              (_%optimize194417%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts194410%_)))
              (_%debug194418%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts194410%_)))
              (_%gen-ssxi194419%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts194410%_))))
          (if _%outdir194412%_
              (let ((__tmp194538
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir194412%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp194538))
              '#!void)
          (if _%optimize194417%_
              (let ((__tmp194539
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp194539))
              '#!void)
          (let ((__tmp194542
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath194409%_))
                   (let ((__tmp194543
                          (let ((__tmp194544
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0
                                      _%srcpath194409%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp194544))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp194543))))
                (__tmp194541
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp194540
                 (cons 'compile-module (cons _%srcpath194409%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp194542
             gxc#current-compile-output-dir
             _%outdir194412%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?194413%_
             gxc#current-compile-gsc-options
             _%gsc-options194414%_
             gxc#current-compile-keep-scm
             _%keep-scm?194415%_
             gxc#current-compile-verbose
             _%verbosity194416%_
             gxc#current-compile-optimize
             _%optimize194417%_
             gxc#current-compile-debug
             _%debug194418%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi194419%_
             gxc#current-compile-timestamp
             __tmp194541
             gxc#current-compile-context
             __tmp194540
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath194428%_)
        (let ((_%opts194430%_ '()))
          (declare (not safe))
          (gxc#compile-module__% _%srcpath194428%_ _%opts194430%_))))
    (define gxc#compile-module
      (lambda _g194546_
        (let ((_g194545_ (let () (declare (not safe)) (##length _g194546_))))
          (cond ((let () (declare (not safe)) (##fx= _g194545_ 1))
                 (apply (lambda (_%srcpath194428%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _%srcpath194428%_)))
                        _g194546_))
                ((let () (declare (not safe)) (##fx= _g194545_ 2))
                 (apply (lambda (_%srcpath194432%_ _%opts194433%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _%srcpath194432%_
                             _%opts194433%_)))
                        _g194546_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g194546_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath194385%_ _%opts194386%_)
        (if (let () (declare (not safe)) (string? _%srcpath194385%_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath194385%_)))
        (let ((_%outdir194388%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts194386%_)))
              (_%invoke-gsc?194389%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts194386%_)))
              (_%gsc-options194390%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts194386%_)))
              (_%keep-scm?194391%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts194386%_)))
              (_%verbosity194392%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts194386%_)))
              (_%debug194393%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'debug: _%opts194386%_))))
          (if _%outdir194388%_
              (let ((__tmp194547
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir194388%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp194547))
              '#!void)
          (let ((__tmp194550
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath194385%_))
                   (let ((__tmp194551
                          (let ((__tmp194552
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0
                                      _%srcpath194385%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp194552))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp194551
                      _%opts194386%_))))
                (__tmp194549
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp194548 (cons 'compile-exe (cons _%srcpath194385%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp194550
             gxc#current-compile-output-dir
             _%outdir194388%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?194389%_
             gxc#current-compile-gsc-options
             _%gsc-options194390%_
             gxc#current-compile-keep-scm
             _%keep-scm?194391%_
             gxc#current-compile-verbose
             _%verbosity194392%_
             gxc#current-compile-debug
             _%debug194393%_
             gxc#current-compile-timestamp
             __tmp194549
             gxc#current-compile-context
             __tmp194548
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath194401%_)
        (let ((_%opts194403%_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _%srcpath194401%_ _%opts194403%_))))
    (define gxc#compile-exe
      (lambda _g194554_
        (let ((_g194553_ (let () (declare (not safe)) (##length _g194554_))))
          (cond ((let () (declare (not safe)) (##fx= _g194553_ 1))
                 (apply (lambda (_%srcpath194401%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _%srcpath194401%_)))
                        _g194554_))
                ((let () (declare (not safe)) (##fx= _g194553_ 2))
                 (apply (lambda (_%srcpath194405%_ _%opts194406%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__%
                             _%srcpath194405%_
                             _%opts194406%_)))
                        _g194554_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g194554_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx194381%_ _%opts194382%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts194382%_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _%ctx194381%_
               _%opts194382%_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _%ctx194381%_
               _%opts194382%_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx194258%_ _%opts194259%_)
        (letrec ((_%generate-stub194261%_
                  (lambda (_%builtin-modules194377%_)
                    (let ((_%mod-main194379%_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _%ctx194258%_ 'main))))
                      (let ((__tmp194555
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'append
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%builtin-modules194377%_ '()))
                   (cons 'libgerbil-builtin-modules '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))
                        (declare (not safe))
                        (##write __tmp194555))
                      (let ((__tmp194556
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main194379%_
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
                        (##write __tmp194556))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts194262%_
                  (lambda (_%libgerbil194375%_)
                    (let ((__tmp194557
                           (let ()
                             (declare (not safe))
                             (##string-append _%libgerbil194375%_ '".ldd"))))
                      (declare (not safe))
                      (##call-with-input-file __tmp194557 read))))
                 (_%replace-extension194263%_
                  (lambda (_%path194372%_ _%ext194373%_)
                    (string-append
                     (path-strip-extension _%path194372%_)
                     _%ext194373%_)))
                 (_%not-exclude-module?194264%_
                  (lambda (_%ctx194368%_)
                    (let ((_%id-str194370%_
                           (symbol->string
                            (##structure-ref
                             _%ctx194368%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp194558
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str194370%_))))
                            (declare (not safe))
                            (not __tmp194558))
                          (let ((__tmp194559
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"std/"
                                    _%id-str194370%_))))
                            (declare (not safe))
                            (not __tmp194559))
                          '#f))))
                 (_%not-file-empty?194265%_
                  (lambda (_%path194366%_)
                    (let ((__tmp194560
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _%path194366%_))))
                      (declare (not safe))
                      (not __tmp194560))))
                 (_%compile-stub194266%_
                  (lambda (_%output-scm194273%_ _%output-bin194274%_)
                    (let* ((_%gerbil-home194276%_
                            (let ((__tmp194561
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp194561)))
                           (_%gerbil-libdir194278%_
                            (path-expand '"lib" _%gerbil-home194276%_))
                           (_%gerbil-staticdir194280%_
                            (path-expand '"static" _%gerbil-libdir194278%_))
                           (_%gxlink194282%_
                            (path-expand
                             '"libgerbil-link"
                             _%gerbil-libdir194278%_))
                           (_%tmp194284%_
                            (path-expand
                             (let ((__tmp194562
                                    (let ((__tmp194563
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-timestamp-nanos))))
                                      (declare (not safe))
                                      (##number->string __tmp194563))))
                               (declare (not safe))
                               (##string-append '"gxc." __tmp194562))
                             '"/tmp"))
                           (_%tmp-path194288%_
                            (lambda (_%f194286%_)
                              (path-expand
                               (path-strip-directory _%f194286%_)
                               _%tmp194284%_)))
                           (_%deps194290%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _%ctx194258%_)))
                           (_%deps194292%_
                            (filter _%not-exclude-module?194264%_
                                    _%deps194290%_))
                           (_%src-deps-scm194294%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps194292%_)))
                           (_%src-deps-scm194296%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?194265%_
                               _%src-deps-scm194294%_)))
                           (_%src-deps-scm194298%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm194296%_)))
                           (_%deps-scm194300%_
                            (let ()
                              (declare (not safe))
                              (##map _%tmp-path194288%_
                                     _%src-deps-scm194298%_)))
                           (_%deps-c194306%_
                            (let ((__tmp194564
                                   (lambda (_%g194301194303%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%replace-extension194263%_
                                        _%g194301194303%_
                                        '".c")))))
                              (declare (not safe))
                              (##map __tmp194564 _%deps-scm194300%_)))
                           (_%deps-o194312%_
                            (let ((__tmp194565
                                   (lambda (_%g194307194309%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%replace-extension194263%_
                                        _%g194307194309%_
                                        '".o")))))
                              (declare (not safe))
                              (##map __tmp194565 _%deps-scm194300%_)))
                           (_%src-bin-scm194314%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _%ctx194258%_)))
                           (_%src-bin-scm194316%_
                            (path-expand _%src-bin-scm194314%_))
                           (_%bin-scm194318%_
                            (let ()
                              (declare (not safe))
                              (_%tmp-path194288%_ _%src-bin-scm194316%_)))
                           (_%bin-c194320%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194263%_
                               _%bin-scm194318%_
                               '".c")))
                           (_%bin-o194322%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194263%_
                               _%bin-scm194318%_
                               '".o")))
                           (_%output-bin194324%_
                            (path-expand _%output-bin194274%_))
                           (_%output-scm194326%_
                            (path-expand _%output-scm194273%_))
                           (_%output-c194328%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194263%_
                               _%output-scm194326%_
                               '".c")))
                           (_%output-o194330%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194263%_
                               _%output-scm194326%_
                               '".o")))
                           (_%output_-c194332%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194263%_
                               _%output-scm194326%_
                               '"_.c")))
                           (_%output_-o194334%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194263%_
                               _%output-scm194326%_
                               '"_.o")))
                           (_%gsc-link-opts194336%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_%gsc-cc-opts194338%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_%gsc-static-opts194340%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _%gerbil-staticdir194280%_)))
                           (_%output-ld-opts194342%_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_%libgerbil.a194344%_
                            (path-expand
                             '"libgerbil.a"
                             _%gerbil-libdir194278%_))
                           (_%libgerbil.so194346%_
                            (path-expand
                             '"libgerbil.so"
                             _%gerbil-libdir194278%_))
                           (_%libgerbil.dylib194348%_
                            (path-expand
                             '"libgerbil.dylib"
                             _%gerbil-libdir194278%_))
                           (_%libgerbil-ld-opts194354%_
                            (if (let ()
                                  (declare (not safe))
                                  (##file-exists? _%libgerbil.so194346%_))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (_%get-libgerbil-ld-opts194262%_
                                     _%libgerbil.so194346%_)))
                                (if (let ()
                                      (declare (not safe))
                                      (##file-exists?
                                       _%libgerbil.dylib194348%_))
                                    (let ()
                                      (let ()
                                        (declare (not safe))
                                        (_%get-libgerbil-ld-opts194262%_
                                         _%libgerbil.dylib194348%_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (##file-exists?
                                           _%libgerbil.a194344%_))
                                        (let ()
                                          (let ()
                                            (declare (not safe))
                                            (_%get-libgerbil-ld-opts194262%_
                                             _%libgerbil.a194344%_)))
                                        (let ()
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"libgerbil does not exist"
                                             _%libgerbil.a194344%_
                                             _%libgerbil.so194346%_
                                             _%libgerbil.dylib194348%_)))))))
                           (_%rpath194356%_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _%gerbil-libdir194278%_)))
                           (_%builtin-modules194360%_
                            (let ((__tmp194567
                                   (lambda (_%mod194358%_)
                                     (symbol->string
                                      (##structure-ref
                                       _%mod194358%_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                  (__tmp194566
                                   (cons _%ctx194258%_ _%deps194292%_)))
                              (declare (not safe))
                              (##map __tmp194567 __tmp194566))))
                      (let ((__tmp194568
                             (lambda ()
                               (let ((__tmp194569
                                      (path-directory _%output-bin194324%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp194569)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp194568))
                      (let ((__tmp194570
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_%generate-stub194261%_
                                  _%builtin-modules194360%_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%output-scm194326%_
                         __tmp194570))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (begin
                            (let ((__tmp194571
                                   (lambda ()
                                     (create-directory _%tmp194284%_))))
                              (declare (not safe))
                              (__with-lock gxc#+driver-mutex+ __tmp194571))
                            (let ()
                              (declare (not safe))
                              (##for-each
                               copy-file
                               _%src-deps-scm194298%_
                               _%deps-scm194300%_))
                            (let ()
                              (declare (not safe))
                              (##copy-file
                               _%src-bin-scm194316%_
                               _%bin-scm194318%_))
                            (let ((__tmp194575
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp194572
                                   (cons '"-link"
                                         (cons '"-l"
                                               (cons _%gxlink194282%_
                                                     (let ((__tmp194573
                                                            (let ((__tmp194574
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%bin-scm194318%_
                                 (cons _%output-scm194326%_ '()))))
                      (declare (not safe))
                      (__foldr1 cons __tmp194574 _%deps-scm194300%_))))
               (declare (not safe))
               (__foldr1 cons __tmp194573 _%gsc-link-opts194336%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke __tmp194575 __tmp194572))
                            (let ((__tmp194580
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp194576
                                   (cons '"-obj"
                                         (let ((__tmp194577
                                                (let ((__tmp194578
                                                       (let ((__tmp194579
                                                              (cons _%bin-c194320%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%output-c194328%_
                                  (cons _%output_-c194332%_ '())))))
                 (declare (not safe))
                 (__foldr1 cons __tmp194579 _%deps-c194306%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp194578
                                                   _%gsc-static-opts194340%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp194577
                                            _%gsc-cc-opts194338%_)))))
                              (declare (not safe))
                              (gxc#invoke __tmp194580 __tmp194576))
                            (let ((__tmp194584
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp194581
                                   (cons '"-o"
                                         (cons _%output-bin194324%_
                                               (let ((__tmp194582
                                                      (cons _%bin-o194322%_
                                                            (cons _%output-o194330%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%output_-o194334%_
                                (let ((__tmp194583
                                       (cons _%rpath194356%_
                                             (cons '"-L"
                                                   (cons _%gerbil-libdir194278%_
                                                         (cons '"-lgerbil"
                                                               (cons '"-lgambit"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%libgerbil-ld-opts194354%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (declare (not safe))
                                  (__foldr1
                                   cons
                                   __tmp194583
                                   _%output-ld-opts194342%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldr1
                                                  cons
                                                  __tmp194582
                                                  _%deps-o194312%_))))))
                              (declare (not safe))
                              (gxc#invoke __tmp194584 __tmp194581))
                            (let ((__tmp194585
                                   (cons _%output-c194328%_
                                         (cons _%output_-c194332%_
                                               (cons _%output-o194330%_
                                                     (cons _%output_-o194334%_
                                                           '()))))))
                              (declare (not safe))
                              (##for-each delete-file __tmp194585))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _%tmp194284%_)))
                          '#!void)))))
          (let* ((_%output-bin194268%_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file
                     _%ctx194258%_
                     _%opts194259%_)))
                 (_%output-scm194270%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin194268%_ '"__exe.scm"))))
            (let ()
              (declare (not safe))
              (_%compile-stub194266%_
               _%output-scm194270%_
               _%output-bin194268%_))
            (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
                '#!void
                (let ()
                  (declare (not safe))
                  (##delete-file _%output-scm194270%_)))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx194083%_ _%opts194084%_)
        (letrec ((_%reset-declare194086%_
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
                 (_%generate-stub194087%_
                  (lambda (_%deps194249%_)
                    (let ((_%mod-main194251%_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _%ctx194083%_ 'main)))
                          (_%reset-decl194252%_
                           (let ()
                             (declare (not safe))
                             (_%reset-declare194086%_)))
                          (_%user-decl194253%_
                           (let ()
                             (declare (not safe))
                             (_%user-declare194088%_))))
                      (for-each
                       (lambda (_%dep194255%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl194252%_))
                         (newline)
                         (if _%user-decl194253%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl194253%_))
                               (newline))
                             '#!void)
                         (let ((__tmp194586
                                (cons 'include (cons _%dep194255%_ '()))))
                           (declare (not safe))
                           (##write __tmp194586))
                         (newline))
                       _%deps194249%_)
                      (let ((__tmp194587
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main194251%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp194587))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare194088%_
                  (lambda ()
                    (let* ((_%gsc-opts194154%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts194084%_)))
                           (_%gsc-prelude194156%_
                            (if _%gsc-opts194154%_
                                (member '"-prelude" _%gsc-opts194154%_)
                                '#f))
                           (_%gsc-prelude194158%_
                            (if _%gsc-prelude194156%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude194156%_)))
                                '#f)))
                      (let _%lp194161%_ ((_%rest194163%_
                                          (cons _%gsc-prelude194158%_ '()))
                                         (_%user-decls194164%_ '()))
                        (let* ((_%rest194165194173%_ _%rest194163%_)
                               (_%else194167194181%_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _%user-decls194164%_))
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls194164%_)))))
                               (_%K194169194237%_
                                (lambda (_%rest194184%_ _%expr194185%_)
                                  (let* ((_%expr194186194198%_ _%expr194185%_)
                                         (_%else194189194206%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_%lp194161%_
                                               _%rest194184%_
                                               _%user-decls194164%_)))))
                                    (let ((_%K194194194227%_
                                           (lambda (_%decls194225%_)
                                             (let ((__tmp194588
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldl1
                                                       cons
                                                       _%user-decls194164%_
                                                       _%decls194225%_))))
                                               (declare (not safe))
                                               (_%lp194161%_
                                                _%rest194184%_
                                                __tmp194588))))
                                          (_%K194191194212%_
                                           (lambda (_%exprs194210%_)
                                             (let ((__tmp194589
                                                    (append _%exprs194210%_
                                                            _%rest194184%_)))
                                               (declare (not safe))
                                               (_%lp194161%_
                                                __tmp194589
                                                _%user-decls194164%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr194186194198%_))
                                          (let ((_%tl194196194232%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr194186194198%_)))
                                                (_%hd194195194230%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr194186194198%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd194195194230%_
                                                         'declare))
                                                (let ((_%decls194235%_
                                                       _%tl194196194232%_))
                                                  (declare (not safe))
                                                  (_%K194194194227%_
                                                   _%decls194235%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd194195194230%_
                                                             'begin))
                                                    (let ((_%exprs194220%_
                                                           _%tl194196194232%_))
                                                      (declare (not safe))
                                                      (_%K194191194212%_
                                                       _%exprs194220%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else194189194206%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else194189194206%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest194165194173%_))
                              (let ((_%hd194170194240%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest194165194173%_)))
                                    (_%tl194171194242%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest194165194173%_))))
                                (let* ((_%expr194245%_ _%hd194170194240%_)
                                       (_%rest194247%_ _%tl194171194242%_))
                                  (declare (not safe))
                                  (_%K194169194237%_
                                   _%rest194247%_
                                   _%expr194245%_)))
                              (let ()
                                (declare (not safe))
                                (_%else194167194181%_))))))))
                 (_%compile-stub194089%_
                  (lambda (_%output-scm194096%_ _%output-bin194097%_)
                    (let* ((_%gerbil-home194099%_
                            (let ((__tmp194590
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp194590)))
                           (_%gerbil-libdir194101%_
                            (path-expand '"lib" _%gerbil-home194099%_))
                           (_%runtime194103%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp194105%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home194099%_))
                           (_%include-gambit-sharp194107%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp194105%_
                               '"\")")))
                           (_%bin-scm194109%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _%ctx194083%_)))
                           (_%deps194111%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _%ctx194083%_)))
                           (_%deps194113%_
                            (map gxc#find-static-module-file _%deps194111%_))
                           (_%deps194118%_
                            (let ((__tmp194591
                                   (lambda (_%$obj194115%_)
                                     (let ((__tmp194592
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty?
                                               _%$obj194115%_))))
                                       (declare (not safe))
                                       (not __tmp194592)))))
                              (declare (not safe))
                              (##filter __tmp194591 _%deps194113%_)))
                           (_%deps194122%_
                            (let ((__tmp194593
                                   (lambda (_%f194120%_)
                                     (let ((__tmp194594
                                            (let ()
                                              (declare (not safe))
                                              (##member
                                               _%f194120%_
                                               _%runtime194103%_))))
                                       (declare (not safe))
                                       (not __tmp194594)))))
                              (declare (not safe))
                              (##filter __tmp194593 _%deps194118%_)))
                           (_%output-base194124%_
                            (let ((__tmp194595
                                   (path-strip-extension
                                    _%output-scm194096%_)))
                              (declare (not safe))
                              (##string-append __tmp194595)))
                           (_%output-c194126%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194124%_ '".c")))
                           (_%output-o194128%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194124%_ '".o")))
                           (_%output-c_194130%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194124%_ '"_.c")))
                           (_%output-o_194132%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194124%_ '"_.o")))
                           (_%gsc-link-opts194134%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_%gsc-cc-opts194136%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_%gsc-static-opts194138%_
                            (let ((__tmp194596
                                   (path-expand
                                    '"static"
                                    _%gerbil-libdir194101%_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp194596)))
                           (_%output-ld-opts194140%_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_%gsc-gx-macros194142%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp194107%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp194107%_
                                            '()))))
                           (_%gsc-link-opts194144%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts194134%_
                               _%gsc-gx-macros194142%_)))
                           (_%rpath194146%_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _%gerbil-libdir194101%_)))
                           (_%default-ld-options194148%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp194597
                             (lambda ()
                               (let ((__tmp194598
                                      (path-directory _%output-bin194097%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp194598)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp194597))
                      (let ((__tmp194599
                             (lambda ()
                               (let ((__tmp194600
                                      (let ((__tmp194601
                                             (let ((__tmp194602
                                                    (cons _%bin-scm194109%_
                                                          '())))
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp194602
                                                _%deps194122%_))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp194601
                                         _%runtime194103%_))))
                                 (declare (not safe))
                                 (_%generate-stub194087%_ __tmp194600)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%output-scm194096%_
                         __tmp194599))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (begin
                            (let ((__tmp194605
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp194603
                                   (cons '"-link"
                                         (cons '"-o"
                                               (cons _%output-c_194130%_
                                                     (let ((__tmp194604
                                                            (cons _%output-scm194096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
               (declare (not safe))
               (__foldr1 cons __tmp194604 _%gsc-link-opts194144%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke __tmp194605 __tmp194603))
                            (let ((__tmp194609
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp194606
                                   (cons '"-obj"
                                         (let ((__tmp194607
                                                (let ((__tmp194608
                                                       (cons _%output-c194126%_
                                                             (cons _%output-c_194130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp194608
                                                   _%gsc-static-opts194138%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp194607
                                            _%gsc-cc-opts194136%_)))))
                              (declare (not safe))
                              (gxc#invoke __tmp194609 __tmp194606))
                            (let ((__tmp194612
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp194610
                                   (cons '"-o"
                                         (cons _%output-bin194097%_
                                               (cons _%output-o194128%_
                                                     (cons _%output-o_194132%_
                                                           (let ((__tmp194611
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%rpath194146%_
                                (cons '"-L"
                                      (cons _%gerbil-libdir194101%_
                                            (cons '"-lgambit"
                                                  _%default-ld-options194148%_))))))
                     (declare (not safe))
                     (__foldr1
                      cons
                      __tmp194611
                      _%output-ld-opts194140%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke __tmp194612 __tmp194610)))
                          '#!void)))))
          (let* ((_%output-bin194091%_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file
                     _%ctx194083%_
                     _%opts194084%_)))
                 (_%output-scm194093%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin194091%_ '"__exe.scm"))))
            (let ()
              (declare (not safe))
              (_%compile-stub194089%_
               _%output-scm194093%_
               _%output-bin194091%_))
            (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
                '#!void
                (let ()
                  (declare (not safe))
                  (##delete-file _%output-scm194093%_)))))))
    (define gxc#find-export-binding
      (lambda (_%ctx194032%_ _%id194033%_)
        (let ((_%$e194079%_
               (let ((__tmp194614
                      (lambda (_%e194034194036%_)
                        (let* ((_%g194038194048%_ _%e194034194036%_)
                               (_%else194040194056%_ (lambda () '#f))
                               (_%K194042194060%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g194038194048%_
                                 'gx#module-export::t))
                              (let* ((_%e194043194063%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194038194048%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e194044194066%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194038194048%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e194045194069%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194038194048%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e194045194069%_ '0))
                                    (let ((_%e194046194072%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g194038194048%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g194074194076%_)
                                             (eq? _%g194074194076%_
                                                  _%id194033%_))
                                           _%e194046194072%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%K194042194060%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else194040194056%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else194040194056%_))))
                              (let ()
                                (declare (not safe))
                                (_%else194040194056%_))))))
                     (__tmp194613
                      (##structure-ref
                       _%ctx194032%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp194614 __tmp194613))))
          (if _%$e194079%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e194079%_))
              (let () '#f)))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx194023%_ _%id194024%_)
        (let ((_%$e194026%_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _%ctx194023%_ _%id194024%_))))
          (if _%$e194026%_
              ((lambda (_%bind194029%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind194029%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id194024%_)))
                 (##structure-ref _%bind194029%_ '1 gx#binding::t '#f))
               _%$e194026%_)
              (let ()
                (let ((__tmp194615
                       (##structure-ref
                        _%ctx194023%_
                        '1
                        gx#expander-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"module does not export symbol"
                   __tmp194615
                   _%id194024%_)))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx193889%_)
        (letrec* ((_%ht193891%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template193892%_
                   (lambda (_%in193968%_ _%phi193969%_)
                     (let ((_%iphi193971%_
                            (fx+ _%phi193969%_
                                 (##direct-structure-ref
                                  _%in193968%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports193972%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in193968%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp193974%_ ((_%rest193976%_ _%imports193972%_)
                                          (_%r193977%_ '()))
                         (let* ((_%rest193978193986%_ _%rest193976%_)
                                (_%else193980193994%_ (lambda () _%r193977%_))
                                (_%K193982194011%_
                                 (lambda (_%rest193997%_ _%in193998%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in193998%_
                                          'gx#module-context::t))
                                       (let ()
                                         (if (let ()
                                               (declare (not safe))
                                               (##fxzero? _%iphi193971%_))
                                             (let ((__tmp194616
                                                    (cons _%in193998%_
                                                          _%r193977%_)))
                                               (declare (not safe))
                                               (_%lp193974%_
                                                _%rest193997%_
                                                __tmp194616))
                                             (let ()
                                               (declare (not safe))
                                               (_%lp193974%_
                                                _%rest193997%_
                                                _%r193977%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in193998%_
                                              'gx#module-import::t))
                                           (let ()
                                             (let ((_%iphi194002%_
                                                    (fx+ _%phi193969%_
                                                         (##direct-structure-ref
                                                          _%in193998%_
                                                          '3
                                                          gx#module-import::t
                                                          '#f))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##fxzero?
                                                      _%iphi194002%_))
                                                   (let ((__tmp194617
                                                          (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##direct-structure-ref
                          _%in193998%_
                          '1
                          gx#module-import::t
                          '#f)
                         '1
                         gx#module-export::t
                         '#f)
                        _%r193977%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_%lp193974%_
                                                      _%rest193997%_
                                                      __tmp194617))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%lp193974%_
                                                      _%rest193997%_
                                                      _%r193977%_)))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in193998%_
                                                  'gx#import-set::t))
                                               (let ()
                                                 (let ((_%xphi194005%_
                                                        (fx+ _%iphi193971%_
                                                             (##direct-structure-ref
                                                              _%in193998%_
                                                              '2
                                                              gx#import-set::t
                                                              '#f))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##fxzero?
                                                          _%xphi194005%_))
                                                       (let ()
                                                         (let ((__tmp194618
                                                                (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%in193998%_
                               '1
                               gx#import-set::t
                               '#f)
                              _%r193977%_)))
                   (declare (not safe))
                   (_%lp193974%_ _%rest193997%_ __tmp194618)))
               (if (let () (declare (not safe)) (##fxpositive? _%xphi194005%_))
                   (let ()
                     (let ((__tmp194619
                            (let ((__tmp194620
                                   (let ()
                                     (declare (not safe))
                                     (_%import-set-template193892%_
                                      _%in193998%_
                                      _%iphi193971%_))))
                              (declare (not safe))
                              (__foldl1 cons _%r193977%_ __tmp194620))))
                       (declare (not safe))
                       (_%lp193974%_ _%rest193997%_ __tmp194619)))
                   (let ()
                     (let ()
                       (declare (not safe))
                       (_%lp193974%_ _%rest193997%_ _%r193977%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%lp193974%_
                                                    _%rest193997%_
                                                    _%r193977%_)))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest193978193986%_))
                               (let ((_%hd193983194014%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest193978193986%_)))
                                     (_%tl193984194016%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest193978193986%_))))
                                 (let* ((_%in194019%_ _%hd193983194014%_)
                                        (_%rest194021%_ _%tl193984194016%_))
                                   (declare (not safe))
                                   (_%K193982194011%_
                                    _%rest194021%_
                                    _%in194019%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%else193980193994%_))))))))
                  (_%find-deps193893%_
                   (lambda (_%rest193901%_ _%deps193902%_)
                     (let* ((_%rest193903193911%_ _%rest193901%_)
                            (_%else193905193919%_ (lambda () _%deps193902%_))
                            (_%K193907193956%_
                             (lambda (_%rest193922%_ _%hd193923%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd193923%_
                                      'gx#module-context::t))
                                   (let ()
                                     (let ((_%id193926%_
                                            (##structure-ref
                                             _%hd193923%_
                                             '1
                                             gx#expander-context::t
                                             '#f))
                                           (_%imports193927%_
                                            (##structure-ref
                                             _%hd193923%_
                                             '8
                                             gx#module-context::t
                                             '#f)))
                                       (if (let ()
                                             (declare (not safe))
                                             (hash-get
                                              _%ht193891%_
                                              _%id193926%_))
                                           (let ()
                                             (let ()
                                               (declare (not safe))
                                               (_%find-deps193893%_
                                                _%rest193922%_
                                                _%deps193902%_)))
                                           (let ((_%$e193930%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-context-prelude__%
                                                     _%hd193923%_))))
                                             (if _%$e193930%_
                                                 ((lambda (_%pre193933%_)
                                                    (let ((_%xdeps193935%_
                                                           (let ((__tmp194621
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%pre193933%_ _%imports193927%_)))
                     (declare (not safe))
                     (_%find-deps193893%_ __tmp194621 _%deps193902%_))))
              (let ()
                (declare (not safe))
                (hash-put! _%ht193891%_ _%id193926%_ _%hd193923%_))
              (let ((__tmp194622 (cons _%hd193923%_ _%xdeps193935%_)))
                (declare (not safe))
                (_%find-deps193893%_ _%rest193922%_ __tmp194622))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e193930%_)
                                                 (let ()
                                                   (let ((_%xdeps193938%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%find-deps193893%_
                                                             _%imports193927%_
                                                             _%deps193902%_))))
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _%ht193891%_
                                                        _%id193926%_
                                                        _%hd193923%_))
                                                     (let ((__tmp194623
                                                            (cons _%hd193923%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%xdeps193938%_)))
               (declare (not safe))
               (_%find-deps193893%_ _%rest193922%_ __tmp194623)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd193923%_
                                          'gx#prelude-context::t))
                                       (let ()
                                         (let ((_%id193941%_
                                                (##structure-ref
                                                 _%hd193923%_
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (hash-get
                                                  _%ht193891%_
                                                  _%id193941%_))
                                               (let ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%find-deps193893%_
                                                    _%rest193922%_
                                                    _%deps193902%_)))
                                               (let ()
                                                 (let ((_%xdeps193945%_
                                                        (let ((__tmp194624
                                                               (##structure-ref
                                                                _%hd193923%_
                                                                '7
                                                                gx#prelude-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (_%find-deps193893%_
                                                           __tmp194624
                                                           _%deps193902%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (hash-get
                                                          _%ht193891%_
                                                          _%id193941%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%find-deps193893%_
                                                          _%rest193922%_
                                                          _%xdeps193945%_))
                                                       (begin
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%ht193891%_
                                                            _%id193941%_
                                                            _%hd193923%_))
                                                         (let ((__tmp194625
                                                                (cons _%hd193923%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%xdeps193945%_)))
                   (declare (not safe))
                   (_%find-deps193893%_ _%rest193922%_ __tmp194625)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd193923%_
                                              'gx#module-import::t))
                                           (let ()
                                             (if (fxzero? (##direct-structure-ref
                                                           _%hd193923%_
                                                           '3
                                                           gx#module-import::t
                                                           '#f))
                                                 (let ((__tmp194626
                                                        (cons (##direct-structure-ref
                                                               _%hd193923%_
                                                               '1
                                                               gx#module-import::t
                                                               '#f)
                                                              _%rest193922%_)))
                                                   (declare (not safe))
                                                   (_%find-deps193893%_
                                                    __tmp194626
                                                    _%deps193902%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%find-deps193893%_
                                                    _%rest193922%_
                                                    _%deps193902%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd193923%_
                                                  'gx#module-export::t))
                                               (let ()
                                                 (let ((__tmp194627
                                                        (cons (##direct-structure-ref
                                                               _%hd193923%_
                                                               '1
                                                               gx#module-export::t
                                                               '#f)
                                                              _%rest193922%_)))
                                                   (declare (not safe))
                                                   (_%find-deps193893%_
                                                    __tmp194627
                                                    _%deps193902%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd193923%_
                                                      'gx#import-set::t))
                                                   (let ()
                                                     (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd193923%_
                           '2
                           gx#import-set::t
                           '#f))
                 (let ()
                   (let ((__tmp194628
                          (cons (##direct-structure-ref
                                 _%hd193923%_
                                 '1
                                 gx#import-set::t
                                 '#f)
                                _%rest193922%_)))
                     (declare (not safe))
                     (_%find-deps193893%_ __tmp194628 _%deps193902%_)))
                 (if (fxpositive?
                      (##direct-structure-ref
                       _%hd193923%_
                       '2
                       gx#import-set::t
                       '#f))
                     (let ()
                       (let* ((_%xdeps193952%_
                               (let ()
                                 (declare (not safe))
                                 (_%import-set-template193892%_
                                  _%hd193923%_
                                  '0)))
                              (__tmp194629
                               (let ()
                                 (declare (not safe))
                                 (__foldl1
                                  cons
                                  _%rest193922%_
                                  _%xdeps193952%_))))
                         (declare (not safe))
                         (_%find-deps193893%_ __tmp194629 _%deps193902%_)))
                     (let ()
                       (let ()
                         (declare (not safe))
                         (_%find-deps193893%_
                          _%rest193922%_
                          _%deps193902%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"Unexpected module import"
                                                              _%hd193923%_)))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest193903193911%_))
                           (let ((_%hd193908193959%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest193903193911%_)))
                                 (_%tl193909193961%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest193903193911%_))))
                             (let* ((_%hd193964%_ _%hd193908193959%_)
                                    (_%rest193966%_ _%tl193909193961%_))
                               (declare (not safe))
                               (_%K193907193956%_
                                _%rest193966%_
                                _%hd193964%_)))
                           (let ()
                             (declare (not safe))
                             (_%else193905193919%_)))))))
          (let ((__tmp194630
                 (filter gx#expander-context-id
                         (let ((__tmp194631
                                (let ((_%$e193895%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#core-context-prelude__%
                                          _%ctx193889%_))))
                                  (if _%$e193895%_
                                      ((lambda (_%pre193898%_)
                                         (cons _%pre193898%_
                                               (##structure-ref
                                                _%ctx193889%_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                       _%$e193895%_)
                                      (let ()
                                        (##structure-ref
                                         _%ctx193889%_
                                         '8
                                         gx#module-context::t
                                         '#f))))))
                           (declare (not safe))
                           (_%find-deps193893%_ __tmp194631 '())))))
            (declare (not safe))
            (##reverse __tmp194630)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx193819%_)
        (let* ((_%context-id193821%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx193819%_
                       'gx#module-context::t))
                    (##structure-ref
                     _%ctx193819%_
                     '1
                     gx#expander-context::t
                     '#f)
                    (string->symbol _%ctx193819%_)))
               (_%scm193823%_
                (let ((__tmp194632
                       (let ()
                         (declare (not safe))
                         (gxc#static-module-name _%context-id193821%_))))
                  (declare (not safe))
                  (##string-append __tmp194632 '".scm")))
               (_%dirs193825%_ (let () (declare (not safe)) (load-path)))
               (_%dirs193831%_
                (let ((_%user-libpath193827%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath193827%_
                      (let ((_%user-libpath193829%_
                             (path-expand '"lib" _%user-libpath193827%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath193829%_ _%dirs193825%_))
                            _%dirs193825%_
                            (cons _%user-libpath193829%_ _%dirs193825%_)))
                      _%dirs193825%_)))
               (_%dirs193841%_
                (let ((_%$e193833%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e193833%_
                      ((lambda (_%g193835193837%_)
                         (cons _%g193835193837%_ _%dirs193831%_))
                       _%$e193833%_)
                      (let () _%dirs193831%_))))
               (_%dirs193847%_
                (map (lambda (_%g193842193844%_)
                       (path-expand '"static" _%g193842193844%_))
                     _%dirs193841%_)))
          (let _%lp193850%_ ((_%rest193852%_ _%dirs193847%_))
            (let* ((_%rest193853193861%_ _%rest193852%_)
                   (_%else193855193869%_
                    (lambda ()
                      (let ((__tmp194633
                             (##structure-ref
                              _%ctx193819%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp194633
                         _%scm193823%_))))
                   (_%K193857193877%_
                    (lambda (_%rest193872%_ _%dir193873%_)
                      (let ((_%path193875%_
                             (path-expand _%scm193823%_ _%dir193873%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path193875%_))
                            _%path193875%_
                            (let ()
                              (declare (not safe))
                              (_%lp193850%_ _%rest193872%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest193853193861%_))
                  (let ((_%hd193858193880%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193853193861%_)))
                        (_%tl193859193882%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193853193861%_))))
                    (let* ((_%dir193885%_ _%hd193858193880%_)
                           (_%rest193887%_ _%tl193859193882%_))
                      (declare (not safe))
                      (_%K193857193877%_ _%rest193887%_ _%dir193885%_)))
                  (let () (declare (not safe)) (_%else193855193869%_))))))))
    (define gxc#file-empty?
      (lambda (_%path193817%_)
        (zero? (let ((__tmp194634 (file-info _%path193817%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp194634)))))
    (define gxc#compile-top-module
      (lambda (_%ctx193806%_)
        (let ((__tmp194638
               (lambda ()
                 (let ((__tmp194639
                        (##structure-ref
                         _%ctx193806%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp194639))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp194640
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx193806%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp194640))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _%ctx193806%_))
                 (if (let ((__tmp194641
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _%ctx193806%_))))
                       (declare (not safe))
                       (null? __tmp194641))
                     (let* ((_%thr1193811%_
                             (let ((__tmp194642
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _%ctx193806%_)))))
                               (declare (not safe))
                               (__spawn __tmp194642)))
                            (_%thr2193814%_
                             (let ((__tmp194643
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code
                                         _%ctx193806%_)))))
                               (declare (not safe))
                               (__spawn __tmp194643))))
                       (let () (declare (not safe)) (gxc#join! _%thr1193811%_))
                       (let ()
                         (declare (not safe))
                         (gxc#join! _%thr2193814%_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _%ctx193806%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _%ctx193806%_))))
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _%ctx193806%_))
                     '#!void)))
              (__tmp194637
               (let ((__obj194534
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj194534)
                 __obj194534))
              (__tmp194636 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp194635 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (__call-with-parameters
           __tmp194638
           gx#current-expander-context
           _%ctx193806%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp194637
           gxc#current-compile-runtime-sections
           __tmp194636
           gxc#current-compile-runtime-names
           __tmp194635))))
    (define gxc#collect-bindings
      (lambda (_%ctx193804%_)
        (let ((__tmp194644
               (##structure-ref _%ctx193804%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp194644))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx193748%_)
        (letrec ((_%compile1193750%_
                  (lambda (_%ctx193791%_)
                    (let* ((_%code193793%_
                            (##structure-ref
                             _%ctx193791%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rt193797%_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _%code193793%_))
                                (let ((_%idstr193795%_
                                       (let ((__tmp194645
                                              (##structure-ref
                                               _%ctx193791%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp194645))))
                                  (declare (not safe))
                                  (##string-append _%idstr193795%_ '"~0"))
                                '#f)))
                      (if _%rt193797%_
                          (let ()
                            (let ((__tmp194646
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-put!
                               __tmp194646
                               _%ctx193791%_
                               _%rt193797%_))
                            (let ()
                              (declare (not safe))
                              (_%generate-runtime-code193752%_
                               _%ctx193791%_
                               _%code193793%_)))
                          (let ()
                            (let ((_%path193802%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-static-output-file
                                      _%ctx193791%_))))
                              (declare (not safe))
                              (gxc#with-output-to-scheme-file
                               _%path193802%_
                               void))))
                      (let ()
                        (declare (not safe))
                        (_%generate-loader-code193753%_
                         _%ctx193791%_
                         _%code193793%_
                         _%rt193797%_)))))
                 (_%context-timestamp193751%_
                  (lambda (_%ctx193789%_)
                    (let ((__tmp194647
                           (let ((__tmp194648
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx193789%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp194648 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp194647))))
                 (_%generate-runtime-code193752%_
                  (lambda (_%ctx193771%_ _%code193772%_)
                    (let* ((_%lifts193774%_ (box '()))
                           (_%runtime-code193777%_
                            (let ((__tmp194651
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code193772%_))))
                                  (__tmp194650
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp194649
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp194651
                               gx#current-expander-context
                               _%ctx193771%_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _%lifts193774%_
                               gxc#current-compile-marks
                               __tmp194650
                               gxc#current-compile-identifiers
                               __tmp194649)))
                           (_%runtime-code193779%_
                            (if (let ((__tmp194652 (unbox _%lifts193774%_)))
                                  (declare (not safe))
                                  (null? __tmp194652))
                                _%runtime-code193777%_
                                (cons 'begin
                                      (let ((__tmp194654
                                             (cons _%runtime-code193777%_ '()))
                                            (__tmp194653
                                             (reverse (unbox _%lifts193774%_))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp194654
                                         __tmp194653)))))
                           (_%runtime-code193781%_
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (_%context-timestamp193751%_
                                                       _%ctx193771%_))
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-timestamp))
                                                          '())))
                                        (cons _%runtime-code193779%_ '()))))
                           (_%scm0193783%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _%ctx193771%_
                               '0
                               '".scm"))))
                      (let ((_%scms193786%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file
                                _%ctx193771%_))))
                        (let ((__tmp194655
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _%scm0193783%_
                                    _%runtime-code193781%_)))))
                          (declare (not safe))
                          (__call-with-parameters
                           __tmp194655
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _%scms193786%_)
                            (delete-file _%scms193786%_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _%scm0193783%_
                           '" => "
                           _%scms193786%_))
                        (copy-file _%scm0193783%_ _%scms193786%_)
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-keep-scm))
                            '#!void
                            (delete-file _%scm0193783%_))))))
                 (_%generate-loader-code193753%_
                  (lambda (_%ctx193760%_ _%code193761%_ _%rt193762%_)
                    (let* ((_%loader-code193765%_
                            (let ((__tmp194656
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code193761%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp194656
                               gx#current-expander-context
                               _%ctx193760%_)))
                           (_%loader-code193767%_
                            (if _%rt193762%_
                                (cons 'begin
                                      (cons _%loader-code193765%_
                                            (cons (cons 'load-module
                                                        (cons _%rt193762%_
                                                              '()))
                                                  '())))
                                _%loader-code193765%_)))
                      (let ((__tmp194657
                             (lambda ()
                               (let ((__tmp194658
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _%ctx193760%_
                                         '#f
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp194658
                                  _%loader-code193767%_)))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp194657
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let* ((_%all-modules193755%_
                  (cons _%ctx193748%_
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _%ctx193748%_))))
                 (__tmp194659
                  (lambda (_%ctx193757%_)
                    (let ((__tmp194660
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (_%compile1193750%_ _%ctx193757%_)))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp194660
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp194659 _%all-modules193755%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx193643%_)
        (letrec ((_%compile-ssi193645%_
                  (lambda (_%code193716%_)
                    (let* ((_%path193718%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _%ctx193643%_
                               '#f
                               '".ssi")))
                           (_%prelude193730%_
                            (let* ((_%super193720%_
                                    (##structure-ref
                                     _%ctx193643%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e193722%_
                                    (##structure-ref
                                     _%super193720%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e193722%_
                                  ((lambda (_%g193724193726%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g193724193726%_)))
                                   _%$e193722%_)
                                  (let () ':<root>))))
                           (_%ns193732%_
                            (##structure-ref
                             _%ctx193643%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr193734%_
                            (symbol->string
                             (##structure-ref
                              _%ctx193643%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg193742%_
                            (let ((_%$e193736%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr193734%_ '#\/))))
                              (if _%$e193736%_
                                  ((lambda (_%x193739%_)
                                     (let ((__tmp194661
                                            (substring
                                             _%idstr193734%_
                                             '0
                                             _%x193739%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp194661)))
                                   _%$e193736%_)
                                  (let () '#f))))
                           (_%rt193744%_
                            (let ((__tmp194662
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp194662 _%ctx193643%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path193718%_))
                      (let ((__tmp194663
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln
                                  '"prelude:"
                                  '" "
                                  _%prelude193730%_))
                               (if _%pkg193742%_
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"package:"
                                      '" "
                                      _%pkg193742%_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _%ns193732%_))
                               (newline)
                               (pretty-print _%code193716%_)
                               (if _%rt193744%_
                                   (pretty-print
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%rt193744%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%path193718%_
                         __tmp194663)))))
                 (_%compile-phi193646%_
                  (lambda (_%part193656%_)
                    (let* ((_%part193657193670%_ _%part193656%_)
                           (_%E193659193674%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part193657193670%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K193660193685%_
                            (lambda (_%code193677%_
                                     _%n193678%_
                                     _%phi193679%_
                                     _%phi-ctx193680%_)
                              (let* ((_%code193683%_
                                      (let ((__tmp194664
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _%code193677%_)))))
                                        (declare (not safe))
                                        (__call-with-parameters
                                         __tmp194664
                                         gx#current-expander-context
                                         _%phi-ctx193680%_
                                         gx#current-expander-phi
                                         _%phi193679%_)))
                                     (__tmp194665
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _%ctx193643%_
                                         _%n193678%_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp194665
                                 _%code193683%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part193657193670%_))
                          (let ((_%hd193661193688%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part193657193670%_)))
                                (_%tl193662193690%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part193657193670%_))))
                            (let ((_%phi-ctx193693%_ _%hd193661193688%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl193662193690%_))
                                  (let ((_%hd193663193695%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl193662193690%_)))
                                        (_%tl193664193697%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl193662193690%_))))
                                    (let ((_%phi193700%_ _%hd193663193695%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl193664193697%_))
                                          (let ((_%hd193665193702%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl193664193697%_)))
                                                (_%tl193666193704%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl193664193697%_))))
                                            (let ((_%n193707%_
                                                   _%hd193665193702%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl193666193704%_))
                                                  (let ((_%hd193667193709%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl193666193704%_)))
                                                        (_%tl193668193711%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl193666193704%_))))
                                                    (let ((_%code193714%_
                                                           _%hd193667193709%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl193668193711%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%K193660193685%_
                                                             _%code193714%_
                                                             _%n193707%_
                                                             _%phi193700%_
                                                             _%phi-ctx193693%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%E193659193674%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%E193659193674%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E193659193674%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E193659193674%_)))))
                          (let ()
                            (declare (not safe))
                            (_%E193659193674%_)))))))
          (let ((_g194666_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _%ctx193643%_))))
            (begin
              (let ((_g194667_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g194666_)
                           (##vector-length _g194666_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g194667_ 2)))
                    (error "Context expects 2 values" _g194667_)))
              (let ((_%ssi-code193648%_
                     (let () (declare (not safe)) (##vector-ref _g194666_ 0)))
                    (_%phi-code193649%_
                     (let () (declare (not safe)) (##vector-ref _g194666_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_%compile-ssi193645%_ _%ssi-code193648%_))
                  (let ((_%threads193654%_
                         (map (lambda (_%code193651%_)
                                (let ((__tmp194668
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_%compile-phi193646%_
                                            _%code193651%_)))))
                                  (declare (not safe))
                                  (__spawn __tmp194668)))
                              _%phi-code193649%_)))
                    (declare (not safe))
                    (##for-each gxc#join! _%threads193654%_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx193625%_)
        (let* ((_%path193627%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _%ctx193625%_ '#f '".ssxi.ss")))
               (_%code193629%_
                (let ((__tmp194669
                       (##structure-ref
                        _%ctx193625%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp194669)))
               (_%idstr193631%_
                (symbol->string
                 (##structure-ref
                  _%ctx193625%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg193639%_
                (let ((_%$e193633%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr193631%_ '#\/))))
                  (if _%$e193633%_
                      ((lambda (_%x193636%_)
                         (let ((__tmp194670
                                (substring _%idstr193631%_ '0 _%x193636%_)))
                           (declare (not safe))
                           (##string->symbol __tmp194670)))
                       _%$e193633%_)
                      (let () '#f)))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path193627%_))
          (let ((__tmp194671
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _%pkg193639%_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _%pkg193639%_))
                       '#!void)
                   (newline)
                   (pretty-print _%code193629%_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _%path193627%_ __tmp194671)))))
    (define gxc#generate-meta-code
      (lambda (_%ctx193618%_)
        (let* ((_%state193620%_
                (let ((__obj194535
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj194535 _%ctx193618%_)
                  __obj194535))
               (_%ssi-code193622%_
                (let ((__tmp194672
                       (##structure-ref
                        _%ctx193618%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta
                   __tmp194672
                   'state:
                   _%state193620%_))))
          (values _%ssi-code193622%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state193620%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx193611%_)
        (let ((_%lifts193613%_ (box '())))
          (let ((__tmp194675
                 (lambda ()
                   (let ((_%code193616%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx193611%_))))
                     (if (let ((__tmp194676 (unbox _%lifts193613%_)))
                           (declare (not safe))
                           (null? __tmp194676))
                         _%code193616%_
                         (cons 'begin
                               (let ((__tmp194678 (cons _%code193616%_ '()))
                                     (__tmp194677
                                      (reverse (unbox _%lifts193613%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp194678 __tmp194677)))))))
                (__tmp194674
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp194673
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp194675
             gxc#current-compile-lift
             _%lifts193613%_
             gxc#current-compile-marks
             __tmp194674
             gxc#current-compile-identifiers
             __tmp194673)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx193607%_)
        (let ((_%modules193609%_ (box '())))
          (let ((__tmp194679
                 (##structure-ref _%ctx193607%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp194679 'modules: _%modules193609%_))
          (reverse (unbox _%modules193609%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path193590%_ _%code193591%_ _%phi?193592%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path193590%_))
        (let ((__tmp194680
               (lambda ()
                 (pretty-print
                  (cons 'declare
                        (cons (cons 'block '())
                              (cons (cons 'standard-bindings '())
                                    (cons (cons 'extended-bindings '())
                                          (let ((__tmp194681
                                                 (if _%phi?193592%_
                                                     '((inlining-limit 200))
                                                     '())))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             '()
                                             __tmp194681)))))))
                 (pretty-print _%code193591%_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _%path193590%_ __tmp194680))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _%path193590%_ _%phi?193592%_))
            '#!void)
        (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
            '#!void
            (delete-file _%path193590%_))))
    (define gxc#compile-scm-file__0
      (lambda (_%path193598%_ _%code193599%_)
        (let ((_%phi?193601%_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__%
           _%path193598%_
           _%code193599%_
           _%phi?193601%_))))
    (define gxc#compile-scm-file
      (lambda _g194683_
        (let ((_g194682_ (let () (declare (not safe)) (##length _g194683_))))
          (cond ((let () (declare (not safe)) (##fx= _g194682_ 2))
                 (apply (lambda (_%path193598%_ _%code193599%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _%path193598%_
                             _%code193599%_)))
                        _g194683_))
                ((let () (declare (not safe)) (##fx= _g194682_ 3))
                 (apply (lambda (_%path193603%_ _%code193604%_ _%phi?193605%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _%path193603%_
                             _%code193604%_
                             _%phi?193605%_)))
                        _g194683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g194683_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?193491%_)
        (let _%lp193493%_ ((_%rest193495%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts193496%_ '()))
          (let* ((_%rest193497193517%_ _%rest193495%_)
                 (_%else193501193525%_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _%phi?193491%_))
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-debug)))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts193496%_)))
                        (reverse _%opts193496%_)))))
            (let ((_%K193511193568%_
                   (lambda (_%rest193566%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193493%_ _%rest193566%_ _%opts193496%_))))
                  (_%K193506193550%_
                   (lambda (_%rest193548%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193493%_ _%rest193548%_ _%opts193496%_))))
                  (_%K193503193532%_
                   (lambda (_%rest193529%_ _%opt193530%_)
                     (let ((__tmp194684 (cons _%opt193530%_ _%opts193496%_)))
                       (declare (not safe))
                       (_%lp193493%_ _%rest193529%_ __tmp194684)))))
              (if (let () (declare (not safe)) (##pair? _%rest193497193517%_))
                  (let ((_%tl193513193573%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193497193517%_)))
                        (_%hd193512193571%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193497193517%_))))
                    (if (equal? _%hd193512193571%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl193513193573%_))
                            (let* ((_%tl193515193576%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl193513193573%_)))
                                   (_%rest193579%_ _%tl193515193576%_))
                              (declare (not safe))
                              (_%K193511193568%_ _%rest193579%_))
                            (let ((_%opt193540%_ _%hd193512193571%_)
                                  (_%rest193542%_ _%tl193513193573%_))
                              (let ()
                                (declare (not safe))
                                (_%K193503193532%_
                                 _%rest193542%_
                                 _%opt193540%_))))
                        (if (equal? _%hd193512193571%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl193513193573%_))
                                (let* ((_%tl193510193558%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl193513193573%_)))
                                       (_%rest193561%_ _%tl193510193558%_))
                                  (declare (not safe))
                                  (_%K193506193550%_ _%rest193561%_))
                                (let ((_%opt193540%_ _%hd193512193571%_)
                                      (_%rest193542%_ _%tl193513193573%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%K193503193532%_
                                     _%rest193542%_
                                     _%opt193540%_))))
                            (let ((_%opt193540%_ _%hd193512193571%_)
                                  (_%rest193542%_ _%tl193513193573%_))
                              (let ()
                                (declare (not safe))
                                (_%K193503193532%_
                                 _%rest193542%_
                                 _%opt193540%_))))))
                  (let () (declare (not safe)) (_%else193501193525%_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?193585%_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _%phi?193585%_))))
    (define gxc#gsc-link-options
      (lambda _g194686_
        (let ((_g194685_ (let () (declare (not safe)) (##length _g194686_))))
          (cond ((let () (declare (not safe)) (##fx= _g194685_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g194686_))
                ((let () (declare (not safe)) (##fx= _g194685_ 1))
                 (apply (lambda (_%phi?193587%_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _%phi?193587%_)))
                        _g194686_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g194686_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_%phi?193392%_)
        (let _%lp193394%_ ((_%rest193396%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts193397%_ '()))
          (let* ((_%rest193398193418%_ _%rest193396%_)
                 (_%else193402193426%_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _%phi?193392%_))
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-debug)))
                        (cons '"-cc-options"
                              (cons '"-g" (reverse _%opts193397%_)))
                        (reverse _%opts193397%_)))))
            (let ((_%K193412193465%_
                   (lambda (_%rest193462%_ _%opt193463%_)
                     (let ((__tmp194687
                            (let ((__tmp194688
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _%opts193397%_))))
                              (declare (not safe))
                              (cons _%opt193463%_ __tmp194688))))
                       (declare (not safe))
                       (_%lp193394%_ _%rest193462%_ __tmp194687))))
                  (_%K193407193446%_
                   (lambda (_%rest193444%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193394%_ _%rest193444%_ _%opts193397%_))))
                  (_%K193404193432%_
                   (lambda (_%rest193430%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193394%_ _%rest193430%_ _%opts193397%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest193398193418%_))
                  (let ((_%tl193414193470%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193398193418%_)))
                        (_%hd193413193468%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193398193418%_))))
                    (if (equal? _%hd193413193468%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl193414193470%_))
                            (let ((_%tl193416193475%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl193414193470%_)))
                                  (_%hd193415193473%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl193414193470%_))))
                              (let ((_%opt193478%_ _%hd193415193473%_)
                                    (_%rest193480%_ _%tl193416193475%_))
                                (let ()
                                  (declare (not safe))
                                  (_%K193412193465%_
                                   _%rest193480%_
                                   _%opt193478%_))))
                            (let ((_%rest193438%_ _%tl193414193470%_))
                              (declare (not safe))
                              (_%K193404193432%_ _%rest193438%_)))
                        (if (equal? _%hd193413193468%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl193414193470%_))
                                (let* ((_%tl193411193454%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl193414193470%_)))
                                       (_%rest193457%_ _%tl193411193454%_))
                                  (declare (not safe))
                                  (_%K193407193446%_ _%rest193457%_))
                                (let ((_%rest193438%_ _%tl193414193470%_))
                                  (declare (not safe))
                                  (_%K193404193432%_ _%rest193438%_)))
                            (let ((_%rest193438%_ _%tl193414193470%_))
                              (declare (not safe))
                              (_%K193404193432%_ _%rest193438%_)))))
                  (let () (declare (not safe)) (_%else193402193426%_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_%phi?193486%_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _%phi?193486%_))))
    (define gxc#gsc-cc-options
      (lambda _g194690_
        (let ((_g194689_ (let () (declare (not safe)) (##length _g194690_))))
          (cond ((let () (declare (not safe)) (##fx= _g194689_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g194690_))
                ((let () (declare (not safe)) (##fx= _g194689_ 1))
                 (apply (lambda (_%phi?193488%_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _%phi?193488%_)))
                        _g194690_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g194690_))))))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir193387%_)
        (let ((_%user-staticdir193389%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir193387%_
                       '" -I "
                       _%user-staticdir193389%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp193299%_ ((_%rest193301%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts193302%_ '()))
          (let* ((_%rest193303193323%_ _%rest193301%_)
                 (_%else193307193331%_ (lambda () _%opts193302%_)))
            (let ((_%K193317193374%_
                   (lambda (_%rest193372%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193299%_ _%rest193372%_ _%opts193302%_))))
                  (_%K193312193352%_
                   (lambda (_%rest193349%_ _%opt193350%_)
                     (let ((__tmp194691
                            (let ((__tmp194692
                                   (let ((__tmp194693
                                          (let ()
                                            (declare (not safe))
                                            (string-split
                                             _%opt193350%_
                                             '#\space))))
                                     (declare (not safe))
                                     (##filter
                                      gxc#not-string-empty?
                                      __tmp194693))))
                              (declare (not safe))
                              (##append _%opts193302%_ __tmp194692))))
                       (declare (not safe))
                       (_%lp193299%_ _%rest193349%_ __tmp194691))))
                  (_%K193309193337%_
                   (lambda (_%rest193335%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193299%_ _%rest193335%_ _%opts193302%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest193303193323%_))
                  (let ((_%tl193319193379%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193303193323%_)))
                        (_%hd193318193377%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193303193323%_))))
                    (if (equal? _%hd193318193377%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl193319193379%_))
                            (let* ((_%tl193321193382%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl193319193379%_)))
                                   (_%rest193385%_ _%tl193321193382%_))
                              (declare (not safe))
                              (_%K193317193374%_ _%rest193385%_))
                            (let ((_%rest193343%_ _%tl193319193379%_))
                              (declare (not safe))
                              (_%K193309193337%_ _%rest193343%_)))
                        (if (equal? _%hd193318193377%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl193319193379%_))
                                (let ((_%tl193316193362%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl193319193379%_)))
                                      (_%hd193315193360%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl193319193379%_))))
                                  (let ((_%opt193365%_ _%hd193315193360%_)
                                        (_%rest193367%_ _%tl193316193362%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%K193312193352%_
                                       _%rest193367%_
                                       _%opt193365%_))))
                                (let ((_%rest193343%_ _%tl193319193379%_))
                                  (declare (not safe))
                                  (_%K193309193337%_ _%rest193343%_)))
                            (let ((_%rest193343%_ _%tl193319193379%_))
                              (declare (not safe))
                              (_%K193309193337%_ _%rest193343%_)))))
                  (let () (declare (not safe)) (_%else193307193331%_))))))))
    (define gxc#not-string-empty?
      (lambda (_%str193296%_)
        (let ((__tmp194694
               (let () (declare (not safe)) (string-empty? _%str193296%_))))
          (declare (not safe))
          (not __tmp194694))))
    (define gxc#gsc-compile-file
      (lambda (_%path193264%_ _%phi?193265%_)
        (letrec ((_%gsc-link-path193267%_
                  (lambda (_%base-path193288%_)
                    (let _%lp193290%_ ((_%n193292%_ '1))
                      (let ((_%path193294%_
                             (let ((__tmp194695 (number->string _%n193292%_)))
                               (declare (not safe))
                               (##string-append
                                _%base-path193288%_
                                '".o"
                                __tmp194695))))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path193294%_))
                            (let ((__tmp194696
                                   (let ()
                                     (declare (not safe))
                                     (+ _%n193292%_ '1))))
                              (declare (not safe))
                              (_%lp193290%_ __tmp194696))
                            _%path193294%_))))))
          (let* ((_%base-path193269%_ (path-strip-extension _%path193264%_))
                 (_%path-c193271%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%base-path193269%_ '".c")))
                 (_%path-o193273%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%base-path193269%_ '".o")))
                 (_%link-path193275%_
                  (let ()
                    (declare (not safe))
                    (_%gsc-link-path193267%_ _%base-path193269%_)))
                 (_%link-path-c193277%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%link-path193275%_ '".c")))
                 (_%link-path-o193279%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%link-path193275%_ '".o")))
                 (_%gsc-link-opts193281%_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _%phi?193265%_)))
                 (_%gsc-cc-opts193283%_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _%phi?193265%_)))
                 (_%gcc-ld-opts193285%_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp194699 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp194697
                   (cons '"-link"
                         (cons '"-flat"
                               (cons '"-o"
                                     (cons _%link-path-c193277%_
                                           (let ((__tmp194698
                                                  (cons _%path193264%_ '())))
                                             (declare (not safe))
                                             (__foldr1
                                              cons
                                              __tmp194698
                                              _%gsc-link-opts193281%_))))))))
              (declare (not safe))
              (gxc#invoke __tmp194699 __tmp194697 'stdout-redirection: '#t))
            (let ((__tmp194702 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp194700
                   (cons '"-obj"
                         (cons '"-cc-options"
                               (cons '"-D___DYNAMIC"
                                     (let ((__tmp194701
                                            (cons _%path-c193271%_
                                                  (cons _%link-path-c193277%_
                                                        '()))))
                                       (declare (not safe))
                                       (__foldr1
                                        cons
                                        __tmp194701
                                        _%gsc-cc-opts193283%_)))))))
              (declare (not safe))
              (gxc#invoke __tmp194702 __tmp194700 'stdout-redirection: '#t))
            (let ((__tmp194704 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp194703
                   (cons '"-shared"
                         (cons '"-o"
                               (cons _%link-path193275%_
                                     (cons _%path-o193273%_
                                           (cons _%link-path-o193279%_
                                                 _%gcc-ld-opts193285%_)))))))
              (declare (not safe))
              (gxc#invoke __tmp194704 __tmp194703))
            (let ((__tmp194705
                   (cons _%path-c193271%_
                         (cons _%path-o193273%_
                               (cons _%link-path-c193277%_
                                     (cons _%link-path-o193279%_ '()))))))
              (declare (not safe))
              (##for-each delete-file __tmp194705))))))
    (define gxc#compile-output-file
      (lambda (_%ctx193230%_ _%n193231%_ _%ext193232%_)
        (letrec ((_%module-relative-path193234%_
                  (lambda (_%ctx193262%_)
                    (path-strip-directory
                     (let ((__tmp194706
                            (##structure-ref
                             _%ctx193262%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp194706)))))
                 (_%module-source-directory193235%_
                  (lambda (_%ctx193258%_)
                    (path-directory
                     (let ((_%mpath193260%_
                            (##structure-ref
                             _%ctx193258%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _%mpath193260%_))
                           _%mpath193260%_
                           (last _%mpath193260%_))))))
                 (_%section-string193236%_
                  (lambda (_%n193252%_)
                    (if (let () (declare (not safe)) (number? _%n193252%_))
                        (let () (number->string _%n193252%_))
                        (if (let () (declare (not safe)) (symbol? _%n193252%_))
                            (let () (symbol->string _%n193252%_))
                            (if (let ()
                                  (declare (not safe))
                                  (string? _%n193252%_))
                                (let () _%n193252%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"Unexpected section"
                                     _%n193252%_))))))))
                 (_%file-name193237%_
                  (lambda (_%path193250%_)
                    (if _%n193231%_
                        (string-append
                         _%path193250%_
                         '"~"
                         (let ()
                           (declare (not safe))
                           (_%section-string193236%_ _%n193231%_))
                         _%ext193232%_)
                        (string-append _%path193250%_ _%ext193232%_))))
                 (_%file-path193238%_
                  (lambda ()
                    (let ((_%$e193244%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e193244%_
                          ((lambda (_%outdir193247%_)
                             (path-expand
                              (let ((__tmp194707
                                     (let ((__tmp194708
                                            (##structure-ref
                                             _%ctx193230%_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp194708))))
                                (declare (not safe))
                                (_%file-name193237%_ __tmp194707))
                              _%outdir193247%_))
                           _%$e193244%_)
                          (let ()
                            (path-expand
                             (let ((__tmp194709
                                    (let ()
                                      (declare (not safe))
                                      (_%module-relative-path193234%_
                                       _%ctx193230%_))))
                               (declare (not safe))
                               (_%file-name193237%_ __tmp194709))
                             (let ()
                               (declare (not safe))
                               (_%module-source-directory193235%_
                                _%ctx193230%_)))))))))
          (let ((_%path193240%_
                 (let () (declare (not safe)) (_%file-path193238%_))))
            (let ((__tmp194710
                   (lambda ()
                     (let ((__tmp194711 (path-directory _%path193240%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp194711)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp194710))
            _%path193240%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx193211%_)
        (letrec ((_%file-name193213%_
                  (lambda (_%id193228%_)
                    (let ((__tmp194712
                           (let ()
                             (declare (not safe))
                             (gxc#static-module-name _%id193228%_))))
                      (declare (not safe))
                      (##string-append __tmp194712 '".scm"))))
                 (_%file-path193214%_
                  (lambda ()
                    (let* ((_%file193220%_
                            (let ((__tmp194713
                                   (##structure-ref
                                    _%ctx193211%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_%file-name193213%_ __tmp194713)))
                           (_%$e193222%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e193222%_
                          ((lambda (_%outdir193225%_)
                             (path-expand
                              _%file193220%_
                              (path-expand '"static" _%outdir193225%_)))
                           _%$e193222%_)
                          (let () (path-expand _%file193220%_ '"static")))))))
          (let ((_%path193216%_
                 (let () (declare (not safe)) (_%file-path193214%_))))
            (let ((__tmp194714
                   (lambda ()
                     (let ((__tmp194715 (path-directory _%path193216%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp194715)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp194714))
            _%path193216%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx193204%_ _%opts193205%_)
        (let ((_%$e193207%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts193205%_))))
          (if _%$e193207%_
              (values _%$e193207%_)
              (let ()
                (path-strip-directory
                 (symbol->string
                  (##structure-ref
                   _%ctx193204%_
                   '1
                   gx#expander-context::t
                   '#f))))))))
    (define gxc#static-module-name
      (lambda (_%idstr193194%_)
        (if (let () (declare (not safe)) (string? _%idstr193194%_))
            (let ()
              (let* ((_%str193197%_
                      (let ()
                        (declare (not safe))
                        (gxc#module-id->path-string _%idstr193194%_)))
                     (_%strs193199%_
                      (let ()
                        (declare (not safe))
                        (string-split _%str193197%_ '#\/))))
                (let ()
                  (declare (not safe))
                  (string-join _%strs193199%_ '"__"))))
            (if (let () (declare (not safe)) (symbol? _%idstr193194%_))
                (let ()
                  (let ((__tmp194716 (symbol->string _%idstr193194%_)))
                    (declare (not safe))
                    (gxc#static-module-name __tmp194716)))
                (let ()
                  (let ()
                    (declare (not safe))
                    (error '"Bad module id" _%idstr193194%_)))))))
    (define gxc#invoke__%
      (lambda (_%_193158%_
               _%stdout-redirection193154193160%_
               _%stderr-redirection193155193162%_
               _%program193164%_
               _%args193165%_)
        (let* ((_%stdout-redirection193167%_
                (if (eq? _%stdout-redirection193154193160%_ absent-value)
                    '#f
                    _%stdout-redirection193154193160%_))
               (_%stderr-redirection193169%_
                (if (eq? _%stderr-redirection193155193162%_ absent-value)
                    '#f
                    _%stderr-redirection193155193162%_)))
          (let ((__tmp194717 (cons _%program193164%_ _%args193165%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp194717))
          (let* ((_%proc193171%_
                  (open-process
                   (cons 'path:
                         (cons _%program193164%_
                               (cons 'arguments:
                                     (cons _%args193165%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection193167%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection193169%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output193176%_
                  (if (or _%stdout-redirection193167%_
                          _%stderr-redirection193169%_)
                      (read-line _%proc193171%_ '#f)
                      '#f)))
            (let ((_%status193179%_ (process-status _%proc193171%_)))
              (let () (declare (not safe)) (##close-port _%proc193171%_))
              (if (zero? _%status193179%_)
                  '#!void
                  (begin
                    (display _%output193176%_)
                    (let ((__tmp194718
                           (cons _%program193164%_ _%args193165%_)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp194718
                       _%status193179%_)))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords193184%_ . _%args193185%_)
        (apply gxc#invoke__%
               _%@@keywords193184%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193184%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193184%_
                  'stderr-redirection:
                  absent-value))
               _%args193185%_)))
    (define gxc#invoke
      (lambda _%args193156193191%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args193156193191%_)))
    (define gxc#join!
      (lambda (_%thread193148%_)
        (let ((__tmp194720
               (lambda (_%exn193150%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn193150%_))
                     (let ((__tmp194721
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn193150%_))))
                       (declare (not safe))
                       (raise __tmp194721))
                     (let () (declare (not safe)) (raise _%exn193150%_)))))
              (__tmp194719 (lambda () (thread-join! _%thread193148%_))))
          (declare (not safe))
          (__with-catch __tmp194720 __tmp194719))))))
