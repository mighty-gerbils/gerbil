(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1784471412)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp270418 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp270418))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp270419 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp270419))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path270275%_ _%fun270276%_)
        (with-output-to-file
         (cons 'path: (cons _%path270275%_ gxc#scheme-file-settings))
         _%fun270276%_)))
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
      (lambda (_%gerbil-libdir270270%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir270270%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path270268%_)
        (let ((__tmp270420 (object->string _%path270268%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp270420 '")"))))
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
      (lambda (_%dir270266%_) (delete-file-or-directory _%dir270266%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath270209%_ _%opts270210%_)
        (if (string? _%srcpath270209%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath270209%_)))
        (let* ((_%outdir270212%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts270210%_)))
               (_%invoke-gsc?270214%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts270210%_)))
               (_%target270219%_
                (let ((_%$e270216%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts270210%_))))
                  (if _%$e270216%_ _%$e270216%_ 'C)))
               (_%gsc-options270224%_
                (append (cons '"-target"
                              (cons (symbol->string _%target270219%_) '()))
                        (let ((_%$e270221%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts270210%_))))
                          (if _%$e270221%_ _%$e270221%_ '()))))
               (_%keep-scm?270226%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts270210%_)))
               (_%verbosity270228%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts270210%_)))
               (_%optimize270230%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts270210%_)))
               (_%debug270232%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts270210%_)))
               (_%gen-ssxi270234%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts270210%_)))
               (_%parallel?270236%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts270210%_))))
          (if _%outdir270212%_
              (let ((__tmp270421
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir270212%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp270421))
              '#!void)
          (if _%optimize270230%_
              (let ((__tmp270422
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp270422))
              '#!void)
          (let ((__tmp270423
                 (lambda ()
                   (let ((__tmp270424
                          (lambda ()
                            (let ((__tmp270425
                                   (lambda ()
                                     (let ((__tmp270426
                                            (lambda ()
                                              (let ((__tmp270427
                                                     (lambda ()
                                                       (let ((__tmp270428
                                                              (lambda ()
                                                                (let ((__tmp270429
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp270430
                                        (lambda ()
                                          (let ((__tmp270432
                                                 (lambda ()
                                                   (let ((__tmp270434
                                                          (lambda ()
                                                            (let ((__tmp270436
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp270437
                                    (lambda ()
                                      (let ((__tmp270438
                                             (lambda ()
                                               (let ((__tmp270439
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath270209%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp270440
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath270209%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp270440))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp270439
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp270438
                                         gx#current-compilation-target
                                         _%target270219%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp270437
                                gxc#current-compile-parallel
                                _%parallel?270236%_))))
                          (__tmp270435
                           (let ()
                             (declare (not safe))
                             (gxc#make-bound-identifier-table))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp270436
                       gxc#current-compile-identifiers
                       __tmp270435))))
                 (__tmp270433 (list (list 'compile-module _%srcpath270209%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp270434
                                                      gxc#current-compile-context
                                                      __tmp270433))))
                                                (__tmp270431
                                                 (gxc#compile-timestamp)))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp270432
                                             gxc#current-compile-timestamp
                                             __tmp270431)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp270430
                                    gxc#current-compile-generate-ssxi
                                    _%gen-ssxi270234%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp270429
                           gxc#current-compile-debug
                           _%debug270232%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp270428
                  gxc#current-compile-optimize
                  _%optimize270230%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp270427
                                                 gxc#current-compile-verbose
                                                 _%verbosity270228%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp270426
                                        gxc#current-compile-keep-scm
                                        _%keep-scm?270226%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp270425
                               gxc#current-compile-gsc-options
                               _%gsc-options270224%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp270424
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?270214%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp270423
             gxc#current-compile-output-dir
             _%outdir270212%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath270259%_)
        (let ((_%opts270261%_ '()))
          (gxc#compile-module__% _%srcpath270259%_ _%opts270261%_))))
    (define gxc#compile-module
      (lambda _g270441_
        (let ((_g270442_ (let () (declare (not safe)) (##length _g270441_))))
          (cond ((let () (declare (not safe)) (##fx= _g270442_ 1))
                 (apply gxc#compile-module__0 _g270441_))
                ((let () (declare (not safe)) (##fx= _g270442_ 2))
                 (apply gxc#compile-module__% _g270441_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g270441_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath270158%_ _%opts270159%_)
        (if (string? _%srcpath270158%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath270158%_)))
        (let* ((_%outdir270161%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts270159%_)))
               (_%invoke-gsc?270163%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts270159%_)))
               (_%target270168%_
                (let ((_%$e270165%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts270159%_))))
                  (if _%$e270165%_ _%$e270165%_ 'C)))
               (_%gsc-options270173%_
                (append (cons '"-target"
                              (cons (symbol->string _%target270168%_) '()))
                        (let ((_%$e270170%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts270159%_))))
                          (if _%$e270170%_ _%$e270170%_ '()))))
               (_%keep-scm?270175%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts270159%_)))
               (_%verbosity270177%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts270159%_)))
               (_%debug270179%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts270159%_)))
               (_%parallel?270181%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts270159%_))))
          (if _%outdir270161%_
              (let ((__tmp270443
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir270161%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp270443))
              '#!void)
          (let ((__tmp270444
                 (lambda ()
                   (let ((__tmp270445
                          (lambda ()
                            (let ((__tmp270446
                                   (lambda ()
                                     (let ((__tmp270447
                                            (lambda ()
                                              (let ((__tmp270448
                                                     (lambda ()
                                                       (let ((__tmp270449
                                                              (lambda ()
                                                                (let ((__tmp270450
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp270452
                                        (lambda ()
                                          (let ((__tmp270454
                                                 (lambda ()
                                                   (let ((__tmp270456
                                                          (lambda ()
                                                            (let ((__tmp270457
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp270458
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath270158%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp270459
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath270158%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp270459))
                                       _%opts270159%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp270458
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp270457
                       gxc#current-compile-parallel
                       _%parallel?270181%_))))
                 (__tmp270455
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp270456
                                                      gxc#current-compile-identifiers
                                                      __tmp270455))))
                                                (__tmp270453
                                                 (list (list 'compile-exe
                                                             _%srcpath270158%_))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp270454
                                             gxc#current-compile-context
                                             __tmp270453))))
                                       (__tmp270451 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp270452
                                    gxc#current-compile-timestamp
                                    __tmp270451)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp270450
                           gxc#current-compile-debug
                           _%debug270179%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp270449
                  gxc#current-compile-verbose
                  _%verbosity270177%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp270448
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?270175%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp270447
                                        gxc#current-compile-gsc-options
                                        _%gsc-options270173%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp270446
                               gx#current-compilation-target
                               _%target270168%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp270445
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?270163%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp270444
             gxc#current-compile-output-dir
             _%outdir270161%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath270201%_)
        (let ((_%opts270203%_ '()))
          (gxc#compile-exe__% _%srcpath270201%_ _%opts270203%_))))
    (define gxc#compile-exe
      (lambda _g270460_
        (let ((_g270461_ (let () (declare (not safe)) (##length _g270460_))))
          (cond ((let () (declare (not safe)) (##fx= _g270461_ 1))
                 (apply gxc#compile-exe__0 _g270460_))
                ((let () (declare (not safe)) (##fx= _g270461_ 2))
                 (apply gxc#compile-exe__% _g270460_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g270460_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx270154%_ _%opts270155%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts270155%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx270154%_
             _%opts270155%_)
            (gxc#compile-executable-module/separate
             _%ctx270154%_
             _%opts270155%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx269880%_ _%opts269881%_)
        (letrec ((_%generate-stub269883%_
                  (lambda (_%builtin-modules270150%_)
                    (let ((_%mod-main270152%_
                           (gxc#find-runtime-symbol _%ctx269880%_ 'main)))
                      (let ((__tmp270462
                             (list 'define
                                   'builtin-modules
                                   (list 'quote _%builtin-modules270150%_))))
                        (declare (not safe))
                        (##write __tmp270462))
                      (let ((__tmp270463
                             (list 'define
                                   '(gerbil-main)
                                   (cons 'with-unwind-protect
                                         (cons (list 'lambda
                                                     '()
                                                     '(gerbil-runtime-init!
                                                       builtin-modules)
                                                     (cons 'apply
                                                           (cons _%mod-main270152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '((cdr (command-line))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '((lambda ()
                                                   (with-catch
                                                    void
                                                    (lambda ()
                                                      (force-output
                                                       (current-output-port))))
                                                   (with-catch
                                                    void
                                                    (lambda ()
                                                      (force-output
                                                       (current-error-port)))))))))))
                        (declare (not safe))
                        (##write __tmp270463))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts269884%_
                  (lambda (_%gerbil-libdir270148%_)
                    (let ((__tmp270464
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir270148%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp270464 read))))
                 (_%replace-extension269885%_
                  (lambda (_%path270145%_ _%ext270146%_)
                    (string-append
                     (path-strip-extension _%path270145%_)
                     _%ext270146%_)))
                 (_%replace-extension-with-c269886%_
                  (lambda (_%path270143%_)
                    (_%replace-extension269885%_ _%path270143%_ '".c")))
                 (_%replace-extension-with-object269887%_
                  (lambda (_%path270141%_)
                    (_%replace-extension269885%_
                     _%path270141%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?269888%_
                  (lambda (_%ctx270139%_)
                    (if (_%exclude-module?269890%_ _%ctx270139%_)
                        '#f
                        (not (_%libgerbil-module?269889%_ _%ctx270139%_)))))
                 (_%libgerbil-module?269889%_
                  (lambda (_%ctx270132%_)
                    (let ((_%id-str270134%_
                           (symbol->string
                            (##structure-ref
                             _%ctx270132%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?269890%_ _%id-str270134%_)
                          '#f
                          (let ((_%$e270136%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str270134%_))))
                            (if _%$e270136%_
                                _%$e270136%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str270134%_))))))))
                 (_%exclude-module?269890%_
                  (lambda (_%ctx-or-str270128%_)
                    (let ((_%str270130%_
                           (if (string? _%ctx-or-str270128%_)
                               _%ctx-or-str270128%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str270128%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str270130%_))))
                 (_%not-file-empty?269891%_
                  (lambda (_%path270126%_)
                    (not (gxc#file-empty? _%path270126%_))))
                 (_%fold-libgerbil-runtime-scm269892%_
                  (lambda (_%gerbil-staticdir270119%_ _%libgerbil-scm270120%_)
                    (let ((_%gerbil-runtime-scm270124%_
                           (let ((__tmp270465
                                  (lambda (_%rtm270122%_)
                                    (path-expand
                                     (let ((__tmp270466
                                            (let ((__tmp270467
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm270122%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp270467
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp270466 '".scm"))
                                     _%gerbil-staticdir270119%_))))
                             (declare (not safe))
                             (##map __tmp270465 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates269893%_
                       (append _%gerbil-runtime-scm270124%_
                               _%libgerbil-scm270120%_)))))
                 (_%remove-duplicates269893%_
                  (lambda (_%strlst270079%_)
                    (let _%loop270081%_ ((_%rest270083%_ _%strlst270079%_)
                                         (_%result270084%_ '()))
                      (let* ((_%$%rest270085270093%_ _%rest270083%_)
                             (_%$%else270087270101%_
                              (lambda () (reverse! _%result270084%_)))
                             (_%$%K270089270107%_
                              (lambda (_%rest270104%_ _%path270105%_)
                                (if (member _%path270105%_ _%result270084%_)
                                    (_%loop270081%_
                                     _%rest270104%_
                                     _%result270084%_)
                                    (_%loop270081%_
                                     _%rest270104%_
                                     (cons _%path270105%_
                                           _%result270084%_))))))
                        (if (pair? _%$%rest270085270093%_)
                            (let ((_%$%hd270090270110%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest270085270093%_)))
                                  (_%$%tl270091270112%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest270085270093%_))))
                              (let* ((_%path270115%_ _%$%hd270090270110%_)
                                     (_%rest270117%_ _%$%tl270091270112%_))
                                (_%$%K270089270107%_
                                 _%rest270117%_
                                 _%path270115%_)))
                            (_%$%else270087270101%_))))))
                 (_%compile-stub269894%_
                  (lambda (_%output-scm269901%_ _%output-bin269902%_)
                    (let* ((_%gerbil-home269904%_
                            (let ((__tmp270468
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp270468)))
                           (_%gerbil-libdir269906%_
                            (path-expand '"lib" _%gerbil-home269904%_))
                           (_%gerbil-staticdir269908%_
                            (path-expand '"static" _%gerbil-libdir269906%_))
                           (_%deps269910%_
                            (gxc#find-runtime-module-deps _%ctx269880%_))
                           (_%libgerbil-deps269912%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?269889%_
                               _%deps269910%_)))
                           (_%libgerbil-scm269914%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps269912%_)))
                           (_%libgerbil-scm269916%_
                            (_%fold-libgerbil-runtime-scm269892%_
                             _%gerbil-staticdir269908%_
                             _%libgerbil-scm269914%_))
                           (_%libgerbil-c269918%_
                            (map _%replace-extension-with-c269886%_
                                 _%libgerbil-scm269916%_))
                           (_%libgerbil-o269920%_
                            (map _%replace-extension-with-object269887%_
                                 _%libgerbil-scm269916%_))
                           (_%src-deps269922%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?269888%_
                               _%deps269910%_)))
                           (_%src-deps-scm269924%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps269922%_)))
                           (_%src-deps-scm269926%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?269891%_
                               _%src-deps-scm269924%_)))
                           (_%src-deps-scm269928%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm269926%_)))
                           (_%src-deps-c269930%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c269886%_
                                     _%src-deps-scm269928%_)))
                           (_%src-deps-o269932%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object269887%_
                                     _%src-deps-scm269928%_)))
                           (_%src-bin-scm269934%_
                            (gxc#find-static-module-file _%ctx269880%_))
                           (_%src-bin-scm269936%_
                            (path-expand _%src-bin-scm269934%_))
                           (_%src-bin-c269938%_
                            (_%replace-extension-with-c269886%_
                             _%src-bin-scm269936%_))
                           (_%src-bin-o269940%_
                            (_%replace-extension-with-object269887%_
                             _%src-bin-scm269936%_))
                           (_%output-bin269942%_
                            (path-expand _%output-bin269902%_))
                           (_%output-scm269944%_
                            (path-expand _%output-scm269901%_))
                           (_%output-c269946%_
                            (_%replace-extension-with-c269886%_
                             _%output-scm269944%_))
                           (_%output-o269948%_
                            (_%replace-extension-with-object269887%_
                             _%output-scm269944%_))
                           (_%output_-c269950%_
                            (_%replace-extension269885%_
                             _%output-scm269944%_
                             '"_.c"))
                           (_%output_-o269952%_
                            (_%replace-extension269885%_
                             _%output-scm269944%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts269954%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts269956%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts269958%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir269908%_))
                           (_%output-ld-opts269960%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts269962%_
                            (_%get-libgerbil-ld-opts269884%_
                             _%gerbil-libdir269906%_))
                           (_%rpath269964%_
                            (gxc#gerbil-rpath _%gerbil-libdir269906%_))
                           (_%builtin-modules269968%_
                            (_%remove-duplicates269893%_
                             (let ((__tmp270469
                                    (let ((__tmp270471
                                           (lambda (_%mod269966%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod269966%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp270470
                                           (cons _%ctx269880%_
                                                 _%deps269910%_)))
                                      (declare (not safe))
                                      (##map __tmp270471 __tmp270470))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp270469)))))
                      (letrec ((_%compile-obj269971%_
                                (lambda (_%scm-path269978%_ _%c-path269979%_)
                                  (let* ((_%o-path269981%_
                                          (_%replace-extension269885%_
                                           _%c-path269979%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock269983%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path269981%_
                                             '".lock")))
                                         (_%locked269985%_ '#f)
                                         (_%unlock269988%_
                                          (lambda ()
                                            (close-port _%locked269985%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock269983%_)))))
                                    (let _%retry269991%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock269983%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry269991%_))
                                          (begin
                                            (set! _%locked269985%_
                                                  (let* ((_%handler269994%_
                                                          false)
                                                         (_%thunk269998%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock269983%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler270003%_ _%handler269994%_)
                 (_%thunk270059%_ _%thunk269998%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler270003%_
                                                     _%thunk270059%_)))
                                            (if _%locked269985%_
                                                '#!void
                                                (_%retry269991%_)))))
                                    (let ((__tmp270473
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path269981%_)))
                                                     (not _%scm-path269978%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path269978%_
                                                        _%o-path269981%_)))
                                                 (let ((_%gsc-cc-opts270076%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp270474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp270475 (cons _%c-path269979%_ '())))
                           (declare (not safe))
                           (##append _%gsc-static-opts269958%_ __tmp270475))))
                    (declare (not safe))
                    (##append _%gsc-cc-opts270076%_ __tmp270474)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp270472
                                           (lambda () (_%unlock269988%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp270473
                                       __tmp270472))))))
                        (let ((__tmp270476
                               (lambda ()
                                 (let ((__tmp270477
                                        (path-directory _%output-bin269942%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp270477)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp270476))
                        (gxc#with-output-to-scheme-file
                         _%output-scm269944%_
                         (lambda ()
                           (_%generate-stub269883%_
                            _%builtin-modules269968%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it269976%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp270478
                                                   (let ((__tmp270479
                                                          (let ((__tmp270480
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm269936%_
                               (cons _%output-scm269944%_ '()))))
                    (declare (not safe))
                    (##append _%src-deps-scm269928%_ __tmp270480))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##append
                                                      _%libgerbil-c269918%_
                                                      __tmp270479))))
                                              (declare (not safe))
                                              (##append
                                               _%gsc-link-opts269954%_
                                               __tmp270478))))
                                     (let ((__tmp270483
                                            (let ((__tmp270484
                                                   (cons _%src-bin-scm269936%_
                                                         (cons _%output-scm269944%_
                                                               (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (##append
                                               _%src-deps-scm269928%_
                                               __tmp270484)))
                                           (__tmp270481
                                            (let ((__tmp270482
                                                   (cons _%src-bin-c269938%_
                                                         (cons _%output-c269946%_
                                                               (cons _%output_-c269950%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (##append
                                               _%src-deps-c269930%_
                                               __tmp270482))))
                                       (declare (not safe))
                                       (##for-each
                                        _%compile-obj269971%_
                                        __tmp270483
                                        __tmp270481))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin269942%_
                                                        (let ((__tmp270485
                                                               (cons _%src-bin-o269940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o269948%_
                                   (cons _%output_-o269952%_
                                         (let ((__tmp270486
                                                (let ((__tmp270487
                                                       (let ((__tmp270489
                                                              (if (gxc#gerbil-enable-shared?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%rpath269964%_ '())
                          '()))
                     (__tmp270488
                      (cons '"-L"
                            (cons _%gerbil-libdir269906%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts269962%_)))))
                 (declare (not safe))
                 (##append __tmp270489 __tmp270488))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (##append
                                                   _%output-ld-opts269960%_
                                                   __tmp270487))))
                                           (declare (not safe))
                                           (##append
                                            _%libgerbil-o269920%_
                                            __tmp270486)))))))
                  (declare (not safe))
                  (##append _%src-deps-o269932%_ __tmp270485))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp270490
                                            (cons _%output-c269946%_
                                                  (cons _%output_-c269950%_
                                                        (cons _%output-o269948%_
                                                              (cons _%output_-o269952%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp270490)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it269976%_))
                                  (_%compile-it269976%_)))
                            '#!void))))))
          (let* ((_%output-bin269896%_
                  (gxc#compile-exe-output-file _%ctx269880%_ _%opts269881%_))
                 (_%output-scm269898%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin269896%_ '"__exe.scm"))))
            (_%compile-stub269894%_
             _%output-scm269898%_
             _%output-bin269896%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx269702%_ _%opts269703%_)
        (letrec ((_%reset-declare269705%_
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
                 (_%generate-stub269706%_
                  (lambda (_%deps269871%_)
                    (let ((_%mod-main269873%_
                           (gxc#find-runtime-symbol _%ctx269702%_ 'main))
                          (_%reset-decl269874%_ (_%reset-declare269705%_))
                          (_%user-decl269875%_ (_%user-declare269707%_)))
                      (for-each
                       (lambda (_%dep269877%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl269874%_))
                         (newline)
                         (if _%user-decl269875%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl269875%_))
                               (newline))
                             '#!void)
                         (let ((__tmp270491 (list 'include _%dep269877%_)))
                           (declare (not safe))
                           (##write __tmp270491))
                         (newline))
                       _%deps269871%_)
                      (let ((__tmp270492
                             (list 'define
                                   '(gerbil-main)
                                   '(gerbil-runtime-init! '())
                                   (cons 'apply
                                         (cons _%mod-main269873%_
                                               '((cdr (command-line))))))))
                        (declare (not safe))
                        (##write __tmp270492))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare269707%_
                  (lambda ()
                    (let* ((_%gsc-opts269776%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts269703%_)))
                           (_%gsc-prelude269778%_
                            (if _%gsc-opts269776%_
                                (member '"-prelude" _%gsc-opts269776%_)
                                '#f))
                           (_%gsc-prelude269780%_
                            (if _%gsc-prelude269778%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude269778%_)))
                                '#f)))
                      (let _%lp269783%_ ((_%rest269785%_
                                          (cons _%gsc-prelude269780%_ '()))
                                         (_%user-decls269786%_ '()))
                        (let* ((_%$%rest269787269795%_ _%rest269785%_)
                               (_%$%else269789269803%_
                                (lambda ()
                                  (if (null? _%user-decls269786%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls269786%_)))))
                               (_%$%K269791269859%_
                                (lambda (_%rest269806%_ _%expr269807%_)
                                  (let* ((_%$%expr269808269820%_
                                          _%expr269807%_)
                                         (_%$%else269811269828%_
                                          (lambda ()
                                            (_%lp269783%_
                                             _%rest269806%_
                                             _%user-decls269786%_))))
                                    (let ((_%$%K269816269849%_
                                           (lambda (_%decls269847%_)
                                             (_%lp269783%_
                                              _%rest269806%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls269786%_
                                                 _%decls269847%_)))))
                                          (_%$%K269813269834%_
                                           (lambda (_%exprs269832%_)
                                             (_%lp269783%_
                                              (append _%exprs269832%_
                                                      _%rest269806%_)
                                              _%user-decls269786%_))))
                                      (if (pair? _%$%expr269808269820%_)
                                          (let ((_%$%tl269818269854%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%expr269808269820%_)))
                                                (_%$%hd269817269852%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%expr269808269820%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd269817269852%_
                                                         'declare))
                                                (let ((_%decls269857%_
                                                       _%$%tl269818269854%_))
                                                  (_%$%K269816269849%_
                                                   _%decls269857%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%$%hd269817269852%_
                                                             'begin))
                                                    (let ((_%exprs269842%_
                                                           _%$%tl269818269854%_))
                                                      (_%$%K269813269834%_
                                                       _%exprs269842%_))
                                                    (_%$%else269811269828%_))))
                                          (_%$%else269811269828%_)))))))
                          (if (pair? _%$%rest269787269795%_)
                              (let ((_%$%hd269792269862%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest269787269795%_)))
                                    (_%$%tl269793269864%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest269787269795%_))))
                                (let* ((_%expr269867%_ _%$%hd269792269862%_)
                                       (_%rest269869%_ _%$%tl269793269864%_))
                                  (_%$%K269791269859%_
                                   _%rest269869%_
                                   _%expr269867%_)))
                              (_%$%else269789269803%_)))))))
                 (_%compile-stub269708%_
                  (lambda (_%output-scm269715%_ _%output-bin269716%_)
                    (let* ((_%gerbil-home269718%_
                            (let ((__tmp270493
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp270493)))
                           (_%gerbil-libdir269720%_
                            (path-expand '"lib" _%gerbil-home269718%_))
                           (_%runtime269722%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp269724%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home269718%_))
                           (_%include-gambit-sharp269726%_
                            (gxc#include-source _%gambit-sharp269724%_))
                           (_%bin-scm269728%_
                            (gxc#find-static-module-file _%ctx269702%_))
                           (_%deps269730%_
                            (gxc#find-runtime-module-deps _%ctx269702%_))
                           (_%deps269732%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps269730%_)))
                           (_%deps269737%_
                            (let ((__tmp270494
                                   (lambda (_%$obj269734%_)
                                     (not (gxc#file-empty? _%$obj269734%_)))))
                              (declare (not safe))
                              (##filter __tmp270494 _%deps269732%_)))
                           (_%deps269741%_
                            (let ((__tmp270495
                                   (lambda (_%f269739%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f269739%_
                                             _%runtime269722%_))))))
                              (declare (not safe))
                              (##filter __tmp270495 _%deps269737%_)))
                           (_%output-base269743%_
                            (let ((__tmp270496
                                   (path-strip-extension
                                    _%output-scm269715%_)))
                              (declare (not safe))
                              (##string-append __tmp270496)))
                           (_%output-c269745%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base269743%_ '".c")))
                           (_%output-o269747%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base269743%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_269749%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base269743%_ '"_.c")))
                           (_%output-o_269751%_
                            (let ((__tmp270497
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base269743%_
                               __tmp270497)))
                           (_%gsc-link-opts269753%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts269755%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts269757%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir269720%_)))
                           (_%output-ld-opts269759%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros269761%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp269726%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp269726%_
                                            '()))))
                           (_%gsc-link-opts269763%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts269753%_
                               _%gsc-gx-macros269761%_)))
                           (_%rpath269765%_
                            (gxc#gerbil-rpath _%gerbil-libdir269720%_))
                           (_%default-ld-options269767%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp270498
                             (lambda ()
                               (let ((__tmp270499
                                      (path-directory _%output-bin269716%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp270499)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp270498))
                      (gxc#with-output-to-scheme-file
                       _%output-scm269715%_
                       (lambda ()
                         (_%generate-stub269706%_
                          (let ((__tmp270500
                                 (let ((__tmp270501
                                        (cons _%bin-scm269728%_ '())))
                                   (declare (not safe))
                                   (##append _%deps269741%_ __tmp270501))))
                            (declare (not safe))
                            (##append _%runtime269722%_ __tmp270500)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it269773%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_269749%_
                                                      (let ((__tmp270502
                                                             (cons _%output-scm269715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (##append _%gsc-link-opts269763%_ __tmp270502))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp270503
                                                 (let ((__tmp270504
                                                        (cons _%output-c269745%_
                                                              (cons _%output-c_269749%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (##append
                                                    _%gsc-static-opts269757%_
                                                    __tmp270504))))
                                            (declare (not safe))
                                            (##append
                                             _%gsc-cc-opts269755%_
                                             __tmp270503))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin269716%_
                                                      (cons _%output-o269747%_
                                                            (cons _%output-o_269751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp270505
                                 (let ((__tmp270507
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath269765%_ '())
                                            '()))
                                       (__tmp270506
                                        (cons '"-L"
                                              (cons _%gerbil-libdir269720%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options269767%_)))))
                                   (declare (not safe))
                                   (##append __tmp270507 __tmp270506))))
                            (declare (not safe))
                            (##append
                             _%output-ld-opts269759%_
                             __tmp270505)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it269773%_))
                                (_%compile-it269773%_)))
                          '#!void)))))
          (let* ((_%output-bin269710%_
                  (gxc#compile-exe-output-file _%ctx269702%_ _%opts269703%_))
                 (_%output-scm269712%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin269710%_ '"__exe.scm"))))
            (_%compile-stub269708%_
             _%output-scm269712%_
             _%output-bin269710%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx269651%_ _%id269652%_)
        (let ((_%$e269698%_
               (let ((__tmp270509
                      (lambda (_%$%e269653269655%_)
                        (let* ((_%$%$%e269653269657269667%_
                                _%$%e269653269655%_)
                               (_%$%else269659269675%_ (lambda () '#f))
                               (_%$%K269661269679%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%$%$%e269653269657269667%_
                                 'gx#module-export::t))
                              (let* ((_%$%e269662269682%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e269653269657269667%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%$%e269663269685%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e269653269657269667%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%$%e269664269688%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e269653269657269667%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%$%e269664269688%_ '0))
                                    (let ((_%$%e269665269691%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%$%$%e269653269657269667%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if (eq? _%$%e269665269691%_
                                               _%id269652%_)
                                          (_%$%K269661269679%_)
                                          (_%$%else269659269675%_)))
                                    (_%$%else269659269675%_)))
                              (_%$%else269659269675%_)))))
                     (__tmp270508
                      (##structure-ref
                       _%ctx269651%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp270509 __tmp270508))))
          (if _%$e269698%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e269698%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx269642%_ _%id269643%_)
        (let ((_%$e269645%_
               (gxc#find-export-binding _%ctx269642%_ _%id269643%_)))
          (if _%$e269645%_
              (let ()
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%$e269645%_
                       'gx#runtime-binding::t))
                    '#!void
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"export is not a runtime binding"
                       _%id269643%_)))
                (##structure-ref _%$e269645%_ '1 gx#binding::t '#f))
              (let ((__tmp270510
                     (##structure-ref
                      _%ctx269642%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp270510
                 _%id269643%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx269508%_)
        (letrec* ((_%ht269510%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template269511%_
                   (lambda (_%in269587%_ _%phi269588%_)
                     (let ((_%iphi269590%_
                            (fx+ _%phi269588%_
                                 (##direct-structure-ref
                                  _%in269587%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports269591%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in269587%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp269593%_ ((_%rest269595%_ _%imports269591%_)
                                          (_%r269596%_ '()))
                         (let* ((_%$%rest269597269605%_ _%rest269595%_)
                                (_%$%else269599269613%_
                                 (lambda () _%r269596%_))
                                (_%$%K269601269630%_
                                 (lambda (_%rest269616%_ _%in269617%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in269617%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi269590%_))
                                           (_%lp269593%_
                                            _%rest269616%_
                                            (cons _%in269617%_ _%r269596%_))
                                           (_%lp269593%_
                                            _%rest269616%_
                                            _%r269596%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in269617%_
                                              'gx#module-import::t))
                                           (let ((_%iphi269621%_
                                                  (fx+ _%phi269588%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in269617%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi269621%_))
                                                 (_%lp269593%_
                                                  _%rest269616%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in269617%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r269596%_))
                                                 (_%lp269593%_
                                                  _%rest269616%_
                                                  _%r269596%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in269617%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi269624%_
                                                      (fx+ _%iphi269590%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in269617%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi269624%_))
                                                     (_%lp269593%_
                                                      _%rest269616%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in269617%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r269596%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi269624%_))
                                                         (_%lp269593%_
                                                          _%rest269616%_
                                                          (let ((__tmp270511
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template269511%_
                          _%in269617%_
                          _%iphi269590%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r269596%_ __tmp270511)))
                 (_%lp269593%_ _%rest269616%_ _%r269596%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp269593%_
                                                _%rest269616%_
                                                _%r269596%_)))))))
                           (if (pair? _%$%rest269597269605%_)
                               (let ((_%$%hd269602269633%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%rest269597269605%_)))
                                     (_%$%tl269603269635%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%rest269597269605%_))))
                                 (let* ((_%in269638%_ _%$%hd269602269633%_)
                                        (_%rest269640%_ _%$%tl269603269635%_))
                                   (_%$%K269601269630%_
                                    _%rest269640%_
                                    _%in269638%_)))
                               (_%$%else269599269613%_)))))))
                  (_%find-deps269512%_
                   (lambda (_%rest269520%_ _%deps269521%_)
                     (let* ((_%$%rest269522269530%_ _%rest269520%_)
                            (_%$%else269524269538%_ (lambda () _%deps269521%_))
                            (_%$%K269526269575%_
                             (lambda (_%rest269541%_ _%hd269542%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd269542%_
                                      'gx#module-context::t))
                                   (let ((_%id269545%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd269542%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports269546%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd269542%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht269510%_
                                            _%id269545%_))
                                         (_%find-deps269512%_
                                          _%rest269541%_
                                          _%deps269521%_)
                                         (let ((_%$e269549%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd269542%_))))
                                           (if _%$e269549%_
                                               (let ((_%xdeps269554%_
                                                      (_%find-deps269512%_
                                                       (cons _%$e269549%_
                                                             _%imports269546%_)
                                                       _%deps269521%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht269510%_
                                                    _%id269545%_
                                                    _%hd269542%_))
                                                 (_%find-deps269512%_
                                                  _%rest269541%_
                                                  (cons _%hd269542%_
                                                        _%xdeps269554%_)))
                                               (let ((_%xdeps269557%_
                                                      (_%find-deps269512%_
                                                       _%imports269546%_
                                                       _%deps269521%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht269510%_
                                                    _%id269545%_
                                                    _%hd269542%_))
                                                 (_%find-deps269512%_
                                                  _%rest269541%_
                                                  (cons _%hd269542%_
                                                        _%xdeps269557%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd269542%_
                                          'gx#prelude-context::t))
                                       (let ((_%id269560%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd269542%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht269510%_
                                                _%id269560%_))
                                             (_%find-deps269512%_
                                              _%rest269541%_
                                              _%deps269521%_)
                                             (let ((_%xdeps269564%_
                                                    (_%find-deps269512%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd269542%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps269521%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht269510%_
                                                      _%id269560%_))
                                                   (_%find-deps269512%_
                                                    _%rest269541%_
                                                    _%xdeps269564%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht269510%_
                                                        _%id269560%_
                                                        _%hd269542%_))
                                                     (_%find-deps269512%_
                                                      _%rest269541%_
                                                      (cons _%hd269542%_
                                                            _%xdeps269564%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd269542%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd269542%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps269512%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd269542%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest269541%_)
                                                _%deps269521%_)
                                               (_%find-deps269512%_
                                                _%rest269541%_
                                                _%deps269521%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd269542%_
                                                  'gx#module-export::t))
                                               (_%find-deps269512%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd269542%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest269541%_)
                                                _%deps269521%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd269542%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd269542%_ '2 '#f '#f)))
               (_%find-deps269512%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd269542%_ '1 '#f '#f))
                      _%rest269541%_)
                _%deps269521%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd269542%_ '2 '#f '#f)))
                   (let ((_%xdeps269571%_
                          (_%import-set-template269511%_ _%hd269542%_ '0)))
                     (_%find-deps269512%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest269541%_ _%xdeps269571%_))
                      _%deps269521%_))
                   (_%find-deps269512%_ _%rest269541%_ _%deps269521%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd269542%_))))))))))
                       (if (pair? _%$%rest269522269530%_)
                           (let ((_%$%hd269527269578%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%rest269522269530%_)))
                                 (_%$%tl269528269580%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%rest269522269530%_))))
                             (let* ((_%hd269583%_ _%$%hd269527269578%_)
                                    (_%rest269585%_ _%$%tl269528269580%_))
                               (_%$%K269526269575%_
                                _%rest269585%_
                                _%hd269583%_)))
                           (_%$%else269524269538%_))))))
          (let ((__tmp270512
                 (filter gx#expander-context-id
                         (_%find-deps269512%_
                          (let ((_%$e269514%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx269508%_))))
                            (if _%$e269514%_
                                (cons _%$e269514%_
                                      (##structure-ref
                                       _%ctx269508%_
                                       '8
                                       gx#module-context::t
                                       '#f))
                                (##structure-ref
                                 _%ctx269508%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp270512)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx269438%_)
        (let* ((_%context-id269440%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx269438%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx269438%_ '1 '#f '#f))
                    (string->symbol _%ctx269438%_)))
               (_%scm269442%_
                (let ((__tmp270513
                       (gxc#static-module-name _%context-id269440%_)))
                  (declare (not safe))
                  (##string-append __tmp270513 '".scm")))
               (_%dirs269444%_ (let () (declare (not safe)) (load-path)))
               (_%dirs269450%_
                (let ((_%user-libpath269446%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath269446%_
                      (let ((_%user-libpath269448%_
                             (path-expand '"lib" _%user-libpath269446%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath269448%_ _%dirs269444%_))
                            _%dirs269444%_
                            (cons _%user-libpath269448%_ _%dirs269444%_)))
                      _%dirs269444%_)))
               (_%dirs269460%_
                (let ((_%$e269452%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e269452%_
                      (cons _%$e269452%_ _%dirs269450%_)
                      _%dirs269450%_)))
               (_%dirs269466%_
                (let ((__tmp270514
                       (lambda (_%$%g269461269463%_)
                         (path-expand '"static" _%$%g269461269463%_))))
                  (declare (not safe))
                  (##map __tmp270514 _%dirs269460%_))))
          (let _%lp269469%_ ((_%rest269471%_ _%dirs269466%_))
            (let* ((_%$%rest269472269480%_ _%rest269471%_)
                   (_%$%else269474269488%_
                    (lambda ()
                      (let ((__tmp270515
                             (##structure-ref
                              _%ctx269438%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp270515
                         _%scm269442%_))))
                   (_%$%K269476269496%_
                    (lambda (_%rest269491%_ _%dir269492%_)
                      (let ((_%path269494%_
                             (path-expand _%scm269442%_ _%dir269492%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path269494%_))
                            _%path269494%_
                            (_%lp269469%_ _%rest269491%_))))))
              (if (pair? _%$%rest269472269480%_)
                  (let ((_%$%hd269477269499%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest269472269480%_)))
                        (_%$%tl269478269501%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest269472269480%_))))
                    (let* ((_%dir269504%_ _%$%hd269477269499%_)
                           (_%rest269506%_ _%$%tl269478269501%_))
                      (_%$%K269476269496%_ _%rest269506%_ _%dir269504%_)))
                  (_%$%else269474269488%_)))))))
    (define gxc#file-empty?
      (lambda (_%path269436%_)
        (zero? (let ((__tmp270516 (file-info _%path269436%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp270516)))))
    (define gxc#compile-top-module
      (lambda (_%ctx269427%_)
        (let ((__tmp270517
               (lambda ()
                 (let ((__tmp270518
                        (lambda ()
                          (let ((__tmp270519
                                 (lambda ()
                                   (let ((__tmp270521
                                          (lambda ()
                                            (let ((__tmp270523
                                                   (lambda ()
                                                     (let ((__tmp270525
                                                            (lambda ()
                                                              (let ((__tmp270526
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx269427%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp270526))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp270527
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx269427%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp270527))
                          '#!void)
                      (gxc#collect-bindings _%ctx269427%_)
                      (gxc#compile-runtime-code _%ctx269427%_)
                      (gxc#compile-meta-code _%ctx269427%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx269427%_)
                          '#!void)))
                   (__tmp270524
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
               (call-with-parameters__1
                __tmp270525
                gxc#current-compile-runtime-names
                __tmp270524))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp270522
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp270523
                                               gxc#current-compile-runtime-sections
                                               __tmp270522))))
                                         (__tmp270520
                                          (let ((__obj270416
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj270416))
                                            __obj270416)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp270521
                                      gxc#current-compile-symbol-table
                                      __tmp270520)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp270519
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp270518
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp270517
           gx#current-expander-context
           _%ctx269427%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx269425%_)
        (let ((__tmp270528
               (##structure-ref _%ctx269425%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp270528))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx269370%_)
        (letrec ((_%compile1269372%_
                  (lambda (_%ctx269414%_)
                    (let* ((_%code269416%_
                            (##structure-ref
                             _%ctx269414%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm269420%_
                            (let ((_%idstr269418%_
                                   (let ((__tmp270529
                                          (##structure-ref
                                           _%ctx269414%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp270529))))
                              (declare (not safe))
                              (##string-append _%idstr269418%_ '"~0")))
                           (_%rtc?269422%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code269416%_))))
                      (if _%rtc?269422%_
                          (let ((__tmp270530
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp270530
                             _%ctx269414%_
                             _%rtm269420%_))
                          '#!void)
                      (_%generate-runtime-code269374%_
                       _%ctx269414%_
                       _%code269416%_
                       (if _%rtc?269422%_ _%rtm269420%_ '#f)))))
                 (_%context-timestamp269373%_
                  (lambda (_%ctx269412%_)
                    (let ((__tmp270531
                           (let ((__tmp270532
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx269412%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp270532 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp270531))))
                 (_%generate-runtime-code269374%_
                  (lambda (_%ctx269381%_ _%code269382%_ _%rtm269383%_)
                    (let* ((_%runtime-code?269385%_ (if _%rtm269383%_ '#t '#f))
                           (_%lifts269387%_ (box '()))
                           (_%runtime-code269393%_
                            (if _%runtime-code?269385%_
                                (let ((__tmp270533
                                       (lambda ()
                                         (let ((__tmp270534
                                                (lambda ()
                                                  (let ((__tmp270535
                                                         (lambda ()
                                                           (let ((__tmp270537
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code269382%_))))
                         (__tmp270536
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp270537
                      gxc#current-compile-marks
                      __tmp270536)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp270535
                                                     gxc#current-compile-lift
                                                     _%lifts269387%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp270534
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp270533
                                   gx#current-expander-context
                                   _%ctx269381%_))
                                '#f))
                           (_%runtime-code269395%_
                            (if _%runtime-code?269385%_
                                (if (null? (unbox _%lifts269387%_))
                                    _%runtime-code269393%_
                                    (cons 'begin
                                          (let ((__tmp270539
                                                 (reverse (unbox _%lifts269387%_)))
                                                (__tmp270538
                                                 (cons _%runtime-code269393%_
                                                       '())))
                                            (declare (not safe))
                                            (##append
                                             __tmp270539
                                             __tmp270538))))
                                '#f))
                           (_%runtime-code269397%_
                            (if _%runtime-code?269385%_
                                (cons 'begin
                                      (cons (list 'define
                                                  (_%context-timestamp269373%_
                                                   _%ctx269381%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#current-compile-timestamp)))
                                            (cons _%runtime-code269395%_ '())))
                                '#f))
                           (_%loader-code269400%_
                            (let ((__tmp270540
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code269382%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp270540
                               gx#current-expander-context
                               _%ctx269381%_)))
                           (_%loader-code269402%_
                            (cons 'begin
                                  (cons _%loader-code269400%_
                                        (cons (if _%runtime-code?269385%_
                                                  (cons 'load-module
                                                        (cons _%rtm269383%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0269404%_
                            (gxc#compile-output-file _%ctx269381%_ '0 '".scm"))
                           (_%scmrt269406%_
                            (gxc#compile-output-file
                             _%ctx269381%_
                             '#f
                             '".scm"))
                           (_%scms269408%_
                            (gxc#compile-static-output-file _%ctx269381%_)))
                      (if _%runtime-code?269385%_
                          (gxc#compile-scm-file__0
                           _%scm0269404%_
                           _%runtime-code269397%_)
                          '#!void)
                      (let ((__tmp270541
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt269406%_
                                _%loader-code269402%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp270541
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms269408%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms269408%_))
                          '#!void)
                      (if _%runtime-code?269385%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0269404%_ _%scms269408%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms269408%_ void)))))))
          (let* ((_%all-modules269376%_
                  (cons _%ctx269370%_ (gxc#lift-nested-modules _%ctx269370%_)))
                 (__tmp270542
                  (lambda (_%ctx269378%_)
                    (let ((__tmp270543
                           (lambda () (_%compile1269372%_ _%ctx269378%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp270543
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp270542 _%all-modules269376%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx269269%_)
        (letrec ((_%compile-ssi269271%_
                  (lambda (_%code269338%_)
                    (let* ((_%path269340%_
                            (gxc#compile-output-file
                             _%ctx269269%_
                             '#f
                             '".ssi"))
                           (_%prelude269352%_
                            (let* ((_%super269342%_
                                    (##structure-ref
                                     _%ctx269269%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e269344%_
                                    (##structure-ref
                                     _%super269342%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e269344%_
                                  (let ()
                                    (declare (not safe))
                                    (make-symbol__1 '":" _%$e269344%_))
                                  ':<root>)))
                           (_%ns269354%_
                            (##structure-ref
                             _%ctx269269%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr269356%_
                            (symbol->string
                             (##structure-ref
                              _%ctx269269%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg269364%_
                            (let ((_%$e269358%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr269356%_ '#\/))))
                              (if _%$e269358%_
                                  (let ((__tmp270544
                                         (substring
                                          _%idstr269356%_
                                          '0
                                          _%$e269358%_)))
                                    (declare (not safe))
                                    (##string->symbol __tmp270544))
                                  '#f)))
                           (_%rt269366%_
                            (let ((__tmp270545
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp270545 _%ctx269269%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path269340%_))
                      (gxc#with-output-to-scheme-file
                       _%path269340%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude269352%_))
                         (if _%pkg269364%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg269364%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns269354%_))
                         (newline)
                         (pretty-print _%code269338%_)
                         (if _%rt269366%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt269366%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi269272%_
                  (lambda (_%part269277%_)
                    (let* ((_%$%part269278269291%_ _%part269277%_)
                           (_%$%E269280269295%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%$%part269278269291%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%$%K269281269307%_
                            (lambda (_%code269298%_
                                     _%n269299%_
                                     _%phi269300%_
                                     _%phi-ctx269301%_)
                              (let ((_%code269305%_
                                     (let ((__tmp270546
                                            (lambda ()
                                              (let ((__tmp270547
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code269298%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp270547
                                                 gx#current-expander-phi
                                                 _%phi269300%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp270546
                                        gx#current-expander-context
                                        _%phi-ctx269301%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx269269%_
                                  _%n269299%_
                                  '".scm")
                                 _%code269305%_
                                 '#t)))))
                      (if (pair? _%$%part269278269291%_)
                          (let ((_%$%hd269282269310%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%part269278269291%_)))
                                (_%$%tl269283269312%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%part269278269291%_))))
                            (let ((_%phi-ctx269315%_ _%$%hd269282269310%_))
                              (if (pair? _%$%tl269283269312%_)
                                  (let ((_%$%hd269284269317%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl269283269312%_)))
                                        (_%$%tl269285269319%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl269283269312%_))))
                                    (let ((_%phi269322%_ _%$%hd269284269317%_))
                                      (if (pair? _%$%tl269285269319%_)
                                          (let ((_%$%hd269286269324%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl269285269319%_)))
                                                (_%$%tl269287269326%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl269285269319%_))))
                                            (let ((_%n269329%_
                                                   _%$%hd269286269324%_))
                                              (if (pair? _%$%tl269287269326%_)
                                                  (let ((_%$%hd269288269331%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl269287269326%_)))
                                                        (_%$%tl269289269333%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl269287269326%_))))
                                                    (let ((_%code269336%_
                                                           _%$%hd269288269331%_))
                                                      (if (null? _%$%tl269289269333%_)
                                                          (_%$%K269281269307%_
                                                           _%code269336%_
                                                           _%n269329%_
                                                           _%phi269322%_
                                                           _%phi-ctx269315%_)
                                                          (_%$%E269280269295%_))))
                                                  (_%$%E269280269295%_))))
                                          (_%$%E269280269295%_))))
                                  (_%$%E269280269295%_))))
                          (_%$%E269280269295%_))))))
          (let ((_g270548_ (gxc#generate-meta-code _%ctx269269%_)))
            (begin
              (let ((_g270549_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g270548_)
                           (##values-length _g270548_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g270549_ 2)))
                    (error "Context expects 2 values" _g270549_)))
              (let ((_%ssi-code269274%_
                     (let () (declare (not safe)) (##values-ref _g270548_ 0)))
                    (_%phi-code269275%_
                     (let () (declare (not safe)) (##values-ref _g270548_ 1))))
                (begin
                  (_%compile-ssi269271%_ _%ssi-code269274%_)
                  (for-each _%compile-phi269272%_ _%phi-code269275%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx269251%_)
        (let* ((_%path269253%_
                (gxc#compile-output-file _%ctx269251%_ '#f '".ssxi.ss"))
               (_%code269255%_
                (let ((__tmp270550
                       (##structure-ref
                        _%ctx269251%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp270550)))
               (_%idstr269257%_
                (symbol->string
                 (##structure-ref
                  _%ctx269251%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg269265%_
                (let ((_%$e269259%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr269257%_ '#\/))))
                  (if _%$e269259%_
                      (let ((__tmp270551
                             (substring _%idstr269257%_ '0 _%$e269259%_)))
                        (declare (not safe))
                        (##string->symbol __tmp270551))
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path269253%_))
          (gxc#with-output-to-scheme-file
           _%path269253%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg269265%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg269265%_))
                 '#!void)
             (newline)
             (pretty-print _%code269255%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx269244%_)
        (let* ((_%state269246%_
                (let ((__obj270417
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj270417 _%ctx269244%_))
                  __obj270417))
               (_%ssi-code269248%_
                (let ((__tmp270552
                       (##structure-ref
                        _%ctx269244%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state269246%_
                   __tmp270552))))
          (values _%ssi-code269248%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state269246%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx269236%_)
        (let* ((_%lifts269238%_ (box '()))
               (__tmp270553
                (lambda ()
                  (let ((__tmp270555
                         (lambda ()
                           (let ((_%code269242%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx269236%_))))
                             (if (null? (unbox _%lifts269238%_))
                                 _%code269242%_
                                 (cons 'begin
                                       (let ((__tmp270557
                                              (reverse (unbox _%lifts269238%_)))
                                             (__tmp270556
                                              (cons _%code269242%_ '())))
                                         (declare (not safe))
                                         (##append
                                          __tmp270557
                                          __tmp270556)))))))
                        (__tmp270554
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp270555
                     gxc#current-compile-marks
                     __tmp270554)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp270553
           gxc#current-compile-lift
           _%lifts269238%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx269232%_)
        (let ((_%modules269234%_ (box '())))
          (let ((__tmp270558
                 (##structure-ref _%ctx269232%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules269234%_ __tmp270558))
          (reverse (unbox _%modules269234%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path269212%_ _%code269213%_ _%phi?269214%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path269212%_))
        (gxc#with-output-to-scheme-file
         _%path269212%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons '(block)
                        (cons '(standard-bindings)
                              (cons '(extended-bindings)
                                    (if _%phi?269214%_
                                        '((inlining-limit 200))
                                        '()))))))
           (pretty-print _%code269213%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it269218%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path269212%_ _%phi?269214%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp270559 (list 'compile-file _%path269212%_)))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it269218%_ __tmp270559))
                  (_%compile-it269218%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path269223%_ _%code269224%_)
        (let ((_%phi?269226%_ '#f))
          (gxc#compile-scm-file__%
           _%path269223%_
           _%code269224%_
           _%phi?269226%_))))
    (define gxc#compile-scm-file
      (lambda _g270560_
        (let ((_g270561_ (let () (declare (not safe)) (##length _g270560_))))
          (cond ((let () (declare (not safe)) (##fx= _g270561_ 2))
                 (apply gxc#compile-scm-file__0 _g270560_))
                ((let () (declare (not safe)) (##fx= _g270561_ 3))
                 (apply gxc#compile-scm-file__% _g270560_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g270560_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?269113%_)
        (let _%lp269115%_ ((_%rest269117%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts269118%_ '()))
          (let* ((_%$%rest269119269139%_ _%rest269117%_)
                 (_%$%else269123269147%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts269118%_)))
                        (reverse _%opts269118%_)))))
            (let ((_%$%K269133269190%_
                   (lambda (_%rest269188%_)
                     (_%lp269115%_ _%rest269188%_ _%opts269118%_)))
                  (_%$%K269128269172%_
                   (lambda (_%rest269170%_)
                     (_%lp269115%_ _%rest269170%_ _%opts269118%_)))
                  (_%$%K269125269154%_
                   (lambda (_%rest269151%_ _%opt269152%_)
                     (_%lp269115%_
                      _%rest269151%_
                      (cons _%opt269152%_ _%opts269118%_)))))
              (if (pair? _%$%rest269119269139%_)
                  (let ((_%$%tl269135269195%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest269119269139%_)))
                        (_%$%hd269134269193%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest269119269139%_))))
                    (if (equal? _%$%hd269134269193%_ '"-cc-options")
                        (if (pair? _%$%tl269135269195%_)
                            (let* ((_%$%tl269137269198%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%tl269135269195%_)))
                                   (_%rest269201%_ _%$%tl269137269198%_))
                              (_%$%K269133269190%_ _%rest269201%_))
                            (let ((_%opt269162%_ _%$%hd269134269193%_)
                                  (_%rest269164%_ _%$%tl269135269195%_))
                              (_%$%K269125269154%_
                               _%rest269164%_
                               _%opt269162%_)))
                        (if (equal? _%$%hd269134269193%_ '"-ld-options")
                            (if (pair? _%$%tl269135269195%_)
                                (let* ((_%$%tl269132269180%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%tl269135269195%_)))
                                       (_%rest269183%_ _%$%tl269132269180%_))
                                  (_%$%K269128269172%_ _%rest269183%_))
                                (let ((_%opt269162%_ _%$%hd269134269193%_)
                                      (_%rest269164%_ _%$%tl269135269195%_))
                                  (_%$%K269125269154%_
                                   _%rest269164%_
                                   _%opt269162%_)))
                            (let ((_%opt269162%_ _%$%hd269134269193%_)
                                  (_%rest269164%_ _%$%tl269135269195%_))
                              (_%$%K269125269154%_
                               _%rest269164%_
                               _%opt269162%_)))))
                  (_%$%else269123269147%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?269207%_ '#f)) (gxc#gsc-link-options__% _%phi?269207%_))))
    (define gxc#gsc-link-options
      (lambda _g270562_
        (let ((_g270563_ (let () (declare (not safe)) (##length _g270562_))))
          (cond ((let () (declare (not safe)) (##fx= _g270563_ 0))
                 (apply gxc#gsc-link-options__0 _g270562_))
                ((let () (declare (not safe)) (##fx= _g270563_ 1))
                 (apply gxc#gsc-link-options__% _g270562_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g270562_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords268963%_ _%$%static?268959268964%_ _%phi?268965%_)
        (let ((_%static?268967%_
               (if (eq? _%$%static?268959268964%_ absent-value)
                   '#f
                   _%$%static?268959268964%_)))
          (if _%phi?268965%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp268969%_ ((_%rest268971%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts268972%_ '()))
                (let* ((_%$%rest268973268999%_ _%rest268971%_)
                       (_%$%else268978269007%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts268972%_)))
                              (reverse! _%opts268972%_)))))
                  (let ((_%$%K268993269070%_
                         (lambda (_%rest269067%_ _%opt269068%_)
                           (if _%static?268967%_
                               (_%lp268969%_
                                _%rest269067%_
                                (cons _%opt269068%_
                                      (cons '"-cc-options" _%opts268972%_)))
                               (_%lp268969%_ _%rest269067%_ _%opts268972%_))))
                        (_%$%K268988269047%_
                         (lambda (_%rest269044%_ _%opt269045%_)
                           (_%lp268969%_
                            _%rest269044%_
                            (cons _%opt269045%_
                                  (cons '"-cc-options" _%opts268972%_)))))
                        (_%$%K268983269027%_
                         (lambda (_%rest269025%_)
                           (_%lp268969%_ _%rest269025%_ _%opts268972%_)))
                        (_%$%K268980269013%_
                         (lambda (_%rest269011%_)
                           (_%lp268969%_ _%rest269011%_ _%opts268972%_))))
                    (if (pair? _%$%rest268973268999%_)
                        (let ((_%$%tl268995269075%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest268973268999%_)))
                              (_%$%hd268994269073%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest268973268999%_))))
                          (if (equal? _%$%hd268994269073%_ '"-cc-options")
                              (if (pair? _%$%tl268995269075%_)
                                  (let ((_%$%tl268997269080%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl268995269075%_)))
                                        (_%$%hd268996269078%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl268995269075%_))))
                                    (if (equal? _%$%hd268996269078%_
                                                '"-Bstatic")
                                        (let ((_%opt269083%_
                                               _%$%hd268996269078%_)
                                              (_%rest269085%_
                                               _%$%tl268997269080%_))
                                          (_%$%K268993269070%_
                                           _%rest269085%_
                                           _%opt269083%_))
                                        (let ((_%opt269060%_
                                               _%$%hd268996269078%_)
                                              (_%rest269062%_
                                               _%$%tl268997269080%_))
                                          (_%$%K268988269047%_
                                           _%rest269062%_
                                           _%opt269060%_))))
                                  (let ((_%rest269019%_ _%$%tl268995269075%_))
                                    (_%$%K268980269013%_ _%rest269019%_)))
                              (if (equal? _%$%hd268994269073%_ '"-ld-options")
                                  (if (pair? _%$%tl268995269075%_)
                                      (let* ((_%$%tl268987269035%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%tl268995269075%_)))
                                             (_%rest269038%_
                                              _%$%tl268987269035%_))
                                        (_%$%K268983269027%_ _%rest269038%_))
                                      (let ((_%rest269019%_
                                             _%$%tl268995269075%_))
                                        (_%$%K268980269013%_ _%rest269019%_)))
                                  (let ((_%rest269019%_ _%$%tl268995269075%_))
                                    (_%$%K268980269013%_ _%rest269019%_)))))
                        (_%$%else268978269007%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords269090%_ _%$%static?268959269091%_)
        (let ((_%phi?269093%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords269090%_
           _%$%static?268959269091%_
           _%phi?269093%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g270564_
        (let ((_g270565_ (let () (declare (not safe)) (##length _g270564_))))
          (cond ((let () (declare (not safe)) (##fx= _g270565_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g270564_))
                ((let () (declare (not safe)) (##fx= _g270565_ 3))
                 (apply gxc#gsc-cc-options__%__% _g270564_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g270564_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords269102%_ . _%args269103%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords269102%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords269102%_
                  'static:
                  absent-value))
               _%args269103%_)))
    (define gxc#gsc-cc-options
      (lambda _%$%args268960269109%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%$%args268960269109%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords268809%_ _%$%static?268805268810%_ _%phi?268811%_)
        (let ((_%static?268813%_
               (if (eq? _%$%static?268805268810%_ absent-value)
                   '#f
                   _%$%static?268805268810%_)))
          (if _%phi?268811%_
              '()
              (let _%lp268815%_ ((_%rest268817%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts268818%_ '()))
                (let* ((_%$%rest268819268845%_ _%rest268817%_)
                       (_%$%else268824268853%_
                        (lambda () (reverse! _%opts268818%_))))
                  (let ((_%$%K268839268916%_
                         (lambda (_%rest268913%_ _%opt268914%_)
                           (if _%static?268813%_
                               (_%lp268815%_
                                _%rest268913%_
                                (cons _%opt268914%_
                                      (cons '"-ld-options" _%opts268818%_)))
                               (_%lp268815%_ _%rest268913%_ _%opts268818%_))))
                        (_%$%K268834268893%_
                         (lambda (_%rest268890%_ _%opt268891%_)
                           (_%lp268815%_
                            _%rest268890%_
                            (cons _%opt268891%_
                                  (cons '"-ld-options" _%opts268818%_)))))
                        (_%$%K268829268873%_
                         (lambda (_%rest268871%_)
                           (_%lp268815%_ _%rest268871%_ _%opts268818%_)))
                        (_%$%K268826268859%_
                         (lambda (_%rest268857%_)
                           (_%lp268815%_ _%rest268857%_ _%opts268818%_))))
                    (if (pair? _%$%rest268819268845%_)
                        (let ((_%$%tl268841268921%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest268819268845%_)))
                              (_%$%hd268840268919%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest268819268845%_))))
                          (if (equal? _%$%hd268840268919%_ '"-ld-options")
                              (if (pair? _%$%tl268841268921%_)
                                  (let ((_%$%tl268843268926%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl268841268921%_)))
                                        (_%$%hd268842268924%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl268841268921%_))))
                                    (if (equal? _%$%hd268842268924%_
                                                '"-static")
                                        (let ((_%opt268929%_
                                               _%$%hd268842268924%_)
                                              (_%rest268931%_
                                               _%$%tl268843268926%_))
                                          (_%$%K268839268916%_
                                           _%rest268931%_
                                           _%opt268929%_))
                                        (let ((_%opt268906%_
                                               _%$%hd268842268924%_)
                                              (_%rest268908%_
                                               _%$%tl268843268926%_))
                                          (_%$%K268834268893%_
                                           _%rest268908%_
                                           _%opt268906%_))))
                                  (let ((_%rest268865%_ _%$%tl268841268921%_))
                                    (_%$%K268826268859%_ _%rest268865%_)))
                              (if (equal? _%$%hd268840268919%_ '"-cc-options")
                                  (if (pair? _%$%tl268841268921%_)
                                      (let* ((_%$%tl268833268881%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%tl268841268921%_)))
                                             (_%rest268884%_
                                              _%$%tl268833268881%_))
                                        (_%$%K268829268873%_ _%rest268884%_))
                                      (let ((_%rest268865%_
                                             _%$%tl268841268921%_))
                                        (_%$%K268826268859%_ _%rest268865%_)))
                                  (let ((_%rest268865%_ _%$%tl268841268921%_))
                                    (_%$%K268826268859%_ _%rest268865%_)))))
                        (_%$%else268824268853%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords268936%_ _%$%static?268805268937%_)
        (let ((_%phi?268939%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords268936%_
           _%$%static?268805268937%_
           _%phi?268939%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g270566_
        (let ((_g270567_ (let () (declare (not safe)) (##length _g270566_))))
          (cond ((let () (declare (not safe)) (##fx= _g270567_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g270566_))
                ((let () (declare (not safe)) (##fx= _g270567_ 3))
                 (apply gxc#gsc-ld-options__%__% _g270566_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g270566_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords268948%_ . _%args268949%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords268948%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords268948%_
                  'static:
                  absent-value))
               _%args268949%_)))
    (define gxc#gsc-ld-options
      (lambda _%$%args268806268955%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%$%args268806268955%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir268800%_)
        (let ((_%user-staticdir268802%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir268800%_
                       '" -I "
                       _%user-staticdir268802%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp268712%_ ((_%rest268714%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts268715%_ '()))
          (let* ((_%$%rest268716268736%_ _%rest268714%_)
                 (_%$%else268720268744%_ (lambda () _%opts268715%_)))
            (let ((_%$%K268730268787%_
                   (lambda (_%rest268785%_)
                     (_%lp268712%_ _%rest268785%_ _%opts268715%_)))
                  (_%$%K268725268765%_
                   (lambda (_%rest268762%_ _%opt268763%_)
                     (_%lp268712%_
                      _%rest268762%_
                      (let ((__tmp270568
                             (let ((__tmp270569
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt268763%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp270569))))
                        (declare (not safe))
                        (##append _%opts268715%_ __tmp270568)))))
                  (_%$%K268722268750%_
                   (lambda (_%rest268748%_)
                     (_%lp268712%_ _%rest268748%_ _%opts268715%_))))
              (if (pair? _%$%rest268716268736%_)
                  (let ((_%$%tl268732268792%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest268716268736%_)))
                        (_%$%hd268731268790%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest268716268736%_))))
                    (if (equal? _%$%hd268731268790%_ '"-cc-options")
                        (if (pair? _%$%tl268732268792%_)
                            (let* ((_%$%tl268734268795%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%tl268732268792%_)))
                                   (_%rest268798%_ _%$%tl268734268795%_))
                              (_%$%K268730268787%_ _%rest268798%_))
                            (let ((_%rest268756%_ _%$%tl268732268792%_))
                              (_%$%K268722268750%_ _%rest268756%_)))
                        (if (equal? _%$%hd268731268790%_ '"-ld-options")
                            (if (pair? _%$%tl268732268792%_)
                                (let ((_%$%tl268729268775%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl268732268792%_)))
                                      (_%$%hd268728268773%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl268732268792%_))))
                                  (let ((_%opt268778%_ _%$%hd268728268773%_)
                                        (_%rest268780%_ _%$%tl268729268775%_))
                                    (_%$%K268725268765%_
                                     _%rest268780%_
                                     _%opt268778%_)))
                                (let ((_%rest268756%_ _%$%tl268732268792%_))
                                  (_%$%K268722268750%_ _%rest268756%_)))
                            (let ((_%rest268756%_ _%$%tl268732268792%_))
                              (_%$%K268722268750%_ _%rest268756%_)))))
                  (_%$%else268720268744%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str268709%_)
        (not (let () (declare (not safe)) (string-empty? _%str268709%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path268702%_ _%phi?268703%_)
        (let ((_%gsc-link-opts268705%_
               (gxc#gsc-link-options__% _%phi?268703%_))
              (_%gsc-cc-opts268706%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?268703%_))
              (_%gsc-ld-opts268707%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?268703%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp270570
                  (let ((__tmp270571
                         (let ((__tmp270572 (cons _%path268702%_ '())))
                           (declare (not safe))
                           (##append _%gsc-link-opts268705%_ __tmp270572))))
                    (declare (not safe))
                    (##append _%gsc-ld-opts268707%_ __tmp270571))))
             (declare (not safe))
             (##append _%gsc-cc-opts268706%_ __tmp270570))))))
    (define gxc#compile-output-file
      (lambda (_%ctx268668%_ _%n268669%_ _%ext268670%_)
        (letrec ((_%module-relative-path268672%_
                  (lambda (_%ctx268700%_)
                    (path-strip-directory
                     (let ((__tmp270573
                            (##structure-ref
                             _%ctx268700%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp270573)))))
                 (_%module-source-directory268673%_
                  (lambda (_%ctx268696%_)
                    (path-directory
                     (let ((_%mpath268698%_
                            (##structure-ref
                             _%ctx268696%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath268698%_)
                           _%mpath268698%_
                           (last _%mpath268698%_))))))
                 (_%section-string268674%_
                  (lambda (_%n268690%_)
                    (if (number? _%n268690%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n268690%_))
                        (if (symbol? _%n268690%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n268690%_))
                            (if (string? _%n268690%_)
                                _%n268690%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n268690%_)))))))
                 (_%file-name268675%_
                  (lambda (_%path268688%_)
                    (if _%n268669%_
                        (string-append
                         _%path268688%_
                         '"~"
                         (_%section-string268674%_ _%n268669%_)
                         _%ext268670%_)
                        (string-append _%path268688%_ _%ext268670%_))))
                 (_%file-path268676%_
                  (lambda ()
                    (let ((_%$e268682%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e268682%_
                          (path-expand
                           (_%file-name268675%_
                            (let ((__tmp270574
                                   (##structure-ref
                                    _%ctx268668%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#module-id->path-string __tmp270574)))
                           _%$e268682%_)
                          (path-expand
                           (_%file-name268675%_
                            (_%module-relative-path268672%_ _%ctx268668%_))
                           (_%module-source-directory268673%_
                            _%ctx268668%_)))))))
          (let ((_%path268678%_ (_%file-path268676%_)))
            (let ((__tmp270575
                   (lambda ()
                     (let ((__tmp270576 (path-directory _%path268678%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp270576)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp270575))
            _%path268678%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx268649%_)
        (letrec ((_%file-name268651%_
                  (lambda (_%id268666%_)
                    (let ((__tmp270577 (gxc#static-module-name _%id268666%_)))
                      (declare (not safe))
                      (##string-append __tmp270577 '".scm"))))
                 (_%file-path268652%_
                  (lambda ()
                    (let* ((_%file268658%_
                            (_%file-name268651%_
                             (##structure-ref
                              _%ctx268649%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e268660%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e268660%_
                          (path-expand
                           _%file268658%_
                           (path-expand '"static" _%$e268660%_))
                          (path-expand _%file268658%_ '"static"))))))
          (let ((_%path268654%_ (_%file-path268652%_)))
            (let ((__tmp270578
                   (lambda ()
                     (let ((__tmp270579 (path-directory _%path268654%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp270579)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp270578))
            _%path268654%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx268642%_ _%opts268643%_)
        (let ((_%$e268645%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts268643%_))))
          (if _%$e268645%_
              _%$e268645%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx268642%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr268632%_)
        (if (string? _%idstr268632%_)
            (let* ((_%str268635%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr268632%_)))
                   (_%strs268637%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str268635%_ '#\/))))
              (declare (not safe))
              (string-join _%strs268637%_ '"__"))
            (if (symbol? _%idstr268632%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr268632%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr268632%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp270580
               (let ((__tmp270581 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp270581 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp270580))))
    (define gxc#invoke__%
      (lambda (_%@@keywords268598%_
               _%$%stdout-redirection268594268599%_
               _%$%stderr-redirection268595268600%_
               _%program268601%_
               _%args268602%_)
        (let* ((_%stdout-redirection268604%_
                (if (eq? _%$%stdout-redirection268594268599%_ absent-value)
                    '#f
                    _%$%stdout-redirection268594268599%_))
               (_%stderr-redirection268606%_
                (if (eq? _%$%stderr-redirection268595268600%_ absent-value)
                    '#f
                    _%$%stderr-redirection268595268600%_)))
          (let ((__tmp270582 (cons _%program268601%_ _%args268602%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp270582))
          (let* ((_%proc268608%_
                  (open-process
                   (cons 'path:
                         (cons _%program268601%_
                               (cons 'arguments:
                                     (cons _%args268602%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection268604%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection268606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output268613%_
                  (if (or _%stdout-redirection268604%_
                          _%stderr-redirection268606%_)
                      (read-line _%proc268608%_ '#f)
                      '#f))
                 (_%status268616%_ (process-status _%proc268608%_)))
            (let () (declare (not safe)) (##close-port _%proc268608%_))
            (if (zero? _%status268616%_)
                '#!void
                (begin
                  (display _%output268613%_)
                  (let ((__tmp270583 (cons _%program268601%_ _%args268602%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp270583
                     _%status268616%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords268621%_ . _%args268622%_)
        (apply gxc#invoke__%
               _%@@keywords268621%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords268621%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords268621%_
                  'stderr-redirection:
                  absent-value))
               _%args268622%_)))
    (define gxc#invoke
      (lambda _%$%args268596268628%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%$%args268596268628%_)))))
