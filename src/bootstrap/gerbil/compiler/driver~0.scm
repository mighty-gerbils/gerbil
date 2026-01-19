(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1768865831)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp214552 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp214552))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp214553 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp214553))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path214409%_ _%fun214410%_)
        (with-output-to-file
         (cons 'path: (cons _%path214409%_ gxc#scheme-file-settings))
         _%fun214410%_)))
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
      (lambda (_%gerbil-libdir214404%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir214404%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path214402%_)
        (let ((__tmp214554 (object->string _%path214402%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp214554 '")"))))
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
      (lambda (_%dir214400%_) (delete-file-or-directory _%dir214400%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath214344%_ _%opts214345%_)
        (if (string? _%srcpath214344%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath214344%_)))
        (let* ((_%outdir214347%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts214345%_)))
               (_%invoke-gsc?214349%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts214345%_)))
               (_%target214354%_
                (let ((_%$e214351%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts214345%_))))
                  (if _%$e214351%_ _%$e214351%_ 'C)))
               (_%gsc-options214359%_
                (append (cons '"-target"
                              (cons (symbol->string _%target214354%_) '()))
                        (let ((_%$e214356%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts214345%_))))
                          (if _%$e214356%_ _%$e214356%_ '()))))
               (_%keep-scm?214361%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts214345%_)))
               (_%verbosity214363%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts214345%_)))
               (_%optimize214365%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts214345%_)))
               (_%debug214367%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts214345%_)))
               (_%gen-ssxi214369%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts214345%_)))
               (_%parallel?214371%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts214345%_))))
          (if _%outdir214347%_
              (let ((__tmp214555
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir214347%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp214555))
              '#!void)
          (if _%optimize214365%_
              (let ((__tmp214556
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp214556))
              '#!void)
          (let ((__tmp214557
                 (lambda ()
                   (let ((__tmp214558
                          (lambda ()
                            (let ((__tmp214559
                                   (lambda ()
                                     (let ((__tmp214560
                                            (lambda ()
                                              (let ((__tmp214561
                                                     (lambda ()
                                                       (let ((__tmp214562
                                                              (lambda ()
                                                                (let ((__tmp214563
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp214564
                                        (lambda ()
                                          (let ((__tmp214565
                                                 (lambda ()
                                                   (let ((__tmp214567
                                                          (lambda ()
                                                            (let ((__tmp214569
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp214570
                                    (lambda ()
                                      (let ((__tmp214571
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"compile "
                                                  _%srcpath214344%_))
                                               (gxc#compile-top-module
                                                (let ((__tmp214572
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#import-module__0
                                                            _%srcpath214344%_)))))
                                                  (declare (not safe))
                                                  (__with-lock
                                                   gxc#+driver-mutex+
                                                   __tmp214572))))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp214571
                                         gx#current-expander-compiling?
                                         '#t)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp214570
                                gxc#current-compile-parallel
                                _%parallel?214371%_))))
                          (__tmp214568
                           (cons (cons 'compile-module
                                       (cons _%srcpath214344%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp214569
                       gxc#current-compile-context
                       __tmp214568))))
                 (__tmp214566 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp214567
                                                      gxc#current-compile-timestamp
                                                      __tmp214566)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp214565
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi214369%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp214564
                                    gxc#current-compile-debug
                                    _%debug214367%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp214563
                           gxc#current-compile-optimize
                           _%optimize214365%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp214562
                  gxc#current-compile-verbose
                  _%verbosity214363%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp214561
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?214361%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp214560
                                        gxc#current-compile-gsc-options
                                        _%gsc-options214359%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp214559
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?214349%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp214558
                      gx#current-compilation-target
                      _%target214354%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp214557
             gxc#current-compile-output-dir
             _%outdir214347%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath214393%_)
        (let ((_%opts214395%_ '()))
          (gxc#compile-module__% _%srcpath214393%_ _%opts214395%_))))
    (define gxc#compile-module
      (lambda _g214573_
        (let ((_g214574_ (let () (declare (not safe)) (##length _g214573_))))
          (cond ((let () (declare (not safe)) (##fx= _g214574_ 1))
                 (apply gxc#compile-module__0 _g214573_))
                ((let () (declare (not safe)) (##fx= _g214574_ 2))
                 (apply gxc#compile-module__% _g214573_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g214573_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath214294%_ _%opts214295%_)
        (if (string? _%srcpath214294%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath214294%_)))
        (let* ((_%outdir214297%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts214295%_)))
               (_%invoke-gsc?214299%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts214295%_)))
               (_%target214304%_
                (let ((_%$e214301%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts214295%_))))
                  (if _%$e214301%_ _%$e214301%_ 'C)))
               (_%gsc-options214309%_
                (append (cons '"-target"
                              (cons (symbol->string _%target214304%_) '()))
                        (let ((_%$e214306%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts214295%_))))
                          (if _%$e214306%_ _%$e214306%_ '()))))
               (_%keep-scm?214311%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts214295%_)))
               (_%verbosity214313%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts214295%_)))
               (_%debug214315%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts214295%_)))
               (_%parallel?214317%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts214295%_))))
          (if _%outdir214297%_
              (let ((__tmp214575
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir214297%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp214575))
              '#!void)
          (let ((__tmp214576
                 (lambda ()
                   (let ((__tmp214577
                          (lambda ()
                            (let ((__tmp214578
                                   (lambda ()
                                     (let ((__tmp214579
                                            (lambda ()
                                              (let ((__tmp214580
                                                     (lambda ()
                                                       (let ((__tmp214581
                                                              (lambda ()
                                                                (let ((__tmp214582
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp214584
                                        (lambda ()
                                          (let ((__tmp214586
                                                 (lambda ()
                                                   (let ((__tmp214587
                                                          (lambda ()
                                                            (let ((__tmp214588
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"compile exe " _%srcpath214294%_))
                             (gxc#compile-executable-module
                              (let ((__tmp214589
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#import-module__0
                                          _%srcpath214294%_)))))
                                (declare (not safe))
                                (__with-lock gxc#+driver-mutex+ __tmp214589))
                              _%opts214295%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp214588
                       gx#current-expander-compiling?
                       '#t)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp214587
                                                      gxc#current-compile-parallel
                                                      _%parallel?214317%_))))
                                                (__tmp214585
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath214294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp214586
                                             gxc#current-compile-context
                                             __tmp214585))))
                                       (__tmp214583 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp214584
                                    gxc#current-compile-timestamp
                                    __tmp214583)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp214582
                           gxc#current-compile-debug
                           _%debug214315%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp214581
                  gxc#current-compile-verbose
                  _%verbosity214313%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp214580
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?214311%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp214579
                                        gxc#current-compile-gsc-options
                                        _%gsc-options214309%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp214578
                               gx#current-compilation-target
                               _%target214304%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp214577
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?214299%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp214576
             gxc#current-compile-output-dir
             _%outdir214297%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath214336%_)
        (let ((_%opts214338%_ '()))
          (gxc#compile-exe__% _%srcpath214336%_ _%opts214338%_))))
    (define gxc#compile-exe
      (lambda _g214590_
        (let ((_g214591_ (let () (declare (not safe)) (##length _g214590_))))
          (cond ((let () (declare (not safe)) (##fx= _g214591_ 1))
                 (apply gxc#compile-exe__0 _g214590_))
                ((let () (declare (not safe)) (##fx= _g214591_ 2))
                 (apply gxc#compile-exe__% _g214590_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g214590_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx214290%_ _%opts214291%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts214291%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx214290%_
             _%opts214291%_)
            (gxc#compile-executable-module/separate
             _%ctx214290%_
             _%opts214291%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx214090%_ _%opts214091%_)
        (letrec ((_%generate-stub214093%_
                  (lambda (_%builtin-modules214286%_)
                    (let ((_%mod-main214288%_
                           (gxc#find-runtime-symbol _%ctx214090%_ 'main)))
                      (let ((__tmp214592
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules214286%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp214592))
                      (let ((__tmp214593
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main214288%_
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
                        (##write __tmp214593))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts214094%_
                  (lambda (_%gerbil-libdir214284%_)
                    (let ((__tmp214594
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir214284%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp214594 read))))
                 (_%replace-extension214095%_
                  (lambda (_%path214281%_ _%ext214282%_)
                    (string-append
                     (path-strip-extension _%path214281%_)
                     _%ext214282%_)))
                 (_%replace-extension-with-c214096%_
                  (lambda (_%path214279%_)
                    (_%replace-extension214095%_ _%path214279%_ '".c")))
                 (_%replace-extension-with-object214097%_
                  (lambda (_%path214277%_)
                    (_%replace-extension214095%_
                     _%path214277%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?214098%_
                  (lambda (_%ctx214275%_)
                    (if (_%exclude-module?214100%_ _%ctx214275%_)
                        '#f
                        (not (_%libgerbil-module?214099%_ _%ctx214275%_)))))
                 (_%libgerbil-module?214099%_
                  (lambda (_%ctx214268%_)
                    (let ((_%id-str214270%_
                           (symbol->string
                            (##structure-ref
                             _%ctx214268%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?214100%_ _%id-str214270%_)
                          '#f
                          (let ((_%$e214272%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str214270%_))))
                            (if _%$e214272%_
                                _%$e214272%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str214270%_))))))))
                 (_%exclude-module?214100%_
                  (lambda (_%ctx-or-str214264%_)
                    (let ((_%str214266%_
                           (if (string? _%ctx-or-str214264%_)
                               _%ctx-or-str214264%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str214264%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str214266%_))))
                 (_%not-file-empty?214101%_
                  (lambda (_%path214262%_)
                    (not (gxc#file-empty? _%path214262%_))))
                 (_%fold-libgerbil-runtime-scm214102%_
                  (lambda (_%gerbil-staticdir214255%_ _%libgerbil-scm214256%_)
                    (let ((_%gerbil-runtime-scm214260%_
                           (let ((__tmp214595
                                  (lambda (_%rtm214258%_)
                                    (path-expand
                                     (let ((__tmp214596
                                            (let ((__tmp214597
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm214258%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp214597
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp214596 '".scm"))
                                     _%gerbil-staticdir214255%_))))
                             (declare (not safe))
                             (##map __tmp214595 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates214103%_
                       (append _%gerbil-runtime-scm214260%_
                               _%libgerbil-scm214256%_)))))
                 (_%remove-duplicates214103%_
                  (lambda (_%strlst214215%_)
                    (let _%loop214217%_ ((_%rest214219%_ _%strlst214215%_)
                                         (_%result214220%_ '()))
                      (let* ((_%rest214221214229%_ _%rest214219%_)
                             (_%else214223214237%_
                              (lambda () (reverse! _%result214220%_)))
                             (_%K214225214243%_
                              (lambda (_%rest214240%_ _%path214241%_)
                                (if (member _%path214241%_ _%result214220%_)
                                    (_%loop214217%_
                                     _%rest214240%_
                                     _%result214220%_)
                                    (_%loop214217%_
                                     _%rest214240%_
                                     (cons _%path214241%_
                                           _%result214220%_))))))
                        (if (pair? _%rest214221214229%_)
                            (let ((_%hd214226214246%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest214221214229%_)))
                                  (_%tl214227214248%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest214221214229%_))))
                              (let* ((_%path214251%_ _%hd214226214246%_)
                                     (_%rest214253%_ _%tl214227214248%_))
                                (_%K214225214243%_
                                 _%rest214253%_
                                 _%path214251%_)))
                            (_%else214223214237%_))))))
                 (_%compile-stub214104%_
                  (lambda (_%output-scm214111%_ _%output-bin214112%_)
                    (let* ((_%gerbil-home214114%_
                            (let ((__tmp214598
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp214598)))
                           (_%gerbil-libdir214116%_
                            (path-expand '"lib" _%gerbil-home214114%_))
                           (_%gerbil-staticdir214118%_
                            (path-expand '"static" _%gerbil-libdir214116%_))
                           (_%deps214120%_
                            (gxc#find-runtime-module-deps _%ctx214090%_))
                           (_%libgerbil-deps214122%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?214099%_
                               _%deps214120%_)))
                           (_%libgerbil-scm214124%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps214122%_)))
                           (_%libgerbil-scm214126%_
                            (_%fold-libgerbil-runtime-scm214102%_
                             _%gerbil-staticdir214118%_
                             _%libgerbil-scm214124%_))
                           (_%libgerbil-c214128%_
                            (map _%replace-extension-with-c214096%_
                                 _%libgerbil-scm214126%_))
                           (_%libgerbil-o214130%_
                            (map _%replace-extension-with-object214097%_
                                 _%libgerbil-scm214126%_))
                           (_%src-deps214132%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?214098%_
                               _%deps214120%_)))
                           (_%src-deps-scm214134%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps214132%_)))
                           (_%src-deps-scm214136%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?214101%_
                               _%src-deps-scm214134%_)))
                           (_%src-deps-scm214138%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm214136%_)))
                           (_%src-deps-c214140%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c214096%_
                                     _%src-deps-scm214138%_)))
                           (_%src-deps-o214142%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object214097%_
                                     _%src-deps-scm214138%_)))
                           (_%src-bin-scm214144%_
                            (gxc#find-static-module-file _%ctx214090%_))
                           (_%src-bin-scm214146%_
                            (path-expand _%src-bin-scm214144%_))
                           (_%src-bin-c214148%_
                            (_%replace-extension-with-c214096%_
                             _%src-bin-scm214146%_))
                           (_%src-bin-o214150%_
                            (_%replace-extension-with-object214097%_
                             _%src-bin-scm214146%_))
                           (_%output-bin214152%_
                            (path-expand _%output-bin214112%_))
                           (_%output-scm214154%_
                            (path-expand _%output-scm214111%_))
                           (_%output-c214156%_
                            (_%replace-extension-with-c214096%_
                             _%output-scm214154%_))
                           (_%output-o214158%_
                            (_%replace-extension-with-object214097%_
                             _%output-scm214154%_))
                           (_%output_-c214160%_
                            (_%replace-extension214095%_
                             _%output-scm214154%_
                             '"_.c"))
                           (_%output_-o214162%_
                            (_%replace-extension214095%_
                             _%output-scm214154%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts214164%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts214166%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts214168%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir214118%_))
                           (_%output-ld-opts214170%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts214172%_
                            (_%get-libgerbil-ld-opts214094%_
                             _%gerbil-libdir214116%_))
                           (_%rpath214174%_
                            (gxc#gerbil-rpath _%gerbil-libdir214116%_))
                           (_%builtin-modules214178%_
                            (_%remove-duplicates214103%_
                             (let ((__tmp214599
                                    (let ((__tmp214601
                                           (lambda (_%mod214176%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod214176%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp214600
                                           (cons _%ctx214090%_
                                                 _%deps214120%_)))
                                      (declare (not safe))
                                      (##map __tmp214601 __tmp214600))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp214599)))))
                      (letrec ((_%compile-obj214181%_
                                (lambda (_%scm-path214188%_ _%c-path214189%_)
                                  (let* ((_%o-path214191%_
                                          (_%replace-extension214095%_
                                           _%c-path214189%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock214193%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path214191%_
                                             '".lock")))
                                         (_%locked214195%_ '#f)
                                         (_%unlock214198%_
                                          (lambda ()
                                            (close-port _%locked214195%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock214193%_)))))
                                    (let _%retry214201%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock214193%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry214201%_))
                                          (begin
                                            (set! _%locked214195%_
                                                  (let ((__tmp214602
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock214193%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp214602)))
                                            (if _%locked214195%_
                                                '#!void
                                                (_%retry214201%_)))))
                                    (let ((__tmp214604
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path214191%_)))
                                                     (not _%scm-path214188%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path214188%_
                                                        _%o-path214191%_)))
                                                 (let ((_%gsc-cc-opts214212%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp214605
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp214606 (cons _%c-path214189%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp214606
                            _%gsc-static-opts214168%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp214605 _%gsc-cc-opts214212%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp214603
                                           (lambda () (_%unlock214198%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp214604
                                       __tmp214603))))))
                        (let ((__tmp214607
                               (lambda ()
                                 (let ((__tmp214608
                                        (path-directory _%output-bin214152%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp214608)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp214607))
                        (gxc#with-output-to-scheme-file
                         _%output-scm214154%_
                         (lambda ()
                           (_%generate-stub214093%_
                            _%builtin-modules214178%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it214186%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp214609
                                                   (let ((__tmp214610
                                                          (let ((__tmp214611
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm214146%_
                               (cons _%output-scm214154%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp214611 _%src-deps-scm214138%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp214610
                                                      _%libgerbil-c214128%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp214609
                                               _%gsc-link-opts214164%_))))
                                     (for-each
                                      _%compile-obj214181%_
                                      (let ((__tmp214612
                                             (cons _%src-bin-scm214146%_
                                                   (cons _%output-scm214154%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp214612
                                         _%src-deps-scm214138%_))
                                      (let ((__tmp214613
                                             (cons _%src-bin-c214148%_
                                                   (cons _%output-c214156%_
                                                         (cons _%output_-c214160%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp214613
                                         _%src-deps-c214140%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin214152%_
                                                        (let ((__tmp214614
                                                               (cons _%src-bin-o214150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o214158%_
                                   (cons _%output_-o214162%_
                                         (let ((__tmp214615
                                                (let ((__tmp214616
                                                       (let ((__tmp214618
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir214116%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts214172%_))))
                     (__tmp214617
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath214174%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp214618 __tmp214617))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp214616
                                                   _%output-ld-opts214170%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp214615
                                            _%libgerbil-o214130%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp214614 _%src-deps-o214142%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp214619
                                            (cons _%output-c214156%_
                                                  (cons _%output_-c214160%_
                                                        (cons _%output-o214158%_
                                                              (cons _%output_-o214162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp214619)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it214186%_))
                                  (_%compile-it214186%_)))
                            '#!void))))))
          (let* ((_%output-bin214106%_
                  (gxc#compile-exe-output-file _%ctx214090%_ _%opts214091%_))
                 (_%output-scm214108%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin214106%_ '"__exe.scm"))))
            (_%compile-stub214104%_
             _%output-scm214108%_
             _%output-bin214106%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx213912%_ _%opts213913%_)
        (letrec ((_%reset-declare213915%_
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
                 (_%generate-stub213916%_
                  (lambda (_%deps214081%_)
                    (let ((_%mod-main214083%_
                           (gxc#find-runtime-symbol _%ctx213912%_ 'main))
                          (_%reset-decl214084%_ (_%reset-declare213915%_))
                          (_%user-decl214085%_ (_%user-declare213917%_)))
                      (for-each
                       (lambda (_%dep214087%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl214084%_))
                         (newline)
                         (if _%user-decl214085%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl214085%_))
                               (newline))
                             '#!void)
                         (let ((__tmp214620
                                (cons 'include (cons _%dep214087%_ '()))))
                           (declare (not safe))
                           (##write __tmp214620))
                         (newline))
                       _%deps214081%_)
                      (let ((__tmp214621
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main214083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp214621))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare213917%_
                  (lambda ()
                    (let* ((_%gsc-opts213986%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts213913%_)))
                           (_%gsc-prelude213988%_
                            (if _%gsc-opts213986%_
                                (member '"-prelude" _%gsc-opts213986%_)
                                '#f))
                           (_%gsc-prelude213990%_
                            (if _%gsc-prelude213988%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude213988%_)))
                                '#f)))
                      (let _%lp213993%_ ((_%rest213995%_
                                          (cons _%gsc-prelude213990%_ '()))
                                         (_%user-decls213996%_ '()))
                        (let* ((_%rest213997214005%_ _%rest213995%_)
                               (_%else213999214013%_
                                (lambda ()
                                  (if (null? _%user-decls213996%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls213996%_)))))
                               (_%K214001214069%_
                                (lambda (_%rest214016%_ _%expr214017%_)
                                  (let* ((_%expr214018214030%_ _%expr214017%_)
                                         (_%else214021214038%_
                                          (lambda ()
                                            (_%lp213993%_
                                             _%rest214016%_
                                             _%user-decls213996%_))))
                                    (let ((_%K214026214059%_
                                           (lambda (_%decls214057%_)
                                             (_%lp213993%_
                                              _%rest214016%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls213996%_
                                                 _%decls214057%_)))))
                                          (_%K214023214044%_
                                           (lambda (_%exprs214042%_)
                                             (_%lp213993%_
                                              (append _%exprs214042%_
                                                      _%rest214016%_)
                                              _%user-decls213996%_))))
                                      (if (pair? _%expr214018214030%_)
                                          (let ((_%tl214028214064%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr214018214030%_)))
                                                (_%hd214027214062%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr214018214030%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd214027214062%_
                                                         'declare))
                                                (let ((_%decls214067%_
                                                       _%tl214028214064%_))
                                                  (_%K214026214059%_
                                                   _%decls214067%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd214027214062%_
                                                             'begin))
                                                    (let ((_%exprs214052%_
                                                           _%tl214028214064%_))
                                                      (_%K214023214044%_
                                                       _%exprs214052%_))
                                                    (_%else214021214038%_))))
                                          (_%else214021214038%_)))))))
                          (if (pair? _%rest213997214005%_)
                              (let ((_%hd214002214072%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest213997214005%_)))
                                    (_%tl214003214074%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest213997214005%_))))
                                (let* ((_%expr214077%_ _%hd214002214072%_)
                                       (_%rest214079%_ _%tl214003214074%_))
                                  (_%K214001214069%_
                                   _%rest214079%_
                                   _%expr214077%_)))
                              (_%else213999214013%_)))))))
                 (_%compile-stub213918%_
                  (lambda (_%output-scm213925%_ _%output-bin213926%_)
                    (let* ((_%gerbil-home213928%_
                            (let ((__tmp214622
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp214622)))
                           (_%gerbil-libdir213930%_
                            (path-expand '"lib" _%gerbil-home213928%_))
                           (_%runtime213932%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp213934%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home213928%_))
                           (_%include-gambit-sharp213936%_
                            (gxc#include-source _%gambit-sharp213934%_))
                           (_%bin-scm213938%_
                            (gxc#find-static-module-file _%ctx213912%_))
                           (_%deps213940%_
                            (gxc#find-runtime-module-deps _%ctx213912%_))
                           (_%deps213942%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps213940%_)))
                           (_%deps213947%_
                            (let ((__tmp214623
                                   (lambda (_%$obj213944%_)
                                     (not (gxc#file-empty? _%$obj213944%_)))))
                              (declare (not safe))
                              (##filter __tmp214623 _%deps213942%_)))
                           (_%deps213951%_
                            (let ((__tmp214624
                                   (lambda (_%f213949%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f213949%_
                                             _%runtime213932%_))))))
                              (declare (not safe))
                              (##filter __tmp214624 _%deps213947%_)))
                           (_%output-base213953%_
                            (let ((__tmp214625
                                   (path-strip-extension
                                    _%output-scm213925%_)))
                              (declare (not safe))
                              (##string-append __tmp214625)))
                           (_%output-c213955%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base213953%_ '".c")))
                           (_%output-o213957%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base213953%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_213959%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base213953%_ '"_.c")))
                           (_%output-o_213961%_
                            (let ((__tmp214626
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base213953%_
                               __tmp214626)))
                           (_%gsc-link-opts213963%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts213965%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts213967%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir213930%_)))
                           (_%output-ld-opts213969%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros213971%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp213936%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp213936%_
                                            '()))))
                           (_%gsc-link-opts213973%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts213963%_
                               _%gsc-gx-macros213971%_)))
                           (_%rpath213975%_
                            (gxc#gerbil-rpath _%gerbil-libdir213930%_))
                           (_%default-ld-options213977%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp214627
                             (lambda ()
                               (let ((__tmp214628
                                      (path-directory _%output-bin213926%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp214628)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp214627))
                      (gxc#with-output-to-scheme-file
                       _%output-scm213925%_
                       (lambda ()
                         (_%generate-stub213916%_
                          (let ((__tmp214629
                                 (let ((__tmp214630
                                        (cons _%bin-scm213938%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp214630
                                    _%deps213951%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp214629 _%runtime213932%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it213983%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_213959%_
                                                      (let ((__tmp214631
                                                             (cons _%output-scm213925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp214631 _%gsc-link-opts213973%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp214632
                                                 (let ((__tmp214633
                                                        (cons _%output-c213955%_
                                                              (cons _%output-c_213959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp214633
                                                    _%gsc-static-opts213967%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp214632
                                             _%gsc-cc-opts213965%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin213926%_
                                                      (cons _%output-o213957%_
                                                            (cons _%output-o_213961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp214634
                                 (let ((__tmp214636
                                        (cons '"-L"
                                              (cons _%gerbil-libdir213930%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options213977%_))))
                                       (__tmp214635
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath213975%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp214636 __tmp214635))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp214634
                             _%output-ld-opts213969%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it213983%_))
                                (_%compile-it213983%_)))
                          '#!void)))))
          (let* ((_%output-bin213920%_
                  (gxc#compile-exe-output-file _%ctx213912%_ _%opts213913%_))
                 (_%output-scm213922%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin213920%_ '"__exe.scm"))))
            (_%compile-stub213918%_
             _%output-scm213922%_
             _%output-bin213920%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx213861%_ _%id213862%_)
        (let ((_%$e213908%_
               (let ((__tmp214638
                      (lambda (_%e213863213865%_)
                        (let* ((_%g213867213877%_ _%e213863213865%_)
                               (_%else213869213885%_ (lambda () '#f))
                               (_%K213871213889%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g213867213877%_
                                 'gx#module-export::t))
                              (let* ((_%e213872213892%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g213867213877%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e213873213895%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g213867213877%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e213874213898%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g213867213877%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e213874213898%_ '0))
                                    (let ((_%e213875213901%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g213867213877%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g213903213905%_)
                                             (eq? _%g213903213905%_
                                                  _%id213862%_))
                                           _%e213875213901%_)
                                          (_%K213871213889%_)
                                          (_%else213869213885%_)))
                                    (_%else213869213885%_)))
                              (_%else213869213885%_)))))
                     (__tmp214637
                      (##structure-ref
                       _%ctx213861%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp214638 __tmp214637))))
          (if _%$e213908%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e213908%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx213852%_ _%id213853%_)
        (let ((_%$e213855%_
               (gxc#find-export-binding _%ctx213852%_ _%id213853%_)))
          (if _%$e213855%_
              ((lambda (_%bind213858%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind213858%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id213853%_)))
                 (##structure-ref _%bind213858%_ '1 gx#binding::t '#f))
               _%$e213855%_)
              (let ((__tmp214639
                     (##structure-ref
                      _%ctx213852%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp214639
                 _%id213853%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx213718%_)
        (letrec* ((_%ht213720%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template213721%_
                   (lambda (_%in213797%_ _%phi213798%_)
                     (let ((_%iphi213800%_
                            (fx+ _%phi213798%_
                                 (##direct-structure-ref
                                  _%in213797%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports213801%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in213797%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp213803%_ ((_%rest213805%_ _%imports213801%_)
                                          (_%r213806%_ '()))
                         (let* ((_%rest213807213815%_ _%rest213805%_)
                                (_%else213809213823%_ (lambda () _%r213806%_))
                                (_%K213811213840%_
                                 (lambda (_%rest213826%_ _%in213827%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in213827%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi213800%_))
                                           (_%lp213803%_
                                            _%rest213826%_
                                            (cons _%in213827%_ _%r213806%_))
                                           (_%lp213803%_
                                            _%rest213826%_
                                            _%r213806%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in213827%_
                                              'gx#module-import::t))
                                           (let ((_%iphi213831%_
                                                  (fx+ _%phi213798%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in213827%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi213831%_))
                                                 (_%lp213803%_
                                                  _%rest213826%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in213827%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r213806%_))
                                                 (_%lp213803%_
                                                  _%rest213826%_
                                                  _%r213806%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in213827%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi213834%_
                                                      (fx+ _%iphi213800%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in213827%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi213834%_))
                                                     (_%lp213803%_
                                                      _%rest213826%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in213827%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r213806%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi213834%_))
                                                         (_%lp213803%_
                                                          _%rest213826%_
                                                          (let ((__tmp214640
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template213721%_
                          _%in213827%_
                          _%iphi213800%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r213806%_ __tmp214640)))
                 (_%lp213803%_ _%rest213826%_ _%r213806%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp213803%_
                                                _%rest213826%_
                                                _%r213806%_)))))))
                           (if (pair? _%rest213807213815%_)
                               (let ((_%hd213812213843%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest213807213815%_)))
                                     (_%tl213813213845%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest213807213815%_))))
                                 (let* ((_%in213848%_ _%hd213812213843%_)
                                        (_%rest213850%_ _%tl213813213845%_))
                                   (_%K213811213840%_
                                    _%rest213850%_
                                    _%in213848%_)))
                               (_%else213809213823%_)))))))
                  (_%find-deps213722%_
                   (lambda (_%rest213730%_ _%deps213731%_)
                     (let* ((_%rest213732213740%_ _%rest213730%_)
                            (_%else213734213748%_ (lambda () _%deps213731%_))
                            (_%K213736213785%_
                             (lambda (_%rest213751%_ _%hd213752%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd213752%_
                                      'gx#module-context::t))
                                   (let ((_%id213755%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd213752%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports213756%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd213752%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht213720%_
                                            _%id213755%_))
                                         (_%find-deps213722%_
                                          _%rest213751%_
                                          _%deps213731%_)
                                         (let ((_%$e213759%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd213752%_))))
                                           (if _%$e213759%_
                                               ((lambda (_%pre213762%_)
                                                  (let ((_%xdeps213764%_
                                                         (_%find-deps213722%_
                                                          (cons _%pre213762%_
                                                                _%imports213756%_)
                                                          _%deps213731%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht213720%_
                                                       _%id213755%_
                                                       _%hd213752%_))
                                                    (_%find-deps213722%_
                                                     _%rest213751%_
                                                     (cons _%hd213752%_
                                                           _%xdeps213764%_))))
                                                _%$e213759%_)
                                               (let ((_%xdeps213767%_
                                                      (_%find-deps213722%_
                                                       _%imports213756%_
                                                       _%deps213731%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht213720%_
                                                    _%id213755%_
                                                    _%hd213752%_))
                                                 (_%find-deps213722%_
                                                  _%rest213751%_
                                                  (cons _%hd213752%_
                                                        _%xdeps213767%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd213752%_
                                          'gx#prelude-context::t))
                                       (let ((_%id213770%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd213752%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht213720%_
                                                _%id213770%_))
                                             (_%find-deps213722%_
                                              _%rest213751%_
                                              _%deps213731%_)
                                             (let ((_%xdeps213774%_
                                                    (_%find-deps213722%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd213752%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps213731%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht213720%_
                                                      _%id213770%_))
                                                   (_%find-deps213722%_
                                                    _%rest213751%_
                                                    _%xdeps213774%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht213720%_
                                                        _%id213770%_
                                                        _%hd213752%_))
                                                     (_%find-deps213722%_
                                                      _%rest213751%_
                                                      (cons _%hd213752%_
                                                            _%xdeps213774%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd213752%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd213752%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps213722%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd213752%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest213751%_)
                                                _%deps213731%_)
                                               (_%find-deps213722%_
                                                _%rest213751%_
                                                _%deps213731%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd213752%_
                                                  'gx#module-export::t))
                                               (_%find-deps213722%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd213752%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest213751%_)
                                                _%deps213731%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd213752%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd213752%_ '2 '#f '#f)))
               (_%find-deps213722%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd213752%_ '1 '#f '#f))
                      _%rest213751%_)
                _%deps213731%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd213752%_ '2 '#f '#f)))
                   (let ((_%xdeps213781%_
                          (_%import-set-template213721%_ _%hd213752%_ '0)))
                     (_%find-deps213722%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest213751%_ _%xdeps213781%_))
                      _%deps213731%_))
                   (_%find-deps213722%_ _%rest213751%_ _%deps213731%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd213752%_))))))))))
                       (if (pair? _%rest213732213740%_)
                           (let ((_%hd213737213788%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest213732213740%_)))
                                 (_%tl213738213790%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest213732213740%_))))
                             (let* ((_%hd213793%_ _%hd213737213788%_)
                                    (_%rest213795%_ _%tl213738213790%_))
                               (_%K213736213785%_
                                _%rest213795%_
                                _%hd213793%_)))
                           (_%else213734213748%_))))))
          (let ((__tmp214641
                 (filter gx#expander-context-id
                         (_%find-deps213722%_
                          (let ((_%$e213724%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx213718%_))))
                            (if _%$e213724%_
                                ((lambda (_%pre213727%_)
                                   (cons _%pre213727%_
                                         (##structure-ref
                                          _%ctx213718%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e213724%_)
                                (##structure-ref
                                 _%ctx213718%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp214641)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx213648%_)
        (let* ((_%context-id213650%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx213648%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx213648%_ '1 '#f '#f))
                    (string->symbol _%ctx213648%_)))
               (_%scm213652%_
                (let ((__tmp214642
                       (gxc#static-module-name _%context-id213650%_)))
                  (declare (not safe))
                  (##string-append __tmp214642 '".scm")))
               (_%dirs213654%_ (let () (declare (not safe)) (load-path)))
               (_%dirs213660%_
                (let ((_%user-libpath213656%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath213656%_
                      (let ((_%user-libpath213658%_
                             (path-expand '"lib" _%user-libpath213656%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath213658%_ _%dirs213654%_))
                            _%dirs213654%_
                            (cons _%user-libpath213658%_ _%dirs213654%_)))
                      _%dirs213654%_)))
               (_%dirs213670%_
                (let ((_%$e213662%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e213662%_
                      ((lambda (_%g213664213666%_)
                         (cons _%g213664213666%_ _%dirs213660%_))
                       _%$e213662%_)
                      _%dirs213660%_)))
               (_%dirs213676%_
                (let ((__tmp214643
                       (lambda (_%g213671213673%_)
                         (path-expand '"static" _%g213671213673%_))))
                  (declare (not safe))
                  (##map __tmp214643 _%dirs213670%_))))
          (let _%lp213679%_ ((_%rest213681%_ _%dirs213676%_))
            (let* ((_%rest213682213690%_ _%rest213681%_)
                   (_%else213684213698%_
                    (lambda ()
                      (let ((__tmp214644
                             (##structure-ref
                              _%ctx213648%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp214644
                         _%scm213652%_))))
                   (_%K213686213706%_
                    (lambda (_%rest213701%_ _%dir213702%_)
                      (let ((_%path213704%_
                             (path-expand _%scm213652%_ _%dir213702%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path213704%_))
                            _%path213704%_
                            (_%lp213679%_ _%rest213701%_))))))
              (if (pair? _%rest213682213690%_)
                  (let ((_%hd213687213709%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest213682213690%_)))
                        (_%tl213688213711%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest213682213690%_))))
                    (let* ((_%dir213714%_ _%hd213687213709%_)
                           (_%rest213716%_ _%tl213688213711%_))
                      (_%K213686213706%_ _%rest213716%_ _%dir213714%_)))
                  (_%else213684213698%_)))))))
    (define gxc#file-empty?
      (lambda (_%path213646%_)
        (zero? (let ((__tmp214645 (file-info _%path213646%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp214645)))))
    (define gxc#compile-top-module
      (lambda (_%ctx213637%_)
        (let ((__tmp214646
               (lambda ()
                 (let ((__tmp214647
                        (lambda ()
                          (let ((__tmp214648
                                 (lambda ()
                                   (let ((__tmp214650
                                          (lambda ()
                                            (let ((__tmp214652
                                                   (lambda ()
                                                     (let ((__tmp214654
                                                            (lambda ()
                                                              (let ((__tmp214655
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx213637%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp214655))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp214656
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx213637%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp214656))
                          '#!void)
                      (gxc#collect-bindings _%ctx213637%_)
                      (gxc#compile-runtime-code _%ctx213637%_)
                      (gxc#compile-meta-code _%ctx213637%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx213637%_)
                          '#!void)))
                   (__tmp214653
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
                __tmp214654
                gxc#current-compile-runtime-names
                __tmp214653))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp214651
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp214652
                                               gxc#current-compile-runtime-sections
                                               __tmp214651))))
                                         (__tmp214649
                                          (let ((__obj214550
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj214550))
                                            __obj214550)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp214650
                                      gxc#current-compile-symbol-table
                                      __tmp214649)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp214648
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp214647
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp214646
           gx#current-expander-context
           _%ctx213637%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx213635%_)
        (let ((__tmp214657
               (##structure-ref _%ctx213635%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp214657))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx213579%_)
        (letrec ((_%compile1213581%_
                  (lambda (_%ctx213624%_)
                    (let* ((_%code213626%_
                            (##structure-ref
                             _%ctx213624%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm213630%_
                            (let ((_%idstr213628%_
                                   (let ((__tmp214658
                                          (##structure-ref
                                           _%ctx213624%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp214658))))
                              (declare (not safe))
                              (##string-append _%idstr213628%_ '"~0")))
                           (_%rtc?213632%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code213626%_))))
                      (if _%rtc?213632%_
                          (let ((__tmp214659
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp214659
                             _%ctx213624%_
                             _%rtm213630%_))
                          '#!void)
                      (_%generate-runtime-code213583%_
                       _%ctx213624%_
                       _%code213626%_
                       (if _%rtc?213632%_ _%rtm213630%_ '#f)))))
                 (_%context-timestamp213582%_
                  (lambda (_%ctx213622%_)
                    (let ((__tmp214660
                           (let ((__tmp214661
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx213622%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp214661 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp214660))))
                 (_%generate-runtime-code213583%_
                  (lambda (_%ctx213590%_ _%code213591%_ _%rtm213592%_)
                    (let* ((_%runtime-code?213594%_ (if _%rtm213592%_ '#t '#f))
                           (_%lifts213596%_ (box '()))
                           (_%runtime-code213603%_
                            (if _%runtime-code?213594%_
                                (let ((__tmp214662
                                       (lambda ()
                                         (let ((__tmp214663
                                                (lambda ()
                                                  (let ((__tmp214664
                                                         (lambda ()
                                                           (let ((__tmp214666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ((__tmp214668
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code213591%_))))
                                  (__tmp214667
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp214668
                               gxc#current-compile-identifiers
                               __tmp214667))))
                         (__tmp214665
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp214666
                      gxc#current-compile-marks
                      __tmp214665)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp214664
                                                     gxc#current-compile-lift
                                                     _%lifts213596%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp214663
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp214662
                                   gx#current-expander-context
                                   _%ctx213590%_))
                                '#f))
                           (_%runtime-code213605%_
                            (if _%runtime-code?213594%_
                                (if (null? (unbox _%lifts213596%_))
                                    _%runtime-code213603%_
                                    (cons 'begin
                                          (let ((__tmp214670
                                                 (cons _%runtime-code213603%_
                                                       '()))
                                                (__tmp214669
                                                 (reverse (unbox _%lifts213596%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp214670
                                             __tmp214669))))
                                '#f))
                           (_%runtime-code213607%_
                            (if _%runtime-code?213594%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp213582%_
                                                         _%ctx213590%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code213605%_ '())))
                                '#f))
                           (_%loader-code213610%_
                            (let ((__tmp214671
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code213591%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp214671
                               gx#current-expander-context
                               _%ctx213590%_)))
                           (_%loader-code213612%_
                            (cons 'begin
                                  (cons _%loader-code213610%_
                                        (cons (if _%runtime-code?213594%_
                                                  (cons 'load-module
                                                        (cons _%rtm213592%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0213614%_
                            (gxc#compile-output-file _%ctx213590%_ '0 '".scm"))
                           (_%scmrt213616%_
                            (gxc#compile-output-file
                             _%ctx213590%_
                             '#f
                             '".scm"))
                           (_%scms213618%_
                            (gxc#compile-static-output-file _%ctx213590%_)))
                      (if _%runtime-code?213594%_
                          (gxc#compile-scm-file__0
                           _%scm0213614%_
                           _%runtime-code213607%_)
                          '#!void)
                      (let ((__tmp214672
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt213616%_
                                _%loader-code213612%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp214672
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms213618%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms213618%_))
                          '#!void)
                      (if _%runtime-code?213594%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0213614%_ _%scms213618%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms213618%_ void)))))))
          (let* ((_%all-modules213585%_
                  (cons _%ctx213579%_ (gxc#lift-nested-modules _%ctx213579%_)))
                 (__tmp214673
                  (lambda (_%ctx213587%_)
                    (let ((__tmp214674
                           (lambda () (_%compile1213581%_ _%ctx213587%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp214674
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp214673 _%all-modules213585%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx213478%_)
        (letrec ((_%compile-ssi213480%_
                  (lambda (_%code213547%_)
                    (let* ((_%path213549%_
                            (gxc#compile-output-file
                             _%ctx213478%_
                             '#f
                             '".ssi"))
                           (_%prelude213561%_
                            (let* ((_%super213551%_
                                    (##structure-ref
                                     _%ctx213478%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e213553%_
                                    (##structure-ref
                                     _%super213551%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e213553%_
                                  ((lambda (_%g213555213557%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g213555213557%_)))
                                   _%$e213553%_)
                                  ':<root>)))
                           (_%ns213563%_
                            (##structure-ref
                             _%ctx213478%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr213565%_
                            (symbol->string
                             (##structure-ref
                              _%ctx213478%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg213573%_
                            (let ((_%$e213567%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr213565%_ '#\/))))
                              (if _%$e213567%_
                                  ((lambda (_%x213570%_)
                                     (let ((__tmp214675
                                            (substring
                                             _%idstr213565%_
                                             '0
                                             _%x213570%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp214675)))
                                   _%$e213567%_)
                                  '#f)))
                           (_%rt213575%_
                            (let ((__tmp214676
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp214676 _%ctx213478%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path213549%_))
                      (gxc#with-output-to-scheme-file
                       _%path213549%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude213561%_))
                         (if _%pkg213573%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg213573%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns213563%_))
                         (newline)
                         (pretty-print _%code213547%_)
                         (if _%rt213575%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt213575%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi213481%_
                  (lambda (_%part213486%_)
                    (let* ((_%part213487213500%_ _%part213486%_)
                           (_%E213489213504%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part213487213500%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K213490213516%_
                            (lambda (_%code213507%_
                                     _%n213508%_
                                     _%phi213509%_
                                     _%phi-ctx213510%_)
                              (let ((_%code213514%_
                                     (let ((__tmp214677
                                            (lambda ()
                                              (let ((__tmp214678
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code213507%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp214678
                                                 gx#current-expander-phi
                                                 _%phi213509%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp214677
                                        gx#current-expander-context
                                        _%phi-ctx213510%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx213478%_
                                  _%n213508%_
                                  '".scm")
                                 _%code213514%_
                                 '#t)))))
                      (if (pair? _%part213487213500%_)
                          (let ((_%hd213491213519%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part213487213500%_)))
                                (_%tl213492213521%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part213487213500%_))))
                            (let ((_%phi-ctx213524%_ _%hd213491213519%_))
                              (if (pair? _%tl213492213521%_)
                                  (let ((_%hd213493213526%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl213492213521%_)))
                                        (_%tl213494213528%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl213492213521%_))))
                                    (let ((_%phi213531%_ _%hd213493213526%_))
                                      (if (pair? _%tl213494213528%_)
                                          (let ((_%hd213495213533%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl213494213528%_)))
                                                (_%tl213496213535%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl213494213528%_))))
                                            (let ((_%n213538%_
                                                   _%hd213495213533%_))
                                              (if (pair? _%tl213496213535%_)
                                                  (let ((_%hd213497213540%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl213496213535%_)))
                                                        (_%tl213498213542%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl213496213535%_))))
                                                    (let ((_%code213545%_
                                                           _%hd213497213540%_))
                                                      (if (null? _%tl213498213542%_)
                                                          (_%K213490213516%_
                                                           _%code213545%_
                                                           _%n213538%_
                                                           _%phi213531%_
                                                           _%phi-ctx213524%_)
                                                          (_%E213489213504%_))))
                                                  (_%E213489213504%_))))
                                          (_%E213489213504%_))))
                                  (_%E213489213504%_))))
                          (_%E213489213504%_))))))
          (let ((_g214679_ (gxc#generate-meta-code _%ctx213478%_)))
            (begin
              (let ((_g214680_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g214679_)
                           (##values-length _g214679_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g214680_ 2)))
                    (error "Context expects 2 values" _g214680_)))
              (let ((_%ssi-code213483%_
                     (let () (declare (not safe)) (##values-ref _g214679_ 0)))
                    (_%phi-code213484%_
                     (let () (declare (not safe)) (##values-ref _g214679_ 1))))
                (begin
                  (_%compile-ssi213480%_ _%ssi-code213483%_)
                  (for-each _%compile-phi213481%_ _%phi-code213484%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx213460%_)
        (let* ((_%path213462%_
                (gxc#compile-output-file _%ctx213460%_ '#f '".ssxi.ss"))
               (_%code213464%_
                (let ((__tmp214681
                       (##structure-ref
                        _%ctx213460%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp214681)))
               (_%idstr213466%_
                (symbol->string
                 (##structure-ref
                  _%ctx213460%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg213474%_
                (let ((_%$e213468%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr213466%_ '#\/))))
                  (if _%$e213468%_
                      ((lambda (_%x213471%_)
                         (let ((__tmp214682
                                (substring _%idstr213466%_ '0 _%x213471%_)))
                           (declare (not safe))
                           (##string->symbol __tmp214682)))
                       _%$e213468%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path213462%_))
          (gxc#with-output-to-scheme-file
           _%path213462%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg213474%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg213474%_))
                 '#!void)
             (newline)
             (pretty-print _%code213464%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx213453%_)
        (let* ((_%state213455%_
                (let ((__obj214551
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj214551 _%ctx213453%_))
                  __obj214551))
               (_%ssi-code213457%_
                (let ((__tmp214683
                       (##structure-ref
                        _%ctx213453%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state213455%_
                   __tmp214683))))
          (values _%ssi-code213457%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state213455%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx213444%_)
        (let* ((_%lifts213446%_ (box '()))
               (__tmp214684
                (lambda ()
                  (let ((__tmp214686
                         (lambda ()
                           (let ((__tmp214688
                                  (lambda ()
                                    (let ((_%code213451%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-generate-runtime-phi
                                              _%stx213444%_))))
                                      (if (null? (unbox _%lifts213446%_))
                                          _%code213451%_
                                          (cons 'begin
                                                (let ((__tmp214690
                                                       (cons _%code213451%_
                                                             '()))
                                                      (__tmp214689
                                                       (reverse (unbox _%lifts213446%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp214690
                                                   __tmp214689)))))))
                                 (__tmp214687
                                  (let ()
                                    (declare (not safe))
                                    (gxc#make-bound-identifier-table))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp214688
                              gxc#current-compile-identifiers
                              __tmp214687))))
                        (__tmp214685
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp214686
                     gxc#current-compile-marks
                     __tmp214685)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp214684
           gxc#current-compile-lift
           _%lifts213446%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx213440%_)
        (let ((_%modules213442%_ (box '())))
          (let ((__tmp214691
                 (##structure-ref _%ctx213440%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules213442%_ __tmp214691))
          (reverse (unbox _%modules213442%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path213420%_ _%code213421%_ _%phi?213422%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path213420%_))
        (gxc#with-output-to-scheme-file
         _%path213420%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp214692
                                           (if _%phi?213422%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp214692)))))))
           (pretty-print _%code213421%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it213426%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path213420%_ _%phi?213422%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp214693
                         (cons 'compile-file (cons _%path213420%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it213426%_ __tmp214693))
                  (_%compile-it213426%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path213431%_ _%code213432%_)
        (let ((_%phi?213434%_ '#f))
          (gxc#compile-scm-file__%
           _%path213431%_
           _%code213432%_
           _%phi?213434%_))))
    (define gxc#compile-scm-file
      (lambda _g214694_
        (let ((_g214695_ (let () (declare (not safe)) (##length _g214694_))))
          (cond ((let () (declare (not safe)) (##fx= _g214695_ 2))
                 (apply gxc#compile-scm-file__0 _g214694_))
                ((let () (declare (not safe)) (##fx= _g214695_ 3))
                 (apply gxc#compile-scm-file__% _g214694_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g214694_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?213321%_)
        (let _%lp213323%_ ((_%rest213325%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts213326%_ '()))
          (let* ((_%rest213327213347%_ _%rest213325%_)
                 (_%else213331213355%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts213326%_)))
                        (reverse _%opts213326%_)))))
            (let ((_%K213341213398%_
                   (lambda (_%rest213396%_)
                     (_%lp213323%_ _%rest213396%_ _%opts213326%_)))
                  (_%K213336213380%_
                   (lambda (_%rest213378%_)
                     (_%lp213323%_ _%rest213378%_ _%opts213326%_)))
                  (_%K213333213362%_
                   (lambda (_%rest213359%_ _%opt213360%_)
                     (_%lp213323%_
                      _%rest213359%_
                      (cons _%opt213360%_ _%opts213326%_)))))
              (if (pair? _%rest213327213347%_)
                  (let ((_%tl213343213403%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest213327213347%_)))
                        (_%hd213342213401%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest213327213347%_))))
                    (if (equal? _%hd213342213401%_ '"-cc-options")
                        (if (pair? _%tl213343213403%_)
                            (let* ((_%tl213345213406%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl213343213403%_)))
                                   (_%rest213409%_ _%tl213345213406%_))
                              (_%K213341213398%_ _%rest213409%_))
                            (let ((_%opt213370%_ _%hd213342213401%_)
                                  (_%rest213372%_ _%tl213343213403%_))
                              (_%K213333213362%_
                               _%rest213372%_
                               _%opt213370%_)))
                        (if (equal? _%hd213342213401%_ '"-ld-options")
                            (if (pair? _%tl213343213403%_)
                                (let* ((_%tl213340213388%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl213343213403%_)))
                                       (_%rest213391%_ _%tl213340213388%_))
                                  (_%K213336213380%_ _%rest213391%_))
                                (let ((_%opt213370%_ _%hd213342213401%_)
                                      (_%rest213372%_ _%tl213343213403%_))
                                  (_%K213333213362%_
                                   _%rest213372%_
                                   _%opt213370%_)))
                            (let ((_%opt213370%_ _%hd213342213401%_)
                                  (_%rest213372%_ _%tl213343213403%_))
                              (_%K213333213362%_
                               _%rest213372%_
                               _%opt213370%_)))))
                  (_%else213331213355%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?213415%_ '#f)) (gxc#gsc-link-options__% _%phi?213415%_))))
    (define gxc#gsc-link-options
      (lambda _g214696_
        (let ((_g214697_ (let () (declare (not safe)) (##length _g214696_))))
          (cond ((let () (declare (not safe)) (##fx= _g214697_ 0))
                 (apply gxc#gsc-link-options__0 _g214696_))
                ((let () (declare (not safe)) (##fx= _g214697_ 1))
                 (apply gxc#gsc-link-options__% _g214696_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g214696_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords213170%_ _%static?213166213171%_ _%phi?213173%_)
        (let ((_%static?213175%_
               (if (eq? _%static?213166213171%_ absent-value)
                   '#f
                   _%static?213166213171%_)))
          (if _%phi?213173%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp213177%_ ((_%rest213179%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts213180%_ '()))
                (let* ((_%rest213181213207%_ _%rest213179%_)
                       (_%else213186213215%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts213180%_)))
                              (reverse! _%opts213180%_)))))
                  (let ((_%K213201213278%_
                         (lambda (_%rest213275%_ _%opt213276%_)
                           (if _%static?213175%_
                               (_%lp213177%_
                                _%rest213275%_
                                (cons _%opt213276%_
                                      (cons '"-cc-options" _%opts213180%_)))
                               (_%lp213177%_ _%rest213275%_ _%opts213180%_))))
                        (_%K213196213255%_
                         (lambda (_%rest213252%_ _%opt213253%_)
                           (_%lp213177%_
                            _%rest213252%_
                            (cons _%opt213253%_
                                  (cons '"-cc-options" _%opts213180%_)))))
                        (_%K213191213235%_
                         (lambda (_%rest213233%_)
                           (_%lp213177%_ _%rest213233%_ _%opts213180%_)))
                        (_%K213188213221%_
                         (lambda (_%rest213219%_)
                           (_%lp213177%_ _%rest213219%_ _%opts213180%_))))
                    (if (pair? _%rest213181213207%_)
                        (let ((_%tl213203213283%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest213181213207%_)))
                              (_%hd213202213281%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest213181213207%_))))
                          (if (equal? _%hd213202213281%_ '"-cc-options")
                              (if (pair? _%tl213203213283%_)
                                  (let ((_%tl213205213288%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl213203213283%_)))
                                        (_%hd213204213286%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl213203213283%_))))
                                    (if (equal? _%hd213204213286%_ '"-Bstatic")
                                        (let ((_%opt213291%_
                                               _%hd213204213286%_)
                                              (_%rest213293%_
                                               _%tl213205213288%_))
                                          (_%K213201213278%_
                                           _%rest213293%_
                                           _%opt213291%_))
                                        (let ((_%opt213268%_
                                               _%hd213204213286%_)
                                              (_%rest213270%_
                                               _%tl213205213288%_))
                                          (_%K213196213255%_
                                           _%rest213270%_
                                           _%opt213268%_))))
                                  (let ((_%rest213227%_ _%tl213203213283%_))
                                    (_%K213188213221%_ _%rest213227%_)))
                              (if (equal? _%hd213202213281%_ '"-ld-options")
                                  (if (pair? _%tl213203213283%_)
                                      (let* ((_%tl213195213243%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl213203213283%_)))
                                             (_%rest213246%_
                                              _%tl213195213243%_))
                                        (_%K213191213235%_ _%rest213246%_))
                                      (let ((_%rest213227%_
                                             _%tl213203213283%_))
                                        (_%K213188213221%_ _%rest213227%_)))
                                  (let ((_%rest213227%_ _%tl213203213283%_))
                                    (_%K213188213221%_ _%rest213227%_)))))
                        (_%else213186213215%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords213298%_ _%static?213166213299%_)
        (let ((_%phi?213301%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords213298%_
           _%static?213166213299%_
           _%phi?213301%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g214698_
        (let ((_g214699_ (let () (declare (not safe)) (##length _g214698_))))
          (cond ((let () (declare (not safe)) (##fx= _g214699_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g214698_))
                ((let () (declare (not safe)) (##fx= _g214699_ 3))
                 (apply gxc#gsc-cc-options__%__% _g214698_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g214698_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords213310%_ . _%args213311%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords213310%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213310%_
                  'static:
                  absent-value))
               _%args213311%_)))
    (define gxc#gsc-cc-options
      (lambda _%args213167213317%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args213167213317%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords213015%_ _%static?213011213016%_ _%phi?213018%_)
        (let ((_%static?213020%_
               (if (eq? _%static?213011213016%_ absent-value)
                   '#f
                   _%static?213011213016%_)))
          (if _%phi?213018%_
              '()
              (let _%lp213022%_ ((_%rest213024%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts213025%_ '()))
                (let* ((_%rest213026213052%_ _%rest213024%_)
                       (_%else213031213060%_
                        (lambda () (reverse! _%opts213025%_))))
                  (let ((_%K213046213123%_
                         (lambda (_%rest213120%_ _%opt213121%_)
                           (if _%static?213020%_
                               (_%lp213022%_
                                _%rest213120%_
                                (cons _%opt213121%_
                                      (cons '"-ld-options" _%opts213025%_)))
                               (_%lp213022%_ _%rest213120%_ _%opts213025%_))))
                        (_%K213041213100%_
                         (lambda (_%rest213097%_ _%opt213098%_)
                           (_%lp213022%_
                            _%rest213097%_
                            (cons _%opt213098%_
                                  (cons '"-ld-options" _%opts213025%_)))))
                        (_%K213036213080%_
                         (lambda (_%rest213078%_)
                           (_%lp213022%_ _%rest213078%_ _%opts213025%_)))
                        (_%K213033213066%_
                         (lambda (_%rest213064%_)
                           (_%lp213022%_ _%rest213064%_ _%opts213025%_))))
                    (if (pair? _%rest213026213052%_)
                        (let ((_%tl213048213128%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest213026213052%_)))
                              (_%hd213047213126%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest213026213052%_))))
                          (if (equal? _%hd213047213126%_ '"-ld-options")
                              (if (pair? _%tl213048213128%_)
                                  (let ((_%tl213050213133%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl213048213128%_)))
                                        (_%hd213049213131%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl213048213128%_))))
                                    (if (equal? _%hd213049213131%_ '"-static")
                                        (let ((_%opt213136%_
                                               _%hd213049213131%_)
                                              (_%rest213138%_
                                               _%tl213050213133%_))
                                          (_%K213046213123%_
                                           _%rest213138%_
                                           _%opt213136%_))
                                        (let ((_%opt213113%_
                                               _%hd213049213131%_)
                                              (_%rest213115%_
                                               _%tl213050213133%_))
                                          (_%K213041213100%_
                                           _%rest213115%_
                                           _%opt213113%_))))
                                  (let ((_%rest213072%_ _%tl213048213128%_))
                                    (_%K213033213066%_ _%rest213072%_)))
                              (if (equal? _%hd213047213126%_ '"-cc-options")
                                  (if (pair? _%tl213048213128%_)
                                      (let* ((_%tl213040213088%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl213048213128%_)))
                                             (_%rest213091%_
                                              _%tl213040213088%_))
                                        (_%K213036213080%_ _%rest213091%_))
                                      (let ((_%rest213072%_
                                             _%tl213048213128%_))
                                        (_%K213033213066%_ _%rest213072%_)))
                                  (let ((_%rest213072%_ _%tl213048213128%_))
                                    (_%K213033213066%_ _%rest213072%_)))))
                        (_%else213031213060%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords213143%_ _%static?213011213144%_)
        (let ((_%phi?213146%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords213143%_
           _%static?213011213144%_
           _%phi?213146%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g214700_
        (let ((_g214701_ (let () (declare (not safe)) (##length _g214700_))))
          (cond ((let () (declare (not safe)) (##fx= _g214701_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g214700_))
                ((let () (declare (not safe)) (##fx= _g214701_ 3))
                 (apply gxc#gsc-ld-options__%__% _g214700_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g214700_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords213155%_ . _%args213156%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords213155%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213155%_
                  'static:
                  absent-value))
               _%args213156%_)))
    (define gxc#gsc-ld-options
      (lambda _%args213012213162%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args213012213162%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir213006%_)
        (let ((_%user-staticdir213008%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir213006%_
                       '" -I "
                       _%user-staticdir213008%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp212918%_ ((_%rest212920%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts212921%_ '()))
          (let* ((_%rest212922212942%_ _%rest212920%_)
                 (_%else212926212950%_ (lambda () _%opts212921%_)))
            (let ((_%K212936212993%_
                   (lambda (_%rest212991%_)
                     (_%lp212918%_ _%rest212991%_ _%opts212921%_)))
                  (_%K212931212971%_
                   (lambda (_%rest212968%_ _%opt212969%_)
                     (_%lp212918%_
                      _%rest212968%_
                      (let ((__tmp214702
                             (let ((__tmp214703
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt212969%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp214703))))
                        (declare (not safe))
                        (##append _%opts212921%_ __tmp214702)))))
                  (_%K212928212956%_
                   (lambda (_%rest212954%_)
                     (_%lp212918%_ _%rest212954%_ _%opts212921%_))))
              (if (pair? _%rest212922212942%_)
                  (let ((_%tl212938212998%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest212922212942%_)))
                        (_%hd212937212996%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest212922212942%_))))
                    (if (equal? _%hd212937212996%_ '"-cc-options")
                        (if (pair? _%tl212938212998%_)
                            (let* ((_%tl212940213001%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl212938212998%_)))
                                   (_%rest213004%_ _%tl212940213001%_))
                              (_%K212936212993%_ _%rest213004%_))
                            (let ((_%rest212962%_ _%tl212938212998%_))
                              (_%K212928212956%_ _%rest212962%_)))
                        (if (equal? _%hd212937212996%_ '"-ld-options")
                            (if (pair? _%tl212938212998%_)
                                (let ((_%tl212935212981%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl212938212998%_)))
                                      (_%hd212934212979%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl212938212998%_))))
                                  (let ((_%opt212984%_ _%hd212934212979%_)
                                        (_%rest212986%_ _%tl212935212981%_))
                                    (_%K212931212971%_
                                     _%rest212986%_
                                     _%opt212984%_)))
                                (let ((_%rest212962%_ _%tl212938212998%_))
                                  (_%K212928212956%_ _%rest212962%_)))
                            (let ((_%rest212962%_ _%tl212938212998%_))
                              (_%K212928212956%_ _%rest212962%_)))))
                  (_%else212926212950%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str212915%_)
        (not (let () (declare (not safe)) (string-empty? _%str212915%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path212908%_ _%phi?212909%_)
        (let ((_%gsc-link-opts212911%_
               (gxc#gsc-link-options__% _%phi?212909%_))
              (_%gsc-cc-opts212912%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?212909%_))
              (_%gsc-ld-opts212913%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?212909%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp214704
                  (let ((__tmp214705
                         (let ((__tmp214706 (cons _%path212908%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp214706
                            _%gsc-link-opts212911%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp214705 _%gsc-ld-opts212913%_))))
             (declare (not safe))
             (__foldr1 cons __tmp214704 _%gsc-cc-opts212912%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx212874%_ _%n212875%_ _%ext212876%_)
        (letrec ((_%module-relative-path212878%_
                  (lambda (_%ctx212906%_)
                    (path-strip-directory
                     (let ((__tmp214707
                            (##structure-ref
                             _%ctx212906%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp214707)))))
                 (_%module-source-directory212879%_
                  (lambda (_%ctx212902%_)
                    (path-directory
                     (let ((_%mpath212904%_
                            (##structure-ref
                             _%ctx212902%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath212904%_)
                           _%mpath212904%_
                           (last _%mpath212904%_))))))
                 (_%section-string212880%_
                  (lambda (_%n212896%_)
                    (if (number? _%n212896%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n212896%_))
                        (if (symbol? _%n212896%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n212896%_))
                            (if (string? _%n212896%_)
                                _%n212896%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n212896%_)))))))
                 (_%file-name212881%_
                  (lambda (_%path212894%_)
                    (if _%n212875%_
                        (string-append
                         _%path212894%_
                         '"~"
                         (_%section-string212880%_ _%n212875%_)
                         _%ext212876%_)
                        (string-append _%path212894%_ _%ext212876%_))))
                 (_%file-path212882%_
                  (lambda ()
                    (let ((_%$e212888%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e212888%_
                          ((lambda (_%outdir212891%_)
                             (path-expand
                              (_%file-name212881%_
                               (let ((__tmp214708
                                      (##structure-ref
                                       _%ctx212874%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp214708)))
                              _%outdir212891%_))
                           _%$e212888%_)
                          (path-expand
                           (_%file-name212881%_
                            (_%module-relative-path212878%_ _%ctx212874%_))
                           (_%module-source-directory212879%_
                            _%ctx212874%_)))))))
          (let ((_%path212884%_ (_%file-path212882%_)))
            (let ((__tmp214709
                   (lambda ()
                     (let ((__tmp214710 (path-directory _%path212884%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp214710)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp214709))
            _%path212884%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx212855%_)
        (letrec ((_%file-name212857%_
                  (lambda (_%id212872%_)
                    (let ((__tmp214711 (gxc#static-module-name _%id212872%_)))
                      (declare (not safe))
                      (##string-append __tmp214711 '".scm"))))
                 (_%file-path212858%_
                  (lambda ()
                    (let* ((_%file212864%_
                            (_%file-name212857%_
                             (##structure-ref
                              _%ctx212855%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e212866%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e212866%_
                          ((lambda (_%outdir212869%_)
                             (path-expand
                              _%file212864%_
                              (path-expand '"static" _%outdir212869%_)))
                           _%$e212866%_)
                          (path-expand _%file212864%_ '"static"))))))
          (let ((_%path212860%_ (_%file-path212858%_)))
            (let ((__tmp214712
                   (lambda ()
                     (let ((__tmp214713 (path-directory _%path212860%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp214713)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp214712))
            _%path212860%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx212848%_ _%opts212849%_)
        (let ((_%$e212851%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts212849%_))))
          (if _%$e212851%_
              _%$e212851%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx212848%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr212838%_)
        (if (string? _%idstr212838%_)
            (let* ((_%str212841%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr212838%_)))
                   (_%strs212843%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str212841%_ '#\/))))
              (declare (not safe))
              (string-join _%strs212843%_ '"__"))
            (if (symbol? _%idstr212838%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr212838%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr212838%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp214714
               (let ((__tmp214715 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp214715 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp214714))))
    (define gxc#invoke__%
      (lambda (_%@@keywords212802%_
               _%stdout-redirection212798212803%_
               _%stderr-redirection212799212805%_
               _%program212807%_
               _%args212808%_)
        (let* ((_%stdout-redirection212810%_
                (if (eq? _%stdout-redirection212798212803%_ absent-value)
                    '#f
                    _%stdout-redirection212798212803%_))
               (_%stderr-redirection212812%_
                (if (eq? _%stderr-redirection212799212805%_ absent-value)
                    '#f
                    _%stderr-redirection212799212805%_)))
          (let ((__tmp214716 (cons _%program212807%_ _%args212808%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp214716))
          (let* ((_%proc212814%_
                  (open-process
                   (cons 'path:
                         (cons _%program212807%_
                               (cons 'arguments:
                                     (cons _%args212808%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection212810%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection212812%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output212819%_
                  (if (or _%stdout-redirection212810%_
                          _%stderr-redirection212812%_)
                      (read-line _%proc212814%_ '#f)
                      '#f))
                 (_%status212822%_ (process-status _%proc212814%_)))
            (let () (declare (not safe)) (##close-port _%proc212814%_))
            (if (zero? _%status212822%_)
                '#!void
                (begin
                  (display _%output212819%_)
                  (let ((__tmp214717 (cons _%program212807%_ _%args212808%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp214717
                     _%status212822%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords212827%_ . _%args212828%_)
        (apply gxc#invoke__%
               _%@@keywords212827%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords212827%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords212827%_
                  'stderr-redirection:
                  absent-value))
               _%args212828%_)))
    (define gxc#invoke
      (lambda _%args212800212834%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args212800212834%_)))))
