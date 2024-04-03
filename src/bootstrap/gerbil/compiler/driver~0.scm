(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1712121905)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp194501 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp194501))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp194502 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp194502))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path194407%_ _%fun194408%_)
        (with-output-to-file
         (cons 'path: (cons _%path194407%_ gxc#scheme-file-settings))
         _%fun194408%_)))
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
      (lambda (_%gerbil-libdir194402%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir194402%_)))
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
      (lambda (_%dir194400%_) (delete-file-or-directory _%dir194400%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath194374%_ _%opts194375%_)
        (if (let () (declare (not safe)) (string? _%srcpath194374%_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath194374%_)))
        (let ((_%outdir194377%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts194375%_)))
              (_%invoke-gsc?194378%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts194375%_)))
              (_%gsc-options194379%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts194375%_)))
              (_%keep-scm?194380%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts194375%_)))
              (_%verbosity194381%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts194375%_)))
              (_%optimize194382%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'optimize: _%opts194375%_)))
              (_%debug194383%_
               (let () (declare (not safe)) (pgetq__0 'debug: _%opts194375%_)))
              (_%gen-ssxi194384%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'generate-ssxi: _%opts194375%_))))
          (if _%outdir194377%_
              (let ((__tmp194503
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir194377%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp194503))
              '#!void)
          (if _%optimize194382%_
              (let ((__tmp194504
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp194504))
              '#!void)
          (let ((__tmp194507
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile " _%srcpath194374%_))
                   (let ((__tmp194508
                          (let ((__tmp194509
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0
                                      _%srcpath194374%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp194509))))
                     (declare (not safe))
                     (gxc#compile-top-module __tmp194508))))
                (__tmp194506
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp194505
                 (cons 'compile-module (cons _%srcpath194374%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp194507
             gxc#current-compile-output-dir
             _%outdir194377%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?194378%_
             gxc#current-compile-gsc-options
             _%gsc-options194379%_
             gxc#current-compile-keep-scm
             _%keep-scm?194380%_
             gxc#current-compile-verbose
             _%verbosity194381%_
             gxc#current-compile-optimize
             _%optimize194382%_
             gxc#current-compile-debug
             _%debug194383%_
             gxc#current-compile-generate-ssxi
             _%gen-ssxi194384%_
             gxc#current-compile-timestamp
             __tmp194506
             gxc#current-compile-context
             __tmp194505
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath194393%_)
        (let ((_%opts194395%_ '()))
          (declare (not safe))
          (gxc#compile-module__% _%srcpath194393%_ _%opts194395%_))))
    (define gxc#compile-module
      (lambda _g194511_
        (let ((_g194510_ (let () (declare (not safe)) (##length _g194511_))))
          (cond ((let () (declare (not safe)) (##fx= _g194510_ 1))
                 (apply (lambda (_%srcpath194393%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__0 _%srcpath194393%_)))
                        _g194511_))
                ((let () (declare (not safe)) (##fx= _g194510_ 2))
                 (apply (lambda (_%srcpath194397%_ _%opts194398%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-module__%
                             _%srcpath194397%_
                             _%opts194398%_)))
                        _g194511_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g194511_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath194350%_ _%opts194351%_)
        (if (let () (declare (not safe)) (string? _%srcpath194350%_))
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath194350%_)))
        (let ((_%outdir194353%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-dir: _%opts194351%_)))
              (_%invoke-gsc?194354%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'invoke-gsc: _%opts194351%_)))
              (_%gsc-options194355%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'gsc-options: _%opts194351%_)))
              (_%keep-scm?194356%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'keep-scm: _%opts194351%_)))
              (_%verbosity194357%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'verbose: _%opts194351%_)))
              (_%debug194358%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'debug: _%opts194351%_))))
          (if _%outdir194353%_
              (let ((__tmp194512
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir194353%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp194512))
              '#!void)
          (let ((__tmp194515
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#verbose '"compile exe " _%srcpath194350%_))
                   (let ((__tmp194516
                          (let ((__tmp194517
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#import-module__0
                                      _%srcpath194350%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp194517))))
                     (declare (not safe))
                     (gxc#compile-executable-module
                      __tmp194516
                      _%opts194351%_))))
                (__tmp194514
                 (let () (declare (not safe)) (gxc#compile-timestamp)))
                (__tmp194513 (cons 'compile-exe (cons _%srcpath194350%_ '()))))
            (declare (not safe))
            (__call-with-parameters
             __tmp194515
             gxc#current-compile-output-dir
             _%outdir194353%_
             gxc#current-compile-invoke-gsc
             _%invoke-gsc?194354%_
             gxc#current-compile-gsc-options
             _%gsc-options194355%_
             gxc#current-compile-keep-scm
             _%keep-scm?194356%_
             gxc#current-compile-verbose
             _%verbosity194357%_
             gxc#current-compile-debug
             _%debug194358%_
             gxc#current-compile-timestamp
             __tmp194514
             gxc#current-compile-context
             __tmp194513
             gx#current-expander-compiling?
             '#t)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath194366%_)
        (let ((_%opts194368%_ '()))
          (declare (not safe))
          (gxc#compile-exe__% _%srcpath194366%_ _%opts194368%_))))
    (define gxc#compile-exe
      (lambda _g194519_
        (let ((_g194518_ (let () (declare (not safe)) (##length _g194519_))))
          (cond ((let () (declare (not safe)) (##fx= _g194518_ 1))
                 (apply (lambda (_%srcpath194366%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__0 _%srcpath194366%_)))
                        _g194519_))
                ((let () (declare (not safe)) (##fx= _g194518_ 2))
                 (apply (lambda (_%srcpath194370%_ _%opts194371%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-exe__%
                             _%srcpath194370%_
                             _%opts194371%_)))
                        _g194519_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g194519_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx194346%_ _%opts194347%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts194347%_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/full-program-optimization
               _%ctx194346%_
               _%opts194347%_))
            (let ()
              (declare (not safe))
              (gxc#compile-executable-module/separate
               _%ctx194346%_
               _%opts194347%_)))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx194223%_ _%opts194224%_)
        (letrec ((_%generate-stub194226%_
                  (lambda (_%builtin-modules194342%_)
                    (let ((_%mod-main194344%_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _%ctx194223%_ 'main))))
                      (let ((__tmp194520
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'append
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%builtin-modules194342%_ '()))
                   (cons 'libgerbil-builtin-modules '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))
                        (declare (not safe))
                        (##write __tmp194520))
                      (let ((__tmp194521
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main194344%_
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
                        (##write __tmp194521))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts194227%_
                  (lambda (_%libgerbil194340%_)
                    (let ((__tmp194522
                           (let ()
                             (declare (not safe))
                             (##string-append _%libgerbil194340%_ '".ldd"))))
                      (declare (not safe))
                      (##call-with-input-file __tmp194522 read))))
                 (_%replace-extension194228%_
                  (lambda (_%path194337%_ _%ext194338%_)
                    (string-append
                     (path-strip-extension _%path194337%_)
                     _%ext194338%_)))
                 (_%not-exclude-module?194229%_
                  (lambda (_%ctx194333%_)
                    (let ((_%id-str194335%_
                           (symbol->string
                            (##structure-ref
                             _%ctx194333%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (let ((__tmp194523
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str194335%_))))
                            (declare (not safe))
                            (not __tmp194523))
                          (let ((__tmp194524
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"std/"
                                    _%id-str194335%_))))
                            (declare (not safe))
                            (not __tmp194524))
                          '#f))))
                 (_%not-file-empty?194230%_
                  (lambda (_%path194331%_)
                    (let ((__tmp194525
                           (let ()
                             (declare (not safe))
                             (gxc#file-empty? _%path194331%_))))
                      (declare (not safe))
                      (not __tmp194525))))
                 (_%compile-stub194231%_
                  (lambda (_%output-scm194238%_ _%output-bin194239%_)
                    (let* ((_%gerbil-home194241%_
                            (let ((__tmp194526
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp194526)))
                           (_%gerbil-libdir194243%_
                            (path-expand '"lib" _%gerbil-home194241%_))
                           (_%gerbil-staticdir194245%_
                            (path-expand '"static" _%gerbil-libdir194243%_))
                           (_%gxlink194247%_
                            (path-expand
                             '"libgerbil-link"
                             _%gerbil-libdir194243%_))
                           (_%tmp194249%_
                            (path-expand
                             (let ((__tmp194527
                                    (let ((__tmp194528
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-timestamp-nanos))))
                                      (declare (not safe))
                                      (##number->string __tmp194528))))
                               (declare (not safe))
                               (##string-append '"gxc." __tmp194527))
                             '"/tmp"))
                           (_%tmp-path194253%_
                            (lambda (_%f194251%_)
                              (path-expand
                               (path-strip-directory _%f194251%_)
                               _%tmp194249%_)))
                           (_%deps194255%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _%ctx194223%_)))
                           (_%deps194257%_
                            (filter _%not-exclude-module?194229%_
                                    _%deps194255%_))
                           (_%src-deps-scm194259%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps194257%_)))
                           (_%src-deps-scm194261%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?194230%_
                               _%src-deps-scm194259%_)))
                           (_%src-deps-scm194263%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm194261%_)))
                           (_%deps-scm194265%_
                            (let ()
                              (declare (not safe))
                              (##map _%tmp-path194253%_
                                     _%src-deps-scm194263%_)))
                           (_%deps-c194271%_
                            (let ((__tmp194529
                                   (lambda (_%g194266194268%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%replace-extension194228%_
                                        _%g194266194268%_
                                        '".c")))))
                              (declare (not safe))
                              (##map __tmp194529 _%deps-scm194265%_)))
                           (_%deps-o194277%_
                            (let ((__tmp194530
                                   (lambda (_%g194272194274%_)
                                     (let ()
                                       (declare (not safe))
                                       (_%replace-extension194228%_
                                        _%g194272194274%_
                                        '".o")))))
                              (declare (not safe))
                              (##map __tmp194530 _%deps-scm194265%_)))
                           (_%src-bin-scm194279%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _%ctx194223%_)))
                           (_%src-bin-scm194281%_
                            (path-expand _%src-bin-scm194279%_))
                           (_%bin-scm194283%_
                            (let ()
                              (declare (not safe))
                              (_%tmp-path194253%_ _%src-bin-scm194281%_)))
                           (_%bin-c194285%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194228%_
                               _%bin-scm194283%_
                               '".c")))
                           (_%bin-o194287%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194228%_
                               _%bin-scm194283%_
                               '".o")))
                           (_%output-bin194289%_
                            (path-expand _%output-bin194239%_))
                           (_%output-scm194291%_
                            (path-expand _%output-scm194238%_))
                           (_%output-c194293%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194228%_
                               _%output-scm194291%_
                               '".c")))
                           (_%output-o194295%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194228%_
                               _%output-scm194291%_
                               '".o")))
                           (_%output_-c194297%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194228%_
                               _%output-scm194291%_
                               '"_.c")))
                           (_%output_-o194299%_
                            (let ()
                              (declare (not safe))
                              (_%replace-extension194228%_
                               _%output-scm194291%_
                               '"_.o")))
                           (_%gsc-link-opts194301%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_%gsc-cc-opts194303%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_%gsc-static-opts194305%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-static-include-options
                               _%gerbil-staticdir194245%_)))
                           (_%output-ld-opts194307%_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_%libgerbil.a194309%_
                            (path-expand
                             '"libgerbil.a"
                             _%gerbil-libdir194243%_))
                           (_%libgerbil.so194311%_
                            (path-expand
                             '"libgerbil.so"
                             _%gerbil-libdir194243%_))
                           (_%libgerbil.dylib194313%_
                            (path-expand
                             '"libgerbil.dylib"
                             _%gerbil-libdir194243%_))
                           (_%libgerbil-ld-opts194319%_
                            (if (let ()
                                  (declare (not safe))
                                  (##file-exists? _%libgerbil.so194311%_))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (_%get-libgerbil-ld-opts194227%_
                                     _%libgerbil.so194311%_)))
                                (if (let ()
                                      (declare (not safe))
                                      (##file-exists?
                                       _%libgerbil.dylib194313%_))
                                    (let ()
                                      (let ()
                                        (declare (not safe))
                                        (_%get-libgerbil-ld-opts194227%_
                                         _%libgerbil.dylib194313%_)))
                                    (if (let ()
                                          (declare (not safe))
                                          (##file-exists?
                                           _%libgerbil.a194309%_))
                                        (let ()
                                          (let ()
                                            (declare (not safe))
                                            (_%get-libgerbil-ld-opts194227%_
                                             _%libgerbil.a194309%_)))
                                        (let ()
                                          (let ()
                                            (declare (not safe))
                                            (gxc#raise-compile-error
                                             '"libgerbil does not exist"
                                             _%libgerbil.a194309%_
                                             _%libgerbil.so194311%_
                                             _%libgerbil.dylib194313%_)))))))
                           (_%rpath194321%_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _%gerbil-libdir194243%_)))
                           (_%builtin-modules194325%_
                            (let ((__tmp194532
                                   (lambda (_%mod194323%_)
                                     (symbol->string
                                      (##structure-ref
                                       _%mod194323%_
                                       '1
                                       gx#expander-context::t
                                       '#f))))
                                  (__tmp194531
                                   (cons _%ctx194223%_ _%deps194257%_)))
                              (declare (not safe))
                              (##map __tmp194532 __tmp194531))))
                      (let ((__tmp194533
                             (lambda ()
                               (let ((__tmp194534
                                      (path-directory _%output-bin194289%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp194534)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp194533))
                      (let ((__tmp194535
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (_%generate-stub194226%_
                                  _%builtin-modules194325%_)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%output-scm194291%_
                         __tmp194535))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (begin
                            (let ((__tmp194536
                                   (lambda ()
                                     (create-directory _%tmp194249%_))))
                              (declare (not safe))
                              (__with-lock gxc#+driver-mutex+ __tmp194536))
                            (let ()
                              (declare (not safe))
                              (##for-each
                               copy-file
                               _%src-deps-scm194263%_
                               _%deps-scm194265%_))
                            (let ()
                              (declare (not safe))
                              (##copy-file
                               _%src-bin-scm194281%_
                               _%bin-scm194283%_))
                            (let ((__tmp194540
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp194537
                                   (cons '"-link"
                                         (cons '"-l"
                                               (cons _%gxlink194247%_
                                                     (let ((__tmp194538
                                                            (let ((__tmp194539
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%bin-scm194283%_
                                 (cons _%output-scm194291%_ '()))))
                      (declare (not safe))
                      (__foldr1 cons __tmp194539 _%deps-scm194265%_))))
               (declare (not safe))
               (__foldr1 cons __tmp194538 _%gsc-link-opts194301%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke __tmp194540 __tmp194537))
                            (let ((__tmp194545
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp194541
                                   (cons '"-obj"
                                         (let ((__tmp194542
                                                (let ((__tmp194543
                                                       (let ((__tmp194544
                                                              (cons _%bin-c194285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%output-c194293%_
                                  (cons _%output_-c194297%_ '())))))
                 (declare (not safe))
                 (__foldr1 cons __tmp194544 _%deps-c194271%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp194543
                                                   _%gsc-static-opts194305%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp194542
                                            _%gsc-cc-opts194303%_)))))
                              (declare (not safe))
                              (gxc#invoke __tmp194545 __tmp194541))
                            (let ((__tmp194549
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp194546
                                   (cons '"-o"
                                         (cons _%output-bin194289%_
                                               (let ((__tmp194547
                                                      (cons _%bin-o194287%_
                                                            (cons _%output-o194295%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%output_-o194299%_
                                (let ((__tmp194548
                                       (cons _%rpath194321%_
                                             (cons '"-L"
                                                   (cons _%gerbil-libdir194243%_
                                                         (cons '"-lgerbil"
                                                               (cons '"-lgambit"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%libgerbil-ld-opts194319%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (declare (not safe))
                                  (__foldr1
                                   cons
                                   __tmp194548
                                   _%output-ld-opts194307%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldr1
                                                  cons
                                                  __tmp194547
                                                  _%deps-o194277%_))))))
                              (declare (not safe))
                              (gxc#invoke __tmp194549 __tmp194546))
                            (let ((__tmp194550
                                   (cons _%output-c194293%_
                                         (cons _%output_-c194297%_
                                               (cons _%output-o194295%_
                                                     (cons _%output_-o194299%_
                                                           '()))))))
                              (declare (not safe))
                              (##for-each delete-file __tmp194550))
                            (let ()
                              (declare (not safe))
                              (gxc#delete-directory* _%tmp194249%_)))
                          '#!void)))))
          (let* ((_%output-bin194233%_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file
                     _%ctx194223%_
                     _%opts194224%_)))
                 (_%output-scm194235%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin194233%_ '"__exe.scm"))))
            (let ()
              (declare (not safe))
              (_%compile-stub194231%_
               _%output-scm194235%_
               _%output-bin194233%_))
            (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
                '#!void
                (let ()
                  (declare (not safe))
                  (##delete-file _%output-scm194235%_)))))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx194048%_ _%opts194049%_)
        (letrec ((_%reset-declare194051%_
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
                 (_%generate-stub194052%_
                  (lambda (_%deps194214%_)
                    (let ((_%mod-main194216%_
                           (let ()
                             (declare (not safe))
                             (gxc#find-runtime-symbol _%ctx194048%_ 'main)))
                          (_%reset-decl194217%_
                           (let ()
                             (declare (not safe))
                             (_%reset-declare194051%_)))
                          (_%user-decl194218%_
                           (let ()
                             (declare (not safe))
                             (_%user-declare194053%_))))
                      (for-each
                       (lambda (_%dep194220%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl194217%_))
                         (newline)
                         (if _%user-decl194218%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl194218%_))
                               (newline))
                             '#!void)
                         (let ((__tmp194551
                                (cons 'include (cons _%dep194220%_ '()))))
                           (declare (not safe))
                           (##write __tmp194551))
                         (newline))
                       _%deps194214%_)
                      (let ((__tmp194552
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main194216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp194552))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare194053%_
                  (lambda ()
                    (let* ((_%gsc-opts194119%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts194049%_)))
                           (_%gsc-prelude194121%_
                            (if _%gsc-opts194119%_
                                (member '"-prelude" _%gsc-opts194119%_)
                                '#f))
                           (_%gsc-prelude194123%_
                            (if _%gsc-prelude194121%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude194121%_)))
                                '#f)))
                      (let _%lp194126%_ ((_%rest194128%_
                                          (cons _%gsc-prelude194123%_ '()))
                                         (_%user-decls194129%_ '()))
                        (let* ((_%rest194130194138%_ _%rest194128%_)
                               (_%else194132194146%_
                                (lambda ()
                                  (if (let ()
                                        (declare (not safe))
                                        (null? _%user-decls194129%_))
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls194129%_)))))
                               (_%K194134194202%_
                                (lambda (_%rest194149%_ _%expr194150%_)
                                  (let* ((_%expr194151194163%_ _%expr194150%_)
                                         (_%else194154194171%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (_%lp194126%_
                                               _%rest194149%_
                                               _%user-decls194129%_)))))
                                    (let ((_%K194159194192%_
                                           (lambda (_%decls194190%_)
                                             (let ((__tmp194553
                                                    (let ()
                                                      (declare (not safe))
                                                      (__foldl1
                                                       cons
                                                       _%user-decls194129%_
                                                       _%decls194190%_))))
                                               (declare (not safe))
                                               (_%lp194126%_
                                                _%rest194149%_
                                                __tmp194553))))
                                          (_%K194156194177%_
                                           (lambda (_%exprs194175%_)
                                             (let ((__tmp194554
                                                    (append _%exprs194175%_
                                                            _%rest194149%_)))
                                               (declare (not safe))
                                               (_%lp194126%_
                                                __tmp194554
                                                _%user-decls194129%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%expr194151194163%_))
                                          (let ((_%tl194161194197%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr194151194163%_)))
                                                (_%hd194160194195%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr194151194163%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd194160194195%_
                                                         'declare))
                                                (let ((_%decls194200%_
                                                       _%tl194161194197%_))
                                                  (declare (not safe))
                                                  (_%K194159194192%_
                                                   _%decls194200%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd194160194195%_
                                                             'begin))
                                                    (let ((_%exprs194185%_
                                                           _%tl194161194197%_))
                                                      (declare (not safe))
                                                      (_%K194156194177%_
                                                       _%exprs194185%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else194154194171%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%else194154194171%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest194130194138%_))
                              (let ((_%hd194135194205%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest194130194138%_)))
                                    (_%tl194136194207%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest194130194138%_))))
                                (let* ((_%expr194210%_ _%hd194135194205%_)
                                       (_%rest194212%_ _%tl194136194207%_))
                                  (declare (not safe))
                                  (_%K194134194202%_
                                   _%rest194212%_
                                   _%expr194210%_)))
                              (let ()
                                (declare (not safe))
                                (_%else194132194146%_))))))))
                 (_%compile-stub194054%_
                  (lambda (_%output-scm194061%_ _%output-bin194062%_)
                    (let* ((_%gerbil-home194064%_
                            (let ((__tmp194555
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp194555)))
                           (_%gerbil-libdir194066%_
                            (path-expand '"lib" _%gerbil-home194064%_))
                           (_%runtime194068%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp194070%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home194064%_))
                           (_%include-gambit-sharp194072%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               '"(include \""
                               _%gambit-sharp194070%_
                               '"\")")))
                           (_%bin-scm194074%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-static-module-file _%ctx194048%_)))
                           (_%deps194076%_
                            (let ()
                              (declare (not safe))
                              (gxc#find-runtime-module-deps _%ctx194048%_)))
                           (_%deps194078%_
                            (map gxc#find-static-module-file _%deps194076%_))
                           (_%deps194083%_
                            (let ((__tmp194556
                                   (lambda (_%$obj194080%_)
                                     (let ((__tmp194557
                                            (let ()
                                              (declare (not safe))
                                              (gxc#file-empty?
                                               _%$obj194080%_))))
                                       (declare (not safe))
                                       (not __tmp194557)))))
                              (declare (not safe))
                              (##filter __tmp194556 _%deps194078%_)))
                           (_%deps194087%_
                            (let ((__tmp194558
                                   (lambda (_%f194085%_)
                                     (let ((__tmp194559
                                            (let ()
                                              (declare (not safe))
                                              (##member
                                               _%f194085%_
                                               _%runtime194068%_))))
                                       (declare (not safe))
                                       (not __tmp194559)))))
                              (declare (not safe))
                              (##filter __tmp194558 _%deps194083%_)))
                           (_%output-base194089%_
                            (let ((__tmp194560
                                   (path-strip-extension
                                    _%output-scm194061%_)))
                              (declare (not safe))
                              (##string-append __tmp194560)))
                           (_%output-c194091%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194089%_ '".c")))
                           (_%output-o194093%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194089%_ '".o")))
                           (_%output-c_194095%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194089%_ '"_.c")))
                           (_%output-o_194097%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base194089%_ '"_.o")))
                           (_%gsc-link-opts194099%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-link-options__0)))
                           (_%gsc-cc-opts194101%_
                            (let ()
                              (declare (not safe))
                              (gxc#gsc-cc-options__0)))
                           (_%gsc-static-opts194103%_
                            (let ((__tmp194561
                                   (path-expand
                                    '"static"
                                    _%gerbil-libdir194066%_)))
                              (declare (not safe))
                              (gxc#gsc-static-include-options __tmp194561)))
                           (_%output-ld-opts194105%_
                            (let () (declare (not safe)) (gxc#gcc-ld-options)))
                           (_%gsc-gx-macros194107%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp194072%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp194072%_
                                            '()))))
                           (_%gsc-link-opts194109%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts194099%_
                               _%gsc-gx-macros194107%_)))
                           (_%rpath194111%_
                            (let ()
                              (declare (not safe))
                              (gxc#gerbil-rpath _%gerbil-libdir194066%_)))
                           (_%default-ld-options194113%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp194562
                             (lambda ()
                               (let ((__tmp194563
                                      (path-directory _%output-bin194062%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp194563)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp194562))
                      (let ((__tmp194564
                             (lambda ()
                               (let ((__tmp194565
                                      (let ((__tmp194566
                                             (let ((__tmp194567
                                                    (cons _%bin-scm194074%_
                                                          '())))
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp194567
                                                _%deps194087%_))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp194566
                                         _%runtime194068%_))))
                                 (declare (not safe))
                                 (_%generate-stub194052%_ __tmp194565)))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%output-scm194061%_
                         __tmp194564))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (begin
                            (let ((__tmp194570
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp194568
                                   (cons '"-link"
                                         (cons '"-o"
                                               (cons _%output-c_194095%_
                                                     (let ((__tmp194569
                                                            (cons _%output-scm194061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
               (declare (not safe))
               (__foldr1 cons __tmp194569 _%gsc-link-opts194109%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke __tmp194570 __tmp194568))
                            (let ((__tmp194574
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gsc)))
                                  (__tmp194571
                                   (cons '"-obj"
                                         (let ((__tmp194572
                                                (let ((__tmp194573
                                                       (cons _%output-c194091%_
                                                             (cons _%output-c_194095%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp194573
                                                   _%gsc-static-opts194103%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp194572
                                            _%gsc-cc-opts194101%_)))))
                              (declare (not safe))
                              (gxc#invoke __tmp194574 __tmp194571))
                            (let ((__tmp194577
                                   (let ()
                                     (declare (not safe))
                                     (gxc#gerbil-gcc)))
                                  (__tmp194575
                                   (cons '"-o"
                                         (cons _%output-bin194062%_
                                               (cons _%output-o194093%_
                                                     (cons _%output-o_194097%_
                                                           (let ((__tmp194576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%rpath194111%_
                                (cons '"-L"
                                      (cons _%gerbil-libdir194066%_
                                            (cons '"-lgambit"
                                                  _%default-ld-options194113%_))))))
                     (declare (not safe))
                     (__foldr1
                      cons
                      __tmp194576
                      _%output-ld-opts194105%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (declare (not safe))
                              (gxc#invoke __tmp194577 __tmp194575)))
                          '#!void)))))
          (let* ((_%output-bin194056%_
                  (let ()
                    (declare (not safe))
                    (gxc#compile-exe-output-file
                     _%ctx194048%_
                     _%opts194049%_)))
                 (_%output-scm194058%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin194056%_ '"__exe.scm"))))
            (let ()
              (declare (not safe))
              (_%compile-stub194054%_
               _%output-scm194058%_
               _%output-bin194056%_))
            (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
                '#!void
                (let ()
                  (declare (not safe))
                  (##delete-file _%output-scm194058%_)))))))
    (define gxc#find-export-binding
      (lambda (_%ctx193997%_ _%id193998%_)
        (let ((_%$e194044%_
               (let ((__tmp194579
                      (lambda (_%e193999194001%_)
                        (let* ((_%g194003194013%_ _%e193999194001%_)
                               (_%else194005194021%_ (lambda () '#f))
                               (_%K194007194025%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g194003194013%_
                                 'gx#module-export::t))
                              (let* ((_%e194008194028%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194003194013%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e194009194031%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194003194013%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e194010194034%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g194003194013%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e194010194034%_ '0))
                                    (let ((_%e194011194037%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g194003194013%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g194039194041%_)
                                             (eq? _%g194039194041%_
                                                  _%id193998%_))
                                           _%e194011194037%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%K194007194025%_))
                                          (let ()
                                            (declare (not safe))
                                            (_%else194005194021%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%else194005194021%_))))
                              (let ()
                                (declare (not safe))
                                (_%else194005194021%_))))))
                     (__tmp194578
                      (##structure-ref
                       _%ctx193997%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp194579 __tmp194578))))
          (if _%$e194044%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e194044%_))
              (let () '#f)))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx193988%_ _%id193989%_)
        (let ((_%$e193991%_
               (let ()
                 (declare (not safe))
                 (gxc#find-export-binding _%ctx193988%_ _%id193989%_))))
          (if _%$e193991%_
              ((lambda (_%bind193994%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind193994%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id193989%_)))
                 (##structure-ref _%bind193994%_ '1 gx#binding::t '#f))
               _%$e193991%_)
              (let ()
                (let ((__tmp194580
                       (##structure-ref
                        _%ctx193988%_
                        '1
                        gx#expander-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"module does not export symbol"
                   __tmp194580
                   _%id193989%_)))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx193854%_)
        (letrec* ((_%ht193856%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template193857%_
                   (lambda (_%in193933%_ _%phi193934%_)
                     (let ((_%iphi193936%_
                            (fx+ _%phi193934%_
                                 (##direct-structure-ref
                                  _%in193933%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports193937%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in193933%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp193939%_ ((_%rest193941%_ _%imports193937%_)
                                          (_%r193942%_ '()))
                         (let* ((_%rest193943193951%_ _%rest193941%_)
                                (_%else193945193959%_ (lambda () _%r193942%_))
                                (_%K193947193976%_
                                 (lambda (_%rest193962%_ _%in193963%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in193963%_
                                          'gx#module-context::t))
                                       (let ()
                                         (if (let ()
                                               (declare (not safe))
                                               (##fxzero? _%iphi193936%_))
                                             (let ((__tmp194581
                                                    (cons _%in193963%_
                                                          _%r193942%_)))
                                               (declare (not safe))
                                               (_%lp193939%_
                                                _%rest193962%_
                                                __tmp194581))
                                             (let ()
                                               (declare (not safe))
                                               (_%lp193939%_
                                                _%rest193962%_
                                                _%r193942%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in193963%_
                                              'gx#module-import::t))
                                           (let ()
                                             (let ((_%iphi193967%_
                                                    (fx+ _%phi193934%_
                                                         (##direct-structure-ref
                                                          _%in193963%_
                                                          '3
                                                          gx#module-import::t
                                                          '#f))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##fxzero?
                                                      _%iphi193967%_))
                                                   (let ((__tmp194582
                                                          (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##direct-structure-ref
                          _%in193963%_
                          '1
                          gx#module-import::t
                          '#f)
                         '1
                         gx#module-export::t
                         '#f)
                        _%r193942%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_%lp193939%_
                                                      _%rest193962%_
                                                      __tmp194582))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%lp193939%_
                                                      _%rest193962%_
                                                      _%r193942%_)))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in193963%_
                                                  'gx#import-set::t))
                                               (let ()
                                                 (let ((_%xphi193970%_
                                                        (fx+ _%iphi193936%_
                                                             (##direct-structure-ref
                                                              _%in193963%_
                                                              '2
                                                              gx#import-set::t
                                                              '#f))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##fxzero?
                                                          _%xphi193970%_))
                                                       (let ()
                                                         (let ((__tmp194583
                                                                (cons (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%in193963%_
                               '1
                               gx#import-set::t
                               '#f)
                              _%r193942%_)))
                   (declare (not safe))
                   (_%lp193939%_ _%rest193962%_ __tmp194583)))
               (if (let () (declare (not safe)) (##fxpositive? _%xphi193970%_))
                   (let ()
                     (let ((__tmp194584
                            (let ((__tmp194585
                                   (let ()
                                     (declare (not safe))
                                     (_%import-set-template193857%_
                                      _%in193963%_
                                      _%iphi193936%_))))
                              (declare (not safe))
                              (__foldl1 cons _%r193942%_ __tmp194585))))
                       (declare (not safe))
                       (_%lp193939%_ _%rest193962%_ __tmp194584)))
                   (let ()
                     (let ()
                       (declare (not safe))
                       (_%lp193939%_ _%rest193962%_ _%r193942%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%lp193939%_
                                                    _%rest193962%_
                                                    _%r193942%_)))))))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%rest193943193951%_))
                               (let ((_%hd193948193979%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest193943193951%_)))
                                     (_%tl193949193981%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest193943193951%_))))
                                 (let* ((_%in193984%_ _%hd193948193979%_)
                                        (_%rest193986%_ _%tl193949193981%_))
                                   (declare (not safe))
                                   (_%K193947193976%_
                                    _%rest193986%_
                                    _%in193984%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%else193945193959%_))))))))
                  (_%find-deps193858%_
                   (lambda (_%rest193866%_ _%deps193867%_)
                     (let* ((_%rest193868193876%_ _%rest193866%_)
                            (_%else193870193884%_ (lambda () _%deps193867%_))
                            (_%K193872193921%_
                             (lambda (_%rest193887%_ _%hd193888%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd193888%_
                                      'gx#module-context::t))
                                   (let ()
                                     (let ((_%id193891%_
                                            (##structure-ref
                                             _%hd193888%_
                                             '1
                                             gx#expander-context::t
                                             '#f))
                                           (_%imports193892%_
                                            (##structure-ref
                                             _%hd193888%_
                                             '8
                                             gx#module-context::t
                                             '#f)))
                                       (if (let ()
                                             (declare (not safe))
                                             (hash-get
                                              _%ht193856%_
                                              _%id193891%_))
                                           (let ()
                                             (let ()
                                               (declare (not safe))
                                               (_%find-deps193858%_
                                                _%rest193887%_
                                                _%deps193867%_)))
                                           (let ((_%$e193895%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#core-context-prelude__%
                                                     _%hd193888%_))))
                                             (if _%$e193895%_
                                                 ((lambda (_%pre193898%_)
                                                    (let ((_%xdeps193900%_
                                                           (let ((__tmp194586
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%pre193898%_ _%imports193892%_)))
                     (declare (not safe))
                     (_%find-deps193858%_ __tmp194586 _%deps193867%_))))
              (let ()
                (declare (not safe))
                (hash-put! _%ht193856%_ _%id193891%_ _%hd193888%_))
              (let ((__tmp194587 (cons _%hd193888%_ _%xdeps193900%_)))
                (declare (not safe))
                (_%find-deps193858%_ _%rest193887%_ __tmp194587))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$e193895%_)
                                                 (let ()
                                                   (let ((_%xdeps193903%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%find-deps193858%_
                                                             _%imports193892%_
                                                             _%deps193867%_))))
                                                     (let ()
                                                       (declare (not safe))
                                                       (hash-put!
                                                        _%ht193856%_
                                                        _%id193891%_
                                                        _%hd193888%_))
                                                     (let ((__tmp194588
                                                            (cons _%hd193888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%xdeps193903%_)))
               (declare (not safe))
               (_%find-deps193858%_ _%rest193887%_ __tmp194588)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd193888%_
                                          'gx#prelude-context::t))
                                       (let ()
                                         (let ((_%id193906%_
                                                (##structure-ref
                                                 _%hd193888%_
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (hash-get
                                                  _%ht193856%_
                                                  _%id193906%_))
                                               (let ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%find-deps193858%_
                                                    _%rest193887%_
                                                    _%deps193867%_)))
                                               (let ()
                                                 (let ((_%xdeps193910%_
                                                        (let ((__tmp194589
                                                               (##structure-ref
                                                                _%hd193888%_
                                                                '7
                                                                gx#prelude-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (_%find-deps193858%_
                                                           __tmp194589
                                                           _%deps193867%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (hash-get
                                                          _%ht193856%_
                                                          _%id193906%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%find-deps193858%_
                                                          _%rest193887%_
                                                          _%xdeps193910%_))
                                                       (begin
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _%ht193856%_
                                                            _%id193906%_
                                                            _%hd193888%_))
                                                         (let ((__tmp194590
                                                                (cons _%hd193888%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%xdeps193910%_)))
                   (declare (not safe))
                   (_%find-deps193858%_ _%rest193887%_ __tmp194590)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd193888%_
                                              'gx#module-import::t))
                                           (let ()
                                             (if (fxzero? (##direct-structure-ref
                                                           _%hd193888%_
                                                           '3
                                                           gx#module-import::t
                                                           '#f))
                                                 (let ((__tmp194591
                                                        (cons (##direct-structure-ref
                                                               _%hd193888%_
                                                               '1
                                                               gx#module-import::t
                                                               '#f)
                                                              _%rest193887%_)))
                                                   (declare (not safe))
                                                   (_%find-deps193858%_
                                                    __tmp194591
                                                    _%deps193867%_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%find-deps193858%_
                                                    _%rest193887%_
                                                    _%deps193867%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd193888%_
                                                  'gx#module-export::t))
                                               (let ()
                                                 (let ((__tmp194592
                                                        (cons (##direct-structure-ref
                                                               _%hd193888%_
                                                               '1
                                                               gx#module-export::t
                                                               '#f)
                                                              _%rest193887%_)))
                                                   (declare (not safe))
                                                   (_%find-deps193858%_
                                                    __tmp194592
                                                    _%deps193867%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd193888%_
                                                      'gx#import-set::t))
                                                   (let ()
                                                     (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd193888%_
                           '2
                           gx#import-set::t
                           '#f))
                 (let ()
                   (let ((__tmp194593
                          (cons (##direct-structure-ref
                                 _%hd193888%_
                                 '1
                                 gx#import-set::t
                                 '#f)
                                _%rest193887%_)))
                     (declare (not safe))
                     (_%find-deps193858%_ __tmp194593 _%deps193867%_)))
                 (if (fxpositive?
                      (##direct-structure-ref
                       _%hd193888%_
                       '2
                       gx#import-set::t
                       '#f))
                     (let ()
                       (let* ((_%xdeps193917%_
                               (let ()
                                 (declare (not safe))
                                 (_%import-set-template193857%_
                                  _%hd193888%_
                                  '0)))
                              (__tmp194594
                               (let ()
                                 (declare (not safe))
                                 (__foldl1
                                  cons
                                  _%rest193887%_
                                  _%xdeps193917%_))))
                         (declare (not safe))
                         (_%find-deps193858%_ __tmp194594 _%deps193867%_)))
                     (let ()
                       (let ()
                         (declare (not safe))
                         (_%find-deps193858%_
                          _%rest193887%_
                          _%deps193867%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"Unexpected module import"
                                                              _%hd193888%_)))))))))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%rest193868193876%_))
                           (let ((_%hd193873193924%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest193868193876%_)))
                                 (_%tl193874193926%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest193868193876%_))))
                             (let* ((_%hd193929%_ _%hd193873193924%_)
                                    (_%rest193931%_ _%tl193874193926%_))
                               (declare (not safe))
                               (_%K193872193921%_
                                _%rest193931%_
                                _%hd193929%_)))
                           (let ()
                             (declare (not safe))
                             (_%else193870193884%_)))))))
          (let ((__tmp194595
                 (filter gx#expander-context-id
                         (let ((__tmp194596
                                (let ((_%$e193860%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#core-context-prelude__%
                                          _%ctx193854%_))))
                                  (if _%$e193860%_
                                      ((lambda (_%pre193863%_)
                                         (cons _%pre193863%_
                                               (##structure-ref
                                                _%ctx193854%_
                                                '8
                                                gx#module-context::t
                                                '#f)))
                                       _%$e193860%_)
                                      (let ()
                                        (##structure-ref
                                         _%ctx193854%_
                                         '8
                                         gx#module-context::t
                                         '#f))))))
                           (declare (not safe))
                           (_%find-deps193858%_ __tmp194596 '())))))
            (declare (not safe))
            (##reverse __tmp194595)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx193784%_)
        (let* ((_%context-id193786%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx193784%_
                       'gx#module-context::t))
                    (##structure-ref
                     _%ctx193784%_
                     '1
                     gx#expander-context::t
                     '#f)
                    (string->symbol _%ctx193784%_)))
               (_%scm193788%_
                (let ((__tmp194597
                       (let ()
                         (declare (not safe))
                         (gxc#static-module-name _%context-id193786%_))))
                  (declare (not safe))
                  (##string-append __tmp194597 '".scm")))
               (_%dirs193790%_ (let () (declare (not safe)) (load-path)))
               (_%dirs193796%_
                (let ((_%user-libpath193792%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath193792%_
                      (let ((_%user-libpath193794%_
                             (path-expand '"lib" _%user-libpath193792%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath193794%_ _%dirs193790%_))
                            _%dirs193790%_
                            (cons _%user-libpath193794%_ _%dirs193790%_)))
                      _%dirs193790%_)))
               (_%dirs193806%_
                (let ((_%$e193798%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e193798%_
                      ((lambda (_%g193800193802%_)
                         (cons _%g193800193802%_ _%dirs193796%_))
                       _%$e193798%_)
                      (let () _%dirs193796%_))))
               (_%dirs193812%_
                (map (lambda (_%g193807193809%_)
                       (path-expand '"static" _%g193807193809%_))
                     _%dirs193806%_)))
          (let _%lp193815%_ ((_%rest193817%_ _%dirs193812%_))
            (let* ((_%rest193818193826%_ _%rest193817%_)
                   (_%else193820193834%_
                    (lambda ()
                      (let ((__tmp194598
                             (##structure-ref
                              _%ctx193784%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp194598
                         _%scm193788%_))))
                   (_%K193822193842%_
                    (lambda (_%rest193837%_ _%dir193838%_)
                      (let ((_%path193840%_
                             (path-expand _%scm193788%_ _%dir193838%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path193840%_))
                            _%path193840%_
                            (let ()
                              (declare (not safe))
                              (_%lp193815%_ _%rest193837%_)))))))
              (if (let () (declare (not safe)) (##pair? _%rest193818193826%_))
                  (let ((_%hd193823193845%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193818193826%_)))
                        (_%tl193824193847%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193818193826%_))))
                    (let* ((_%dir193850%_ _%hd193823193845%_)
                           (_%rest193852%_ _%tl193824193847%_))
                      (declare (not safe))
                      (_%K193822193842%_ _%rest193852%_ _%dir193850%_)))
                  (let () (declare (not safe)) (_%else193820193834%_))))))))
    (define gxc#file-empty?
      (lambda (_%path193782%_)
        (zero? (let ((__tmp194599 (file-info _%path193782%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp194599)))))
    (define gxc#compile-top-module
      (lambda (_%ctx193771%_)
        (let ((__tmp194603
               (lambda ()
                 (let ((__tmp194604
                        (##structure-ref
                         _%ctx193771%_
                         '1
                         gx#expander-context::t
                         '#f)))
                   (declare (not safe))
                   (gxc#verbose '"compile " __tmp194604))
                 (if (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimize))
                     (let ((__tmp194605
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gxc#optimize! _%ctx193771%_)))))
                       (declare (not safe))
                       (__with-lock gxc#+driver-mutex+ __tmp194605))
                     '#!void)
                 (let ()
                   (declare (not safe))
                   (gxc#collect-bindings _%ctx193771%_))
                 (if (let ((__tmp194606
                            (let ()
                              (declare (not safe))
                              (gxc#lift-nested-modules _%ctx193771%_))))
                       (declare (not safe))
                       (null? __tmp194606))
                     (let* ((_%thr1193776%_
                             (let ((__tmp194607
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-runtime-code
                                         _%ctx193771%_)))))
                               (declare (not safe))
                               (__spawn __tmp194607)))
                            (_%thr2193779%_
                             (let ((__tmp194608
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-meta-code
                                         _%ctx193771%_)))))
                               (declare (not safe))
                               (__spawn __tmp194608))))
                       (let () (declare (not safe)) (gxc#join! _%thr1193776%_))
                       (let ()
                         (declare (not safe))
                         (gxc#join! _%thr2193779%_)))
                     (begin
                       (let ()
                         (declare (not safe))
                         (gxc#compile-runtime-code _%ctx193771%_))
                       (let ()
                         (declare (not safe))
                         (gxc#compile-meta-code _%ctx193771%_))))
                 (if (and (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ()
                            (declare (not safe))
                            (gxc#current-compile-generate-ssxi)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-ssxi-code _%ctx193771%_))
                     '#!void)))
              (__tmp194602
               (let ((__obj194499
                      (let ()
                        (declare (not safe))
                        (##structure gxc#symbol-table::t '#f '#f))))
                 (gxc#symbol-table:::init! __obj194499)
                 __obj194499))
              (__tmp194601 (let () (declare (not safe)) (make-hash-table-eq)))
              (__tmp194600 (let () (declare (not safe)) (make-hash-table))))
          (declare (not safe))
          (__call-with-parameters
           __tmp194603
           gx#current-expander-context
           _%ctx193771%_
           gx#current-expander-phi
           '0
           gx#current-expander-marks
           '()
           gxc#current-compile-symbol-table
           __tmp194602
           gxc#current-compile-runtime-sections
           __tmp194601
           gxc#current-compile-runtime-names
           __tmp194600))))
    (define gxc#collect-bindings
      (lambda (_%ctx193769%_)
        (let ((__tmp194609
               (##structure-ref _%ctx193769%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp194609))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx193713%_)
        (letrec ((_%compile1193715%_
                  (lambda (_%ctx193756%_)
                    (let* ((_%code193758%_
                            (##structure-ref
                             _%ctx193756%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rt193762%_
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#apply-find-runtime-code _%code193758%_))
                                (let ((_%idstr193760%_
                                       (let ((__tmp194610
                                              (##structure-ref
                                               _%ctx193756%_
                                               '1
                                               gx#expander-context::t
                                               '#f)))
                                         (declare (not safe))
                                         (gxc#module-id->path-string
                                          __tmp194610))))
                                  (declare (not safe))
                                  (##string-append _%idstr193760%_ '"~0"))
                                '#f)))
                      (if _%rt193762%_
                          (let ()
                            (let ((__tmp194611
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-put!
                               __tmp194611
                               _%ctx193756%_
                               _%rt193762%_))
                            (let ()
                              (declare (not safe))
                              (_%generate-runtime-code193717%_
                               _%ctx193756%_
                               _%code193758%_)))
                          (let ()
                            (let ((_%path193767%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-static-output-file
                                      _%ctx193756%_))))
                              (declare (not safe))
                              (gxc#with-output-to-scheme-file
                               _%path193767%_
                               void))))
                      (let ()
                        (declare (not safe))
                        (_%generate-loader-code193718%_
                         _%ctx193756%_
                         _%code193758%_
                         _%rt193762%_)))))
                 (_%context-timestamp193716%_
                  (lambda (_%ctx193754%_)
                    (let ((__tmp194612
                           (let ((__tmp194613
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx193754%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp194613 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp194612))))
                 (_%generate-runtime-code193717%_
                  (lambda (_%ctx193736%_ _%code193737%_)
                    (let* ((_%lifts193739%_ (box '()))
                           (_%runtime-code193742%_
                            (let ((__tmp194616
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code193737%_))))
                                  (__tmp194615
                                   (let ()
                                     (declare (not safe))
                                     (make-hash-table-eq)))
                                  (__tmp194614
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp194616
                               gx#current-expander-context
                               _%ctx193736%_
                               gx#current-expander-phi
                               '0
                               gxc#current-compile-lift
                               _%lifts193739%_
                               gxc#current-compile-marks
                               __tmp194615
                               gxc#current-compile-identifiers
                               __tmp194614)))
                           (_%runtime-code193744%_
                            (if (let ((__tmp194617 (unbox _%lifts193739%_)))
                                  (declare (not safe))
                                  (null? __tmp194617))
                                _%runtime-code193742%_
                                (cons 'begin
                                      (let ((__tmp194619
                                             (cons _%runtime-code193742%_ '()))
                                            (__tmp194618
                                             (reverse (unbox _%lifts193739%_))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp194619
                                         __tmp194618)))))
                           (_%runtime-code193746%_
                            (cons 'begin
                                  (cons (cons 'define
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (_%context-timestamp193716%_
                                                       _%ctx193736%_))
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-timestamp))
                                                          '())))
                                        (cons _%runtime-code193744%_ '()))))
                           (_%scm0193748%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _%ctx193736%_
                               '0
                               '".scm"))))
                      (let ((_%scms193751%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-static-output-file
                                _%ctx193736%_))))
                        (let ((__tmp194620
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-scm-file__0
                                    _%scm0193748%_
                                    _%runtime-code193746%_)))))
                          (declare (not safe))
                          (__call-with-parameters
                           __tmp194620
                           gxc#current-compile-keep-scm
                           '#t))
                        (if (file-exists? _%scms193751%_)
                            (delete-file _%scms193751%_)
                            '#!void)
                        (let ()
                          (declare (not safe))
                          (gxc#verbose
                           '"copy static module "
                           _%scm0193748%_
                           '" => "
                           _%scms193751%_))
                        (copy-file _%scm0193748%_ _%scms193751%_)
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-keep-scm))
                            '#!void
                            (delete-file _%scm0193748%_))))))
                 (_%generate-loader-code193718%_
                  (lambda (_%ctx193725%_ _%code193726%_ _%rt193727%_)
                    (let* ((_%loader-code193730%_
                            (let ((__tmp194621
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code193726%_)))))
                              (declare (not safe))
                              (__call-with-parameters
                               __tmp194621
                               gx#current-expander-context
                               _%ctx193725%_)))
                           (_%loader-code193732%_
                            (if _%rt193727%_
                                (cons 'begin
                                      (cons _%loader-code193730%_
                                            (cons (cons 'load-module
                                                        (cons _%rt193727%_
                                                              '()))
                                                  '())))
                                _%loader-code193730%_)))
                      (let ((__tmp194622
                             (lambda ()
                               (let ((__tmp194623
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _%ctx193725%_
                                         '#f
                                         '".scm"))))
                                 (declare (not safe))
                                 (gxc#compile-scm-file__0
                                  __tmp194623
                                  _%loader-code193732%_)))))
                        (declare (not safe))
                        (__call-with-parameters
                         __tmp194622
                         gxc#current-compile-gsc-options
                         '#f))))))
          (let* ((_%all-modules193720%_
                  (cons _%ctx193713%_
                        (let ()
                          (declare (not safe))
                          (gxc#lift-nested-modules _%ctx193713%_))))
                 (__tmp194624
                  (lambda (_%ctx193722%_)
                    (let ((__tmp194625
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (_%compile1193715%_ _%ctx193722%_)))))
                      (declare (not safe))
                      (__call-with-parameters
                       __tmp194625
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp194624 _%all-modules193720%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx193608%_)
        (letrec ((_%compile-ssi193610%_
                  (lambda (_%code193681%_)
                    (let* ((_%path193683%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-output-file
                               _%ctx193608%_
                               '#f
                               '".ssi")))
                           (_%prelude193695%_
                            (let* ((_%super193685%_
                                    (##structure-ref
                                     _%ctx193608%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e193687%_
                                    (##structure-ref
                                     _%super193685%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e193687%_
                                  ((lambda (_%g193689193691%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g193689193691%_)))
                                   _%$e193687%_)
                                  (let () ':<root>))))
                           (_%ns193697%_
                            (##structure-ref
                             _%ctx193608%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr193699%_
                            (symbol->string
                             (##structure-ref
                              _%ctx193608%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg193707%_
                            (let ((_%$e193701%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr193699%_ '#\/))))
                              (if _%$e193701%_
                                  ((lambda (_%x193704%_)
                                     (let ((__tmp194626
                                            (substring
                                             _%idstr193699%_
                                             '0
                                             _%x193704%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp194626)))
                                   _%$e193701%_)
                                  (let () '#f))))
                           (_%rt193709%_
                            (let ((__tmp194627
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp194627 _%ctx193608%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path193683%_))
                      (let ((__tmp194628
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (displayln
                                  '"prelude:"
                                  '" "
                                  _%prelude193695%_))
                               (if _%pkg193707%_
                                   (let ()
                                     (declare (not safe))
                                     (displayln
                                      '"package:"
                                      '" "
                                      _%pkg193707%_))
                                   '#!void)
                               (let ()
                                 (declare (not safe))
                                 (displayln '"namespace:" '" " _%ns193697%_))
                               (newline)
                               (pretty-print _%code193681%_)
                               (if _%rt193709%_
                                   (pretty-print
                                    (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%rt193709%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '#!void))))
                        (declare (not safe))
                        (gxc#with-output-to-scheme-file
                         _%path193683%_
                         __tmp194628)))))
                 (_%compile-phi193611%_
                  (lambda (_%part193621%_)
                    (let* ((_%part193622193635%_ _%part193621%_)
                           (_%E193624193639%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part193622193635%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K193625193650%_
                            (lambda (_%code193642%_
                                     _%n193643%_
                                     _%phi193644%_
                                     _%phi-ctx193645%_)
                              (let* ((_%code193648%_
                                      (let ((__tmp194629
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#generate-runtime-phi
                                                  _%code193642%_)))))
                                        (declare (not safe))
                                        (__call-with-parameters
                                         __tmp194629
                                         gx#current-expander-context
                                         _%phi-ctx193645%_
                                         gx#current-expander-phi
                                         _%phi193644%_)))
                                     (__tmp194630
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-output-file
                                         _%ctx193608%_
                                         _%n193643%_
                                         '".scm"))))
                                (declare (not safe))
                                (gxc#compile-scm-file__%
                                 __tmp194630
                                 _%code193648%_
                                 '#t)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%part193622193635%_))
                          (let ((_%hd193626193653%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part193622193635%_)))
                                (_%tl193627193655%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part193622193635%_))))
                            (let ((_%phi-ctx193658%_ _%hd193626193653%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl193627193655%_))
                                  (let ((_%hd193628193660%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl193627193655%_)))
                                        (_%tl193629193662%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl193627193655%_))))
                                    (let ((_%phi193665%_ _%hd193628193660%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl193629193662%_))
                                          (let ((_%hd193630193667%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl193629193662%_)))
                                                (_%tl193631193669%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl193629193662%_))))
                                            (let ((_%n193672%_
                                                   _%hd193630193667%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl193631193669%_))
                                                  (let ((_%hd193632193674%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl193631193669%_)))
                                                        (_%tl193633193676%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl193631193669%_))))
                                                    (let ((_%code193679%_
                                                           _%hd193632193674%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _%tl193633193676%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%K193625193650%_
                                                             _%code193679%_
                                                             _%n193672%_
                                                             _%phi193665%_
                                                             _%phi-ctx193658%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%E193624193639%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%E193624193639%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%E193624193639%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%E193624193639%_)))))
                          (let ()
                            (declare (not safe))
                            (_%E193624193639%_)))))))
          (let ((_g194631_
                 (let ()
                   (declare (not safe))
                   (gxc#generate-meta-code _%ctx193608%_))))
            (begin
              (let ((_g194632_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g194631_)
                           (##vector-length _g194631_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g194632_ 2)))
                    (error "Context expects 2 values" _g194632_)))
              (let ((_%ssi-code193613%_
                     (let () (declare (not safe)) (##vector-ref _g194631_ 0)))
                    (_%phi-code193614%_
                     (let () (declare (not safe)) (##vector-ref _g194631_ 1))))
                (begin
                  (let ()
                    (declare (not safe))
                    (_%compile-ssi193610%_ _%ssi-code193613%_))
                  (let ((_%threads193619%_
                         (map (lambda (_%code193616%_)
                                (let ((__tmp194633
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (_%compile-phi193611%_
                                            _%code193616%_)))))
                                  (declare (not safe))
                                  (__spawn __tmp194633)))
                              _%phi-code193614%_)))
                    (declare (not safe))
                    (##for-each gxc#join! _%threads193619%_)))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx193590%_)
        (let* ((_%path193592%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-output-file _%ctx193590%_ '#f '".ssxi.ss")))
               (_%code193594%_
                (let ((__tmp194634
                       (##structure-ref
                        _%ctx193590%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp194634)))
               (_%idstr193596%_
                (symbol->string
                 (##structure-ref
                  _%ctx193590%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg193604%_
                (let ((_%$e193598%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr193596%_ '#\/))))
                  (if _%$e193598%_
                      ((lambda (_%x193601%_)
                         (let ((__tmp194635
                                (substring _%idstr193596%_ '0 _%x193601%_)))
                           (declare (not safe))
                           (##string->symbol __tmp194635)))
                       _%$e193598%_)
                      (let () '#f)))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path193592%_))
          (let ((__tmp194636
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (displayln '"prelude: :gerbil/compiler/ssxi"))
                   (if _%pkg193604%_
                       (let ()
                         (declare (not safe))
                         (displayln '"package: " _%pkg193604%_))
                       '#!void)
                   (newline)
                   (pretty-print _%code193594%_))))
            (declare (not safe))
            (gxc#with-output-to-scheme-file _%path193592%_ __tmp194636)))))
    (define gxc#generate-meta-code
      (lambda (_%ctx193583%_)
        (let* ((_%state193585%_
                (let ((__obj194500
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (gxc#meta-state:::init! __obj194500 _%ctx193583%_)
                  __obj194500))
               (_%ssi-code193587%_
                (let ((__tmp194637
                       (##structure-ref
                        _%ctx193583%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta
                   __tmp194637
                   'state:
                   _%state193585%_))))
          (values _%ssi-code193587%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state193585%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx193576%_)
        (let ((_%lifts193578%_ (box '())))
          (let ((__tmp194640
                 (lambda ()
                   (let ((_%code193581%_
                          (let ()
                            (declare (not safe))
                            (gxc#apply-generate-runtime-phi _%stx193576%_))))
                     (if (let ((__tmp194641 (unbox _%lifts193578%_)))
                           (declare (not safe))
                           (null? __tmp194641))
                         _%code193581%_
                         (cons 'begin
                               (let ((__tmp194643 (cons _%code193581%_ '()))
                                     (__tmp194642
                                      (reverse (unbox _%lifts193578%_))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp194643 __tmp194642)))))))
                (__tmp194639
                 (let () (declare (not safe)) (make-hash-table-eq)))
                (__tmp194638
                 (let ()
                   (declare (not safe))
                   (gxc#make-bound-identifier-table))))
            (declare (not safe))
            (__call-with-parameters
             __tmp194640
             gxc#current-compile-lift
             _%lifts193578%_
             gxc#current-compile-marks
             __tmp194639
             gxc#current-compile-identifiers
             __tmp194638)))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx193572%_)
        (let ((_%modules193574%_ (box '())))
          (let ((__tmp194644
                 (##structure-ref _%ctx193572%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules __tmp194644 'modules: _%modules193574%_))
          (reverse (unbox _%modules193574%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path193555%_ _%code193556%_ _%phi?193557%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path193555%_))
        (let ((__tmp194645
               (lambda ()
                 (pretty-print
                  (cons 'declare
                        (cons (cons 'block '())
                              (cons (cons 'standard-bindings '())
                                    (cons (cons 'extended-bindings '())
                                          (let ((__tmp194646
                                                 (if _%phi?193557%_
                                                     '((inlining-limit 200))
                                                     '())))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             '()
                                             __tmp194646)))))))
                 (pretty-print _%code193556%_))))
          (declare (not safe))
          (gxc#with-output-to-scheme-file _%path193555%_ __tmp194645))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ()
              (declare (not safe))
              (gxc#gsc-compile-file _%path193555%_ _%phi?193557%_))
            '#!void)
        (if (let () (declare (not safe)) (gxc#current-compile-keep-scm))
            '#!void
            (delete-file _%path193555%_))))
    (define gxc#compile-scm-file__0
      (lambda (_%path193563%_ _%code193564%_)
        (let ((_%phi?193566%_ '#f))
          (declare (not safe))
          (gxc#compile-scm-file__%
           _%path193563%_
           _%code193564%_
           _%phi?193566%_))))
    (define gxc#compile-scm-file
      (lambda _g194648_
        (let ((_g194647_ (let () (declare (not safe)) (##length _g194648_))))
          (cond ((let () (declare (not safe)) (##fx= _g194647_ 2))
                 (apply (lambda (_%path193563%_ _%code193564%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__0
                             _%path193563%_
                             _%code193564%_)))
                        _g194648_))
                ((let () (declare (not safe)) (##fx= _g194647_ 3))
                 (apply (lambda (_%path193568%_ _%code193569%_ _%phi?193570%_)
                          (let ()
                            (declare (not safe))
                            (gxc#compile-scm-file__%
                             _%path193568%_
                             _%code193569%_
                             _%phi?193570%_)))
                        _g194648_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g194648_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?193456%_)
        (let _%lp193458%_ ((_%rest193460%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts193461%_ '()))
          (let* ((_%rest193462193482%_ _%rest193460%_)
                 (_%else193466193490%_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _%phi?193456%_))
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-debug)))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts193461%_)))
                        (reverse _%opts193461%_)))))
            (let ((_%K193476193533%_
                   (lambda (_%rest193531%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193458%_ _%rest193531%_ _%opts193461%_))))
                  (_%K193471193515%_
                   (lambda (_%rest193513%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193458%_ _%rest193513%_ _%opts193461%_))))
                  (_%K193468193497%_
                   (lambda (_%rest193494%_ _%opt193495%_)
                     (let ((__tmp194649 (cons _%opt193495%_ _%opts193461%_)))
                       (declare (not safe))
                       (_%lp193458%_ _%rest193494%_ __tmp194649)))))
              (if (let () (declare (not safe)) (##pair? _%rest193462193482%_))
                  (let ((_%tl193478193538%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193462193482%_)))
                        (_%hd193477193536%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193462193482%_))))
                    (if (equal? _%hd193477193536%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl193478193538%_))
                            (let* ((_%tl193480193541%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl193478193538%_)))
                                   (_%rest193544%_ _%tl193480193541%_))
                              (declare (not safe))
                              (_%K193476193533%_ _%rest193544%_))
                            (let ((_%opt193505%_ _%hd193477193536%_)
                                  (_%rest193507%_ _%tl193478193538%_))
                              (let ()
                                (declare (not safe))
                                (_%K193468193497%_
                                 _%rest193507%_
                                 _%opt193505%_))))
                        (if (equal? _%hd193477193536%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl193478193538%_))
                                (let* ((_%tl193475193523%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl193478193538%_)))
                                       (_%rest193526%_ _%tl193475193523%_))
                                  (declare (not safe))
                                  (_%K193471193515%_ _%rest193526%_))
                                (let ((_%opt193505%_ _%hd193477193536%_)
                                      (_%rest193507%_ _%tl193478193538%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%K193468193497%_
                                     _%rest193507%_
                                     _%opt193505%_))))
                            (let ((_%opt193505%_ _%hd193477193536%_)
                                  (_%rest193507%_ _%tl193478193538%_))
                              (let ()
                                (declare (not safe))
                                (_%K193468193497%_
                                 _%rest193507%_
                                 _%opt193505%_))))))
                  (let () (declare (not safe)) (_%else193466193490%_))))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?193550%_ '#f))
          (declare (not safe))
          (gxc#gsc-link-options__% _%phi?193550%_))))
    (define gxc#gsc-link-options
      (lambda _g194651_
        (let ((_g194650_ (let () (declare (not safe)) (##length _g194651_))))
          (cond ((let () (declare (not safe)) (##fx= _g194650_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__0)))
                        _g194651_))
                ((let () (declare (not safe)) (##fx= _g194650_ 1))
                 (apply (lambda (_%phi?193552%_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-link-options__% _%phi?193552%_)))
                        _g194651_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g194651_))))))
    (define gxc#gsc-cc-options__%
      (lambda (_%phi?193357%_)
        (let _%lp193359%_ ((_%rest193361%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts193362%_ '()))
          (let* ((_%rest193363193383%_ _%rest193361%_)
                 (_%else193367193391%_
                  (lambda ()
                    (if (and (let () (declare (not safe)) (not _%phi?193357%_))
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-debug)))
                        (cons '"-cc-options"
                              (cons '"-g" (reverse _%opts193362%_)))
                        (reverse _%opts193362%_)))))
            (let ((_%K193377193430%_
                   (lambda (_%rest193427%_ _%opt193428%_)
                     (let ((__tmp194652
                            (let ((__tmp194653
                                   (let ()
                                     (declare (not safe))
                                     (cons '"-cc-options" _%opts193362%_))))
                              (declare (not safe))
                              (cons _%opt193428%_ __tmp194653))))
                       (declare (not safe))
                       (_%lp193359%_ _%rest193427%_ __tmp194652))))
                  (_%K193372193411%_
                   (lambda (_%rest193409%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193359%_ _%rest193409%_ _%opts193362%_))))
                  (_%K193369193397%_
                   (lambda (_%rest193395%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193359%_ _%rest193395%_ _%opts193362%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest193363193383%_))
                  (let ((_%tl193379193435%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193363193383%_)))
                        (_%hd193378193433%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193363193383%_))))
                    (if (equal? _%hd193378193433%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl193379193435%_))
                            (let ((_%tl193381193440%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl193379193435%_)))
                                  (_%hd193380193438%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl193379193435%_))))
                              (let ((_%opt193443%_ _%hd193380193438%_)
                                    (_%rest193445%_ _%tl193381193440%_))
                                (let ()
                                  (declare (not safe))
                                  (_%K193377193430%_
                                   _%rest193445%_
                                   _%opt193443%_))))
                            (let ((_%rest193403%_ _%tl193379193435%_))
                              (declare (not safe))
                              (_%K193369193397%_ _%rest193403%_)))
                        (if (equal? _%hd193378193433%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl193379193435%_))
                                (let* ((_%tl193376193419%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl193379193435%_)))
                                       (_%rest193422%_ _%tl193376193419%_))
                                  (declare (not safe))
                                  (_%K193372193411%_ _%rest193422%_))
                                (let ((_%rest193403%_ _%tl193379193435%_))
                                  (declare (not safe))
                                  (_%K193369193397%_ _%rest193403%_)))
                            (let ((_%rest193403%_ _%tl193379193435%_))
                              (declare (not safe))
                              (_%K193369193397%_ _%rest193403%_)))))
                  (let () (declare (not safe)) (_%else193367193391%_))))))))
    (define gxc#gsc-cc-options__0
      (lambda ()
        (let ((_%phi?193451%_ '#f))
          (declare (not safe))
          (gxc#gsc-cc-options__% _%phi?193451%_))))
    (define gxc#gsc-cc-options
      (lambda _g194655_
        (let ((_g194654_ (let () (declare (not safe)) (##length _g194655_))))
          (cond ((let () (declare (not safe)) (##fx= _g194654_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__0)))
                        _g194655_))
                ((let () (declare (not safe)) (##fx= _g194654_ 1))
                 (apply (lambda (_%phi?193453%_)
                          (let ()
                            (declare (not safe))
                            (gxc#gsc-cc-options__% _%phi?193453%_)))
                        _g194655_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options
                  _g194655_))))))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir193352%_)
        (let ((_%user-staticdir193354%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir193352%_
                       '" -I "
                       _%user-staticdir193354%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp193264%_ ((_%rest193266%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts193267%_ '()))
          (let* ((_%rest193268193288%_ _%rest193266%_)
                 (_%else193272193296%_ (lambda () _%opts193267%_)))
            (let ((_%K193282193339%_
                   (lambda (_%rest193337%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193264%_ _%rest193337%_ _%opts193267%_))))
                  (_%K193277193317%_
                   (lambda (_%rest193314%_ _%opt193315%_)
                     (let ((__tmp194656
                            (let ((__tmp194657
                                   (let ((__tmp194658
                                          (let ()
                                            (declare (not safe))
                                            (string-split
                                             _%opt193315%_
                                             '#\space))))
                                     (declare (not safe))
                                     (##filter
                                      gxc#not-string-empty?
                                      __tmp194658))))
                              (declare (not safe))
                              (##append _%opts193267%_ __tmp194657))))
                       (declare (not safe))
                       (_%lp193264%_ _%rest193314%_ __tmp194656))))
                  (_%K193274193302%_
                   (lambda (_%rest193300%_)
                     (let ()
                       (declare (not safe))
                       (_%lp193264%_ _%rest193300%_ _%opts193267%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest193268193288%_))
                  (let ((_%tl193284193344%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest193268193288%_)))
                        (_%hd193283193342%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest193268193288%_))))
                    (if (equal? _%hd193283193342%_ '"-cc-options")
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl193284193344%_))
                            (let* ((_%tl193286193347%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl193284193344%_)))
                                   (_%rest193350%_ _%tl193286193347%_))
                              (declare (not safe))
                              (_%K193282193339%_ _%rest193350%_))
                            (let ((_%rest193308%_ _%tl193284193344%_))
                              (declare (not safe))
                              (_%K193274193302%_ _%rest193308%_)))
                        (if (equal? _%hd193283193342%_ '"-ld-options")
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl193284193344%_))
                                (let ((_%tl193281193327%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl193284193344%_)))
                                      (_%hd193280193325%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl193284193344%_))))
                                  (let ((_%opt193330%_ _%hd193280193325%_)
                                        (_%rest193332%_ _%tl193281193327%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%K193277193317%_
                                       _%rest193332%_
                                       _%opt193330%_))))
                                (let ((_%rest193308%_ _%tl193284193344%_))
                                  (declare (not safe))
                                  (_%K193274193302%_ _%rest193308%_)))
                            (let ((_%rest193308%_ _%tl193284193344%_))
                              (declare (not safe))
                              (_%K193274193302%_ _%rest193308%_)))))
                  (let () (declare (not safe)) (_%else193272193296%_))))))))
    (define gxc#not-string-empty?
      (lambda (_%str193261%_)
        (let ((__tmp194659
               (let () (declare (not safe)) (string-empty? _%str193261%_))))
          (declare (not safe))
          (not __tmp194659))))
    (define gxc#gsc-compile-file
      (lambda (_%path193229%_ _%phi?193230%_)
        (letrec ((_%gsc-link-path193232%_
                  (lambda (_%base-path193253%_)
                    (let _%lp193255%_ ((_%n193257%_ '1))
                      (let ((_%path193259%_
                             (let ((__tmp194660 (number->string _%n193257%_)))
                               (declare (not safe))
                               (##string-append
                                _%base-path193253%_
                                '".o"
                                __tmp194660))))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path193259%_))
                            (let ((__tmp194661
                                   (let ()
                                     (declare (not safe))
                                     (+ _%n193257%_ '1))))
                              (declare (not safe))
                              (_%lp193255%_ __tmp194661))
                            _%path193259%_))))))
          (let* ((_%base-path193234%_ (path-strip-extension _%path193229%_))
                 (_%path-c193236%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%base-path193234%_ '".c")))
                 (_%path-o193238%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%base-path193234%_ '".o")))
                 (_%link-path193240%_
                  (let ()
                    (declare (not safe))
                    (_%gsc-link-path193232%_ _%base-path193234%_)))
                 (_%link-path-c193242%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%link-path193240%_ '".c")))
                 (_%link-path-o193244%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%link-path193240%_ '".o")))
                 (_%gsc-link-opts193246%_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-link-options__% _%phi?193230%_)))
                 (_%gsc-cc-opts193248%_
                  (let ()
                    (declare (not safe))
                    (gxc#gsc-cc-options__% _%phi?193230%_)))
                 (_%gcc-ld-opts193250%_
                  (let () (declare (not safe)) (gxc#gcc-ld-options))))
            (let ((__tmp194664 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp194662
                   (cons '"-link"
                         (cons '"-flat"
                               (cons '"-o"
                                     (cons _%link-path-c193242%_
                                           (let ((__tmp194663
                                                  (cons _%path193229%_ '())))
                                             (declare (not safe))
                                             (__foldr1
                                              cons
                                              __tmp194663
                                              _%gsc-link-opts193246%_))))))))
              (declare (not safe))
              (gxc#invoke __tmp194664 __tmp194662 'stdout-redirection: '#t))
            (let ((__tmp194667 (let () (declare (not safe)) (gxc#gerbil-gsc)))
                  (__tmp194665
                   (cons '"-obj"
                         (cons '"-cc-options"
                               (cons '"-D___DYNAMIC"
                                     (let ((__tmp194666
                                            (cons _%path-c193236%_
                                                  (cons _%link-path-c193242%_
                                                        '()))))
                                       (declare (not safe))
                                       (__foldr1
                                        cons
                                        __tmp194666
                                        _%gsc-cc-opts193248%_)))))))
              (declare (not safe))
              (gxc#invoke __tmp194667 __tmp194665 'stdout-redirection: '#t))
            (let ((__tmp194669 (let () (declare (not safe)) (gxc#gerbil-gcc)))
                  (__tmp194668
                   (cons '"-shared"
                         (cons '"-o"
                               (cons _%link-path193240%_
                                     (cons _%path-o193238%_
                                           (cons _%link-path-o193244%_
                                                 _%gcc-ld-opts193250%_)))))))
              (declare (not safe))
              (gxc#invoke __tmp194669 __tmp194668))
            (let ((__tmp194670
                   (cons _%path-c193236%_
                         (cons _%path-o193238%_
                               (cons _%link-path-c193242%_
                                     (cons _%link-path-o193244%_ '()))))))
              (declare (not safe))
              (##for-each delete-file __tmp194670))))))
    (define gxc#compile-output-file
      (lambda (_%ctx193195%_ _%n193196%_ _%ext193197%_)
        (letrec ((_%module-relative-path193199%_
                  (lambda (_%ctx193227%_)
                    (path-strip-directory
                     (let ((__tmp194671
                            (##structure-ref
                             _%ctx193227%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp194671)))))
                 (_%module-source-directory193200%_
                  (lambda (_%ctx193223%_)
                    (path-directory
                     (let ((_%mpath193225%_
                            (##structure-ref
                             _%ctx193223%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (string? _%mpath193225%_))
                           _%mpath193225%_
                           (last _%mpath193225%_))))))
                 (_%section-string193201%_
                  (lambda (_%n193217%_)
                    (if (let () (declare (not safe)) (number? _%n193217%_))
                        (let () (number->string _%n193217%_))
                        (if (let () (declare (not safe)) (symbol? _%n193217%_))
                            (let () (symbol->string _%n193217%_))
                            (if (let ()
                                  (declare (not safe))
                                  (string? _%n193217%_))
                                (let () _%n193217%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#raise-compile-error
                                     '"Unexpected section"
                                     _%n193217%_))))))))
                 (_%file-name193202%_
                  (lambda (_%path193215%_)
                    (if _%n193196%_
                        (string-append
                         _%path193215%_
                         '"~"
                         (let ()
                           (declare (not safe))
                           (_%section-string193201%_ _%n193196%_))
                         _%ext193197%_)
                        (string-append _%path193215%_ _%ext193197%_))))
                 (_%file-path193203%_
                  (lambda ()
                    (let ((_%$e193209%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e193209%_
                          ((lambda (_%outdir193212%_)
                             (path-expand
                              (let ((__tmp194672
                                     (let ((__tmp194673
                                            (##structure-ref
                                             _%ctx193195%_
                                             '1
                                             gx#expander-context::t
                                             '#f)))
                                       (declare (not safe))
                                       (gxc#module-id->path-string
                                        __tmp194673))))
                                (declare (not safe))
                                (_%file-name193202%_ __tmp194672))
                              _%outdir193212%_))
                           _%$e193209%_)
                          (let ()
                            (path-expand
                             (let ((__tmp194674
                                    (let ()
                                      (declare (not safe))
                                      (_%module-relative-path193199%_
                                       _%ctx193195%_))))
                               (declare (not safe))
                               (_%file-name193202%_ __tmp194674))
                             (let ()
                               (declare (not safe))
                               (_%module-source-directory193200%_
                                _%ctx193195%_)))))))))
          (let ((_%path193205%_
                 (let () (declare (not safe)) (_%file-path193203%_))))
            (let ((__tmp194675
                   (lambda ()
                     (let ((__tmp194676 (path-directory _%path193205%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp194676)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp194675))
            _%path193205%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx193176%_)
        (letrec ((_%file-name193178%_
                  (lambda (_%id193193%_)
                    (let ((__tmp194677
                           (let ()
                             (declare (not safe))
                             (gxc#static-module-name _%id193193%_))))
                      (declare (not safe))
                      (##string-append __tmp194677 '".scm"))))
                 (_%file-path193179%_
                  (lambda ()
                    (let* ((_%file193185%_
                            (let ((__tmp194678
                                   (##structure-ref
                                    _%ctx193176%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (_%file-name193178%_ __tmp194678)))
                           (_%$e193187%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e193187%_
                          ((lambda (_%outdir193190%_)
                             (path-expand
                              _%file193185%_
                              (path-expand '"static" _%outdir193190%_)))
                           _%$e193187%_)
                          (let () (path-expand _%file193185%_ '"static")))))))
          (let ((_%path193181%_
                 (let () (declare (not safe)) (_%file-path193179%_))))
            (let ((__tmp194679
                   (lambda ()
                     (let ((__tmp194680 (path-directory _%path193181%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp194680)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp194679))
            _%path193181%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx193169%_ _%opts193170%_)
        (let ((_%$e193172%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts193170%_))))
          (if _%$e193172%_
              (values _%$e193172%_)
              (let ()
                (path-strip-directory
                 (symbol->string
                  (##structure-ref
                   _%ctx193169%_
                   '1
                   gx#expander-context::t
                   '#f))))))))
    (define gxc#static-module-name
      (lambda (_%idstr193159%_)
        (if (let () (declare (not safe)) (string? _%idstr193159%_))
            (let ()
              (let* ((_%str193162%_
                      (let ()
                        (declare (not safe))
                        (gxc#module-id->path-string _%idstr193159%_)))
                     (_%strs193164%_
                      (let ()
                        (declare (not safe))
                        (string-split _%str193162%_ '#\/))))
                (let ()
                  (declare (not safe))
                  (string-join _%strs193164%_ '"__"))))
            (if (let () (declare (not safe)) (symbol? _%idstr193159%_))
                (let ()
                  (let ((__tmp194681 (symbol->string _%idstr193159%_)))
                    (declare (not safe))
                    (gxc#static-module-name __tmp194681)))
                (let ()
                  (let ()
                    (declare (not safe))
                    (error '"Bad module id" _%idstr193159%_)))))))
    (define gxc#invoke__%
      (lambda (_%_193123%_
               _%stdout-redirection193119193125%_
               _%stderr-redirection193120193127%_
               _%program193129%_
               _%args193130%_)
        (let* ((_%stdout-redirection193132%_
                (if (eq? _%stdout-redirection193119193125%_ absent-value)
                    '#f
                    _%stdout-redirection193119193125%_))
               (_%stderr-redirection193134%_
                (if (eq? _%stderr-redirection193120193127%_ absent-value)
                    '#f
                    _%stderr-redirection193120193127%_)))
          (let ((__tmp194682 (cons _%program193129%_ _%args193130%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp194682))
          (let* ((_%proc193136%_
                  (open-process
                   (cons 'path:
                         (cons _%program193129%_
                               (cons 'arguments:
                                     (cons _%args193130%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection193132%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection193134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output193141%_
                  (if (or _%stdout-redirection193132%_
                          _%stderr-redirection193134%_)
                      (read-line _%proc193136%_ '#f)
                      '#f)))
            (let ((_%status193144%_ (process-status _%proc193136%_)))
              (let () (declare (not safe)) (##close-port _%proc193136%_))
              (if (zero? _%status193144%_)
                  '#!void
                  (begin
                    (display _%output193141%_)
                    (let ((__tmp194683
                           (cons _%program193129%_ _%args193130%_)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"Compilation error; process exit with nonzero status"
                       __tmp194683
                       _%status193144%_)))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords193149%_ . _%args193150%_)
        (apply gxc#invoke__%
               _%@@keywords193149%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193149%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords193149%_
                  'stderr-redirection:
                  absent-value))
               _%args193150%_)))
    (define gxc#invoke
      (lambda _%args193121193156%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args193121193156%_)))
    (define gxc#join!
      (lambda (_%thread193113%_)
        (let ((__tmp194685
               (lambda (_%exn193115%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn193115%_))
                     (let ((__tmp194686
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn193115%_))))
                       (declare (not safe))
                       (raise __tmp194686))
                     (let () (declare (not safe)) (raise _%exn193115%_)))))
              (__tmp194684 (lambda () (thread-join! _%thread193113%_))))
          (declare (not safe))
          (__with-catch __tmp194685 __tmp194684))))))
