(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1768863420)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp214510 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp214510))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp214511 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp214511))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path214367%_ _%fun214368%_)
        (with-output-to-file
         (cons 'path: (cons _%path214367%_ gxc#scheme-file-settings))
         _%fun214368%_)))
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
      (lambda (_%gerbil-libdir214362%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir214362%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path214360%_)
        (let ((__tmp214512 (object->string _%path214360%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp214512 '")"))))
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
      (lambda (_%dir214358%_) (delete-file-or-directory _%dir214358%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath214302%_ _%opts214303%_)
        (if (string? _%srcpath214302%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath214302%_)))
        (let* ((_%outdir214305%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts214303%_)))
               (_%invoke-gsc?214307%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts214303%_)))
               (_%target214312%_
                (let ((_%$e214309%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts214303%_))))
                  (if _%$e214309%_ _%$e214309%_ 'C)))
               (_%gsc-options214317%_
                (append (cons '"-target"
                              (cons (symbol->string _%target214312%_) '()))
                        (let ((_%$e214314%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts214303%_))))
                          (if _%$e214314%_ _%$e214314%_ '()))))
               (_%keep-scm?214319%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts214303%_)))
               (_%verbosity214321%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts214303%_)))
               (_%optimize214323%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts214303%_)))
               (_%debug214325%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts214303%_)))
               (_%gen-ssxi214327%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts214303%_)))
               (_%parallel?214329%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts214303%_))))
          (if _%outdir214305%_
              (let ((__tmp214513
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir214305%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp214513))
              '#!void)
          (if _%optimize214323%_
              (let ((__tmp214514
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp214514))
              '#!void)
          (let ((__tmp214515
                 (lambda ()
                   (let ((__tmp214516
                          (lambda ()
                            (let ((__tmp214517
                                   (lambda ()
                                     (let ((__tmp214518
                                            (lambda ()
                                              (let ((__tmp214519
                                                     (lambda ()
                                                       (let ((__tmp214520
                                                              (lambda ()
                                                                (let ((__tmp214521
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp214522
                                        (lambda ()
                                          (let ((__tmp214523
                                                 (lambda ()
                                                   (let ((__tmp214525
                                                          (lambda ()
                                                            (let ((__tmp214527
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp214528
                                    (lambda ()
                                      (let ((__tmp214529
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"compile "
                                                  _%srcpath214302%_))
                                               (gxc#compile-top-module
                                                (let ((__tmp214530
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#import-module__0
                                                            _%srcpath214302%_)))))
                                                  (declare (not safe))
                                                  (__with-lock
                                                   gxc#+driver-mutex+
                                                   __tmp214530))))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp214529
                                         gx#current-expander-compiling?
                                         '#t)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp214528
                                gxc#current-compile-parallel
                                _%parallel?214329%_))))
                          (__tmp214526
                           (cons (cons 'compile-module
                                       (cons _%srcpath214302%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp214527
                       gxc#current-compile-context
                       __tmp214526))))
                 (__tmp214524 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp214525
                                                      gxc#current-compile-timestamp
                                                      __tmp214524)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp214523
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi214327%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp214522
                                    gxc#current-compile-debug
                                    _%debug214325%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp214521
                           gxc#current-compile-optimize
                           _%optimize214323%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp214520
                  gxc#current-compile-verbose
                  _%verbosity214321%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp214519
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?214319%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp214518
                                        gxc#current-compile-gsc-options
                                        _%gsc-options214317%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp214517
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?214307%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp214516
                      gx#current-compilation-target
                      _%target214312%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp214515
             gxc#current-compile-output-dir
             _%outdir214305%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath214351%_)
        (let ((_%opts214353%_ '()))
          (gxc#compile-module__% _%srcpath214351%_ _%opts214353%_))))
    (define gxc#compile-module
      (lambda _g214531_
        (let ((_g214532_ (let () (declare (not safe)) (##length _g214531_))))
          (cond ((let () (declare (not safe)) (##fx= _g214532_ 1))
                 (apply gxc#compile-module__0 _g214531_))
                ((let () (declare (not safe)) (##fx= _g214532_ 2))
                 (apply gxc#compile-module__% _g214531_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g214531_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath214252%_ _%opts214253%_)
        (if (string? _%srcpath214252%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath214252%_)))
        (let* ((_%outdir214255%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts214253%_)))
               (_%invoke-gsc?214257%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts214253%_)))
               (_%target214262%_
                (let ((_%$e214259%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts214253%_))))
                  (if _%$e214259%_ _%$e214259%_ 'C)))
               (_%gsc-options214267%_
                (append (cons '"-target"
                              (cons (symbol->string _%target214262%_) '()))
                        (let ((_%$e214264%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts214253%_))))
                          (if _%$e214264%_ _%$e214264%_ '()))))
               (_%keep-scm?214269%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts214253%_)))
               (_%verbosity214271%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts214253%_)))
               (_%debug214273%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts214253%_)))
               (_%parallel?214275%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts214253%_))))
          (if _%outdir214255%_
              (let ((__tmp214533
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir214255%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp214533))
              '#!void)
          (let ((__tmp214534
                 (lambda ()
                   (let ((__tmp214535
                          (lambda ()
                            (let ((__tmp214536
                                   (lambda ()
                                     (let ((__tmp214537
                                            (lambda ()
                                              (let ((__tmp214538
                                                     (lambda ()
                                                       (let ((__tmp214539
                                                              (lambda ()
                                                                (let ((__tmp214540
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp214542
                                        (lambda ()
                                          (let ((__tmp214544
                                                 (lambda ()
                                                   (let ((__tmp214545
                                                          (lambda ()
                                                            (let ((__tmp214546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"compile exe " _%srcpath214252%_))
                             (gxc#compile-executable-module
                              (let ((__tmp214547
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#import-module__0
                                          _%srcpath214252%_)))))
                                (declare (not safe))
                                (__with-lock gxc#+driver-mutex+ __tmp214547))
                              _%opts214253%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp214546
                       gx#current-expander-compiling?
                       '#t)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp214545
                                                      gxc#current-compile-parallel
                                                      _%parallel?214275%_))))
                                                (__tmp214543
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath214252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp214544
                                             gxc#current-compile-context
                                             __tmp214543))))
                                       (__tmp214541 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp214542
                                    gxc#current-compile-timestamp
                                    __tmp214541)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp214540
                           gxc#current-compile-debug
                           _%debug214273%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp214539
                  gxc#current-compile-verbose
                  _%verbosity214271%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp214538
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?214269%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp214537
                                        gxc#current-compile-gsc-options
                                        _%gsc-options214267%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp214536
                               gx#current-compilation-target
                               _%target214262%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp214535
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?214257%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp214534
             gxc#current-compile-output-dir
             _%outdir214255%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath214294%_)
        (let ((_%opts214296%_ '()))
          (gxc#compile-exe__% _%srcpath214294%_ _%opts214296%_))))
    (define gxc#compile-exe
      (lambda _g214548_
        (let ((_g214549_ (let () (declare (not safe)) (##length _g214548_))))
          (cond ((let () (declare (not safe)) (##fx= _g214549_ 1))
                 (apply gxc#compile-exe__0 _g214548_))
                ((let () (declare (not safe)) (##fx= _g214549_ 2))
                 (apply gxc#compile-exe__% _g214548_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g214548_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx214248%_ _%opts214249%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts214249%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx214248%_
             _%opts214249%_)
            (gxc#compile-executable-module/separate
             _%ctx214248%_
             _%opts214249%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx214048%_ _%opts214049%_)
        (letrec ((_%generate-stub214051%_
                  (lambda (_%builtin-modules214244%_)
                    (let ((_%mod-main214246%_
                           (gxc#find-runtime-symbol _%ctx214048%_ 'main)))
                      (let ((__tmp214550
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules214244%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp214550))
                      (let ((__tmp214551
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main214246%_
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
                        (##write __tmp214551))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts214052%_
                  (lambda (_%gerbil-libdir214242%_)
                    (let ((__tmp214552
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir214242%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp214552 read))))
                 (_%replace-extension214053%_
                  (lambda (_%path214239%_ _%ext214240%_)
                    (string-append
                     (path-strip-extension _%path214239%_)
                     _%ext214240%_)))
                 (_%replace-extension-with-c214054%_
                  (lambda (_%path214237%_)
                    (_%replace-extension214053%_ _%path214237%_ '".c")))
                 (_%replace-extension-with-object214055%_
                  (lambda (_%path214235%_)
                    (_%replace-extension214053%_
                     _%path214235%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?214056%_
                  (lambda (_%ctx214233%_)
                    (if (_%exclude-module?214058%_ _%ctx214233%_)
                        '#f
                        (not (_%libgerbil-module?214057%_ _%ctx214233%_)))))
                 (_%libgerbil-module?214057%_
                  (lambda (_%ctx214226%_)
                    (let ((_%id-str214228%_
                           (symbol->string
                            (##structure-ref
                             _%ctx214226%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?214058%_ _%id-str214228%_)
                          '#f
                          (let ((_%$e214230%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str214228%_))))
                            (if _%$e214230%_
                                _%$e214230%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str214228%_))))))))
                 (_%exclude-module?214058%_
                  (lambda (_%ctx-or-str214222%_)
                    (let ((_%str214224%_
                           (if (string? _%ctx-or-str214222%_)
                               _%ctx-or-str214222%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str214222%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str214224%_))))
                 (_%not-file-empty?214059%_
                  (lambda (_%path214220%_)
                    (not (gxc#file-empty? _%path214220%_))))
                 (_%fold-libgerbil-runtime-scm214060%_
                  (lambda (_%gerbil-staticdir214213%_ _%libgerbil-scm214214%_)
                    (let ((_%gerbil-runtime-scm214218%_
                           (let ((__tmp214553
                                  (lambda (_%rtm214216%_)
                                    (path-expand
                                     (let ((__tmp214554
                                            (let ((__tmp214555
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm214216%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp214555
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp214554 '".scm"))
                                     _%gerbil-staticdir214213%_))))
                             (declare (not safe))
                             (##map __tmp214553 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates214061%_
                       (append _%gerbil-runtime-scm214218%_
                               _%libgerbil-scm214214%_)))))
                 (_%remove-duplicates214061%_
                  (lambda (_%strlst214173%_)
                    (let _%loop214175%_ ((_%rest214177%_ _%strlst214173%_)
                                         (_%result214178%_ '()))
                      (let* ((_%rest214179214187%_ _%rest214177%_)
                             (_%else214181214195%_
                              (lambda () (reverse! _%result214178%_)))
                             (_%K214183214201%_
                              (lambda (_%rest214198%_ _%path214199%_)
                                (if (member _%path214199%_ _%result214178%_)
                                    (_%loop214175%_
                                     _%rest214198%_
                                     _%result214178%_)
                                    (_%loop214175%_
                                     _%rest214198%_
                                     (cons _%path214199%_
                                           _%result214178%_))))))
                        (if (pair? _%rest214179214187%_)
                            (let ((_%hd214184214204%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest214179214187%_)))
                                  (_%tl214185214206%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest214179214187%_))))
                              (let* ((_%path214209%_ _%hd214184214204%_)
                                     (_%rest214211%_ _%tl214185214206%_))
                                (_%K214183214201%_
                                 _%rest214211%_
                                 _%path214209%_)))
                            (_%else214181214195%_))))))
                 (_%compile-stub214062%_
                  (lambda (_%output-scm214069%_ _%output-bin214070%_)
                    (let* ((_%gerbil-home214072%_
                            (let ((__tmp214556
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp214556)))
                           (_%gerbil-libdir214074%_
                            (path-expand '"lib" _%gerbil-home214072%_))
                           (_%gerbil-staticdir214076%_
                            (path-expand '"static" _%gerbil-libdir214074%_))
                           (_%deps214078%_
                            (gxc#find-runtime-module-deps _%ctx214048%_))
                           (_%libgerbil-deps214080%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?214057%_
                               _%deps214078%_)))
                           (_%libgerbil-scm214082%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps214080%_)))
                           (_%libgerbil-scm214084%_
                            (_%fold-libgerbil-runtime-scm214060%_
                             _%gerbil-staticdir214076%_
                             _%libgerbil-scm214082%_))
                           (_%libgerbil-c214086%_
                            (map _%replace-extension-with-c214054%_
                                 _%libgerbil-scm214084%_))
                           (_%libgerbil-o214088%_
                            (map _%replace-extension-with-object214055%_
                                 _%libgerbil-scm214084%_))
                           (_%src-deps214090%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?214056%_
                               _%deps214078%_)))
                           (_%src-deps-scm214092%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps214090%_)))
                           (_%src-deps-scm214094%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?214059%_
                               _%src-deps-scm214092%_)))
                           (_%src-deps-scm214096%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm214094%_)))
                           (_%src-deps-c214098%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c214054%_
                                     _%src-deps-scm214096%_)))
                           (_%src-deps-o214100%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object214055%_
                                     _%src-deps-scm214096%_)))
                           (_%src-bin-scm214102%_
                            (gxc#find-static-module-file _%ctx214048%_))
                           (_%src-bin-scm214104%_
                            (path-expand _%src-bin-scm214102%_))
                           (_%src-bin-c214106%_
                            (_%replace-extension-with-c214054%_
                             _%src-bin-scm214104%_))
                           (_%src-bin-o214108%_
                            (_%replace-extension-with-object214055%_
                             _%src-bin-scm214104%_))
                           (_%output-bin214110%_
                            (path-expand _%output-bin214070%_))
                           (_%output-scm214112%_
                            (path-expand _%output-scm214069%_))
                           (_%output-c214114%_
                            (_%replace-extension-with-c214054%_
                             _%output-scm214112%_))
                           (_%output-o214116%_
                            (_%replace-extension-with-object214055%_
                             _%output-scm214112%_))
                           (_%output_-c214118%_
                            (_%replace-extension214053%_
                             _%output-scm214112%_
                             '"_.c"))
                           (_%output_-o214120%_
                            (_%replace-extension214053%_
                             _%output-scm214112%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts214122%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts214124%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts214126%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir214076%_))
                           (_%output-ld-opts214128%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts214130%_
                            (_%get-libgerbil-ld-opts214052%_
                             _%gerbil-libdir214074%_))
                           (_%rpath214132%_
                            (gxc#gerbil-rpath _%gerbil-libdir214074%_))
                           (_%builtin-modules214136%_
                            (_%remove-duplicates214061%_
                             (let ((__tmp214557
                                    (let ((__tmp214559
                                           (lambda (_%mod214134%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod214134%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp214558
                                           (cons _%ctx214048%_
                                                 _%deps214078%_)))
                                      (declare (not safe))
                                      (##map __tmp214559 __tmp214558))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp214557)))))
                      (letrec ((_%compile-obj214139%_
                                (lambda (_%scm-path214146%_ _%c-path214147%_)
                                  (let* ((_%o-path214149%_
                                          (_%replace-extension214053%_
                                           _%c-path214147%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock214151%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path214149%_
                                             '".lock")))
                                         (_%locked214153%_ '#f)
                                         (_%unlock214156%_
                                          (lambda ()
                                            (close-port _%locked214153%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock214151%_)))))
                                    (let _%retry214159%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock214151%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry214159%_))
                                          (begin
                                            (set! _%locked214153%_
                                                  (let ((__tmp214560
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock214151%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp214560)))
                                            (if _%locked214153%_
                                                '#!void
                                                (_%retry214159%_)))))
                                    (let ((__tmp214562
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path214149%_)))
                                                     (not _%scm-path214146%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path214146%_
                                                        _%o-path214149%_)))
                                                 (let ((_%gsc-cc-opts214170%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp214563
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp214564 (cons _%c-path214147%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp214564
                            _%gsc-static-opts214126%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp214563 _%gsc-cc-opts214170%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp214561
                                           (lambda () (_%unlock214156%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp214562
                                       __tmp214561))))))
                        (let ((__tmp214565
                               (lambda ()
                                 (let ((__tmp214566
                                        (path-directory _%output-bin214110%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp214566)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp214565))
                        (gxc#with-output-to-scheme-file
                         _%output-scm214112%_
                         (lambda ()
                           (_%generate-stub214051%_
                            _%builtin-modules214136%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it214144%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp214567
                                                   (let ((__tmp214568
                                                          (let ((__tmp214569
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm214104%_
                               (cons _%output-scm214112%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp214569 _%src-deps-scm214096%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp214568
                                                      _%libgerbil-c214086%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp214567
                                               _%gsc-link-opts214122%_))))
                                     (for-each
                                      _%compile-obj214139%_
                                      (let ((__tmp214570
                                             (cons _%src-bin-scm214104%_
                                                   (cons _%output-scm214112%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp214570
                                         _%src-deps-scm214096%_))
                                      (let ((__tmp214571
                                             (cons _%src-bin-c214106%_
                                                   (cons _%output-c214114%_
                                                         (cons _%output_-c214118%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp214571
                                         _%src-deps-c214098%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin214110%_
                                                        (let ((__tmp214572
                                                               (cons _%src-bin-o214108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o214116%_
                                   (cons _%output_-o214120%_
                                         (let ((__tmp214573
                                                (let ((__tmp214574
                                                       (let ((__tmp214576
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir214074%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts214130%_))))
                     (__tmp214575
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath214132%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp214576 __tmp214575))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp214574
                                                   _%output-ld-opts214128%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp214573
                                            _%libgerbil-o214088%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp214572 _%src-deps-o214100%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp214577
                                            (cons _%output-c214114%_
                                                  (cons _%output_-c214118%_
                                                        (cons _%output-o214116%_
                                                              (cons _%output_-o214120%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp214577)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it214144%_))
                                  (_%compile-it214144%_)))
                            '#!void))))))
          (let* ((_%output-bin214064%_
                  (gxc#compile-exe-output-file _%ctx214048%_ _%opts214049%_))
                 (_%output-scm214066%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin214064%_ '"__exe.scm"))))
            (_%compile-stub214062%_
             _%output-scm214066%_
             _%output-bin214064%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx213870%_ _%opts213871%_)
        (letrec ((_%reset-declare213873%_
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
                 (_%generate-stub213874%_
                  (lambda (_%deps214039%_)
                    (let ((_%mod-main214041%_
                           (gxc#find-runtime-symbol _%ctx213870%_ 'main))
                          (_%reset-decl214042%_ (_%reset-declare213873%_))
                          (_%user-decl214043%_ (_%user-declare213875%_)))
                      (for-each
                       (lambda (_%dep214045%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl214042%_))
                         (newline)
                         (if _%user-decl214043%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl214043%_))
                               (newline))
                             '#!void)
                         (let ((__tmp214578
                                (cons 'include (cons _%dep214045%_ '()))))
                           (declare (not safe))
                           (##write __tmp214578))
                         (newline))
                       _%deps214039%_)
                      (let ((__tmp214579
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main214041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp214579))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare213875%_
                  (lambda ()
                    (let* ((_%gsc-opts213944%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts213871%_)))
                           (_%gsc-prelude213946%_
                            (if _%gsc-opts213944%_
                                (member '"-prelude" _%gsc-opts213944%_)
                                '#f))
                           (_%gsc-prelude213948%_
                            (if _%gsc-prelude213946%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude213946%_)))
                                '#f)))
                      (let _%lp213951%_ ((_%rest213953%_
                                          (cons _%gsc-prelude213948%_ '()))
                                         (_%user-decls213954%_ '()))
                        (let* ((_%rest213955213963%_ _%rest213953%_)
                               (_%else213957213971%_
                                (lambda ()
                                  (if (null? _%user-decls213954%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls213954%_)))))
                               (_%K213959214027%_
                                (lambda (_%rest213974%_ _%expr213975%_)
                                  (let* ((_%expr213976213988%_ _%expr213975%_)
                                         (_%else213979213996%_
                                          (lambda ()
                                            (_%lp213951%_
                                             _%rest213974%_
                                             _%user-decls213954%_))))
                                    (let ((_%K213984214017%_
                                           (lambda (_%decls214015%_)
                                             (_%lp213951%_
                                              _%rest213974%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls213954%_
                                                 _%decls214015%_)))))
                                          (_%K213981214002%_
                                           (lambda (_%exprs214000%_)
                                             (_%lp213951%_
                                              (append _%exprs214000%_
                                                      _%rest213974%_)
                                              _%user-decls213954%_))))
                                      (if (pair? _%expr213976213988%_)
                                          (let ((_%tl213986214022%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr213976213988%_)))
                                                (_%hd213985214020%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr213976213988%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd213985214020%_
                                                         'declare))
                                                (let ((_%decls214025%_
                                                       _%tl213986214022%_))
                                                  (_%K213984214017%_
                                                   _%decls214025%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd213985214020%_
                                                             'begin))
                                                    (let ((_%exprs214010%_
                                                           _%tl213986214022%_))
                                                      (_%K213981214002%_
                                                       _%exprs214010%_))
                                                    (_%else213979213996%_))))
                                          (_%else213979213996%_)))))))
                          (if (pair? _%rest213955213963%_)
                              (let ((_%hd213960214030%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest213955213963%_)))
                                    (_%tl213961214032%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest213955213963%_))))
                                (let* ((_%expr214035%_ _%hd213960214030%_)
                                       (_%rest214037%_ _%tl213961214032%_))
                                  (_%K213959214027%_
                                   _%rest214037%_
                                   _%expr214035%_)))
                              (_%else213957213971%_)))))))
                 (_%compile-stub213876%_
                  (lambda (_%output-scm213883%_ _%output-bin213884%_)
                    (let* ((_%gerbil-home213886%_
                            (let ((__tmp214580
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp214580)))
                           (_%gerbil-libdir213888%_
                            (path-expand '"lib" _%gerbil-home213886%_))
                           (_%runtime213890%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp213892%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home213886%_))
                           (_%include-gambit-sharp213894%_
                            (gxc#include-source _%gambit-sharp213892%_))
                           (_%bin-scm213896%_
                            (gxc#find-static-module-file _%ctx213870%_))
                           (_%deps213898%_
                            (gxc#find-runtime-module-deps _%ctx213870%_))
                           (_%deps213900%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps213898%_)))
                           (_%deps213905%_
                            (let ((__tmp214581
                                   (lambda (_%$obj213902%_)
                                     (not (gxc#file-empty? _%$obj213902%_)))))
                              (declare (not safe))
                              (##filter __tmp214581 _%deps213900%_)))
                           (_%deps213909%_
                            (let ((__tmp214582
                                   (lambda (_%f213907%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f213907%_
                                             _%runtime213890%_))))))
                              (declare (not safe))
                              (##filter __tmp214582 _%deps213905%_)))
                           (_%output-base213911%_
                            (let ((__tmp214583
                                   (path-strip-extension
                                    _%output-scm213883%_)))
                              (declare (not safe))
                              (##string-append __tmp214583)))
                           (_%output-c213913%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base213911%_ '".c")))
                           (_%output-o213915%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base213911%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_213917%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base213911%_ '"_.c")))
                           (_%output-o_213919%_
                            (let ((__tmp214584
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base213911%_
                               __tmp214584)))
                           (_%gsc-link-opts213921%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts213923%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts213925%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir213888%_)))
                           (_%output-ld-opts213927%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros213929%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp213894%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp213894%_
                                            '()))))
                           (_%gsc-link-opts213931%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts213921%_
                               _%gsc-gx-macros213929%_)))
                           (_%rpath213933%_
                            (gxc#gerbil-rpath _%gerbil-libdir213888%_))
                           (_%default-ld-options213935%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp214585
                             (lambda ()
                               (let ((__tmp214586
                                      (path-directory _%output-bin213884%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp214586)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp214585))
                      (gxc#with-output-to-scheme-file
                       _%output-scm213883%_
                       (lambda ()
                         (_%generate-stub213874%_
                          (let ((__tmp214587
                                 (let ((__tmp214588
                                        (cons _%bin-scm213896%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp214588
                                    _%deps213909%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp214587 _%runtime213890%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it213941%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_213917%_
                                                      (let ((__tmp214589
                                                             (cons _%output-scm213883%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp214589 _%gsc-link-opts213931%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp214590
                                                 (let ((__tmp214591
                                                        (cons _%output-c213913%_
                                                              (cons _%output-c_213917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp214591
                                                    _%gsc-static-opts213925%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp214590
                                             _%gsc-cc-opts213923%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin213884%_
                                                      (cons _%output-o213915%_
                                                            (cons _%output-o_213919%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp214592
                                 (let ((__tmp214594
                                        (cons '"-L"
                                              (cons _%gerbil-libdir213888%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options213935%_))))
                                       (__tmp214593
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath213933%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp214594 __tmp214593))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp214592
                             _%output-ld-opts213927%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it213941%_))
                                (_%compile-it213941%_)))
                          '#!void)))))
          (let* ((_%output-bin213878%_
                  (gxc#compile-exe-output-file _%ctx213870%_ _%opts213871%_))
                 (_%output-scm213880%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin213878%_ '"__exe.scm"))))
            (_%compile-stub213876%_
             _%output-scm213880%_
             _%output-bin213878%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx213819%_ _%id213820%_)
        (let ((_%$e213866%_
               (let ((__tmp214596
                      (lambda (_%e213821213823%_)
                        (let* ((_%g213825213835%_ _%e213821213823%_)
                               (_%else213827213843%_ (lambda () '#f))
                               (_%K213829213847%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g213825213835%_
                                 'gx#module-export::t))
                              (let* ((_%e213830213850%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g213825213835%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e213831213853%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g213825213835%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e213832213856%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g213825213835%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e213832213856%_ '0))
                                    (let ((_%e213833213859%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g213825213835%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g213861213863%_)
                                             (eq? _%g213861213863%_
                                                  _%id213820%_))
                                           _%e213833213859%_)
                                          (_%K213829213847%_)
                                          (_%else213827213843%_)))
                                    (_%else213827213843%_)))
                              (_%else213827213843%_)))))
                     (__tmp214595
                      (##structure-ref
                       _%ctx213819%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp214596 __tmp214595))))
          (if _%$e213866%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e213866%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx213810%_ _%id213811%_)
        (let ((_%$e213813%_
               (gxc#find-export-binding _%ctx213810%_ _%id213811%_)))
          (if _%$e213813%_
              ((lambda (_%bind213816%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind213816%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id213811%_)))
                 (##structure-ref _%bind213816%_ '1 gx#binding::t '#f))
               _%$e213813%_)
              (let ((__tmp214597
                     (##structure-ref
                      _%ctx213810%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp214597
                 _%id213811%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx213676%_)
        (letrec* ((_%ht213678%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template213679%_
                   (lambda (_%in213755%_ _%phi213756%_)
                     (let ((_%iphi213758%_
                            (fx+ _%phi213756%_
                                 (##direct-structure-ref
                                  _%in213755%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports213759%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in213755%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp213761%_ ((_%rest213763%_ _%imports213759%_)
                                          (_%r213764%_ '()))
                         (let* ((_%rest213765213773%_ _%rest213763%_)
                                (_%else213767213781%_ (lambda () _%r213764%_))
                                (_%K213769213798%_
                                 (lambda (_%rest213784%_ _%in213785%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in213785%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi213758%_))
                                           (_%lp213761%_
                                            _%rest213784%_
                                            (cons _%in213785%_ _%r213764%_))
                                           (_%lp213761%_
                                            _%rest213784%_
                                            _%r213764%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in213785%_
                                              'gx#module-import::t))
                                           (let ((_%iphi213789%_
                                                  (fx+ _%phi213756%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in213785%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi213789%_))
                                                 (_%lp213761%_
                                                  _%rest213784%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in213785%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r213764%_))
                                                 (_%lp213761%_
                                                  _%rest213784%_
                                                  _%r213764%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in213785%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi213792%_
                                                      (fx+ _%iphi213758%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in213785%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi213792%_))
                                                     (_%lp213761%_
                                                      _%rest213784%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in213785%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r213764%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi213792%_))
                                                         (_%lp213761%_
                                                          _%rest213784%_
                                                          (let ((__tmp214598
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template213679%_
                          _%in213785%_
                          _%iphi213758%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r213764%_ __tmp214598)))
                 (_%lp213761%_ _%rest213784%_ _%r213764%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp213761%_
                                                _%rest213784%_
                                                _%r213764%_)))))))
                           (if (pair? _%rest213765213773%_)
                               (let ((_%hd213770213801%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest213765213773%_)))
                                     (_%tl213771213803%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest213765213773%_))))
                                 (let* ((_%in213806%_ _%hd213770213801%_)
                                        (_%rest213808%_ _%tl213771213803%_))
                                   (_%K213769213798%_
                                    _%rest213808%_
                                    _%in213806%_)))
                               (_%else213767213781%_)))))))
                  (_%find-deps213680%_
                   (lambda (_%rest213688%_ _%deps213689%_)
                     (let* ((_%rest213690213698%_ _%rest213688%_)
                            (_%else213692213706%_ (lambda () _%deps213689%_))
                            (_%K213694213743%_
                             (lambda (_%rest213709%_ _%hd213710%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd213710%_
                                      'gx#module-context::t))
                                   (let ((_%id213713%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd213710%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports213714%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd213710%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht213678%_
                                            _%id213713%_))
                                         (_%find-deps213680%_
                                          _%rest213709%_
                                          _%deps213689%_)
                                         (let ((_%$e213717%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd213710%_))))
                                           (if _%$e213717%_
                                               ((lambda (_%pre213720%_)
                                                  (let ((_%xdeps213722%_
                                                         (_%find-deps213680%_
                                                          (cons _%pre213720%_
                                                                _%imports213714%_)
                                                          _%deps213689%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht213678%_
                                                       _%id213713%_
                                                       _%hd213710%_))
                                                    (_%find-deps213680%_
                                                     _%rest213709%_
                                                     (cons _%hd213710%_
                                                           _%xdeps213722%_))))
                                                _%$e213717%_)
                                               (let ((_%xdeps213725%_
                                                      (_%find-deps213680%_
                                                       _%imports213714%_
                                                       _%deps213689%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht213678%_
                                                    _%id213713%_
                                                    _%hd213710%_))
                                                 (_%find-deps213680%_
                                                  _%rest213709%_
                                                  (cons _%hd213710%_
                                                        _%xdeps213725%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd213710%_
                                          'gx#prelude-context::t))
                                       (let ((_%id213728%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd213710%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht213678%_
                                                _%id213728%_))
                                             (_%find-deps213680%_
                                              _%rest213709%_
                                              _%deps213689%_)
                                             (let ((_%xdeps213732%_
                                                    (_%find-deps213680%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd213710%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps213689%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht213678%_
                                                      _%id213728%_))
                                                   (_%find-deps213680%_
                                                    _%rest213709%_
                                                    _%xdeps213732%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht213678%_
                                                        _%id213728%_
                                                        _%hd213710%_))
                                                     (_%find-deps213680%_
                                                      _%rest213709%_
                                                      (cons _%hd213710%_
                                                            _%xdeps213732%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd213710%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd213710%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps213680%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd213710%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest213709%_)
                                                _%deps213689%_)
                                               (_%find-deps213680%_
                                                _%rest213709%_
                                                _%deps213689%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd213710%_
                                                  'gx#module-export::t))
                                               (_%find-deps213680%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd213710%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest213709%_)
                                                _%deps213689%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd213710%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd213710%_ '2 '#f '#f)))
               (_%find-deps213680%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd213710%_ '1 '#f '#f))
                      _%rest213709%_)
                _%deps213689%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd213710%_ '2 '#f '#f)))
                   (let ((_%xdeps213739%_
                          (_%import-set-template213679%_ _%hd213710%_ '0)))
                     (_%find-deps213680%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest213709%_ _%xdeps213739%_))
                      _%deps213689%_))
                   (_%find-deps213680%_ _%rest213709%_ _%deps213689%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd213710%_))))))))))
                       (if (pair? _%rest213690213698%_)
                           (let ((_%hd213695213746%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest213690213698%_)))
                                 (_%tl213696213748%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest213690213698%_))))
                             (let* ((_%hd213751%_ _%hd213695213746%_)
                                    (_%rest213753%_ _%tl213696213748%_))
                               (_%K213694213743%_
                                _%rest213753%_
                                _%hd213751%_)))
                           (_%else213692213706%_))))))
          (let ((__tmp214599
                 (filter gx#expander-context-id
                         (_%find-deps213680%_
                          (let ((_%$e213682%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx213676%_))))
                            (if _%$e213682%_
                                ((lambda (_%pre213685%_)
                                   (cons _%pre213685%_
                                         (##structure-ref
                                          _%ctx213676%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e213682%_)
                                (##structure-ref
                                 _%ctx213676%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp214599)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx213606%_)
        (let* ((_%context-id213608%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx213606%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx213606%_ '1 '#f '#f))
                    (string->symbol _%ctx213606%_)))
               (_%scm213610%_
                (let ((__tmp214600
                       (gxc#static-module-name _%context-id213608%_)))
                  (declare (not safe))
                  (##string-append __tmp214600 '".scm")))
               (_%dirs213612%_ (let () (declare (not safe)) (load-path)))
               (_%dirs213618%_
                (let ((_%user-libpath213614%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath213614%_
                      (let ((_%user-libpath213616%_
                             (path-expand '"lib" _%user-libpath213614%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath213616%_ _%dirs213612%_))
                            _%dirs213612%_
                            (cons _%user-libpath213616%_ _%dirs213612%_)))
                      _%dirs213612%_)))
               (_%dirs213628%_
                (let ((_%$e213620%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e213620%_
                      ((lambda (_%g213622213624%_)
                         (cons _%g213622213624%_ _%dirs213618%_))
                       _%$e213620%_)
                      _%dirs213618%_)))
               (_%dirs213634%_
                (let ((__tmp214601
                       (lambda (_%g213629213631%_)
                         (path-expand '"static" _%g213629213631%_))))
                  (declare (not safe))
                  (##map __tmp214601 _%dirs213628%_))))
          (let _%lp213637%_ ((_%rest213639%_ _%dirs213634%_))
            (let* ((_%rest213640213648%_ _%rest213639%_)
                   (_%else213642213656%_
                    (lambda ()
                      (let ((__tmp214602
                             (##structure-ref
                              _%ctx213606%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp214602
                         _%scm213610%_))))
                   (_%K213644213664%_
                    (lambda (_%rest213659%_ _%dir213660%_)
                      (let ((_%path213662%_
                             (path-expand _%scm213610%_ _%dir213660%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path213662%_))
                            _%path213662%_
                            (_%lp213637%_ _%rest213659%_))))))
              (if (pair? _%rest213640213648%_)
                  (let ((_%hd213645213667%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest213640213648%_)))
                        (_%tl213646213669%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest213640213648%_))))
                    (let* ((_%dir213672%_ _%hd213645213667%_)
                           (_%rest213674%_ _%tl213646213669%_))
                      (_%K213644213664%_ _%rest213674%_ _%dir213672%_)))
                  (_%else213642213656%_)))))))
    (define gxc#file-empty?
      (lambda (_%path213604%_)
        (zero? (let ((__tmp214603 (file-info _%path213604%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp214603)))))
    (define gxc#compile-top-module
      (lambda (_%ctx213595%_)
        (let ((__tmp214604
               (lambda ()
                 (let ((__tmp214605
                        (lambda ()
                          (let ((__tmp214606
                                 (lambda ()
                                   (let ((__tmp214608
                                          (lambda ()
                                            (let ((__tmp214610
                                                   (lambda ()
                                                     (let ((__tmp214612
                                                            (lambda ()
                                                              (let ((__tmp214613
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx213595%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp214613))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp214614
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx213595%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp214614))
                          '#!void)
                      (gxc#collect-bindings _%ctx213595%_)
                      (gxc#compile-runtime-code _%ctx213595%_)
                      (gxc#compile-meta-code _%ctx213595%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx213595%_)
                          '#!void)))
                   (__tmp214611
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
                __tmp214612
                gxc#current-compile-runtime-names
                __tmp214611))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp214609
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp214610
                                               gxc#current-compile-runtime-sections
                                               __tmp214609))))
                                         (__tmp214607
                                          (let ((__obj214508
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj214508))
                                            __obj214508)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp214608
                                      gxc#current-compile-symbol-table
                                      __tmp214607)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp214606
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp214605
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp214604
           gx#current-expander-context
           _%ctx213595%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx213593%_)
        (let ((__tmp214615
               (##structure-ref _%ctx213593%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp214615))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx213537%_)
        (letrec ((_%compile1213539%_
                  (lambda (_%ctx213582%_)
                    (let* ((_%code213584%_
                            (##structure-ref
                             _%ctx213582%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm213588%_
                            (let ((_%idstr213586%_
                                   (let ((__tmp214616
                                          (##structure-ref
                                           _%ctx213582%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp214616))))
                              (declare (not safe))
                              (##string-append _%idstr213586%_ '"~0")))
                           (_%rtc?213590%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code213584%_))))
                      (if _%rtc?213590%_
                          (let ((__tmp214617
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp214617
                             _%ctx213582%_
                             _%rtm213588%_))
                          '#!void)
                      (_%generate-runtime-code213541%_
                       _%ctx213582%_
                       _%code213584%_
                       (if _%rtc?213590%_ _%rtm213588%_ '#f)))))
                 (_%context-timestamp213540%_
                  (lambda (_%ctx213580%_)
                    (let ((__tmp214618
                           (let ((__tmp214619
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx213580%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp214619 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp214618))))
                 (_%generate-runtime-code213541%_
                  (lambda (_%ctx213548%_ _%code213549%_ _%rtm213550%_)
                    (let* ((_%runtime-code?213552%_ (if _%rtm213550%_ '#t '#f))
                           (_%lifts213554%_ (box '()))
                           (_%runtime-code213561%_
                            (if _%runtime-code?213552%_
                                (let ((__tmp214620
                                       (lambda ()
                                         (let ((__tmp214621
                                                (lambda ()
                                                  (let ((__tmp214622
                                                         (lambda ()
                                                           (let ((__tmp214624
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ((__tmp214626
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code213549%_))))
                                  (__tmp214625
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp214626
                               gxc#current-compile-identifiers
                               __tmp214625))))
                         (__tmp214623
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp214624
                      gxc#current-compile-marks
                      __tmp214623)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp214622
                                                     gxc#current-compile-lift
                                                     _%lifts213554%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp214621
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp214620
                                   gx#current-expander-context
                                   _%ctx213548%_))
                                '#f))
                           (_%runtime-code213563%_
                            (if _%runtime-code?213552%_
                                (if (null? (unbox _%lifts213554%_))
                                    _%runtime-code213561%_
                                    (cons 'begin
                                          (let ((__tmp214628
                                                 (cons _%runtime-code213561%_
                                                       '()))
                                                (__tmp214627
                                                 (reverse (unbox _%lifts213554%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp214628
                                             __tmp214627))))
                                '#f))
                           (_%runtime-code213565%_
                            (if _%runtime-code?213552%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp213540%_
                                                         _%ctx213548%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code213563%_ '())))
                                '#f))
                           (_%loader-code213568%_
                            (let ((__tmp214629
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code213549%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp214629
                               gx#current-expander-context
                               _%ctx213548%_)))
                           (_%loader-code213570%_
                            (cons 'begin
                                  (cons _%loader-code213568%_
                                        (cons (if _%runtime-code?213552%_
                                                  (cons 'load-module
                                                        (cons _%rtm213550%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0213572%_
                            (gxc#compile-output-file _%ctx213548%_ '0 '".scm"))
                           (_%scmrt213574%_
                            (gxc#compile-output-file
                             _%ctx213548%_
                             '#f
                             '".scm"))
                           (_%scms213576%_
                            (gxc#compile-static-output-file _%ctx213548%_)))
                      (if _%runtime-code?213552%_
                          (gxc#compile-scm-file__0
                           _%scm0213572%_
                           _%runtime-code213565%_)
                          '#!void)
                      (let ((__tmp214630
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt213574%_
                                _%loader-code213570%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp214630
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms213576%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms213576%_))
                          '#!void)
                      (if _%runtime-code?213552%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0213572%_ _%scms213576%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms213576%_ void)))))))
          (let* ((_%all-modules213543%_
                  (cons _%ctx213537%_ (gxc#lift-nested-modules _%ctx213537%_)))
                 (__tmp214631
                  (lambda (_%ctx213545%_)
                    (let ((__tmp214632
                           (lambda () (_%compile1213539%_ _%ctx213545%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp214632
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp214631 _%all-modules213543%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx213436%_)
        (letrec ((_%compile-ssi213438%_
                  (lambda (_%code213505%_)
                    (let* ((_%path213507%_
                            (gxc#compile-output-file
                             _%ctx213436%_
                             '#f
                             '".ssi"))
                           (_%prelude213519%_
                            (let* ((_%super213509%_
                                    (##structure-ref
                                     _%ctx213436%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e213511%_
                                    (##structure-ref
                                     _%super213509%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e213511%_
                                  ((lambda (_%g213513213515%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g213513213515%_)))
                                   _%$e213511%_)
                                  ':<root>)))
                           (_%ns213521%_
                            (##structure-ref
                             _%ctx213436%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr213523%_
                            (symbol->string
                             (##structure-ref
                              _%ctx213436%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg213531%_
                            (let ((_%$e213525%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr213523%_ '#\/))))
                              (if _%$e213525%_
                                  ((lambda (_%x213528%_)
                                     (let ((__tmp214633
                                            (substring
                                             _%idstr213523%_
                                             '0
                                             _%x213528%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp214633)))
                                   _%$e213525%_)
                                  '#f)))
                           (_%rt213533%_
                            (let ((__tmp214634
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp214634 _%ctx213436%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path213507%_))
                      (gxc#with-output-to-scheme-file
                       _%path213507%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude213519%_))
                         (if _%pkg213531%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg213531%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns213521%_))
                         (newline)
                         (pretty-print _%code213505%_)
                         (if _%rt213533%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt213533%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi213439%_
                  (lambda (_%part213444%_)
                    (let* ((_%part213445213458%_ _%part213444%_)
                           (_%E213447213462%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part213445213458%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K213448213474%_
                            (lambda (_%code213465%_
                                     _%n213466%_
                                     _%phi213467%_
                                     _%phi-ctx213468%_)
                              (let ((_%code213472%_
                                     (let ((__tmp214635
                                            (lambda ()
                                              (let ((__tmp214636
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code213465%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp214636
                                                 gx#current-expander-phi
                                                 _%phi213467%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp214635
                                        gx#current-expander-context
                                        _%phi-ctx213468%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx213436%_
                                  _%n213466%_
                                  '".scm")
                                 _%code213472%_
                                 '#t)))))
                      (if (pair? _%part213445213458%_)
                          (let ((_%hd213449213477%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part213445213458%_)))
                                (_%tl213450213479%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part213445213458%_))))
                            (let ((_%phi-ctx213482%_ _%hd213449213477%_))
                              (if (pair? _%tl213450213479%_)
                                  (let ((_%hd213451213484%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl213450213479%_)))
                                        (_%tl213452213486%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl213450213479%_))))
                                    (let ((_%phi213489%_ _%hd213451213484%_))
                                      (if (pair? _%tl213452213486%_)
                                          (let ((_%hd213453213491%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl213452213486%_)))
                                                (_%tl213454213493%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl213452213486%_))))
                                            (let ((_%n213496%_
                                                   _%hd213453213491%_))
                                              (if (pair? _%tl213454213493%_)
                                                  (let ((_%hd213455213498%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl213454213493%_)))
                                                        (_%tl213456213500%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl213454213493%_))))
                                                    (let ((_%code213503%_
                                                           _%hd213455213498%_))
                                                      (if (null? _%tl213456213500%_)
                                                          (_%K213448213474%_
                                                           _%code213503%_
                                                           _%n213496%_
                                                           _%phi213489%_
                                                           _%phi-ctx213482%_)
                                                          (_%E213447213462%_))))
                                                  (_%E213447213462%_))))
                                          (_%E213447213462%_))))
                                  (_%E213447213462%_))))
                          (_%E213447213462%_))))))
          (let ((_g214637_ (gxc#generate-meta-code _%ctx213436%_)))
            (begin
              (let ((_g214638_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g214637_)
                           (##values-length _g214637_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g214638_ 2)))
                    (error "Context expects 2 values" _g214638_)))
              (let ((_%ssi-code213441%_
                     (let () (declare (not safe)) (##values-ref _g214637_ 0)))
                    (_%phi-code213442%_
                     (let () (declare (not safe)) (##values-ref _g214637_ 1))))
                (begin
                  (_%compile-ssi213438%_ _%ssi-code213441%_)
                  (for-each _%compile-phi213439%_ _%phi-code213442%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx213418%_)
        (let* ((_%path213420%_
                (gxc#compile-output-file _%ctx213418%_ '#f '".ssxi.ss"))
               (_%code213422%_
                (let ((__tmp214639
                       (##structure-ref
                        _%ctx213418%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp214639)))
               (_%idstr213424%_
                (symbol->string
                 (##structure-ref
                  _%ctx213418%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg213432%_
                (let ((_%$e213426%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr213424%_ '#\/))))
                  (if _%$e213426%_
                      ((lambda (_%x213429%_)
                         (let ((__tmp214640
                                (substring _%idstr213424%_ '0 _%x213429%_)))
                           (declare (not safe))
                           (##string->symbol __tmp214640)))
                       _%$e213426%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path213420%_))
          (gxc#with-output-to-scheme-file
           _%path213420%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg213432%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg213432%_))
                 '#!void)
             (newline)
             (pretty-print _%code213422%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx213411%_)
        (let* ((_%state213413%_
                (let ((__obj214509
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj214509 _%ctx213411%_))
                  __obj214509))
               (_%ssi-code213415%_
                (let ((__tmp214641
                       (##structure-ref
                        _%ctx213411%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state213413%_
                   __tmp214641))))
          (values _%ssi-code213415%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state213413%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx213402%_)
        (let* ((_%lifts213404%_ (box '()))
               (__tmp214642
                (lambda ()
                  (let ((__tmp214644
                         (lambda ()
                           (let ((__tmp214646
                                  (lambda ()
                                    (let ((_%code213409%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-generate-runtime-phi
                                              _%stx213402%_))))
                                      (if (null? (unbox _%lifts213404%_))
                                          _%code213409%_
                                          (cons 'begin
                                                (let ((__tmp214648
                                                       (cons _%code213409%_
                                                             '()))
                                                      (__tmp214647
                                                       (reverse (unbox _%lifts213404%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp214648
                                                   __tmp214647)))))))
                                 (__tmp214645
                                  (let ()
                                    (declare (not safe))
                                    (gxc#make-bound-identifier-table))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp214646
                              gxc#current-compile-identifiers
                              __tmp214645))))
                        (__tmp214643
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp214644
                     gxc#current-compile-marks
                     __tmp214643)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp214642
           gxc#current-compile-lift
           _%lifts213404%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx213398%_)
        (let ((_%modules213400%_ (box '())))
          (let ((__tmp214649
                 (##structure-ref _%ctx213398%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules213400%_ __tmp214649))
          (reverse (unbox _%modules213400%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path213378%_ _%code213379%_ _%phi?213380%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path213378%_))
        (gxc#with-output-to-scheme-file
         _%path213378%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp214650
                                           (if _%phi?213380%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp214650)))))))
           (pretty-print _%code213379%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it213384%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path213378%_ _%phi?213380%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp214651
                         (cons 'compile-file (cons _%path213378%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it213384%_ __tmp214651))
                  (_%compile-it213384%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path213389%_ _%code213390%_)
        (let ((_%phi?213392%_ '#f))
          (gxc#compile-scm-file__%
           _%path213389%_
           _%code213390%_
           _%phi?213392%_))))
    (define gxc#compile-scm-file
      (lambda _g214652_
        (let ((_g214653_ (let () (declare (not safe)) (##length _g214652_))))
          (cond ((let () (declare (not safe)) (##fx= _g214653_ 2))
                 (apply gxc#compile-scm-file__0 _g214652_))
                ((let () (declare (not safe)) (##fx= _g214653_ 3))
                 (apply gxc#compile-scm-file__% _g214652_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g214652_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?213279%_)
        (let _%lp213281%_ ((_%rest213283%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts213284%_ '()))
          (let* ((_%rest213285213305%_ _%rest213283%_)
                 (_%else213289213313%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts213284%_)))
                        (reverse _%opts213284%_)))))
            (let ((_%K213299213356%_
                   (lambda (_%rest213354%_)
                     (_%lp213281%_ _%rest213354%_ _%opts213284%_)))
                  (_%K213294213338%_
                   (lambda (_%rest213336%_)
                     (_%lp213281%_ _%rest213336%_ _%opts213284%_)))
                  (_%K213291213320%_
                   (lambda (_%rest213317%_ _%opt213318%_)
                     (_%lp213281%_
                      _%rest213317%_
                      (cons _%opt213318%_ _%opts213284%_)))))
              (if (pair? _%rest213285213305%_)
                  (let ((_%tl213301213361%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest213285213305%_)))
                        (_%hd213300213359%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest213285213305%_))))
                    (if (equal? _%hd213300213359%_ '"-cc-options")
                        (if (pair? _%tl213301213361%_)
                            (let* ((_%tl213303213364%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl213301213361%_)))
                                   (_%rest213367%_ _%tl213303213364%_))
                              (_%K213299213356%_ _%rest213367%_))
                            (let ((_%opt213328%_ _%hd213300213359%_)
                                  (_%rest213330%_ _%tl213301213361%_))
                              (_%K213291213320%_
                               _%rest213330%_
                               _%opt213328%_)))
                        (if (equal? _%hd213300213359%_ '"-ld-options")
                            (if (pair? _%tl213301213361%_)
                                (let* ((_%tl213298213346%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl213301213361%_)))
                                       (_%rest213349%_ _%tl213298213346%_))
                                  (_%K213294213338%_ _%rest213349%_))
                                (let ((_%opt213328%_ _%hd213300213359%_)
                                      (_%rest213330%_ _%tl213301213361%_))
                                  (_%K213291213320%_
                                   _%rest213330%_
                                   _%opt213328%_)))
                            (let ((_%opt213328%_ _%hd213300213359%_)
                                  (_%rest213330%_ _%tl213301213361%_))
                              (_%K213291213320%_
                               _%rest213330%_
                               _%opt213328%_)))))
                  (_%else213289213313%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?213373%_ '#f)) (gxc#gsc-link-options__% _%phi?213373%_))))
    (define gxc#gsc-link-options
      (lambda _g214654_
        (let ((_g214655_ (let () (declare (not safe)) (##length _g214654_))))
          (cond ((let () (declare (not safe)) (##fx= _g214655_ 0))
                 (apply gxc#gsc-link-options__0 _g214654_))
                ((let () (declare (not safe)) (##fx= _g214655_ 1))
                 (apply gxc#gsc-link-options__% _g214654_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g214654_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords213128%_ _%static?213124213129%_ _%phi?213131%_)
        (let ((_%static?213133%_
               (if (eq? _%static?213124213129%_ absent-value)
                   '#f
                   _%static?213124213129%_)))
          (if _%phi?213131%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp213135%_ ((_%rest213137%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts213138%_ '()))
                (let* ((_%rest213139213165%_ _%rest213137%_)
                       (_%else213144213173%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts213138%_)))
                              (reverse! _%opts213138%_)))))
                  (let ((_%K213159213236%_
                         (lambda (_%rest213233%_ _%opt213234%_)
                           (if _%static?213133%_
                               (_%lp213135%_
                                _%rest213233%_
                                (cons _%opt213234%_
                                      (cons '"-cc-options" _%opts213138%_)))
                               (_%lp213135%_ _%rest213233%_ _%opts213138%_))))
                        (_%K213154213213%_
                         (lambda (_%rest213210%_ _%opt213211%_)
                           (_%lp213135%_
                            _%rest213210%_
                            (cons _%opt213211%_
                                  (cons '"-cc-options" _%opts213138%_)))))
                        (_%K213149213193%_
                         (lambda (_%rest213191%_)
                           (_%lp213135%_ _%rest213191%_ _%opts213138%_)))
                        (_%K213146213179%_
                         (lambda (_%rest213177%_)
                           (_%lp213135%_ _%rest213177%_ _%opts213138%_))))
                    (if (pair? _%rest213139213165%_)
                        (let ((_%tl213161213241%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest213139213165%_)))
                              (_%hd213160213239%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest213139213165%_))))
                          (if (equal? _%hd213160213239%_ '"-cc-options")
                              (if (pair? _%tl213161213241%_)
                                  (let ((_%tl213163213246%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl213161213241%_)))
                                        (_%hd213162213244%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl213161213241%_))))
                                    (if (equal? _%hd213162213244%_ '"-Bstatic")
                                        (let ((_%opt213249%_
                                               _%hd213162213244%_)
                                              (_%rest213251%_
                                               _%tl213163213246%_))
                                          (_%K213159213236%_
                                           _%rest213251%_
                                           _%opt213249%_))
                                        (let ((_%opt213226%_
                                               _%hd213162213244%_)
                                              (_%rest213228%_
                                               _%tl213163213246%_))
                                          (_%K213154213213%_
                                           _%rest213228%_
                                           _%opt213226%_))))
                                  (let ((_%rest213185%_ _%tl213161213241%_))
                                    (_%K213146213179%_ _%rest213185%_)))
                              (if (equal? _%hd213160213239%_ '"-ld-options")
                                  (if (pair? _%tl213161213241%_)
                                      (let* ((_%tl213153213201%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl213161213241%_)))
                                             (_%rest213204%_
                                              _%tl213153213201%_))
                                        (_%K213149213193%_ _%rest213204%_))
                                      (let ((_%rest213185%_
                                             _%tl213161213241%_))
                                        (_%K213146213179%_ _%rest213185%_)))
                                  (let ((_%rest213185%_ _%tl213161213241%_))
                                    (_%K213146213179%_ _%rest213185%_)))))
                        (_%else213144213173%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords213256%_ _%static?213124213257%_)
        (let ((_%phi?213259%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords213256%_
           _%static?213124213257%_
           _%phi?213259%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g214656_
        (let ((_g214657_ (let () (declare (not safe)) (##length _g214656_))))
          (cond ((let () (declare (not safe)) (##fx= _g214657_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g214656_))
                ((let () (declare (not safe)) (##fx= _g214657_ 3))
                 (apply gxc#gsc-cc-options__%__% _g214656_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g214656_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords213268%_ . _%args213269%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords213268%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213268%_
                  'static:
                  absent-value))
               _%args213269%_)))
    (define gxc#gsc-cc-options
      (lambda _%args213125213275%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args213125213275%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords212973%_ _%static?212969212974%_ _%phi?212976%_)
        (let ((_%static?212978%_
               (if (eq? _%static?212969212974%_ absent-value)
                   '#f
                   _%static?212969212974%_)))
          (if _%phi?212976%_
              '()
              (let _%lp212980%_ ((_%rest212982%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts212983%_ '()))
                (let* ((_%rest212984213010%_ _%rest212982%_)
                       (_%else212989213018%_
                        (lambda () (reverse! _%opts212983%_))))
                  (let ((_%K213004213081%_
                         (lambda (_%rest213078%_ _%opt213079%_)
                           (if _%static?212978%_
                               (_%lp212980%_
                                _%rest213078%_
                                (cons _%opt213079%_
                                      (cons '"-ld-options" _%opts212983%_)))
                               (_%lp212980%_ _%rest213078%_ _%opts212983%_))))
                        (_%K212999213058%_
                         (lambda (_%rest213055%_ _%opt213056%_)
                           (_%lp212980%_
                            _%rest213055%_
                            (cons _%opt213056%_
                                  (cons '"-ld-options" _%opts212983%_)))))
                        (_%K212994213038%_
                         (lambda (_%rest213036%_)
                           (_%lp212980%_ _%rest213036%_ _%opts212983%_)))
                        (_%K212991213024%_
                         (lambda (_%rest213022%_)
                           (_%lp212980%_ _%rest213022%_ _%opts212983%_))))
                    (if (pair? _%rest212984213010%_)
                        (let ((_%tl213006213086%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest212984213010%_)))
                              (_%hd213005213084%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest212984213010%_))))
                          (if (equal? _%hd213005213084%_ '"-ld-options")
                              (if (pair? _%tl213006213086%_)
                                  (let ((_%tl213008213091%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl213006213086%_)))
                                        (_%hd213007213089%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl213006213086%_))))
                                    (if (equal? _%hd213007213089%_ '"-static")
                                        (let ((_%opt213094%_
                                               _%hd213007213089%_)
                                              (_%rest213096%_
                                               _%tl213008213091%_))
                                          (_%K213004213081%_
                                           _%rest213096%_
                                           _%opt213094%_))
                                        (let ((_%opt213071%_
                                               _%hd213007213089%_)
                                              (_%rest213073%_
                                               _%tl213008213091%_))
                                          (_%K212999213058%_
                                           _%rest213073%_
                                           _%opt213071%_))))
                                  (let ((_%rest213030%_ _%tl213006213086%_))
                                    (_%K212991213024%_ _%rest213030%_)))
                              (if (equal? _%hd213005213084%_ '"-cc-options")
                                  (if (pair? _%tl213006213086%_)
                                      (let* ((_%tl212998213046%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl213006213086%_)))
                                             (_%rest213049%_
                                              _%tl212998213046%_))
                                        (_%K212994213038%_ _%rest213049%_))
                                      (let ((_%rest213030%_
                                             _%tl213006213086%_))
                                        (_%K212991213024%_ _%rest213030%_)))
                                  (let ((_%rest213030%_ _%tl213006213086%_))
                                    (_%K212991213024%_ _%rest213030%_)))))
                        (_%else212989213018%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords213101%_ _%static?212969213102%_)
        (let ((_%phi?213104%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords213101%_
           _%static?212969213102%_
           _%phi?213104%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g214658_
        (let ((_g214659_ (let () (declare (not safe)) (##length _g214658_))))
          (cond ((let () (declare (not safe)) (##fx= _g214659_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g214658_))
                ((let () (declare (not safe)) (##fx= _g214659_ 3))
                 (apply gxc#gsc-ld-options__%__% _g214658_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g214658_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords213113%_ . _%args213114%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords213113%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213113%_
                  'static:
                  absent-value))
               _%args213114%_)))
    (define gxc#gsc-ld-options
      (lambda _%args212970213120%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args212970213120%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir212964%_)
        (let ((_%user-staticdir212966%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir212964%_
                       '" -I "
                       _%user-staticdir212966%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp212876%_ ((_%rest212878%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts212879%_ '()))
          (let* ((_%rest212880212900%_ _%rest212878%_)
                 (_%else212884212908%_ (lambda () _%opts212879%_)))
            (let ((_%K212894212951%_
                   (lambda (_%rest212949%_)
                     (_%lp212876%_ _%rest212949%_ _%opts212879%_)))
                  (_%K212889212929%_
                   (lambda (_%rest212926%_ _%opt212927%_)
                     (_%lp212876%_
                      _%rest212926%_
                      (let ((__tmp214660
                             (let ((__tmp214661
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt212927%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp214661))))
                        (declare (not safe))
                        (##append _%opts212879%_ __tmp214660)))))
                  (_%K212886212914%_
                   (lambda (_%rest212912%_)
                     (_%lp212876%_ _%rest212912%_ _%opts212879%_))))
              (if (pair? _%rest212880212900%_)
                  (let ((_%tl212896212956%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest212880212900%_)))
                        (_%hd212895212954%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest212880212900%_))))
                    (if (equal? _%hd212895212954%_ '"-cc-options")
                        (if (pair? _%tl212896212956%_)
                            (let* ((_%tl212898212959%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl212896212956%_)))
                                   (_%rest212962%_ _%tl212898212959%_))
                              (_%K212894212951%_ _%rest212962%_))
                            (let ((_%rest212920%_ _%tl212896212956%_))
                              (_%K212886212914%_ _%rest212920%_)))
                        (if (equal? _%hd212895212954%_ '"-ld-options")
                            (if (pair? _%tl212896212956%_)
                                (let ((_%tl212893212939%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl212896212956%_)))
                                      (_%hd212892212937%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl212896212956%_))))
                                  (let ((_%opt212942%_ _%hd212892212937%_)
                                        (_%rest212944%_ _%tl212893212939%_))
                                    (_%K212889212929%_
                                     _%rest212944%_
                                     _%opt212942%_)))
                                (let ((_%rest212920%_ _%tl212896212956%_))
                                  (_%K212886212914%_ _%rest212920%_)))
                            (let ((_%rest212920%_ _%tl212896212956%_))
                              (_%K212886212914%_ _%rest212920%_)))))
                  (_%else212884212908%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str212873%_)
        (not (let () (declare (not safe)) (string-empty? _%str212873%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path212866%_ _%phi?212867%_)
        (let ((_%gsc-link-opts212869%_
               (gxc#gsc-link-options__% _%phi?212867%_))
              (_%gsc-cc-opts212870%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?212867%_))
              (_%gsc-ld-opts212871%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?212867%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp214662
                  (let ((__tmp214663
                         (let ((__tmp214664 (cons _%path212866%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp214664
                            _%gsc-link-opts212869%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp214663 _%gsc-ld-opts212871%_))))
             (declare (not safe))
             (__foldr1 cons __tmp214662 _%gsc-cc-opts212870%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx212832%_ _%n212833%_ _%ext212834%_)
        (letrec ((_%module-relative-path212836%_
                  (lambda (_%ctx212864%_)
                    (path-strip-directory
                     (let ((__tmp214665
                            (##structure-ref
                             _%ctx212864%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp214665)))))
                 (_%module-source-directory212837%_
                  (lambda (_%ctx212860%_)
                    (path-directory
                     (let ((_%mpath212862%_
                            (##structure-ref
                             _%ctx212860%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath212862%_)
                           _%mpath212862%_
                           (last _%mpath212862%_))))))
                 (_%section-string212838%_
                  (lambda (_%n212854%_)
                    (if (number? _%n212854%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n212854%_))
                        (if (symbol? _%n212854%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n212854%_))
                            (if (string? _%n212854%_)
                                _%n212854%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n212854%_)))))))
                 (_%file-name212839%_
                  (lambda (_%path212852%_)
                    (if _%n212833%_
                        (string-append
                         _%path212852%_
                         '"~"
                         (_%section-string212838%_ _%n212833%_)
                         _%ext212834%_)
                        (string-append _%path212852%_ _%ext212834%_))))
                 (_%file-path212840%_
                  (lambda ()
                    (let ((_%$e212846%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e212846%_
                          ((lambda (_%outdir212849%_)
                             (path-expand
                              (_%file-name212839%_
                               (let ((__tmp214666
                                      (##structure-ref
                                       _%ctx212832%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp214666)))
                              _%outdir212849%_))
                           _%$e212846%_)
                          (path-expand
                           (_%file-name212839%_
                            (_%module-relative-path212836%_ _%ctx212832%_))
                           (_%module-source-directory212837%_
                            _%ctx212832%_)))))))
          (let ((_%path212842%_ (_%file-path212840%_)))
            (let ((__tmp214667
                   (lambda ()
                     (let ((__tmp214668 (path-directory _%path212842%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp214668)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp214667))
            _%path212842%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx212813%_)
        (letrec ((_%file-name212815%_
                  (lambda (_%id212830%_)
                    (let ((__tmp214669 (gxc#static-module-name _%id212830%_)))
                      (declare (not safe))
                      (##string-append __tmp214669 '".scm"))))
                 (_%file-path212816%_
                  (lambda ()
                    (let* ((_%file212822%_
                            (_%file-name212815%_
                             (##structure-ref
                              _%ctx212813%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e212824%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e212824%_
                          ((lambda (_%outdir212827%_)
                             (path-expand
                              _%file212822%_
                              (path-expand '"static" _%outdir212827%_)))
                           _%$e212824%_)
                          (path-expand _%file212822%_ '"static"))))))
          (let ((_%path212818%_ (_%file-path212816%_)))
            (let ((__tmp214670
                   (lambda ()
                     (let ((__tmp214671 (path-directory _%path212818%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp214671)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp214670))
            _%path212818%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx212806%_ _%opts212807%_)
        (let ((_%$e212809%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts212807%_))))
          (if _%$e212809%_
              _%$e212809%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx212806%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr212796%_)
        (if (string? _%idstr212796%_)
            (let* ((_%str212799%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr212796%_)))
                   (_%strs212801%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str212799%_ '#\/))))
              (declare (not safe))
              (string-join _%strs212801%_ '"__"))
            (if (symbol? _%idstr212796%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr212796%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr212796%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp214672
               (let ((__tmp214673 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp214673 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp214672))))
    (define gxc#invoke__%
      (lambda (_%@@keywords212760%_
               _%stdout-redirection212756212761%_
               _%stderr-redirection212757212763%_
               _%program212765%_
               _%args212766%_)
        (let* ((_%stdout-redirection212768%_
                (if (eq? _%stdout-redirection212756212761%_ absent-value)
                    '#f
                    _%stdout-redirection212756212761%_))
               (_%stderr-redirection212770%_
                (if (eq? _%stderr-redirection212757212763%_ absent-value)
                    '#f
                    _%stderr-redirection212757212763%_)))
          (let ((__tmp214674 (cons _%program212765%_ _%args212766%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp214674))
          (let* ((_%proc212772%_
                  (open-process
                   (cons 'path:
                         (cons _%program212765%_
                               (cons 'arguments:
                                     (cons _%args212766%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection212768%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection212770%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output212777%_
                  (if (or _%stdout-redirection212768%_
                          _%stderr-redirection212770%_)
                      (read-line _%proc212772%_ '#f)
                      '#f))
                 (_%status212780%_ (process-status _%proc212772%_)))
            (let () (declare (not safe)) (##close-port _%proc212772%_))
            (if (zero? _%status212780%_)
                '#!void
                (begin
                  (display _%output212777%_)
                  (let ((__tmp214675 (cons _%program212765%_ _%args212766%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp214675
                     _%status212780%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords212785%_ . _%args212786%_)
        (apply gxc#invoke__%
               _%@@keywords212785%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords212785%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords212785%_
                  'stderr-redirection:
                  absent-value))
               _%args212786%_)))
    (define gxc#invoke
      (lambda _%args212758212792%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args212758212792%_)))))
