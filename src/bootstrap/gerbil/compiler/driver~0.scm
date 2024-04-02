(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1712084092)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp194395 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp194395))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp194396 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp194396))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path194301%_ _%fun194302%_)
        (with-output-to-file
         (cons 'path: (cons _%path194301%_ gxc#scheme-file-settings))
         _%fun194302%_)))
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
      (lambda (_%gerbil-libdir194296%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir194296%_)))
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
      (lambda (_%dir194294%_) (delete-file-or-directory _%dir194294%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath194268%_ _%opts194269%_)
        (if (let () (declare (not safe)) (string? _%srcpath194268%_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath194268%_)))
        (let ((_%outdir194271%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts194269%_)))
              (_%invoke-gsc?194272%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts194269%_)))
              (_%gsc-options194273%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts194269%_)))
              (_%keep-scm?194274%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts194269%_)))
              (_%verbosity194275%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts194269%_)))
              (_%optimize194276%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts194269%_)))
              (_%debug194277%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts194269%_)))
              (_%gen-ssxi194278%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts194269%_))))
          (if _%outdir194271%_
              (let ((__tmp194397
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir194271%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp194397))
              '#!void)
          (if _%optimize194276%_
              (let ((__tmp194398
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp194398))
              '#!void)
          (let ((__tmp194401
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath194268%_))
                   (let ((__tmp194402
                          (let ((__tmp194403
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0
                                      _%srcpath194268%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp194403))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp194402))))
                (__tmp194400
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp194399
                 (cons 'compile-module (cons _%srcpath194268%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp194401
             gxc#current-compile-output-dir
             _%outdir194271%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?194272%_
             gxc#current-compile-gsc-options
             _%gsc-options194273%_
             gxc#current-compile-keep-scm
             _%keep-scm?194274%_
             gxc#current-compile-verbose
             _%verbosity194275%_
             gxc#current-compile-optimize
             _%optimize194276%_
             gxc#current-compile-debug
             _%debug194277%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi194278%_
             gxc#current-compile-timestamp
             __tmp194400
             gxc#current-compile-context
             __tmp194399
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath194287%_)
        (let ((_%opts194289%_ '()))
          (declare (not safe))
          (gxc#compile-module__% _%srcpath194287%_ _%opts194289%_))))
    (define gxc#compile-module
      (lambda _g194405_
        (let ((_g194404_ (let () (declare (not safe)) (##length _g194405_))))
          (cond ((let () (declare (not safe)) (##fx= _g194404_ 1))
                 (apply (lambda (_%srcpath194287%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _%srcpath194287%_)))
                        _g194405_))
                ((let () (declare (not safe)) (##fx= _g194404_ 2))
                 (apply (lambda (_%srcpath194291%_ _%opts194292%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _%srcpath194291%_
                             _%opts194292%_)))
                        _g194405_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g194405_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath194244%_ _%opts194245%_)
        (if (let () (declare (not safe)) (string? _%srcpath194244%_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath194244%_)))
        (let ((_%outdir194247%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts194245%_)))
              (_%invoke-gsc?194248%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts194245%_)))
              (_%gsc-options194249%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts194245%_)))
              (_%keep-scm?194250%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts194245%_)))
              (_%verbosity194251%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts194245%_)))
              (_%debug194252%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'debug: _%opts194245%_))))
          (if _%outdir194247%_
              (let ((__tmp194406
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir194247%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp194406))
              '#!void)
          (let ((__tmp194409
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath194244%_))
                   (let ((__tmp194410
                          (let ((__tmp194411
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0
                                      _%srcpath194244%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp194411))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp194410
                      _%opts194245%_))))
                (__tmp194408
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp194407 (cons 'compile-exe (cons _%srcpath194244%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp194409
             gxc#current-compile-output-dir
             _%outdir194247%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?194248%_
             gxc#current-compile-gsc-options
             _%gsc-options194249%_
             gxc#current-compile-keep-scm
             _%keep-scm?194250%_
             gxc#current-compile-verbose
             _%verbosity194251%_
             gxc#current-compile-debug
             _%debug194252%_
             gxc#current-compile-timestamp
             __tmp194408
             gxc#current-compile-context
             __tmp194407
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath194260%_)
        (let ((_%opts194262%_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _%srcpath194260%_ _%opts194262%_))))
    (define gxc#compile-exe
      (lambda _g194413_
        (let ((_g194412_ (let () (declare (not safe)) (##length _g194413_))))
          (cond ((let () (declare (not safe)) (##fx= _g194412_ 1))
                 (apply (lambda (_%srcpath194260%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _%srcpath194260%_)))
                        _g194413_))
                ((let () (declare (not safe)) (##fx= _g194412_ 2))
                 (apply (lambda (_%srcpath194264%_ _%opts194265%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__%
                             _%srcpath194264%_
                             _%opts194265%_)))
                        _g194413_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g194413_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx194240%_ _%opts194241%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts194241%_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _%ctx194240%_
               _%opts194241%_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _%ctx194240%_
               _%opts194241%_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx194117%_ _%opts194118%_)
        (letrec ((_%generate-stub194120%_
                  (lambda (_%builtin-modules194236%_)
                    (let ((_%mod-main194238%_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _%ctx194117%_ 'main))))
                      (let ((__tmp194414
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'append
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%builtin-modules194236%_ '()))
                   (cons 'libgerbil-builtin-modules '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))
                        (declare (not safe))
                        (##write __tmp194414))
                      (let ((__tmp194415
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main194238%_
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
                        (##write __tmp194415))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts194121%_
                  (lambda (_%libgerbil194234%_)
                    (let ((__tmp194416
                           (let ()
                             (declare (not safe))
                             (##string-append _%libgerbil194234%_ '".ldd"))))
                      (declare (not safe))
                      (##call-with-input-file __tmp194416 read))))
                 (_%replace-extension194122%_
                  (lambda (_%path194231%_ _%ext194232%_)
                    (string-append
                     (path-strip-extension _%path194231%_)
                     _%ext194232%_)))
                 (_%not-exclude-module?194123%_
                  (lambda (_%ctx194227%_)
                    (let ((_%id-str194229%_
                           (symbol->string
                            (##structure-ref
                             _%ctx194227%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp194417
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str194229%_))))
                            (declare (not safe))
                            (not __tmp194417))
                          (let ((__tmp194418
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"std/"
                                    _%id-str194229%_))))
                            (declare (not safe))
                            (not __tmp194418))
                          '#f))))
                 (_%not-file-empty?194124%_
                  (lambda (_%path194225%_)
                    (let ((__tmp194419
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _%path194225%_))))
                      (declare (not safe))
                      (not __tmp194419))))
                 (_%compile-stub194125%_
                  (lambda (_%output-scm194132%_ _%output-bin194133%_)
                    (let* ((_%gerbil-home194135%_
                            (let ((__tmp194420
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp194420)))
                           (_%gerbil-libdir194137%_
                            (path-expand '"lib" _%gerbil-home194135%_))
                           (_%gerbil-staticdir194139%_
                            (path-expand '"static" _%gerbil-libdir194137%_))
                           (_%gxlink194141%_
                            (path-expand
                             '"libgerbil-link"
                             _%gerbil-libdir194137%_))
                           (_%tmp194143%_
                            (path-expand
                             (let ((__tmp194421
                                    (let ((__tmp194422
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-timestamp-nanos))))
                                      (declare (not safe))
                                      (##number->string __tmp194422))))
                               (declare (not safe))
                               (##string-append '"gxc." __tmp194421))
                             '"/tmp"))
                           (_%tmp-path194147%_
                            (lambda (_%f194145%_)
                              (path-expand
                               (path-strip-directory _%f194145%_)
                               _%tmp194143%_)))
                           (_%deps194149%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _%ctx194117%_)))
                           (_%deps194151%_
                            (filter _%not-exclude-module?194123%_
                                    _%deps194149%_))
                           (_%src-deps-scm194153%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps194151%_)))
                           (_%src-deps-scm194155%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?194124%_
                               _%src-deps-scm194153%_)))
                           (_%src-deps-scm194157%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm194155%_)))
                           (_%deps-scm194159%_
                            (let ()
                              (declare (not safe))
                              (##map _%tmp-path194147%_
                                     _%src-deps-scm194157%_)))
                           (_%deps-c194165%_
                            (let ((__tmp194423
                                   (lambda (_%g194160194162%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%replace-extension194122%_
                                        _%g194160194162%_
                                        '".c")))))
                              (declare (not safe))
                              (##map __tmp194423 _%deps-scm194159%_)))
                           (_%deps-o194171%_
                            (let ((__tmp194424
                                   (lambda (_%g194166194168%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%replace-extension194122%_
                                        _%g194166194168%_
                                        '".o")))))
                              (declare (not safe))
                              (##map __tmp194424 _%deps-scm194159%_)))
                           (_%src-bin-scm194173%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _%ctx194117%_)))
                           (_%src-bin-scm194175%_
                            (path-expand _%src-bin-scm194173%_))
                           (_%bin-scm194177%_
                            (let ()
                              (declare (not safe))
                              (_%tmp-path194147%_ _%src-bin-scm194175%_)))
                           (_%bin-c194179%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194122%_
                               _%bin-scm194177%_
                               '".c")))
                           (_%bin-o194181%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194122%_
                               _%bin-scm194177%_
                               '".o")))
                           (_%output-bin194183%_
                            (path-expand _%output-bin194133%_))
                           (_%output-scm194185%_
                            (path-expand _%output-scm194132%_))
                           (_%output-c194187%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194122%_
                               _%output-scm194185%_
                               '".c")))
                           (_%output-o194189%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194122%_
                               _%output-scm194185%_
                               '".o")))
                           (_%output_-c194191%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194122%_
                               _%output-scm194185%_
                               '"_.c")))
                           (_%output_-o194193%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194122%_
                               _%output-scm194185%_
                               '"_.o")))
                           (_%gsc-link-opts194195%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_%gsc-cc-opts194197%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_%gsc-static-opts194199%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _%gerbil-staticdir194139%_)))
                           (_%output-ld-opts194201%_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_%libgerbil.a194203%_
                            (path-expand
                             '"libgerbil.a"
                             _%gerbil-libdir194137%_))
                           (_%libgerbil.so194205%_
                            (path-expand
                             '"libgerbil.so"
                             _%gerbil-libdir194137%_))
                           (_%libgerbil.dylib194207%_
                            (path-expand
                             '"libgerbil.dylib"
                             _%gerbil-libdir194137%_))
                           (_%libgerbil-ld-opts194213%_
                            (if (let ()
                                  (declare (not safe))
                                  (##file-exists? _%libgerbil.so194205%_))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (_%get-libgerbil-ld-opts194121%_
                                     _%libgerbil.so194205%_)))
                                (if (let ()
                                      (declare (not safe))
                                      (##file-exists?
                                       _%libgerbil.dylib194207%_))
                                    (let ()
                                      (let ()
                                        (declare (not safe))
                                        (_%get-libgerbil-ld-opts194121%_
                                         _%libgerbil.dylib194207%_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (##file-exists?
                                           _%libgerbil.a194203%_))
                                        (let ()
                                          (let ()
                                            (declare (not safe))
                                            (_%get-libgerbil-ld-opts194121%_
                                             _%libgerbil.a194203%_)))
                                        (let ()
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"libgerbil does not exist"
                                             _%libgerbil.a194203%_
                                             _%libgerbil.so194205%_
                                             _%libgerbil.dylib194207%_)))))))
                           (_%rpath194215%_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _%gerbil-libdir194137%_)))
                           (_%builtin-modules194219%_
                            (let ((__tmp194426
                                   (lambda (_%mod194217%_)
                                     (symbol->string
                                      (##structure-ref
                                       _%mod194217%_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                  (__tmp194425
                                   (cons _%ctx194117%_ _%deps194151%_)))
                              (declare (not safe))
                              (##map __tmp194426 __tmp194425))))
                      (let ((__tmp194427
                             (lambda ()
                               (let ((__tmp194428
                                      (path-directory _%output-bin194183%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp194428)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp194427))
                      (let ((__tmp194429
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_%generate-stub194120%_
                                  _%builtin-modules194219%_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%output-scm194185%_
                         __tmp194429))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (begin
                            (let ((__tmp194430
                                   (lambda ()
                                     (create-directory _%tmp194143%_))))
                              (declare (not safe))
                              (__with-lock gxc#+driver-mutex+ __tmp194430))
                            (let ()
                              (declare (not safe))
                              (##for-each
                               copy-file
                               _%src-deps-scm194157%_
                               _%deps-scm194159%_))
                            (let ()
                              (declare (not safe))
                              (##copy-file
                               _%src-bin-scm194175%_
                               _%bin-scm194177%_))
                            (let ((__tmp194434
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp194431
                                   (cons '"-link"
                                         (cons '"-l"
                                               (cons _%gxlink194141%_
                                                     (let ((__tmp194432
                                                            (let ((__tmp194433
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%bin-scm194177%_
                                 (cons _%output-scm194185%_ '()))))
                      (declare (not safe))
                      (__foldr1 cons __tmp194433 _%deps-scm194159%_))))
               (declare (not safe))
               (__foldr1 cons __tmp194432 _%gsc-link-opts194195%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke __tmp194434 __tmp194431))
                            (let ((__tmp194439
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp194435
                                   (cons '"-obj"
                                         (let ((__tmp194436
                                                (let ((__tmp194437
                                                       (let ((__tmp194438
                                                              (cons _%bin-c194179%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%output-c194187%_
                                  (cons _%output_-c194191%_ '())))))
                 (declare (not safe))
                 (__foldr1 cons __tmp194438 _%deps-c194165%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp194437
                                                   _%gsc-static-opts194199%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp194436
                                            _%gsc-cc-opts194197%_)))))
                              (declare (not safe))
                              (gxc#invoke __tmp194439 __tmp194435))
                            (let ((__tmp194443
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp194440
                                   (cons '"-o"
                                         (cons _%output-bin194183%_
                                               (let ((__tmp194441
                                                      (cons _%bin-o194181%_
                                                            (cons _%output-o194189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%output_-o194193%_
                                (let ((__tmp194442
                                       (cons _%rpath194215%_
                                             (cons '"-L"
                                                   (cons _%gerbil-libdir194137%_
                                                         (cons '"-lgerbil"
                                                               (cons '"-lgambit"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%libgerbil-ld-opts194213%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (declare (not safe))
                                  (__foldr1
                                   cons
                                   __tmp194442
                                   _%output-ld-opts194201%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldr1
                                                  cons
                                                  __tmp194441
                                                  _%deps-o194171%_))))))
                              (declare (not safe))
                              (gxc#invoke __tmp194443 __tmp194440))
                            (let ((__tmp194444
                                   (cons _%output-c194187%_
                                         (cons _%output_-c194191%_
                                               (cons _%output-o194189%_
                                                     (cons _%output_-o194193%_
                                                           '()))))))
                              (declare (not safe))
                              (##for-each delete-file __tmp194444))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _%tmp194143%_)))
                          '#!void)))))
          (let* ((_%output-bin194127%_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file
                     _%ctx194117%_
                     _%opts194118%_)))
                 (_%output-scm194129%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin194127%_ '"__exe.scm"))))
            (let ()
              (declare (not safe))
              (_%compile-stub194125%_
               _%output-scm194129%_
               _%output-bin194127%_))
            (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
                '#!void
                (let ()
                  (declare (not safe))
                  (##delete-file _%output-scm194129%_)))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx193942%_ _%opts193943%_)
        (letrec ((_%reset-declare193945%_
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
                 (_%generate-stub193946%_
                  (lambda (_%deps194108%_)
                    (let ((_%mod-main194110%_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _%ctx193942%_ 'main)))
                          (_%reset-decl194111%_
                           (let ()
                             (declare (not safe))
                             (_%reset-declare193945%_)))
                          (_%user-decl194112%_
                           (let ()
                             (declare (not safe))
                             (_%user-declare193947%_))))
                      (for-each
                       (lambda (_%dep194114%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl194111%_))
                         (newline)
                         (if _%user-decl194112%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl194112%_))
                               (newline))
                             '#!void)
                         (let ((__tmp194445
                                (cons 'include (cons _%dep194114%_ '()))))
                           (declare (not safe))
                           (##write __tmp194445))
                         (newline))
                       _%deps194108%_)
                      (let ((__tmp194446
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main194110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp194446))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare193947%_
                  (lambda ()
                    (let* ((_%gsc-opts194013%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts193943%_)))
                           (_%gsc-prelude194015%_
                            (if _%gsc-opts194013%_
                                (member '"-prelude" _%gsc-opts194013%_)
                                '#f))
                           (_%gsc-prelude194017%_
                            (if _%gsc-prelude194015%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude194015%_)))
                                '#f)))
                      (let _%lp194020%_ ((_%rest194022%_
                                          (cons _%gsc-prelude194017%_ '()))
                                         (_%user-decls194023%_ '()))
                        (let* ((_%rest194024194032%_ _%rest194022%_)
                               (_%else194026194040%_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _%user-decls194023%_))
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls194023%_)))))
                               (_%K194028194096%_
                                (lambda (_%rest194043%_ _%expr194044%_)
                                  (let* ((_%expr194045194057%_ _%expr194044%_)
                                         (_%else194048194065%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_%lp194020%_
                                               _%rest194043%_
                                               _%user-decls194023%_)))))
                                    (let ((_%K194053194086%_
                                           (lambda (_%decls194084%_)
                                             (let ((__tmp194447
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldl1
                                                       cons
                                                       _%user-decls194023%_
                                                       _%decls194084%_))))
                                               (declare (not safe))
                                               (_%lp194020%_
                                                _%rest194043%_
                                                __tmp194447))))
                                          (_%K194050194071%_
                                           (lambda (_%exprs194069%_)
                                             (let ((__tmp194448
                                                    (append _%exprs194069%_
                                                            _%rest194043%_)))
                                               (declare (not safe))
                                               (_%lp194020%_
                                                __tmp194448
                                                _%user-decls194023%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr194045194057%_))
                                          (let ((_%tl194055194091%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr194045194057%_)))
                                                (_%hd194054194089%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr194045194057%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd194054194089%_
                                                         'declare))
                                                (let ((_%decls194094%_
                                                       _%tl194055194091%_))
                                                  (declare (not safe))
                                                  (_%K194053194086%_
                                                   _%decls194094%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd194054194089%_
                                                             'begin))
                                                    (let ((_%exprs194079%_
                                                           _%tl194055194091%_))
                                                      (declare (not safe))
                                                      (_%K194050194071%_
                                                       _%exprs194079%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else194048194065%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else194048194065%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest194024194032%_))
                              (let ((_%hd194029194099%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest194024194032%_)))
                                    (_%tl194030194101%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest194024194032%_))))
                                (let* ((_%expr194104%_ _%hd194029194099%_)
                                       (_%rest194106%_ _%tl194030194101%_))
                                  (declare (not safe))
                                  (_%K194028194096%_
                                   _%rest194106%_
                                   _%expr194104%_)))
                              (let ()
                                (declare (not safe))
                                (_%else194026194040%_))))))))
                 (_%compile-stub193948%_
                  (lambda (_%output-scm193955%_ _%output-bin193956%_)
                    (let* ((_%gerbil-home193958%_
                            (let ((__tmp194449
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp194449)))
                           (_%gerbil-libdir193960%_
                            (path-expand '"lib" _%gerbil-home193958%_))
                           (_%runtime193962%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp193964%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home193958%_))
                           (_%include-gambit-sharp193966%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp193964%_
                               '"\")")))
                           (_%bin-scm193968%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _%ctx193942%_)))
                           (_%deps193970%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _%ctx193942%_)))
                           (_%deps193972%_
                            (map gxc#find-static-module-file _%deps193970%_))
                           (_%deps193977%_
                            (let ((__tmp194450
                                   (lambda (_%$obj193974%_)
                                     (let ((__tmp194451
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty?
                                               _%$obj193974%_))))
                                       (declare (not safe))
                                       (not __tmp194451)))))
                              (declare (not safe))
                              (##filter __tmp194450 _%deps193972%_)))
                           (_%deps193981%_
                            (let ((__tmp194452
                                   (lambda (_%f193979%_)
                                     (let ((__tmp194453
                                            (let ()
                                              (declare (not safe))
                                              (##member
                                               _%f193979%_
                                               _%runtime193962%_))))
                                       (declare (not safe))
                                       (not __tmp194453)))))
                              (declare (not safe))
                              (##filter __tmp194452 _%deps193977%_)))
                           (_%output-base193983%_
                            (let ((__tmp194454
                                   (path-strip-extension
                                    _%output-scm193955%_)))
                              (declare (not safe))
                              (##string-append __tmp194454)))
                           (_%output-c193985%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base193983%_ '".c")))
                           (_%output-o193987%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base193983%_ '".o")))
                           (_%output-c_193989%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base193983%_ '"_.c")))
                           (_%output-o_193991%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base193983%_ '"_.o")))
                           (_%gsc-link-opts193993%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_%gsc-cc-opts193995%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_%gsc-static-opts193997%_
                            (let ((__tmp194455
                                   (path-expand
                                    '"static"
                                    _%gerbil-libdir193960%_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp194455)))
                           (_%output-ld-opts193999%_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_%gsc-gx-macros194001%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp193966%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp193966%_
                                            '()))))
                           (_%gsc-link-opts194003%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts193993%_
                               _%gsc-gx-macros194001%_)))
                           (_%rpath194005%_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _%gerbil-libdir193960%_)))
                           (_%default-ld-options194007%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp194456
                             (lambda ()
                               (let ((__tmp194457
                                      (path-directory _%output-bin193956%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp194457)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp194456))
                      (let ((__tmp194458
                             (lambda ()
                               (let ((__tmp194459
                                      (let ((__tmp194460
                                             (let ((__tmp194461
                                                    (cons _%bin-scm193968%_
                                                          '())))
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp194461
                                                _%deps193981%_))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp194460
                                         _%runtime193962%_))))
                                 (declare (not safe))
                                 (_%generate-stub193946%_ __tmp194459)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%output-scm193955%_
                         __tmp194458))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (begin
                            (let ((__tmp194464
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp194462
                                   (cons '"-link"
                                         (cons '"-o"
                                               (cons _%output-c_193989%_
                                                     (let ((__tmp194463
                                                            (cons _%output-scm193955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
               (declare (not safe))
               (__foldr1 cons __tmp194463 _%gsc-link-opts194003%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke __tmp194464 __tmp194462))
                            (let ((__tmp194468
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp194465
                                   (cons '"-obj"
                                         (let ((__tmp194466
                                                (let ((__tmp194467
                                                       (cons _%output-c193985%_
                                                             (cons _%output-c_193989%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp194467
                                                   _%gsc-static-opts193997%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp194466
                                            _%gsc-cc-opts193995%_)))))
                              (declare (not safe))
                              (gxc#invoke __tmp194468 __tmp194465))
                            (let ((__tmp194471
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp194469
                                   (cons '"-o"
                                         (cons _%output-bin193956%_
                                               (cons _%output-o193987%_
                                                     (cons _%output-o_193991%_
                                                           (let ((__tmp194470
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%rpath194005%_
                                (cons '"-L"
                                      (cons _%gerbil-libdir193960%_
                                            (cons '"-lgambit"
                                                  _%default-ld-options194007%_))))))
                     (declare (not safe))
                     (__foldr1
                      cons
                      __tmp194470
                      _%output-ld-opts193999%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke __tmp194471 __tmp194469)))
                          '#!void)))))
          (let* ((_%output-bin193950%_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file
                     _%ctx193942%_
                     _%opts193943%_)))
                 (_%output-scm193952%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin193950%_ '"__exe.scm"))))
            (let ()
              (declare (not safe))
              (_%compile-stub193948%_
               _%output-scm193952%_
               _%output-bin193950%_))
            (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
                '#!void
                (let ()
                  (declare (not safe))
                  (##delete-file _%output-scm193952%_)))))))
    (define gxc#find-export-binding
      (lambda (_%ctx193891%_ _%id193892%_)
        (let ((_%$e193938%_
               (let ((__tmp194473
                      (lambda (_%e193893193895%_)
                        (let* ((_%g193897193907%_ _%e193893193895%_)
                               (_%else193899193915%_ (lambda () '#f))
                               (_%K193901193919%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g193897193907%_
                                 'gx#module-export::t))
                              (let* ((_%e193902193922%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g193897193907%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e193903193925%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g193897193907%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e193904193928%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g193897193907%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e193904193928%_ '0))
                                    (let ((_%e193905193931%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g193897193907%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g193933193935%_)
                                             (eq? _%g193933193935%_
                                                  _%id193892%_))
                                           _%e193905193931%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%K193901193919%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else193899193915%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else193899193915%_))))
                              (let ()
                                (declare (not safe))
                                (_%else193899193915%_))))))
                     (__tmp194472
                      (##structure-ref
                       _%ctx193891%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp194473 __tmp194472))))
          (if _%$e193938%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e193938%_))
              (let () '#f)))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx193882%_ _%id193883%_)
        (let ((_%$e193885%_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _%ctx193882%_ _%id193883%_))))
          (if _%$e193885%_
              ((lambda (_%bind193888%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind193888%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id193883%_)))
                 (##structure-ref _%bind193888%_ '1 gx#binding::t '#f))
               _%$e193885%_)
              (let ()
                (let ((__tmp194474
                       (##structure-ref
                        _%ctx193882%_
                        '1
                        gx#expander-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"module does not export symbol"
                   __tmp194474
                   _%id193883%_)))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx193748%_)
        (letrec* ((_%ht193750%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template193751%_
                   (lambda (_%in193827%_ _%phi193828%_)
                     (let ((_%iphi193830%_
                            (fx+ _%phi193828%_
                                 (##direct-structure-ref
                                  _%in193827%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports193831%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in193827%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp193833%_ ((_%rest193835%_ _%imports193831%_)
                                          (_%r193836%_ '()))
                         (let* ((_%rest193837193845%_ _%rest193835%_)
                                (_%else193839193853%_ (lambda () _%r193836%_))
                                (_%K193841193870%_
                                 (lambda (_%rest193856%_ _%in193857%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in193857%_
                                          'gx#module-context::t))
                                       (let ()
                                         (if (let ()
                                               (declare (not safe))
                                               (##fxzero? _%iphi193830%_))
                                             (let ((__tmp194475
                                                    (cons _%in193857%_
                                                          _%r193836%_)))
                                               (declare (not safe))
                                               (_%lp193833%_
                                                _%rest193856%_
                                                __tmp194475))
                                             (let ()
                                               (declare (not safe))
                                               (_%lp193833%_
                                                _%rest193856%_
                                                _%r193836%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in193857%_
                                              'gx#module-import::t))
                                           (let ()
                                             (let ((_%iphi193861%_
                                                    (fx+ _%phi193828%_
                                                         (##direct-structure-ref
                                                          _%in193857%_
                                                          '3
                                                          gx#module-import::t
                                                          '#f))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##fxzero?
                                                      _%iphi193861%_))
                                                   (let ((__tmp194476
                                                          (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##direct-structure-ref
                          _%in193857%_
                          '1
                          gx#module-import::t
                          '#f)
                         '1
                         gx#module-export::t
                         '#f)
                        _%r193836%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_%lp193833%_
                                                      _%rest193856%_
                                                      __tmp194476))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%lp193833%_
                                                      _%rest193856%_
                                                      _%r193836%_)))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in193857%_
                                                  'gx#import-set::t))
                                               (let ()
                                                 (let ((_%xphi193864%_
                                                        (fx+ _%iphi193830%_
                                                             (##direct-structure-ref
                                                              _%in193857%_
                                                              '2
                                                              gx#import-set::t
                                                              '#f))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##fxzero?
                                                          _%xphi193864%_))
                                                       (let ()
                                                         (let ((__tmp194477
                                                                (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%in193857%_
                               '1
                               gx#import-set::t
                               '#f)
                              _%r193836%_)))
                   (declare (not safe))
                   (_%lp193833%_ _%rest193856%_ __tmp194477)))
               (if (let () (declare (not safe)) (##fxpositive? _%xphi193864%_))
                   (let ()
                     (let ((__tmp194478
                            (let ((__tmp194479
                                   (let ()
                                     (declare (not safe))
                                     (_%import-set-template193751%_
                                      _%in193857%_
                                      _%iphi193830%_))))
                              (declare (not safe))
                              (__foldl1 cons _%r193836%_ __tmp194479))))
                       (declare (not safe))
                       (_%lp193833%_ _%rest193856%_ __tmp194478)))
                   (let ()
                     (let ()
                       (declare (not safe))
                       (_%lp193833%_ _%rest193856%_ _%r193836%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%lp193833%_
                                                    _%rest193856%_
                                                    _%r193836%_)))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest193837193845%_))
                               (let ((_%hd193842193873%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest193837193845%_)))
                                     (_%tl193843193875%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest193837193845%_))))
                                 (let* ((_%in193878%_ _%hd193842193873%_)
                                        (_%rest193880%_ _%tl193843193875%_))
                                   (declare (not safe))
                                   (_%K193841193870%_
                                    _%rest193880%_
                                    _%in193878%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%else193839193853%_))))))))
                  (_%find-deps193752%_
                   (lambda (_%rest193760%_ _%deps193761%_)
                     (let* ((_%rest193762193770%_ _%rest193760%_)
                            (_%else193764193778%_ (lambda () _%deps193761%_))
                            (_%K193766193815%_
                             (lambda (_%rest193781%_ _%hd193782%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd193782%_
                                      'gx#module-context::t))
                                   (let ()
                                     (let ((_%id193785%_
                                            (##structure-ref
                                             _%hd193782%_
                                             '1
                                             gx#expander-context::t
                                             '#f))
                                           (_%imports193786%_
                                            (##structure-ref
                                             _%hd193782%_
                                             '8
                                             gx#module-context::t
                                             '#f)))
                                       (if (let ()
                                             (declare (not safe))
                                             (hash-get
                                              _%ht193750%_
                                              _%id193785%_))
                                           (let ()
                                             (let ()
                                               (declare (not safe))
                                               (_%find-deps193752%_
                                                _%rest193781%_
                                                _%deps193761%_)))
                                           (let ((_%$e193789%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-context-prelude__%
                                                     _%hd193782%_))))
                                             (if _%$e193789%_
                                                 ((lambda (_%pre193792%_)
                                                    (let ((_%xdeps193794%_
                                                           (let ((__tmp194480
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%pre193792%_ _%imports193786%_)))
                     (declare (not safe))
                     (_%find-deps193752%_ __tmp194480 _%deps193761%_))))
              (let ()
                (declare (not safe))
                (hash-put! _%ht193750%_ _%id193785%_ _%hd193782%_))
              (let ((__tmp194481 (cons _%hd193782%_ _%xdeps193794%_)))
                (declare (not safe))
                (_%find-deps193752%_ _%rest193781%_ __tmp194481))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e193789%_)
                                                 (let ()
                                                   (let ((_%xdeps193797%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%find-deps193752%_
                                                             _%imports193786%_
                                                             _%deps193761%_))))
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _%ht193750%_
                                                        _%id193785%_
                                                        _%hd193782%_))
                                                     (let ((__tmp194482
                                                            (cons _%hd193782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%xdeps193797%_)))
               (declare (not safe))
               (_%find-deps193752%_ _%rest193781%_ __tmp194482)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd193782%_
                                          'gx#prelude-context::t))
                                       (let ()
                                         (let ((_%id193800%_
                                                (##structure-ref
                                                 _%hd193782%_
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (hash-get
                                                  _%ht193750%_
                                                  _%id193800%_))
                                               (let ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%find-deps193752%_
                                                    _%rest193781%_
                                                    _%deps193761%_)))
                                               (let ()
                                                 (let ((_%xdeps193804%_
                                                        (let ((__tmp194483
                                                               (##structure-ref
                                                                _%hd193782%_
                                                                '7
                                                                gx#prelude-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (_%find-deps193752%_
                                                           __tmp194483
                                                           _%deps193761%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (hash-get
                                                          _%ht193750%_
                                                          _%id193800%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%find-deps193752%_
                                                          _%rest193781%_
                                                          _%xdeps193804%_))
                                                       (begin
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%ht193750%_
                                                            _%id193800%_
                                                            _%hd193782%_))
                                                         (let ((__tmp194484
                                                                (cons _%hd193782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%xdeps193804%_)))
                   (declare (not safe))
                   (_%find-deps193752%_ _%rest193781%_ __tmp194484)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd193782%_
                                              'gx#module-import::t))
                                           (let ()
                                             (if (fxzero? (##direct-structure-ref
                                                           _%hd193782%_
                                                           '3
                                                           gx#module-import::t
                                                           '#f))
                                                 (let ((__tmp194485
                                                        (cons (##direct-structure-ref
                                                               _%hd193782%_
                                                               '1
                                                               gx#module-import::t
                                                               '#f)
                                                              _%rest193781%_)))
                                                   (declare (not safe))
                                                   (_%find-deps193752%_
                                                    __tmp194485
                                                    _%deps193761%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%find-deps193752%_
                                                    _%rest193781%_
                                                    _%deps193761%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd193782%_
                                                  'gx#module-export::t))
                                               (let ()
                                                 (let ((__tmp194486
                                                        (cons (##direct-structure-ref
                                                               _%hd193782%_
                                                               '1
                                                               gx#module-export::t
                                                               '#f)
                                                              _%rest193781%_)))
                                                   (declare (not safe))
                                                   (_%find-deps193752%_
                                                    __tmp194486
                                                    _%deps193761%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd193782%_
                                                      'gx#import-set::t))
                                                   (let ()
                                                     (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd193782%_
                           '2
                           gx#import-set::t
                           '#f))
                 (let ()
                   (let ((__tmp194487
                          (cons (##direct-structure-ref
                                 _%hd193782%_
                                 '1
                                 gx#import-set::t
                                 '#f)
                                _%rest193781%_)))
                     (declare (not safe))
                     (_%find-deps193752%_ __tmp194487 _%deps193761%_)))
                 (if (fxpositive?
                      (##direct-structure-ref
                       _%hd193782%_
                       '2
                       gx#import-set::t
                       '#f))
                     (let ()
                       (let* ((_%xdeps193811%_
                               (let ()
                                 (declare (not safe))
                                 (_%import-set-template193751%_
                                  _%hd193782%_
                                  '0)))
                              (__tmp194488
                               (let ()
                                 (declare (not safe))
                                 (__foldl1
                                  cons
                                  _%rest193781%_
                                  _%xdeps193811%_))))
                         (declare (not safe))
                         (_%find-deps193752%_ __tmp194488 _%deps193761%_)))
                     (let ()
                       (let ()
                         (declare (not safe))
                         (_%find-deps193752%_
                          _%rest193781%_
                          _%deps193761%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"Unexpected module import"
                                                              _%hd193782%_)))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest193762193770%_))
                           (let ((_%hd193767193818%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest193762193770%_)))
                                 (_%tl193768193820%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest193762193770%_))))
                             (let* ((_%hd193823%_ _%hd193767193818%_)
                                    (_%rest193825%_ _%tl193768193820%_))
                               (declare (not safe))
                               (_%K193766193815%_
                                _%rest193825%_
                                _%hd193823%_)))
                           (let ()
                             (declare (not safe))
                             (_%else193764193778%_)))))))
          (let ((__tmp194489
                 (filter gx#expander-context-id
                         (let ((__tmp194490
                                (let ((_%$e193754%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#core-context-prelude__%
                                          _%ctx193748%_))))
                                  (if _%$e193754%_
                                      ((lambda (_%pre193757%_)
                                         (cons _%pre193757%_
                                               (##structure-ref
                                                _%ctx193748%_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                       _%$e193754%_)
                                      (let ()
                                        (##structure-ref
                                         _%ctx193748%_
                                         '8
                                         gx#module-context::t
                                         '#f))))))
                           (declare (not safe))
                           (_%find-deps193752%_ __tmp194490 '())))))
            (declare (not safe))
            (##reverse __tmp194489)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx193678%_)
        (let* ((_%context-id193680%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx193678%_
                       'gx#module-context::t))
                    (##structure-ref
                     _%ctx193678%_
                     '1
                     gx#expander-context::t
                     '#f)
                    (string->symbol _%ctx193678%_)))
               (_%scm193682%_
                (let ((__tmp194491
                       (let ()
                         (declare (not safe))
                         (gxc#static-module-name _%context-id193680%_))))
                  (declare (not safe))
                  (##string-append __tmp194491 '".scm")))
               (_%dirs193684%_ (let () (declare (not safe)) (load-path)))
               (_%dirs193690%_
                (let ((_%user-libpath193686%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath193686%_
                      (let ((_%user-libpath193688%_
                             (path-expand '"lib" _%user-libpath193686%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath193688%_ _%dirs193684%_))
                            _%dirs193684%_
                            (cons _%user-libpath193688%_ _%dirs193684%_)))
                      _%dirs193684%_)))
               (_%dirs193700%_
                (let ((_%$e193692%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e193692%_
                      ((lambda (_%g193694193696%_)
                         (cons _%g193694193696%_ _%dirs193690%_))
                       _%$e193692%_)
                      (let () _%dirs193690%_))))
               (_%dirs193706%_
                (map (lambda (_%g193701193703%_)
                       (path-expand '"static" _%g193701193703%_))
                     _%dirs193700%_)))
          (let _%lp193709%_ ((_%rest193711%_ _%dirs193706%_))
            (let* ((_%rest193712193720%_ _%rest193711%_)
                   (_%else193714193728%_
                    (lambda ()
                      (let ((__tmp194492
                             (##structure-ref
                              _%ctx193678%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp194492
                         _%scm193682%_))))
                   (_%K193716193736%_
                    (lambda (_%rest193731%_ _%dir193732%_)
                      (let ((_%path193734%_
                             (path-expand _%scm193682%_ _%dir193732%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path193734%_))
                            _%path193734%_
                            (let ()
                              (declare (not safe))
                              (_%lp193709%_ _%rest193731%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest193712193720%_))
                  (let ((_%hd193717193739%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193712193720%_)))
                        (_%tl193718193741%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193712193720%_))))
                    (let* ((_%dir193744%_ _%hd193717193739%_)
                           (_%rest193746%_ _%tl193718193741%_))
                      (declare (not safe))
                      (_%K193716193736%_ _%rest193746%_ _%dir193744%_)))
                  (let () (declare (not safe)) (_%else193714193728%_))))))))
    (define gxc#file-empty?
      (lambda (_%path193676%_)
        (zero? (let ((__tmp194493 (file-info _%path193676%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp194493)))))
    (define gxc#compile-top-module
      (lambda (_%ctx193665%_)
        (let ((__tmp194497
               (lambda ()
                 (let ((__tmp194498
                        (##structure-ref
                         _%ctx193665%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp194498))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp194499
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx193665%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp194499))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _%ctx193665%_))
                 (if (let ((__tmp194500
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _%ctx193665%_))))
                       (declare (not safe))
                       (null? __tmp194500))
                     (let* ((_%thr1193670%_
                             (let ((__tmp194501
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _%ctx193665%_)))))
                               (declare (not safe))
                               (__spawn __tmp194501)))
                            (_%thr2193673%_
                             (let ((__tmp194502
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code
                                         _%ctx193665%_)))))
                               (declare (not safe))
                               (__spawn __tmp194502))))
                       (let () (declare (not safe)) (gxc#join! _%thr1193670%_))
                       (let ()
                         (declare (not safe))
                         (gxc#join! _%thr2193673%_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _%ctx193665%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _%ctx193665%_))))
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _%ctx193665%_))
                     '#!void)))
              (__tmp194496
               (let ((__obj194393
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj194393)
                 __obj194393))
              (__tmp194495 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp194494 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (__call-with-parameters
           __tmp194497
           gx#current-expander-context
           _%ctx193665%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp194496
           gxc#current-compile-runtime-sections
           __tmp194495
           gxc#current-compile-runtime-names
           __tmp194494))))
    (define gxc#collect-bindings
      (lambda (_%ctx193663%_)
        (let ((__tmp194503
               (##structure-ref _%ctx193663%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp194503))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx193607%_)
        (letrec ((_%compile1193609%_
                  (lambda (_%ctx193650%_)
                    (let* ((_%code193652%_
                            (##structure-ref
                             _%ctx193650%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rt193656%_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _%code193652%_))
                                (let ((_%idstr193654%_
                                       (let ((__tmp194504
                                              (##structure-ref
                                               _%ctx193650%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp194504))))
                                  (declare (not safe))
                                  (##string-append _%idstr193654%_ '"~0"))
                                '#f)))
                      (if _%rt193656%_
                          (let ()
                            (let ((__tmp194505
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-put!
                               __tmp194505
                               _%ctx193650%_
                               _%rt193656%_))
                            (let ()
                              (declare (not safe))
                              (_%generate-runtime-code193611%_
                               _%ctx193650%_
                               _%code193652%_)))
                          (let ()
                            (let ((_%path193661%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-static-output-file
                                      _%ctx193650%_))))
                              (declare (not safe))
                              (gxc#with-output-to-scheme-file
                               _%path193661%_
                               void))))
                      (let ()
                        (declare (not safe))
                        (_%generate-loader-code193612%_
                         _%ctx193650%_
                         _%code193652%_
                         _%rt193656%_)))))
                 (_%context-timestamp193610%_
                  (lambda (_%ctx193648%_)
                    (let ((__tmp194506
                           (let ((__tmp194507
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx193648%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp194507 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp194506))))
                 (_%generate-runtime-code193611%_
                  (lambda (_%ctx193630%_ _%code193631%_)
                    (let* ((_%lifts193633%_ (box '()))
                           (_%runtime-code193636%_
                            (let ((__tmp194510
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code193631%_))))
                                  (__tmp194509
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp194508
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp194510
                               gx#current-expander-context
                               _%ctx193630%_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _%lifts193633%_
                               gxc#current-compile-marks
                               __tmp194509
                               gxc#current-compile-identifiers
                               __tmp194508)))
                           (_%runtime-code193638%_
                            (if (let ((__tmp194511 (unbox _%lifts193633%_)))
                                  (declare (not safe))
                                  (null? __tmp194511))
                                _%runtime-code193636%_
                                (cons 'begin
                                      (let ((__tmp194513
                                             (cons _%runtime-code193636%_ '()))
                                            (__tmp194512
                                             (reverse (unbox _%lifts193633%_))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp194513
                                         __tmp194512)))))
                           (_%runtime-code193640%_
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (_%context-timestamp193610%_
                                                       _%ctx193630%_))
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-timestamp))
                                                          '())))
                                        (cons _%runtime-code193638%_ '()))))
                           (_%scm0193642%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _%ctx193630%_
                               '0
                               '".scm"))))
                      (let ((_%scms193645%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file
                                _%ctx193630%_))))
                        (let ((__tmp194514
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _%scm0193642%_
                                    _%runtime-code193640%_)))))
                          (declare (not safe))
                          (__call-with-parameters
                           __tmp194514
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _%scms193645%_)
                            (delete-file _%scms193645%_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _%scm0193642%_
                           '" => "
                           _%scms193645%_))
                        (copy-file _%scm0193642%_ _%scms193645%_)
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-keep-scm))
                            '#!void
                            (delete-file _%scm0193642%_))))))
                 (_%generate-loader-code193612%_
                  (lambda (_%ctx193619%_ _%code193620%_ _%rt193621%_)
                    (let* ((_%loader-code193624%_
                            (let ((__tmp194515
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code193620%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp194515
                               gx#current-expander-context
                               _%ctx193619%_)))
                           (_%loader-code193626%_
                            (if _%rt193621%_
                                (cons 'begin
                                      (cons _%loader-code193624%_
                                            (cons (cons 'load-module
                                                        (cons _%rt193621%_
                                                              '()))
                                                  '())))
                                _%loader-code193624%_)))
                      (let ((__tmp194516
                             (lambda ()
                               (let ((__tmp194517
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _%ctx193619%_
                                         '#f
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp194517
                                  _%loader-code193626%_)))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp194516
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let* ((_%all-modules193614%_
                  (cons _%ctx193607%_
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _%ctx193607%_))))
                 (__tmp194518
                  (lambda (_%ctx193616%_)
                    (let ((__tmp194519
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (_%compile1193609%_ _%ctx193616%_)))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp194519
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp194518 _%all-modules193614%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx193502%_)
        (letrec ((_%compile-ssi193504%_
                  (lambda (_%code193575%_)
                    (let* ((_%path193577%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _%ctx193502%_
                               '#f
                               '".ssi")))
                           (_%prelude193589%_
                            (let* ((_%super193579%_
                                    (##structure-ref
                                     _%ctx193502%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e193581%_
                                    (##structure-ref
                                     _%super193579%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e193581%_
                                  ((lambda (_%g193583193585%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g193583193585%_)))
                                   _%$e193581%_)
                                  (let () ':<root>))))
                           (_%ns193591%_
                            (##structure-ref
                             _%ctx193502%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr193593%_
                            (symbol->string
                             (##structure-ref
                              _%ctx193502%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg193601%_
                            (let ((_%$e193595%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr193593%_ '#\/))))
                              (if _%$e193595%_
                                  ((lambda (_%x193598%_)
                                     (let ((__tmp194520
                                            (substring
                                             _%idstr193593%_
                                             '0
                                             _%x193598%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp194520)))
                                   _%$e193595%_)
                                  (let () '#f))))
                           (_%rt193603%_
                            (let ((__tmp194521
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp194521 _%ctx193502%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path193577%_))
                      (let ((__tmp194522
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln
                                  '"prelude:"
                                  '" "
                                  _%prelude193589%_))
                               (if _%pkg193601%_
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"package:"
                                      '" "
                                      _%pkg193601%_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _%ns193591%_))
                               (newline)
                               (pretty-print _%code193575%_)
                               (if _%rt193603%_
                                   (pretty-print
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%rt193603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%path193577%_
                         __tmp194522)))))
                 (_%compile-phi193505%_
                  (lambda (_%part193515%_)
                    (let* ((_%part193516193529%_ _%part193515%_)
                           (_%E193518193533%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part193516193529%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K193519193544%_
                            (lambda (_%code193536%_
                                     _%n193537%_
                                     _%phi193538%_
                                     _%phi-ctx193539%_)
                              (let* ((_%code193542%_
                                      (let ((__tmp194523
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _%code193536%_)))))
                                        (declare (not safe))
                                        (__call-with-parameters
                                         __tmp194523
                                         gx#current-expander-context
                                         _%phi-ctx193539%_
                                         gx#current-expander-phi
                                         _%phi193538%_)))
                                     (__tmp194524
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _%ctx193502%_
                                         _%n193537%_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp194524
                                 _%code193542%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part193516193529%_))
                          (let ((_%hd193520193547%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part193516193529%_)))
                                (_%tl193521193549%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part193516193529%_))))
                            (let ((_%phi-ctx193552%_ _%hd193520193547%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl193521193549%_))
                                  (let ((_%hd193522193554%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl193521193549%_)))
                                        (_%tl193523193556%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl193521193549%_))))
                                    (let ((_%phi193559%_ _%hd193522193554%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl193523193556%_))
                                          (let ((_%hd193524193561%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl193523193556%_)))
                                                (_%tl193525193563%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl193523193556%_))))
                                            (let ((_%n193566%_
                                                   _%hd193524193561%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl193525193563%_))
                                                  (let ((_%hd193526193568%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl193525193563%_)))
                                                        (_%tl193527193570%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl193525193563%_))))
                                                    (let ((_%code193573%_
                                                           _%hd193526193568%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl193527193570%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%K193519193544%_
                                                             _%code193573%_
                                                             _%n193566%_
                                                             _%phi193559%_
                                                             _%phi-ctx193552%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%E193518193533%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%E193518193533%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E193518193533%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E193518193533%_)))))
                          (let ()
                            (declare (not safe))
                            (_%E193518193533%_)))))))
          (let ((_g194525_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _%ctx193502%_))))
            (begin
              (let ((_g194526_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g194525_)
                           (##vector-length _g194525_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g194526_ 2)))
                    (error "Context expects 2 values" _g194526_)))
              (let ((_%ssi-code193507%_
                     (let () (declare (not safe)) (##vector-ref _g194525_ 0)))
                    (_%phi-code193508%_
                     (let () (declare (not safe)) (##vector-ref _g194525_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_%compile-ssi193504%_ _%ssi-code193507%_))
                  (let ((_%threads193513%_
                         (map (lambda (_%code193510%_)
                                (let ((__tmp194527
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_%compile-phi193505%_
                                            _%code193510%_)))))
                                  (declare (not safe))
                                  (__spawn __tmp194527)))
                              _%phi-code193508%_)))
                    (declare (not safe))
                    (##for-each gxc#join! _%threads193513%_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx193484%_)
        (let* ((_%path193486%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _%ctx193484%_ '#f '".ssxi.ss")))
               (_%code193488%_
                (let ((__tmp194528
                       (##structure-ref
                        _%ctx193484%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp194528)))
               (_%idstr193490%_
                (symbol->string
                 (##structure-ref
                  _%ctx193484%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg193498%_
                (let ((_%$e193492%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr193490%_ '#\/))))
                  (if _%$e193492%_
                      ((lambda (_%x193495%_)
                         (let ((__tmp194529
                                (substring _%idstr193490%_ '0 _%x193495%_)))
                           (declare (not safe))
                           (##string->symbol __tmp194529)))
                       _%$e193492%_)
                      (let () '#f)))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path193486%_))
          (let ((__tmp194530
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _%pkg193498%_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _%pkg193498%_))
                       '#!void)
                   (newline)
                   (pretty-print _%code193488%_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _%path193486%_ __tmp194530)))))
    (define gxc#generate-meta-code
      (lambda (_%ctx193477%_)
        (let* ((_%state193479%_
                (let ((__obj194394
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj194394 _%ctx193477%_)
                  __obj194394))
               (_%ssi-code193481%_
                (let ((__tmp194531
                       (##structure-ref
                        _%ctx193477%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta
                   __tmp194531
                   'state:
                   _%state193479%_))))
          (values _%ssi-code193481%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state193479%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx193470%_)
        (let ((_%lifts193472%_ (box '())))
          (let ((__tmp194534
                 (lambda ()
                   (let ((_%code193475%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx193470%_))))
                     (if (let ((__tmp194535 (unbox _%lifts193472%_)))
                           (declare (not safe))
                           (null? __tmp194535))
                         _%code193475%_
                         (cons 'begin
                               (let ((__tmp194537 (cons _%code193475%_ '()))
                                     (__tmp194536
                                      (reverse (unbox _%lifts193472%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp194537 __tmp194536)))))))
                (__tmp194533
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp194532
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp194534
             gxc#current-compile-lift
             _%lifts193472%_
             gxc#current-compile-marks
             __tmp194533
             gxc#current-compile-identifiers
             __tmp194532)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx193466%_)
        (let ((_%modules193468%_ (box '())))
          (let ((__tmp194538
                 (##structure-ref _%ctx193466%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp194538 'modules: _%modules193468%_))
          (reverse (unbox _%modules193468%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path193449%_ _%code193450%_ _%phi?193451%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path193449%_))
        (let ((__tmp194539
               (lambda ()
                 (pretty-print
                  (cons 'declare
                        (cons (cons 'block '())
                              (cons (cons 'standard-bindings '())
                                    (cons (cons 'extended-bindings '())
                                          (let ((__tmp194540
                                                 (if _%phi?193451%_
                                                     '((inlining-limit 200))
                                                     '())))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             '()
                                             __tmp194540)))))))
                 (pretty-print _%code193450%_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _%path193449%_ __tmp194539))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _%path193449%_ _%phi?193451%_))
            '#!void)
        (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
            '#!void
            (delete-file _%path193449%_))))
    (define gxc#compile-scm-file__0
      (lambda (_%path193457%_ _%code193458%_)
        (let ((_%phi?193460%_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__%
           _%path193457%_
           _%code193458%_
           _%phi?193460%_))))
    (define gxc#compile-scm-file
      (lambda _g194542_
        (let ((_g194541_ (let () (declare (not safe)) (##length _g194542_))))
          (cond ((let () (declare (not safe)) (##fx= _g194541_ 2))
                 (apply (lambda (_%path193457%_ _%code193458%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _%path193457%_
                             _%code193458%_)))
                        _g194542_))
                ((let () (declare (not safe)) (##fx= _g194541_ 3))
                 (apply (lambda (_%path193462%_ _%code193463%_ _%phi?193464%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _%path193462%_
                             _%code193463%_
                             _%phi?193464%_)))
                        _g194542_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g194542_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?193350%_)
        (let _%lp193352%_ ((_%rest193354%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts193355%_ '()))
          (let* ((_%rest193356193376%_ _%rest193354%_)
                 (_%else193360193384%_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _%phi?193350%_))
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-debug)))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts193355%_)))
                        (reverse _%opts193355%_)))))
            (let ((_%K193370193427%_
                   (lambda (_%rest193425%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193352%_ _%rest193425%_ _%opts193355%_))))
                  (_%K193365193409%_
                   (lambda (_%rest193407%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193352%_ _%rest193407%_ _%opts193355%_))))
                  (_%K193362193391%_
                   (lambda (_%rest193388%_ _%opt193389%_)
                     (let ((__tmp194543 (cons _%opt193389%_ _%opts193355%_)))
                       (declare (not safe))
                       (_%lp193352%_ _%rest193388%_ __tmp194543)))))
              (if (let () (declare (not safe)) (##pair? _%rest193356193376%_))
                  (let ((_%tl193372193432%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193356193376%_)))
                        (_%hd193371193430%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193356193376%_))))
                    (if (equal? _%hd193371193430%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl193372193432%_))
                            (let* ((_%tl193374193435%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl193372193432%_)))
                                   (_%rest193438%_ _%tl193374193435%_))
                              (declare (not safe))
                              (_%K193370193427%_ _%rest193438%_))
                            (let ((_%opt193399%_ _%hd193371193430%_)
                                  (_%rest193401%_ _%tl193372193432%_))
                              (let ()
                                (declare (not safe))
                                (_%K193362193391%_
                                 _%rest193401%_
                                 _%opt193399%_))))
                        (if (equal? _%hd193371193430%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl193372193432%_))
                                (let* ((_%tl193369193417%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl193372193432%_)))
                                       (_%rest193420%_ _%tl193369193417%_))
                                  (declare (not safe))
                                  (_%K193365193409%_ _%rest193420%_))
                                (let ((_%opt193399%_ _%hd193371193430%_)
                                      (_%rest193401%_ _%tl193372193432%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%K193362193391%_
                                     _%rest193401%_
                                     _%opt193399%_))))
                            (let ((_%opt193399%_ _%hd193371193430%_)
                                  (_%rest193401%_ _%tl193372193432%_))
                              (let ()
                                (declare (not safe))
                                (_%K193362193391%_
                                 _%rest193401%_
                                 _%opt193399%_))))))
                  (let () (declare (not safe)) (_%else193360193384%_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?193444%_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _%phi?193444%_))))
    (define gxc#gsc-link-options
      (lambda _g194545_
        (let ((_g194544_ (let () (declare (not safe)) (##length _g194545_))))
          (cond ((let () (declare (not safe)) (##fx= _g194544_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g194545_))
                ((let () (declare (not safe)) (##fx= _g194544_ 1))
                 (apply (lambda (_%phi?193446%_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _%phi?193446%_)))
                        _g194545_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g194545_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_%phi?193251%_)
        (let _%lp193253%_ ((_%rest193255%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts193256%_ '()))
          (let* ((_%rest193257193277%_ _%rest193255%_)
                 (_%else193261193285%_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _%phi?193251%_))
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-debug)))
                        (cons '"-cc-options"
                              (cons '"-g" (reverse _%opts193256%_)))
                        (reverse _%opts193256%_)))))
            (let ((_%K193271193324%_
                   (lambda (_%rest193321%_ _%opt193322%_)
                     (let ((__tmp194546
                            (let ((__tmp194547
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _%opts193256%_))))
                              (declare (not safe))
                              (cons _%opt193322%_ __tmp194547))))
                       (declare (not safe))
                       (_%lp193253%_ _%rest193321%_ __tmp194546))))
                  (_%K193266193305%_
                   (lambda (_%rest193303%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193253%_ _%rest193303%_ _%opts193256%_))))
                  (_%K193263193291%_
                   (lambda (_%rest193289%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193253%_ _%rest193289%_ _%opts193256%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest193257193277%_))
                  (let ((_%tl193273193329%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193257193277%_)))
                        (_%hd193272193327%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193257193277%_))))
                    (if (equal? _%hd193272193327%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl193273193329%_))
                            (let ((_%tl193275193334%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl193273193329%_)))
                                  (_%hd193274193332%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl193273193329%_))))
                              (let ((_%opt193337%_ _%hd193274193332%_)
                                    (_%rest193339%_ _%tl193275193334%_))
                                (let ()
                                  (declare (not safe))
                                  (_%K193271193324%_
                                   _%rest193339%_
                                   _%opt193337%_))))
                            (let ((_%rest193297%_ _%tl193273193329%_))
                              (declare (not safe))
                              (_%K193263193291%_ _%rest193297%_)))
                        (if (equal? _%hd193272193327%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl193273193329%_))
                                (let* ((_%tl193270193313%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl193273193329%_)))
                                       (_%rest193316%_ _%tl193270193313%_))
                                  (declare (not safe))
                                  (_%K193266193305%_ _%rest193316%_))
                                (let ((_%rest193297%_ _%tl193273193329%_))
                                  (declare (not safe))
                                  (_%K193263193291%_ _%rest193297%_)))
                            (let ((_%rest193297%_ _%tl193273193329%_))
                              (declare (not safe))
                              (_%K193263193291%_ _%rest193297%_)))))
                  (let () (declare (not safe)) (_%else193261193285%_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_%phi?193345%_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _%phi?193345%_))))
    (define gxc#gsc-cc-options
      (lambda _g194549_
        (let ((_g194548_ (let () (declare (not safe)) (##length _g194549_))))
          (cond ((let () (declare (not safe)) (##fx= _g194548_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g194549_))
                ((let () (declare (not safe)) (##fx= _g194548_ 1))
                 (apply (lambda (_%phi?193347%_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _%phi?193347%_)))
                        _g194549_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g194549_))))))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir193246%_)
        (let ((_%user-staticdir193248%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir193246%_
                       '" -I "
                       _%user-staticdir193248%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp193158%_ ((_%rest193160%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts193161%_ '()))
          (let* ((_%rest193162193182%_ _%rest193160%_)
                 (_%else193166193190%_ (lambda () _%opts193161%_)))
            (let ((_%K193176193233%_
                   (lambda (_%rest193231%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193158%_ _%rest193231%_ _%opts193161%_))))
                  (_%K193171193211%_
                   (lambda (_%rest193208%_ _%opt193209%_)
                     (let ((__tmp194550
                            (let ((__tmp194551
                                   (let ((__tmp194552
                                          (let ()
                                            (declare (not safe))
                                            (string-split
                                             _%opt193209%_
                                             '#\space))))
                                     (declare (not safe))
                                     (##filter
                                      gxc#not-string-empty?
                                      __tmp194552))))
                              (declare (not safe))
                              (##append _%opts193161%_ __tmp194551))))
                       (declare (not safe))
                       (_%lp193158%_ _%rest193208%_ __tmp194550))))
                  (_%K193168193196%_
                   (lambda (_%rest193194%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193158%_ _%rest193194%_ _%opts193161%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest193162193182%_))
                  (let ((_%tl193178193238%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193162193182%_)))
                        (_%hd193177193236%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193162193182%_))))
                    (if (equal? _%hd193177193236%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl193178193238%_))
                            (let* ((_%tl193180193241%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl193178193238%_)))
                                   (_%rest193244%_ _%tl193180193241%_))
                              (declare (not safe))
                              (_%K193176193233%_ _%rest193244%_))
                            (let ((_%rest193202%_ _%tl193178193238%_))
                              (declare (not safe))
                              (_%K193168193196%_ _%rest193202%_)))
                        (if (equal? _%hd193177193236%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl193178193238%_))
                                (let ((_%tl193175193221%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl193178193238%_)))
                                      (_%hd193174193219%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl193178193238%_))))
                                  (let ((_%opt193224%_ _%hd193174193219%_)
                                        (_%rest193226%_ _%tl193175193221%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%K193171193211%_
                                       _%rest193226%_
                                       _%opt193224%_))))
                                (let ((_%rest193202%_ _%tl193178193238%_))
                                  (declare (not safe))
                                  (_%K193168193196%_ _%rest193202%_)))
                            (let ((_%rest193202%_ _%tl193178193238%_))
                              (declare (not safe))
                              (_%K193168193196%_ _%rest193202%_)))))
                  (let () (declare (not safe)) (_%else193166193190%_))))))))
    (define gxc#not-string-empty?
      (lambda (_%str193155%_)
        (let ((__tmp194553
               (let () (declare (not safe)) (string-empty? _%str193155%_))))
          (declare (not safe))
          (not __tmp194553))))
    (define gxc#gsc-compile-file
      (lambda (_%path193123%_ _%phi?193124%_)
        (letrec ((_%gsc-link-path193126%_
                  (lambda (_%base-path193147%_)
                    (let _%lp193149%_ ((_%n193151%_ '1))
                      (let ((_%path193153%_
                             (let ((__tmp194554 (number->string _%n193151%_)))
                               (declare (not safe))
                               (##string-append
                                _%base-path193147%_
                                '".o"
                                __tmp194554))))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path193153%_))
                            (let ((__tmp194555
                                   (let ()
                                     (declare (not safe))
                                     (+ _%n193151%_ '1))))
                              (declare (not safe))
                              (_%lp193149%_ __tmp194555))
                            _%path193153%_))))))
          (let* ((_%base-path193128%_ (path-strip-extension _%path193123%_))
                 (_%path-c193130%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%base-path193128%_ '".c")))
                 (_%path-o193132%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%base-path193128%_ '".o")))
                 (_%link-path193134%_
                  (let ()
                    (declare (not safe))
                    (_%gsc-link-path193126%_ _%base-path193128%_)))
                 (_%link-path-c193136%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%link-path193134%_ '".c")))
                 (_%link-path-o193138%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%link-path193134%_ '".o")))
                 (_%gsc-link-opts193140%_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _%phi?193124%_)))
                 (_%gsc-cc-opts193142%_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _%phi?193124%_)))
                 (_%gcc-ld-opts193144%_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp194558 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp194556
                   (cons '"-link"
                         (cons '"-flat"
                               (cons '"-o"
                                     (cons _%link-path-c193136%_
                                           (let ((__tmp194557
                                                  (cons _%path193123%_ '())))
                                             (declare (not safe))
                                             (__foldr1
                                              cons
                                              __tmp194557
                                              _%gsc-link-opts193140%_))))))))
              (declare (not safe))
              (gxc#invoke __tmp194558 __tmp194556 'stdout-redirection: '#t))
            (let ((__tmp194561 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp194559
                   (cons '"-obj"
                         (cons '"-cc-options"
                               (cons '"-D___DYNAMIC"
                                     (let ((__tmp194560
                                            (cons _%path-c193130%_
                                                  (cons _%link-path-c193136%_
                                                        '()))))
                                       (declare (not safe))
                                       (__foldr1
                                        cons
                                        __tmp194560
                                        _%gsc-cc-opts193142%_)))))))
              (declare (not safe))
              (gxc#invoke __tmp194561 __tmp194559 'stdout-redirection: '#t))
            (let ((__tmp194563 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp194562
                   (cons '"-shared"
                         (cons '"-o"
                               (cons _%link-path193134%_
                                     (cons _%path-o193132%_
                                           (cons _%link-path-o193138%_
                                                 _%gcc-ld-opts193144%_)))))))
              (declare (not safe))
              (gxc#invoke __tmp194563 __tmp194562))
            (let ((__tmp194564
                   (cons _%path-c193130%_
                         (cons _%path-o193132%_
                               (cons _%link-path-c193136%_
                                     (cons _%link-path-o193138%_ '()))))))
              (declare (not safe))
              (##for-each delete-file __tmp194564))))))
    (define gxc#compile-output-file
      (lambda (_%ctx193089%_ _%n193090%_ _%ext193091%_)
        (letrec ((_%module-relative-path193093%_
                  (lambda (_%ctx193121%_)
                    (path-strip-directory
                     (let ((__tmp194565
                            (##structure-ref
                             _%ctx193121%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp194565)))))
                 (_%module-source-directory193094%_
                  (lambda (_%ctx193117%_)
                    (path-directory
                     (let ((_%mpath193119%_
                            (##structure-ref
                             _%ctx193117%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _%mpath193119%_))
                           _%mpath193119%_
                           (last _%mpath193119%_))))))
                 (_%section-string193095%_
                  (lambda (_%n193111%_)
                    (if (let () (declare (not safe)) (number? _%n193111%_))
                        (let () (number->string _%n193111%_))
                        (if (let () (declare (not safe)) (symbol? _%n193111%_))
                            (let () (symbol->string _%n193111%_))
                            (if (let ()
                                  (declare (not safe))
                                  (string? _%n193111%_))
                                (let () _%n193111%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"Unexpected section"
                                     _%n193111%_))))))))
                 (_%file-name193096%_
                  (lambda (_%path193109%_)
                    (if _%n193090%_
                        (string-append
                         _%path193109%_
                         '"~"
                         (let ()
                           (declare (not safe))
                           (_%section-string193095%_ _%n193090%_))
                         _%ext193091%_)
                        (string-append _%path193109%_ _%ext193091%_))))
                 (_%file-path193097%_
                  (lambda ()
                    (let ((_%$e193103%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e193103%_
                          ((lambda (_%outdir193106%_)
                             (path-expand
                              (let ((__tmp194566
                                     (let ((__tmp194567
                                            (##structure-ref
                                             _%ctx193089%_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp194567))))
                                (declare (not safe))
                                (_%file-name193096%_ __tmp194566))
                              _%outdir193106%_))
                           _%$e193103%_)
                          (let ()
                            (path-expand
                             (let ((__tmp194568
                                    (let ()
                                      (declare (not safe))
                                      (_%module-relative-path193093%_
                                       _%ctx193089%_))))
                               (declare (not safe))
                               (_%file-name193096%_ __tmp194568))
                             (let ()
                               (declare (not safe))
                               (_%module-source-directory193094%_
                                _%ctx193089%_)))))))))
          (let ((_%path193099%_
                 (let () (declare (not safe)) (_%file-path193097%_))))
            (let ((__tmp194569
                   (lambda ()
                     (let ((__tmp194570 (path-directory _%path193099%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp194570)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp194569))
            _%path193099%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx193070%_)
        (letrec ((_%file-name193072%_
                  (lambda (_%id193087%_)
                    (let ((__tmp194571
                           (let ()
                             (declare (not safe))
                             (gxc#static-module-name _%id193087%_))))
                      (declare (not safe))
                      (##string-append __tmp194571 '".scm"))))
                 (_%file-path193073%_
                  (lambda ()
                    (let* ((_%file193079%_
                            (let ((__tmp194572
                                   (##structure-ref
                                    _%ctx193070%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_%file-name193072%_ __tmp194572)))
                           (_%$e193081%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e193081%_
                          ((lambda (_%outdir193084%_)
                             (path-expand
                              _%file193079%_
                              (path-expand '"static" _%outdir193084%_)))
                           _%$e193081%_)
                          (let () (path-expand _%file193079%_ '"static")))))))
          (let ((_%path193075%_
                 (let () (declare (not safe)) (_%file-path193073%_))))
            (let ((__tmp194573
                   (lambda ()
                     (let ((__tmp194574 (path-directory _%path193075%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp194574)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp194573))
            _%path193075%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx193063%_ _%opts193064%_)
        (let ((_%$e193066%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts193064%_))))
          (if _%$e193066%_
              (values _%$e193066%_)
              (let ()
                (path-strip-directory
                 (symbol->string
                  (##structure-ref
                   _%ctx193063%_
                   '1
                   gx#expander-context::t
                   '#f))))))))
    (define gxc#static-module-name
      (lambda (_%idstr193053%_)
        (if (let () (declare (not safe)) (string? _%idstr193053%_))
            (let ()
              (let* ((_%str193056%_
                      (let ()
                        (declare (not safe))
                        (gxc#module-id->path-string _%idstr193053%_)))
                     (_%strs193058%_
                      (let ()
                        (declare (not safe))
                        (string-split _%str193056%_ '#\/))))
                (let ()
                  (declare (not safe))
                  (string-join _%strs193058%_ '"__"))))
            (if (let () (declare (not safe)) (symbol? _%idstr193053%_))
                (let ()
                  (let ((__tmp194575 (symbol->string _%idstr193053%_)))
                    (declare (not safe))
                    (gxc#static-module-name __tmp194575)))
                (let ()
                  (let ()
                    (declare (not safe))
                    (error '"Bad module id" _%idstr193053%_)))))))
    (define gxc#invoke__%
      (lambda (_%_193017%_
               _%stdout-redirection193013193019%_
               _%stderr-redirection193014193021%_
               _%program193023%_
               _%args193024%_)
        (let* ((_%stdout-redirection193026%_
                (if (eq? _%stdout-redirection193013193019%_ absent-value)
                    '#f
                    _%stdout-redirection193013193019%_))
               (_%stderr-redirection193028%_
                (if (eq? _%stderr-redirection193014193021%_ absent-value)
                    '#f
                    _%stderr-redirection193014193021%_)))
          (let ((__tmp194576 (cons _%program193023%_ _%args193024%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp194576))
          (let* ((_%proc193030%_
                  (open-process
                   (cons 'path:
                         (cons _%program193023%_
                               (cons 'arguments:
                                     (cons _%args193024%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection193026%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection193028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output193035%_
                  (if (or _%stdout-redirection193026%_
                          _%stderr-redirection193028%_)
                      (read-line _%proc193030%_ '#f)
                      '#f)))
            (let ((_%status193038%_ (process-status _%proc193030%_)))
              (let () (declare (not safe)) (##close-port _%proc193030%_))
              (if (zero? _%status193038%_)
                  '#!void
                  (begin
                    (display _%output193035%_)
                    (let ((__tmp194577
                           (cons _%program193023%_ _%args193024%_)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp194577
                       _%status193038%_)))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords193043%_ . _%args193044%_)
        (apply gxc#invoke__%
               _%@@keywords193043%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193043%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193043%_
                  'stderr-redirection:
                  absent-value))
               _%args193044%_)))
    (define gxc#invoke
      (lambda _%args193015193050%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args193015193050%_)))
    (define gxc#join!
      (lambda (_%thread193007%_)
        (let ((__tmp194579
               (lambda (_%exn193009%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn193009%_))
                     (let ((__tmp194580
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn193009%_))))
                       (declare (not safe))
                       (raise __tmp194580))
                     (let () (declare (not safe)) (raise _%exn193009%_)))))
              (__tmp194578 (lambda () (thread-join! _%thread193007%_))))
          (declare (not safe))
          (__with-catch __tmp194579 __tmp194578))))))
