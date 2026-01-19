(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1768864956)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp214537 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp214537))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp214538 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp214538))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path214394%_ _%fun214395%_)
        (with-output-to-file
         (cons 'path: (cons _%path214394%_ gxc#scheme-file-settings))
         _%fun214395%_)))
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
      (lambda (_%gerbil-libdir214389%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir214389%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path214387%_)
        (let ((__tmp214539 (object->string _%path214387%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp214539 '")"))))
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
      (lambda (_%dir214385%_) (delete-file-or-directory _%dir214385%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath214329%_ _%opts214330%_)
        (if (string? _%srcpath214329%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath214329%_)))
        (let* ((_%outdir214332%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts214330%_)))
               (_%invoke-gsc?214334%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts214330%_)))
               (_%target214339%_
                (let ((_%$e214336%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts214330%_))))
                  (if _%$e214336%_ _%$e214336%_ 'C)))
               (_%gsc-options214344%_
                (append (cons '"-target"
                              (cons (symbol->string _%target214339%_) '()))
                        (let ((_%$e214341%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts214330%_))))
                          (if _%$e214341%_ _%$e214341%_ '()))))
               (_%keep-scm?214346%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts214330%_)))
               (_%verbosity214348%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts214330%_)))
               (_%optimize214350%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts214330%_)))
               (_%debug214352%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts214330%_)))
               (_%gen-ssxi214354%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts214330%_)))
               (_%parallel?214356%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts214330%_))))
          (if _%outdir214332%_
              (let ((__tmp214540
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir214332%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp214540))
              '#!void)
          (if _%optimize214350%_
              (let ((__tmp214541
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp214541))
              '#!void)
          (let ((__tmp214542
                 (lambda ()
                   (let ((__tmp214543
                          (lambda ()
                            (let ((__tmp214544
                                   (lambda ()
                                     (let ((__tmp214545
                                            (lambda ()
                                              (let ((__tmp214546
                                                     (lambda ()
                                                       (let ((__tmp214547
                                                              (lambda ()
                                                                (let ((__tmp214548
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp214549
                                        (lambda ()
                                          (let ((__tmp214550
                                                 (lambda ()
                                                   (let ((__tmp214552
                                                          (lambda ()
                                                            (let ((__tmp214554
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp214555
                                    (lambda ()
                                      (let ((__tmp214556
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"compile "
                                                  _%srcpath214329%_))
                                               (gxc#compile-top-module
                                                (let ((__tmp214557
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#import-module__0
                                                            _%srcpath214329%_)))))
                                                  (declare (not safe))
                                                  (__with-lock
                                                   gxc#+driver-mutex+
                                                   __tmp214557))))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp214556
                                         gx#current-expander-compiling?
                                         '#t)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp214555
                                gxc#current-compile-parallel
                                _%parallel?214356%_))))
                          (__tmp214553
                           (cons (cons 'compile-module
                                       (cons _%srcpath214329%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp214554
                       gxc#current-compile-context
                       __tmp214553))))
                 (__tmp214551 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp214552
                                                      gxc#current-compile-timestamp
                                                      __tmp214551)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp214550
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi214354%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp214549
                                    gxc#current-compile-debug
                                    _%debug214352%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp214548
                           gxc#current-compile-optimize
                           _%optimize214350%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp214547
                  gxc#current-compile-verbose
                  _%verbosity214348%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp214546
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?214346%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp214545
                                        gxc#current-compile-gsc-options
                                        _%gsc-options214344%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp214544
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?214334%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp214543
                      gx#current-compilation-target
                      _%target214339%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp214542
             gxc#current-compile-output-dir
             _%outdir214332%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath214378%_)
        (let ((_%opts214380%_ '()))
          (gxc#compile-module__% _%srcpath214378%_ _%opts214380%_))))
    (define gxc#compile-module
      (lambda _g214558_
        (let ((_g214559_ (let () (declare (not safe)) (##length _g214558_))))
          (cond ((let () (declare (not safe)) (##fx= _g214559_ 1))
                 (apply gxc#compile-module__0 _g214558_))
                ((let () (declare (not safe)) (##fx= _g214559_ 2))
                 (apply gxc#compile-module__% _g214558_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g214558_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath214279%_ _%opts214280%_)
        (if (string? _%srcpath214279%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath214279%_)))
        (let* ((_%outdir214282%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts214280%_)))
               (_%invoke-gsc?214284%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts214280%_)))
               (_%target214289%_
                (let ((_%$e214286%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts214280%_))))
                  (if _%$e214286%_ _%$e214286%_ 'C)))
               (_%gsc-options214294%_
                (append (cons '"-target"
                              (cons (symbol->string _%target214289%_) '()))
                        (let ((_%$e214291%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts214280%_))))
                          (if _%$e214291%_ _%$e214291%_ '()))))
               (_%keep-scm?214296%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts214280%_)))
               (_%verbosity214298%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts214280%_)))
               (_%debug214300%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts214280%_)))
               (_%parallel?214302%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts214280%_))))
          (if _%outdir214282%_
              (let ((__tmp214560
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir214282%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp214560))
              '#!void)
          (let ((__tmp214561
                 (lambda ()
                   (let ((__tmp214562
                          (lambda ()
                            (let ((__tmp214563
                                   (lambda ()
                                     (let ((__tmp214564
                                            (lambda ()
                                              (let ((__tmp214565
                                                     (lambda ()
                                                       (let ((__tmp214566
                                                              (lambda ()
                                                                (let ((__tmp214567
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp214569
                                        (lambda ()
                                          (let ((__tmp214571
                                                 (lambda ()
                                                   (let ((__tmp214572
                                                          (lambda ()
                                                            (let ((__tmp214573
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"compile exe " _%srcpath214279%_))
                             (gxc#compile-executable-module
                              (let ((__tmp214574
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#import-module__0
                                          _%srcpath214279%_)))))
                                (declare (not safe))
                                (__with-lock gxc#+driver-mutex+ __tmp214574))
                              _%opts214280%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp214573
                       gx#current-expander-compiling?
                       '#t)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp214572
                                                      gxc#current-compile-parallel
                                                      _%parallel?214302%_))))
                                                (__tmp214570
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath214279%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp214571
                                             gxc#current-compile-context
                                             __tmp214570))))
                                       (__tmp214568 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp214569
                                    gxc#current-compile-timestamp
                                    __tmp214568)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp214567
                           gxc#current-compile-debug
                           _%debug214300%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp214566
                  gxc#current-compile-verbose
                  _%verbosity214298%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp214565
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?214296%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp214564
                                        gxc#current-compile-gsc-options
                                        _%gsc-options214294%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp214563
                               gx#current-compilation-target
                               _%target214289%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp214562
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?214284%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp214561
             gxc#current-compile-output-dir
             _%outdir214282%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath214321%_)
        (let ((_%opts214323%_ '()))
          (gxc#compile-exe__% _%srcpath214321%_ _%opts214323%_))))
    (define gxc#compile-exe
      (lambda _g214575_
        (let ((_g214576_ (let () (declare (not safe)) (##length _g214575_))))
          (cond ((let () (declare (not safe)) (##fx= _g214576_ 1))
                 (apply gxc#compile-exe__0 _g214575_))
                ((let () (declare (not safe)) (##fx= _g214576_ 2))
                 (apply gxc#compile-exe__% _g214575_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g214575_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx214275%_ _%opts214276%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts214276%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx214275%_
             _%opts214276%_)
            (gxc#compile-executable-module/separate
             _%ctx214275%_
             _%opts214276%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx214075%_ _%opts214076%_)
        (letrec ((_%generate-stub214078%_
                  (lambda (_%builtin-modules214271%_)
                    (let ((_%mod-main214273%_
                           (gxc#find-runtime-symbol _%ctx214075%_ 'main)))
                      (let ((__tmp214577
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules214271%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp214577))
                      (let ((__tmp214578
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main214273%_
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
                        (##write __tmp214578))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts214079%_
                  (lambda (_%gerbil-libdir214269%_)
                    (let ((__tmp214579
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir214269%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp214579 read))))
                 (_%replace-extension214080%_
                  (lambda (_%path214266%_ _%ext214267%_)
                    (string-append
                     (path-strip-extension _%path214266%_)
                     _%ext214267%_)))
                 (_%replace-extension-with-c214081%_
                  (lambda (_%path214264%_)
                    (_%replace-extension214080%_ _%path214264%_ '".c")))
                 (_%replace-extension-with-object214082%_
                  (lambda (_%path214262%_)
                    (_%replace-extension214080%_
                     _%path214262%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?214083%_
                  (lambda (_%ctx214260%_)
                    (if (_%exclude-module?214085%_ _%ctx214260%_)
                        '#f
                        (not (_%libgerbil-module?214084%_ _%ctx214260%_)))))
                 (_%libgerbil-module?214084%_
                  (lambda (_%ctx214253%_)
                    (let ((_%id-str214255%_
                           (symbol->string
                            (##structure-ref
                             _%ctx214253%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?214085%_ _%id-str214255%_)
                          '#f
                          (let ((_%$e214257%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str214255%_))))
                            (if _%$e214257%_
                                _%$e214257%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str214255%_))))))))
                 (_%exclude-module?214085%_
                  (lambda (_%ctx-or-str214249%_)
                    (let ((_%str214251%_
                           (if (string? _%ctx-or-str214249%_)
                               _%ctx-or-str214249%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str214249%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str214251%_))))
                 (_%not-file-empty?214086%_
                  (lambda (_%path214247%_)
                    (not (gxc#file-empty? _%path214247%_))))
                 (_%fold-libgerbil-runtime-scm214087%_
                  (lambda (_%gerbil-staticdir214240%_ _%libgerbil-scm214241%_)
                    (let ((_%gerbil-runtime-scm214245%_
                           (let ((__tmp214580
                                  (lambda (_%rtm214243%_)
                                    (path-expand
                                     (let ((__tmp214581
                                            (let ((__tmp214582
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm214243%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp214582
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp214581 '".scm"))
                                     _%gerbil-staticdir214240%_))))
                             (declare (not safe))
                             (##map __tmp214580 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates214088%_
                       (append _%gerbil-runtime-scm214245%_
                               _%libgerbil-scm214241%_)))))
                 (_%remove-duplicates214088%_
                  (lambda (_%strlst214200%_)
                    (let _%loop214202%_ ((_%rest214204%_ _%strlst214200%_)
                                         (_%result214205%_ '()))
                      (let* ((_%rest214206214214%_ _%rest214204%_)
                             (_%else214208214222%_
                              (lambda () (reverse! _%result214205%_)))
                             (_%K214210214228%_
                              (lambda (_%rest214225%_ _%path214226%_)
                                (if (member _%path214226%_ _%result214205%_)
                                    (_%loop214202%_
                                     _%rest214225%_
                                     _%result214205%_)
                                    (_%loop214202%_
                                     _%rest214225%_
                                     (cons _%path214226%_
                                           _%result214205%_))))))
                        (if (pair? _%rest214206214214%_)
                            (let ((_%hd214211214231%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest214206214214%_)))
                                  (_%tl214212214233%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest214206214214%_))))
                              (let* ((_%path214236%_ _%hd214211214231%_)
                                     (_%rest214238%_ _%tl214212214233%_))
                                (_%K214210214228%_
                                 _%rest214238%_
                                 _%path214236%_)))
                            (_%else214208214222%_))))))
                 (_%compile-stub214089%_
                  (lambda (_%output-scm214096%_ _%output-bin214097%_)
                    (let* ((_%gerbil-home214099%_
                            (let ((__tmp214583
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp214583)))
                           (_%gerbil-libdir214101%_
                            (path-expand '"lib" _%gerbil-home214099%_))
                           (_%gerbil-staticdir214103%_
                            (path-expand '"static" _%gerbil-libdir214101%_))
                           (_%deps214105%_
                            (gxc#find-runtime-module-deps _%ctx214075%_))
                           (_%libgerbil-deps214107%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?214084%_
                               _%deps214105%_)))
                           (_%libgerbil-scm214109%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps214107%_)))
                           (_%libgerbil-scm214111%_
                            (_%fold-libgerbil-runtime-scm214087%_
                             _%gerbil-staticdir214103%_
                             _%libgerbil-scm214109%_))
                           (_%libgerbil-c214113%_
                            (map _%replace-extension-with-c214081%_
                                 _%libgerbil-scm214111%_))
                           (_%libgerbil-o214115%_
                            (map _%replace-extension-with-object214082%_
                                 _%libgerbil-scm214111%_))
                           (_%src-deps214117%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?214083%_
                               _%deps214105%_)))
                           (_%src-deps-scm214119%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps214117%_)))
                           (_%src-deps-scm214121%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?214086%_
                               _%src-deps-scm214119%_)))
                           (_%src-deps-scm214123%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm214121%_)))
                           (_%src-deps-c214125%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c214081%_
                                     _%src-deps-scm214123%_)))
                           (_%src-deps-o214127%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object214082%_
                                     _%src-deps-scm214123%_)))
                           (_%src-bin-scm214129%_
                            (gxc#find-static-module-file _%ctx214075%_))
                           (_%src-bin-scm214131%_
                            (path-expand _%src-bin-scm214129%_))
                           (_%src-bin-c214133%_
                            (_%replace-extension-with-c214081%_
                             _%src-bin-scm214131%_))
                           (_%src-bin-o214135%_
                            (_%replace-extension-with-object214082%_
                             _%src-bin-scm214131%_))
                           (_%output-bin214137%_
                            (path-expand _%output-bin214097%_))
                           (_%output-scm214139%_
                            (path-expand _%output-scm214096%_))
                           (_%output-c214141%_
                            (_%replace-extension-with-c214081%_
                             _%output-scm214139%_))
                           (_%output-o214143%_
                            (_%replace-extension-with-object214082%_
                             _%output-scm214139%_))
                           (_%output_-c214145%_
                            (_%replace-extension214080%_
                             _%output-scm214139%_
                             '"_.c"))
                           (_%output_-o214147%_
                            (_%replace-extension214080%_
                             _%output-scm214139%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts214149%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts214151%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts214153%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir214103%_))
                           (_%output-ld-opts214155%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts214157%_
                            (_%get-libgerbil-ld-opts214079%_
                             _%gerbil-libdir214101%_))
                           (_%rpath214159%_
                            (gxc#gerbil-rpath _%gerbil-libdir214101%_))
                           (_%builtin-modules214163%_
                            (_%remove-duplicates214088%_
                             (let ((__tmp214584
                                    (let ((__tmp214586
                                           (lambda (_%mod214161%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod214161%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp214585
                                           (cons _%ctx214075%_
                                                 _%deps214105%_)))
                                      (declare (not safe))
                                      (##map __tmp214586 __tmp214585))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp214584)))))
                      (letrec ((_%compile-obj214166%_
                                (lambda (_%scm-path214173%_ _%c-path214174%_)
                                  (let* ((_%o-path214176%_
                                          (_%replace-extension214080%_
                                           _%c-path214174%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock214178%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path214176%_
                                             '".lock")))
                                         (_%locked214180%_ '#f)
                                         (_%unlock214183%_
                                          (lambda ()
                                            (close-port _%locked214180%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock214178%_)))))
                                    (let _%retry214186%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock214178%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry214186%_))
                                          (begin
                                            (set! _%locked214180%_
                                                  (let ((__tmp214587
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock214178%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp214587)))
                                            (if _%locked214180%_
                                                '#!void
                                                (_%retry214186%_)))))
                                    (let ((__tmp214589
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path214176%_)))
                                                     (not _%scm-path214173%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path214173%_
                                                        _%o-path214176%_)))
                                                 (let ((_%gsc-cc-opts214197%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp214590
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp214591 (cons _%c-path214174%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp214591
                            _%gsc-static-opts214153%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp214590 _%gsc-cc-opts214197%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp214588
                                           (lambda () (_%unlock214183%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp214589
                                       __tmp214588))))))
                        (let ((__tmp214592
                               (lambda ()
                                 (let ((__tmp214593
                                        (path-directory _%output-bin214137%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp214593)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp214592))
                        (gxc#with-output-to-scheme-file
                         _%output-scm214139%_
                         (lambda ()
                           (_%generate-stub214078%_
                            _%builtin-modules214163%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it214171%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp214594
                                                   (let ((__tmp214595
                                                          (let ((__tmp214596
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm214131%_
                               (cons _%output-scm214139%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp214596 _%src-deps-scm214123%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp214595
                                                      _%libgerbil-c214113%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp214594
                                               _%gsc-link-opts214149%_))))
                                     (for-each
                                      _%compile-obj214166%_
                                      (let ((__tmp214597
                                             (cons _%src-bin-scm214131%_
                                                   (cons _%output-scm214139%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp214597
                                         _%src-deps-scm214123%_))
                                      (let ((__tmp214598
                                             (cons _%src-bin-c214133%_
                                                   (cons _%output-c214141%_
                                                         (cons _%output_-c214145%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp214598
                                         _%src-deps-c214125%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin214137%_
                                                        (let ((__tmp214599
                                                               (cons _%src-bin-o214135%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o214143%_
                                   (cons _%output_-o214147%_
                                         (let ((__tmp214600
                                                (let ((__tmp214601
                                                       (let ((__tmp214603
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir214101%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts214157%_))))
                     (__tmp214602
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath214159%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp214603 __tmp214602))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp214601
                                                   _%output-ld-opts214155%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp214600
                                            _%libgerbil-o214115%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp214599 _%src-deps-o214127%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp214604
                                            (cons _%output-c214141%_
                                                  (cons _%output_-c214145%_
                                                        (cons _%output-o214143%_
                                                              (cons _%output_-o214147%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp214604)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it214171%_))
                                  (_%compile-it214171%_)))
                            '#!void))))))
          (let* ((_%output-bin214091%_
                  (gxc#compile-exe-output-file _%ctx214075%_ _%opts214076%_))
                 (_%output-scm214093%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin214091%_ '"__exe.scm"))))
            (_%compile-stub214089%_
             _%output-scm214093%_
             _%output-bin214091%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx213897%_ _%opts213898%_)
        (letrec ((_%reset-declare213900%_
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
                 (_%generate-stub213901%_
                  (lambda (_%deps214066%_)
                    (let ((_%mod-main214068%_
                           (gxc#find-runtime-symbol _%ctx213897%_ 'main))
                          (_%reset-decl214069%_ (_%reset-declare213900%_))
                          (_%user-decl214070%_ (_%user-declare213902%_)))
                      (for-each
                       (lambda (_%dep214072%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl214069%_))
                         (newline)
                         (if _%user-decl214070%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl214070%_))
                               (newline))
                             '#!void)
                         (let ((__tmp214605
                                (cons 'include (cons _%dep214072%_ '()))))
                           (declare (not safe))
                           (##write __tmp214605))
                         (newline))
                       _%deps214066%_)
                      (let ((__tmp214606
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main214068%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp214606))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare213902%_
                  (lambda ()
                    (let* ((_%gsc-opts213971%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts213898%_)))
                           (_%gsc-prelude213973%_
                            (if _%gsc-opts213971%_
                                (member '"-prelude" _%gsc-opts213971%_)
                                '#f))
                           (_%gsc-prelude213975%_
                            (if _%gsc-prelude213973%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude213973%_)))
                                '#f)))
                      (let _%lp213978%_ ((_%rest213980%_
                                          (cons _%gsc-prelude213975%_ '()))
                                         (_%user-decls213981%_ '()))
                        (let* ((_%rest213982213990%_ _%rest213980%_)
                               (_%else213984213998%_
                                (lambda ()
                                  (if (null? _%user-decls213981%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls213981%_)))))
                               (_%K213986214054%_
                                (lambda (_%rest214001%_ _%expr214002%_)
                                  (let* ((_%expr214003214015%_ _%expr214002%_)
                                         (_%else214006214023%_
                                          (lambda ()
                                            (_%lp213978%_
                                             _%rest214001%_
                                             _%user-decls213981%_))))
                                    (let ((_%K214011214044%_
                                           (lambda (_%decls214042%_)
                                             (_%lp213978%_
                                              _%rest214001%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls213981%_
                                                 _%decls214042%_)))))
                                          (_%K214008214029%_
                                           (lambda (_%exprs214027%_)
                                             (_%lp213978%_
                                              (append _%exprs214027%_
                                                      _%rest214001%_)
                                              _%user-decls213981%_))))
                                      (if (pair? _%expr214003214015%_)
                                          (let ((_%tl214013214049%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr214003214015%_)))
                                                (_%hd214012214047%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr214003214015%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd214012214047%_
                                                         'declare))
                                                (let ((_%decls214052%_
                                                       _%tl214013214049%_))
                                                  (_%K214011214044%_
                                                   _%decls214052%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd214012214047%_
                                                             'begin))
                                                    (let ((_%exprs214037%_
                                                           _%tl214013214049%_))
                                                      (_%K214008214029%_
                                                       _%exprs214037%_))
                                                    (_%else214006214023%_))))
                                          (_%else214006214023%_)))))))
                          (if (pair? _%rest213982213990%_)
                              (let ((_%hd213987214057%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest213982213990%_)))
                                    (_%tl213988214059%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest213982213990%_))))
                                (let* ((_%expr214062%_ _%hd213987214057%_)
                                       (_%rest214064%_ _%tl213988214059%_))
                                  (_%K213986214054%_
                                   _%rest214064%_
                                   _%expr214062%_)))
                              (_%else213984213998%_)))))))
                 (_%compile-stub213903%_
                  (lambda (_%output-scm213910%_ _%output-bin213911%_)
                    (let* ((_%gerbil-home213913%_
                            (let ((__tmp214607
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp214607)))
                           (_%gerbil-libdir213915%_
                            (path-expand '"lib" _%gerbil-home213913%_))
                           (_%runtime213917%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp213919%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home213913%_))
                           (_%include-gambit-sharp213921%_
                            (gxc#include-source _%gambit-sharp213919%_))
                           (_%bin-scm213923%_
                            (gxc#find-static-module-file _%ctx213897%_))
                           (_%deps213925%_
                            (gxc#find-runtime-module-deps _%ctx213897%_))
                           (_%deps213927%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps213925%_)))
                           (_%deps213932%_
                            (let ((__tmp214608
                                   (lambda (_%$obj213929%_)
                                     (not (gxc#file-empty? _%$obj213929%_)))))
                              (declare (not safe))
                              (##filter __tmp214608 _%deps213927%_)))
                           (_%deps213936%_
                            (let ((__tmp214609
                                   (lambda (_%f213934%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f213934%_
                                             _%runtime213917%_))))))
                              (declare (not safe))
                              (##filter __tmp214609 _%deps213932%_)))
                           (_%output-base213938%_
                            (let ((__tmp214610
                                   (path-strip-extension
                                    _%output-scm213910%_)))
                              (declare (not safe))
                              (##string-append __tmp214610)))
                           (_%output-c213940%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base213938%_ '".c")))
                           (_%output-o213942%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base213938%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_213944%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base213938%_ '"_.c")))
                           (_%output-o_213946%_
                            (let ((__tmp214611
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base213938%_
                               __tmp214611)))
                           (_%gsc-link-opts213948%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts213950%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts213952%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir213915%_)))
                           (_%output-ld-opts213954%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros213956%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp213921%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp213921%_
                                            '()))))
                           (_%gsc-link-opts213958%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts213948%_
                               _%gsc-gx-macros213956%_)))
                           (_%rpath213960%_
                            (gxc#gerbil-rpath _%gerbil-libdir213915%_))
                           (_%default-ld-options213962%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp214612
                             (lambda ()
                               (let ((__tmp214613
                                      (path-directory _%output-bin213911%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp214613)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp214612))
                      (gxc#with-output-to-scheme-file
                       _%output-scm213910%_
                       (lambda ()
                         (_%generate-stub213901%_
                          (let ((__tmp214614
                                 (let ((__tmp214615
                                        (cons _%bin-scm213923%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp214615
                                    _%deps213936%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp214614 _%runtime213917%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it213968%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_213944%_
                                                      (let ((__tmp214616
                                                             (cons _%output-scm213910%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp214616 _%gsc-link-opts213958%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp214617
                                                 (let ((__tmp214618
                                                        (cons _%output-c213940%_
                                                              (cons _%output-c_213944%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp214618
                                                    _%gsc-static-opts213952%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp214617
                                             _%gsc-cc-opts213950%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin213911%_
                                                      (cons _%output-o213942%_
                                                            (cons _%output-o_213946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp214619
                                 (let ((__tmp214621
                                        (cons '"-L"
                                              (cons _%gerbil-libdir213915%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options213962%_))))
                                       (__tmp214620
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath213960%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp214621 __tmp214620))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp214619
                             _%output-ld-opts213954%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it213968%_))
                                (_%compile-it213968%_)))
                          '#!void)))))
          (let* ((_%output-bin213905%_
                  (gxc#compile-exe-output-file _%ctx213897%_ _%opts213898%_))
                 (_%output-scm213907%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin213905%_ '"__exe.scm"))))
            (_%compile-stub213903%_
             _%output-scm213907%_
             _%output-bin213905%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx213846%_ _%id213847%_)
        (let ((_%$e213893%_
               (let ((__tmp214623
                      (lambda (_%e213848213850%_)
                        (let* ((_%g213852213862%_ _%e213848213850%_)
                               (_%else213854213870%_ (lambda () '#f))
                               (_%K213856213874%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g213852213862%_
                                 'gx#module-export::t))
                              (let* ((_%e213857213877%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g213852213862%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e213858213880%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g213852213862%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e213859213883%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g213852213862%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e213859213883%_ '0))
                                    (let ((_%e213860213886%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g213852213862%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g213888213890%_)
                                             (eq? _%g213888213890%_
                                                  _%id213847%_))
                                           _%e213860213886%_)
                                          (_%K213856213874%_)
                                          (_%else213854213870%_)))
                                    (_%else213854213870%_)))
                              (_%else213854213870%_)))))
                     (__tmp214622
                      (##structure-ref
                       _%ctx213846%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp214623 __tmp214622))))
          (if _%$e213893%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e213893%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx213837%_ _%id213838%_)
        (let ((_%$e213840%_
               (gxc#find-export-binding _%ctx213837%_ _%id213838%_)))
          (if _%$e213840%_
              ((lambda (_%bind213843%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind213843%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id213838%_)))
                 (##structure-ref _%bind213843%_ '1 gx#binding::t '#f))
               _%$e213840%_)
              (let ((__tmp214624
                     (##structure-ref
                      _%ctx213837%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp214624
                 _%id213838%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx213703%_)
        (letrec* ((_%ht213705%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template213706%_
                   (lambda (_%in213782%_ _%phi213783%_)
                     (let ((_%iphi213785%_
                            (fx+ _%phi213783%_
                                 (##direct-structure-ref
                                  _%in213782%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports213786%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in213782%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp213788%_ ((_%rest213790%_ _%imports213786%_)
                                          (_%r213791%_ '()))
                         (let* ((_%rest213792213800%_ _%rest213790%_)
                                (_%else213794213808%_ (lambda () _%r213791%_))
                                (_%K213796213825%_
                                 (lambda (_%rest213811%_ _%in213812%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in213812%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi213785%_))
                                           (_%lp213788%_
                                            _%rest213811%_
                                            (cons _%in213812%_ _%r213791%_))
                                           (_%lp213788%_
                                            _%rest213811%_
                                            _%r213791%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in213812%_
                                              'gx#module-import::t))
                                           (let ((_%iphi213816%_
                                                  (fx+ _%phi213783%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in213812%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi213816%_))
                                                 (_%lp213788%_
                                                  _%rest213811%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in213812%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r213791%_))
                                                 (_%lp213788%_
                                                  _%rest213811%_
                                                  _%r213791%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in213812%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi213819%_
                                                      (fx+ _%iphi213785%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in213812%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi213819%_))
                                                     (_%lp213788%_
                                                      _%rest213811%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in213812%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r213791%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi213819%_))
                                                         (_%lp213788%_
                                                          _%rest213811%_
                                                          (let ((__tmp214625
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template213706%_
                          _%in213812%_
                          _%iphi213785%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r213791%_ __tmp214625)))
                 (_%lp213788%_ _%rest213811%_ _%r213791%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp213788%_
                                                _%rest213811%_
                                                _%r213791%_)))))))
                           (if (pair? _%rest213792213800%_)
                               (let ((_%hd213797213828%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest213792213800%_)))
                                     (_%tl213798213830%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest213792213800%_))))
                                 (let* ((_%in213833%_ _%hd213797213828%_)
                                        (_%rest213835%_ _%tl213798213830%_))
                                   (_%K213796213825%_
                                    _%rest213835%_
                                    _%in213833%_)))
                               (_%else213794213808%_)))))))
                  (_%find-deps213707%_
                   (lambda (_%rest213715%_ _%deps213716%_)
                     (let* ((_%rest213717213725%_ _%rest213715%_)
                            (_%else213719213733%_ (lambda () _%deps213716%_))
                            (_%K213721213770%_
                             (lambda (_%rest213736%_ _%hd213737%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd213737%_
                                      'gx#module-context::t))
                                   (let ((_%id213740%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd213737%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports213741%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd213737%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht213705%_
                                            _%id213740%_))
                                         (_%find-deps213707%_
                                          _%rest213736%_
                                          _%deps213716%_)
                                         (let ((_%$e213744%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd213737%_))))
                                           (if _%$e213744%_
                                               ((lambda (_%pre213747%_)
                                                  (let ((_%xdeps213749%_
                                                         (_%find-deps213707%_
                                                          (cons _%pre213747%_
                                                                _%imports213741%_)
                                                          _%deps213716%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht213705%_
                                                       _%id213740%_
                                                       _%hd213737%_))
                                                    (_%find-deps213707%_
                                                     _%rest213736%_
                                                     (cons _%hd213737%_
                                                           _%xdeps213749%_))))
                                                _%$e213744%_)
                                               (let ((_%xdeps213752%_
                                                      (_%find-deps213707%_
                                                       _%imports213741%_
                                                       _%deps213716%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht213705%_
                                                    _%id213740%_
                                                    _%hd213737%_))
                                                 (_%find-deps213707%_
                                                  _%rest213736%_
                                                  (cons _%hd213737%_
                                                        _%xdeps213752%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd213737%_
                                          'gx#prelude-context::t))
                                       (let ((_%id213755%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd213737%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht213705%_
                                                _%id213755%_))
                                             (_%find-deps213707%_
                                              _%rest213736%_
                                              _%deps213716%_)
                                             (let ((_%xdeps213759%_
                                                    (_%find-deps213707%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd213737%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps213716%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht213705%_
                                                      _%id213755%_))
                                                   (_%find-deps213707%_
                                                    _%rest213736%_
                                                    _%xdeps213759%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht213705%_
                                                        _%id213755%_
                                                        _%hd213737%_))
                                                     (_%find-deps213707%_
                                                      _%rest213736%_
                                                      (cons _%hd213737%_
                                                            _%xdeps213759%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd213737%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd213737%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps213707%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd213737%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest213736%_)
                                                _%deps213716%_)
                                               (_%find-deps213707%_
                                                _%rest213736%_
                                                _%deps213716%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd213737%_
                                                  'gx#module-export::t))
                                               (_%find-deps213707%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd213737%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest213736%_)
                                                _%deps213716%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd213737%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd213737%_ '2 '#f '#f)))
               (_%find-deps213707%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd213737%_ '1 '#f '#f))
                      _%rest213736%_)
                _%deps213716%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd213737%_ '2 '#f '#f)))
                   (let ((_%xdeps213766%_
                          (_%import-set-template213706%_ _%hd213737%_ '0)))
                     (_%find-deps213707%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest213736%_ _%xdeps213766%_))
                      _%deps213716%_))
                   (_%find-deps213707%_ _%rest213736%_ _%deps213716%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd213737%_))))))))))
                       (if (pair? _%rest213717213725%_)
                           (let ((_%hd213722213773%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest213717213725%_)))
                                 (_%tl213723213775%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest213717213725%_))))
                             (let* ((_%hd213778%_ _%hd213722213773%_)
                                    (_%rest213780%_ _%tl213723213775%_))
                               (_%K213721213770%_
                                _%rest213780%_
                                _%hd213778%_)))
                           (_%else213719213733%_))))))
          (let ((__tmp214626
                 (filter gx#expander-context-id
                         (_%find-deps213707%_
                          (let ((_%$e213709%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx213703%_))))
                            (if _%$e213709%_
                                ((lambda (_%pre213712%_)
                                   (cons _%pre213712%_
                                         (##structure-ref
                                          _%ctx213703%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e213709%_)
                                (##structure-ref
                                 _%ctx213703%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp214626)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx213633%_)
        (let* ((_%context-id213635%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx213633%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx213633%_ '1 '#f '#f))
                    (string->symbol _%ctx213633%_)))
               (_%scm213637%_
                (let ((__tmp214627
                       (gxc#static-module-name _%context-id213635%_)))
                  (declare (not safe))
                  (##string-append __tmp214627 '".scm")))
               (_%dirs213639%_ (let () (declare (not safe)) (load-path)))
               (_%dirs213645%_
                (let ((_%user-libpath213641%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath213641%_
                      (let ((_%user-libpath213643%_
                             (path-expand '"lib" _%user-libpath213641%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath213643%_ _%dirs213639%_))
                            _%dirs213639%_
                            (cons _%user-libpath213643%_ _%dirs213639%_)))
                      _%dirs213639%_)))
               (_%dirs213655%_
                (let ((_%$e213647%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e213647%_
                      ((lambda (_%g213649213651%_)
                         (cons _%g213649213651%_ _%dirs213645%_))
                       _%$e213647%_)
                      _%dirs213645%_)))
               (_%dirs213661%_
                (let ((__tmp214628
                       (lambda (_%g213656213658%_)
                         (path-expand '"static" _%g213656213658%_))))
                  (declare (not safe))
                  (##map __tmp214628 _%dirs213655%_))))
          (let _%lp213664%_ ((_%rest213666%_ _%dirs213661%_))
            (let* ((_%rest213667213675%_ _%rest213666%_)
                   (_%else213669213683%_
                    (lambda ()
                      (let ((__tmp214629
                             (##structure-ref
                              _%ctx213633%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp214629
                         _%scm213637%_))))
                   (_%K213671213691%_
                    (lambda (_%rest213686%_ _%dir213687%_)
                      (let ((_%path213689%_
                             (path-expand _%scm213637%_ _%dir213687%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path213689%_))
                            _%path213689%_
                            (_%lp213664%_ _%rest213686%_))))))
              (if (pair? _%rest213667213675%_)
                  (let ((_%hd213672213694%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest213667213675%_)))
                        (_%tl213673213696%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest213667213675%_))))
                    (let* ((_%dir213699%_ _%hd213672213694%_)
                           (_%rest213701%_ _%tl213673213696%_))
                      (_%K213671213691%_ _%rest213701%_ _%dir213699%_)))
                  (_%else213669213683%_)))))))
    (define gxc#file-empty?
      (lambda (_%path213631%_)
        (zero? (let ((__tmp214630 (file-info _%path213631%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp214630)))))
    (define gxc#compile-top-module
      (lambda (_%ctx213622%_)
        (let ((__tmp214631
               (lambda ()
                 (let ((__tmp214632
                        (lambda ()
                          (let ((__tmp214633
                                 (lambda ()
                                   (let ((__tmp214635
                                          (lambda ()
                                            (let ((__tmp214637
                                                   (lambda ()
                                                     (let ((__tmp214639
                                                            (lambda ()
                                                              (let ((__tmp214640
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx213622%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp214640))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp214641
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx213622%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp214641))
                          '#!void)
                      (gxc#collect-bindings _%ctx213622%_)
                      (gxc#compile-runtime-code _%ctx213622%_)
                      (gxc#compile-meta-code _%ctx213622%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx213622%_)
                          '#!void)))
                   (__tmp214638
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
                __tmp214639
                gxc#current-compile-runtime-names
                __tmp214638))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp214636
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp214637
                                               gxc#current-compile-runtime-sections
                                               __tmp214636))))
                                         (__tmp214634
                                          (let ((__obj214535
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj214535))
                                            __obj214535)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp214635
                                      gxc#current-compile-symbol-table
                                      __tmp214634)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp214633
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp214632
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp214631
           gx#current-expander-context
           _%ctx213622%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx213620%_)
        (let ((__tmp214642
               (##structure-ref _%ctx213620%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp214642))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx213564%_)
        (letrec ((_%compile1213566%_
                  (lambda (_%ctx213609%_)
                    (let* ((_%code213611%_
                            (##structure-ref
                             _%ctx213609%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm213615%_
                            (let ((_%idstr213613%_
                                   (let ((__tmp214643
                                          (##structure-ref
                                           _%ctx213609%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp214643))))
                              (declare (not safe))
                              (##string-append _%idstr213613%_ '"~0")))
                           (_%rtc?213617%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code213611%_))))
                      (if _%rtc?213617%_
                          (let ((__tmp214644
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp214644
                             _%ctx213609%_
                             _%rtm213615%_))
                          '#!void)
                      (_%generate-runtime-code213568%_
                       _%ctx213609%_
                       _%code213611%_
                       (if _%rtc?213617%_ _%rtm213615%_ '#f)))))
                 (_%context-timestamp213567%_
                  (lambda (_%ctx213607%_)
                    (let ((__tmp214645
                           (let ((__tmp214646
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx213607%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp214646 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp214645))))
                 (_%generate-runtime-code213568%_
                  (lambda (_%ctx213575%_ _%code213576%_ _%rtm213577%_)
                    (let* ((_%runtime-code?213579%_ (if _%rtm213577%_ '#t '#f))
                           (_%lifts213581%_ (box '()))
                           (_%runtime-code213588%_
                            (if _%runtime-code?213579%_
                                (let ((__tmp214647
                                       (lambda ()
                                         (let ((__tmp214648
                                                (lambda ()
                                                  (let ((__tmp214649
                                                         (lambda ()
                                                           (let ((__tmp214651
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ((__tmp214653
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code213576%_))))
                                  (__tmp214652
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp214653
                               gxc#current-compile-identifiers
                               __tmp214652))))
                         (__tmp214650
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp214651
                      gxc#current-compile-marks
                      __tmp214650)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp214649
                                                     gxc#current-compile-lift
                                                     _%lifts213581%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp214648
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp214647
                                   gx#current-expander-context
                                   _%ctx213575%_))
                                '#f))
                           (_%runtime-code213590%_
                            (if _%runtime-code?213579%_
                                (if (null? (unbox _%lifts213581%_))
                                    _%runtime-code213588%_
                                    (cons 'begin
                                          (let ((__tmp214655
                                                 (cons _%runtime-code213588%_
                                                       '()))
                                                (__tmp214654
                                                 (reverse (unbox _%lifts213581%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp214655
                                             __tmp214654))))
                                '#f))
                           (_%runtime-code213592%_
                            (if _%runtime-code?213579%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp213567%_
                                                         _%ctx213575%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code213590%_ '())))
                                '#f))
                           (_%loader-code213595%_
                            (let ((__tmp214656
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code213576%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp214656
                               gx#current-expander-context
                               _%ctx213575%_)))
                           (_%loader-code213597%_
                            (cons 'begin
                                  (cons _%loader-code213595%_
                                        (cons (if _%runtime-code?213579%_
                                                  (cons 'load-module
                                                        (cons _%rtm213577%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0213599%_
                            (gxc#compile-output-file _%ctx213575%_ '0 '".scm"))
                           (_%scmrt213601%_
                            (gxc#compile-output-file
                             _%ctx213575%_
                             '#f
                             '".scm"))
                           (_%scms213603%_
                            (gxc#compile-static-output-file _%ctx213575%_)))
                      (if _%runtime-code?213579%_
                          (gxc#compile-scm-file__0
                           _%scm0213599%_
                           _%runtime-code213592%_)
                          '#!void)
                      (let ((__tmp214657
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt213601%_
                                _%loader-code213597%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp214657
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms213603%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms213603%_))
                          '#!void)
                      (if _%runtime-code?213579%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0213599%_ _%scms213603%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms213603%_ void)))))))
          (let* ((_%all-modules213570%_
                  (cons _%ctx213564%_ (gxc#lift-nested-modules _%ctx213564%_)))
                 (__tmp214658
                  (lambda (_%ctx213572%_)
                    (let ((__tmp214659
                           (lambda () (_%compile1213566%_ _%ctx213572%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp214659
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp214658 _%all-modules213570%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx213463%_)
        (letrec ((_%compile-ssi213465%_
                  (lambda (_%code213532%_)
                    (let* ((_%path213534%_
                            (gxc#compile-output-file
                             _%ctx213463%_
                             '#f
                             '".ssi"))
                           (_%prelude213546%_
                            (let* ((_%super213536%_
                                    (##structure-ref
                                     _%ctx213463%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e213538%_
                                    (##structure-ref
                                     _%super213536%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e213538%_
                                  ((lambda (_%g213540213542%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g213540213542%_)))
                                   _%$e213538%_)
                                  ':<root>)))
                           (_%ns213548%_
                            (##structure-ref
                             _%ctx213463%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr213550%_
                            (symbol->string
                             (##structure-ref
                              _%ctx213463%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg213558%_
                            (let ((_%$e213552%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr213550%_ '#\/))))
                              (if _%$e213552%_
                                  ((lambda (_%x213555%_)
                                     (let ((__tmp214660
                                            (substring
                                             _%idstr213550%_
                                             '0
                                             _%x213555%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp214660)))
                                   _%$e213552%_)
                                  '#f)))
                           (_%rt213560%_
                            (let ((__tmp214661
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp214661 _%ctx213463%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path213534%_))
                      (gxc#with-output-to-scheme-file
                       _%path213534%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude213546%_))
                         (if _%pkg213558%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg213558%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns213548%_))
                         (newline)
                         (pretty-print _%code213532%_)
                         (if _%rt213560%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt213560%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi213466%_
                  (lambda (_%part213471%_)
                    (let* ((_%part213472213485%_ _%part213471%_)
                           (_%E213474213489%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part213472213485%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K213475213501%_
                            (lambda (_%code213492%_
                                     _%n213493%_
                                     _%phi213494%_
                                     _%phi-ctx213495%_)
                              (let ((_%code213499%_
                                     (let ((__tmp214662
                                            (lambda ()
                                              (let ((__tmp214663
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code213492%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp214663
                                                 gx#current-expander-phi
                                                 _%phi213494%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp214662
                                        gx#current-expander-context
                                        _%phi-ctx213495%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx213463%_
                                  _%n213493%_
                                  '".scm")
                                 _%code213499%_
                                 '#t)))))
                      (if (pair? _%part213472213485%_)
                          (let ((_%hd213476213504%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part213472213485%_)))
                                (_%tl213477213506%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part213472213485%_))))
                            (let ((_%phi-ctx213509%_ _%hd213476213504%_))
                              (if (pair? _%tl213477213506%_)
                                  (let ((_%hd213478213511%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl213477213506%_)))
                                        (_%tl213479213513%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl213477213506%_))))
                                    (let ((_%phi213516%_ _%hd213478213511%_))
                                      (if (pair? _%tl213479213513%_)
                                          (let ((_%hd213480213518%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl213479213513%_)))
                                                (_%tl213481213520%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl213479213513%_))))
                                            (let ((_%n213523%_
                                                   _%hd213480213518%_))
                                              (if (pair? _%tl213481213520%_)
                                                  (let ((_%hd213482213525%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl213481213520%_)))
                                                        (_%tl213483213527%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl213481213520%_))))
                                                    (let ((_%code213530%_
                                                           _%hd213482213525%_))
                                                      (if (null? _%tl213483213527%_)
                                                          (_%K213475213501%_
                                                           _%code213530%_
                                                           _%n213523%_
                                                           _%phi213516%_
                                                           _%phi-ctx213509%_)
                                                          (_%E213474213489%_))))
                                                  (_%E213474213489%_))))
                                          (_%E213474213489%_))))
                                  (_%E213474213489%_))))
                          (_%E213474213489%_))))))
          (let ((_g214664_ (gxc#generate-meta-code _%ctx213463%_)))
            (begin
              (let ((_g214665_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g214664_)
                           (##values-length _g214664_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g214665_ 2)))
                    (error "Context expects 2 values" _g214665_)))
              (let ((_%ssi-code213468%_
                     (let () (declare (not safe)) (##values-ref _g214664_ 0)))
                    (_%phi-code213469%_
                     (let () (declare (not safe)) (##values-ref _g214664_ 1))))
                (begin
                  (_%compile-ssi213465%_ _%ssi-code213468%_)
                  (for-each _%compile-phi213466%_ _%phi-code213469%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx213445%_)
        (let* ((_%path213447%_
                (gxc#compile-output-file _%ctx213445%_ '#f '".ssxi.ss"))
               (_%code213449%_
                (let ((__tmp214666
                       (##structure-ref
                        _%ctx213445%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp214666)))
               (_%idstr213451%_
                (symbol->string
                 (##structure-ref
                  _%ctx213445%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg213459%_
                (let ((_%$e213453%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr213451%_ '#\/))))
                  (if _%$e213453%_
                      ((lambda (_%x213456%_)
                         (let ((__tmp214667
                                (substring _%idstr213451%_ '0 _%x213456%_)))
                           (declare (not safe))
                           (##string->symbol __tmp214667)))
                       _%$e213453%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path213447%_))
          (gxc#with-output-to-scheme-file
           _%path213447%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg213459%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg213459%_))
                 '#!void)
             (newline)
             (pretty-print _%code213449%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx213438%_)
        (let* ((_%state213440%_
                (let ((__obj214536
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj214536 _%ctx213438%_))
                  __obj214536))
               (_%ssi-code213442%_
                (let ((__tmp214668
                       (##structure-ref
                        _%ctx213438%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state213440%_
                   __tmp214668))))
          (values _%ssi-code213442%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state213440%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx213429%_)
        (let* ((_%lifts213431%_ (box '()))
               (__tmp214669
                (lambda ()
                  (let ((__tmp214671
                         (lambda ()
                           (let ((__tmp214673
                                  (lambda ()
                                    (let ((_%code213436%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-generate-runtime-phi
                                              _%stx213429%_))))
                                      (if (null? (unbox _%lifts213431%_))
                                          _%code213436%_
                                          (cons 'begin
                                                (let ((__tmp214675
                                                       (cons _%code213436%_
                                                             '()))
                                                      (__tmp214674
                                                       (reverse (unbox _%lifts213431%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp214675
                                                   __tmp214674)))))))
                                 (__tmp214672
                                  (let ()
                                    (declare (not safe))
                                    (gxc#make-bound-identifier-table))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp214673
                              gxc#current-compile-identifiers
                              __tmp214672))))
                        (__tmp214670
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp214671
                     gxc#current-compile-marks
                     __tmp214670)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp214669
           gxc#current-compile-lift
           _%lifts213431%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx213425%_)
        (let ((_%modules213427%_ (box '())))
          (let ((__tmp214676
                 (##structure-ref _%ctx213425%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules213427%_ __tmp214676))
          (reverse (unbox _%modules213427%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path213405%_ _%code213406%_ _%phi?213407%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path213405%_))
        (gxc#with-output-to-scheme-file
         _%path213405%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp214677
                                           (if _%phi?213407%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp214677)))))))
           (pretty-print _%code213406%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it213411%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path213405%_ _%phi?213407%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp214678
                         (cons 'compile-file (cons _%path213405%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it213411%_ __tmp214678))
                  (_%compile-it213411%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path213416%_ _%code213417%_)
        (let ((_%phi?213419%_ '#f))
          (gxc#compile-scm-file__%
           _%path213416%_
           _%code213417%_
           _%phi?213419%_))))
    (define gxc#compile-scm-file
      (lambda _g214679_
        (let ((_g214680_ (let () (declare (not safe)) (##length _g214679_))))
          (cond ((let () (declare (not safe)) (##fx= _g214680_ 2))
                 (apply gxc#compile-scm-file__0 _g214679_))
                ((let () (declare (not safe)) (##fx= _g214680_ 3))
                 (apply gxc#compile-scm-file__% _g214679_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g214679_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?213306%_)
        (let _%lp213308%_ ((_%rest213310%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts213311%_ '()))
          (let* ((_%rest213312213332%_ _%rest213310%_)
                 (_%else213316213340%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts213311%_)))
                        (reverse _%opts213311%_)))))
            (let ((_%K213326213383%_
                   (lambda (_%rest213381%_)
                     (_%lp213308%_ _%rest213381%_ _%opts213311%_)))
                  (_%K213321213365%_
                   (lambda (_%rest213363%_)
                     (_%lp213308%_ _%rest213363%_ _%opts213311%_)))
                  (_%K213318213347%_
                   (lambda (_%rest213344%_ _%opt213345%_)
                     (_%lp213308%_
                      _%rest213344%_
                      (cons _%opt213345%_ _%opts213311%_)))))
              (if (pair? _%rest213312213332%_)
                  (let ((_%tl213328213388%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest213312213332%_)))
                        (_%hd213327213386%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest213312213332%_))))
                    (if (equal? _%hd213327213386%_ '"-cc-options")
                        (if (pair? _%tl213328213388%_)
                            (let* ((_%tl213330213391%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl213328213388%_)))
                                   (_%rest213394%_ _%tl213330213391%_))
                              (_%K213326213383%_ _%rest213394%_))
                            (let ((_%opt213355%_ _%hd213327213386%_)
                                  (_%rest213357%_ _%tl213328213388%_))
                              (_%K213318213347%_
                               _%rest213357%_
                               _%opt213355%_)))
                        (if (equal? _%hd213327213386%_ '"-ld-options")
                            (if (pair? _%tl213328213388%_)
                                (let* ((_%tl213325213373%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl213328213388%_)))
                                       (_%rest213376%_ _%tl213325213373%_))
                                  (_%K213321213365%_ _%rest213376%_))
                                (let ((_%opt213355%_ _%hd213327213386%_)
                                      (_%rest213357%_ _%tl213328213388%_))
                                  (_%K213318213347%_
                                   _%rest213357%_
                                   _%opt213355%_)))
                            (let ((_%opt213355%_ _%hd213327213386%_)
                                  (_%rest213357%_ _%tl213328213388%_))
                              (_%K213318213347%_
                               _%rest213357%_
                               _%opt213355%_)))))
                  (_%else213316213340%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?213400%_ '#f)) (gxc#gsc-link-options__% _%phi?213400%_))))
    (define gxc#gsc-link-options
      (lambda _g214681_
        (let ((_g214682_ (let () (declare (not safe)) (##length _g214681_))))
          (cond ((let () (declare (not safe)) (##fx= _g214682_ 0))
                 (apply gxc#gsc-link-options__0 _g214681_))
                ((let () (declare (not safe)) (##fx= _g214682_ 1))
                 (apply gxc#gsc-link-options__% _g214681_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g214681_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords213155%_ _%static?213151213156%_ _%phi?213158%_)
        (let ((_%static?213160%_
               (if (eq? _%static?213151213156%_ absent-value)
                   '#f
                   _%static?213151213156%_)))
          (if _%phi?213158%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp213162%_ ((_%rest213164%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts213165%_ '()))
                (let* ((_%rest213166213192%_ _%rest213164%_)
                       (_%else213171213200%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts213165%_)))
                              (reverse! _%opts213165%_)))))
                  (let ((_%K213186213263%_
                         (lambda (_%rest213260%_ _%opt213261%_)
                           (if _%static?213160%_
                               (_%lp213162%_
                                _%rest213260%_
                                (cons _%opt213261%_
                                      (cons '"-cc-options" _%opts213165%_)))
                               (_%lp213162%_ _%rest213260%_ _%opts213165%_))))
                        (_%K213181213240%_
                         (lambda (_%rest213237%_ _%opt213238%_)
                           (_%lp213162%_
                            _%rest213237%_
                            (cons _%opt213238%_
                                  (cons '"-cc-options" _%opts213165%_)))))
                        (_%K213176213220%_
                         (lambda (_%rest213218%_)
                           (_%lp213162%_ _%rest213218%_ _%opts213165%_)))
                        (_%K213173213206%_
                         (lambda (_%rest213204%_)
                           (_%lp213162%_ _%rest213204%_ _%opts213165%_))))
                    (if (pair? _%rest213166213192%_)
                        (let ((_%tl213188213268%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest213166213192%_)))
                              (_%hd213187213266%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest213166213192%_))))
                          (if (equal? _%hd213187213266%_ '"-cc-options")
                              (if (pair? _%tl213188213268%_)
                                  (let ((_%tl213190213273%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl213188213268%_)))
                                        (_%hd213189213271%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl213188213268%_))))
                                    (if (equal? _%hd213189213271%_ '"-Bstatic")
                                        (let ((_%opt213276%_
                                               _%hd213189213271%_)
                                              (_%rest213278%_
                                               _%tl213190213273%_))
                                          (_%K213186213263%_
                                           _%rest213278%_
                                           _%opt213276%_))
                                        (let ((_%opt213253%_
                                               _%hd213189213271%_)
                                              (_%rest213255%_
                                               _%tl213190213273%_))
                                          (_%K213181213240%_
                                           _%rest213255%_
                                           _%opt213253%_))))
                                  (let ((_%rest213212%_ _%tl213188213268%_))
                                    (_%K213173213206%_ _%rest213212%_)))
                              (if (equal? _%hd213187213266%_ '"-ld-options")
                                  (if (pair? _%tl213188213268%_)
                                      (let* ((_%tl213180213228%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl213188213268%_)))
                                             (_%rest213231%_
                                              _%tl213180213228%_))
                                        (_%K213176213220%_ _%rest213231%_))
                                      (let ((_%rest213212%_
                                             _%tl213188213268%_))
                                        (_%K213173213206%_ _%rest213212%_)))
                                  (let ((_%rest213212%_ _%tl213188213268%_))
                                    (_%K213173213206%_ _%rest213212%_)))))
                        (_%else213171213200%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords213283%_ _%static?213151213284%_)
        (let ((_%phi?213286%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords213283%_
           _%static?213151213284%_
           _%phi?213286%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g214683_
        (let ((_g214684_ (let () (declare (not safe)) (##length _g214683_))))
          (cond ((let () (declare (not safe)) (##fx= _g214684_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g214683_))
                ((let () (declare (not safe)) (##fx= _g214684_ 3))
                 (apply gxc#gsc-cc-options__%__% _g214683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g214683_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords213295%_ . _%args213296%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords213295%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213295%_
                  'static:
                  absent-value))
               _%args213296%_)))
    (define gxc#gsc-cc-options
      (lambda _%args213152213302%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args213152213302%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords213000%_ _%static?212996213001%_ _%phi?213003%_)
        (let ((_%static?213005%_
               (if (eq? _%static?212996213001%_ absent-value)
                   '#f
                   _%static?212996213001%_)))
          (if _%phi?213003%_
              '()
              (let _%lp213007%_ ((_%rest213009%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts213010%_ '()))
                (let* ((_%rest213011213037%_ _%rest213009%_)
                       (_%else213016213045%_
                        (lambda () (reverse! _%opts213010%_))))
                  (let ((_%K213031213108%_
                         (lambda (_%rest213105%_ _%opt213106%_)
                           (if _%static?213005%_
                               (_%lp213007%_
                                _%rest213105%_
                                (cons _%opt213106%_
                                      (cons '"-ld-options" _%opts213010%_)))
                               (_%lp213007%_ _%rest213105%_ _%opts213010%_))))
                        (_%K213026213085%_
                         (lambda (_%rest213082%_ _%opt213083%_)
                           (_%lp213007%_
                            _%rest213082%_
                            (cons _%opt213083%_
                                  (cons '"-ld-options" _%opts213010%_)))))
                        (_%K213021213065%_
                         (lambda (_%rest213063%_)
                           (_%lp213007%_ _%rest213063%_ _%opts213010%_)))
                        (_%K213018213051%_
                         (lambda (_%rest213049%_)
                           (_%lp213007%_ _%rest213049%_ _%opts213010%_))))
                    (if (pair? _%rest213011213037%_)
                        (let ((_%tl213033213113%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest213011213037%_)))
                              (_%hd213032213111%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest213011213037%_))))
                          (if (equal? _%hd213032213111%_ '"-ld-options")
                              (if (pair? _%tl213033213113%_)
                                  (let ((_%tl213035213118%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl213033213113%_)))
                                        (_%hd213034213116%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl213033213113%_))))
                                    (if (equal? _%hd213034213116%_ '"-static")
                                        (let ((_%opt213121%_
                                               _%hd213034213116%_)
                                              (_%rest213123%_
                                               _%tl213035213118%_))
                                          (_%K213031213108%_
                                           _%rest213123%_
                                           _%opt213121%_))
                                        (let ((_%opt213098%_
                                               _%hd213034213116%_)
                                              (_%rest213100%_
                                               _%tl213035213118%_))
                                          (_%K213026213085%_
                                           _%rest213100%_
                                           _%opt213098%_))))
                                  (let ((_%rest213057%_ _%tl213033213113%_))
                                    (_%K213018213051%_ _%rest213057%_)))
                              (if (equal? _%hd213032213111%_ '"-cc-options")
                                  (if (pair? _%tl213033213113%_)
                                      (let* ((_%tl213025213073%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl213033213113%_)))
                                             (_%rest213076%_
                                              _%tl213025213073%_))
                                        (_%K213021213065%_ _%rest213076%_))
                                      (let ((_%rest213057%_
                                             _%tl213033213113%_))
                                        (_%K213018213051%_ _%rest213057%_)))
                                  (let ((_%rest213057%_ _%tl213033213113%_))
                                    (_%K213018213051%_ _%rest213057%_)))))
                        (_%else213016213045%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords213128%_ _%static?212996213129%_)
        (let ((_%phi?213131%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords213128%_
           _%static?212996213129%_
           _%phi?213131%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g214685_
        (let ((_g214686_ (let () (declare (not safe)) (##length _g214685_))))
          (cond ((let () (declare (not safe)) (##fx= _g214686_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g214685_))
                ((let () (declare (not safe)) (##fx= _g214686_ 3))
                 (apply gxc#gsc-ld-options__%__% _g214685_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g214685_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords213140%_ . _%args213141%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords213140%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213140%_
                  'static:
                  absent-value))
               _%args213141%_)))
    (define gxc#gsc-ld-options
      (lambda _%args212997213147%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args212997213147%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir212991%_)
        (let ((_%user-staticdir212993%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir212991%_
                       '" -I "
                       _%user-staticdir212993%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp212903%_ ((_%rest212905%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts212906%_ '()))
          (let* ((_%rest212907212927%_ _%rest212905%_)
                 (_%else212911212935%_ (lambda () _%opts212906%_)))
            (let ((_%K212921212978%_
                   (lambda (_%rest212976%_)
                     (_%lp212903%_ _%rest212976%_ _%opts212906%_)))
                  (_%K212916212956%_
                   (lambda (_%rest212953%_ _%opt212954%_)
                     (_%lp212903%_
                      _%rest212953%_
                      (let ((__tmp214687
                             (let ((__tmp214688
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt212954%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp214688))))
                        (declare (not safe))
                        (##append _%opts212906%_ __tmp214687)))))
                  (_%K212913212941%_
                   (lambda (_%rest212939%_)
                     (_%lp212903%_ _%rest212939%_ _%opts212906%_))))
              (if (pair? _%rest212907212927%_)
                  (let ((_%tl212923212983%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest212907212927%_)))
                        (_%hd212922212981%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest212907212927%_))))
                    (if (equal? _%hd212922212981%_ '"-cc-options")
                        (if (pair? _%tl212923212983%_)
                            (let* ((_%tl212925212986%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl212923212983%_)))
                                   (_%rest212989%_ _%tl212925212986%_))
                              (_%K212921212978%_ _%rest212989%_))
                            (let ((_%rest212947%_ _%tl212923212983%_))
                              (_%K212913212941%_ _%rest212947%_)))
                        (if (equal? _%hd212922212981%_ '"-ld-options")
                            (if (pair? _%tl212923212983%_)
                                (let ((_%tl212920212966%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl212923212983%_)))
                                      (_%hd212919212964%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl212923212983%_))))
                                  (let ((_%opt212969%_ _%hd212919212964%_)
                                        (_%rest212971%_ _%tl212920212966%_))
                                    (_%K212916212956%_
                                     _%rest212971%_
                                     _%opt212969%_)))
                                (let ((_%rest212947%_ _%tl212923212983%_))
                                  (_%K212913212941%_ _%rest212947%_)))
                            (let ((_%rest212947%_ _%tl212923212983%_))
                              (_%K212913212941%_ _%rest212947%_)))))
                  (_%else212911212935%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str212900%_)
        (not (let () (declare (not safe)) (string-empty? _%str212900%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path212893%_ _%phi?212894%_)
        (let ((_%gsc-link-opts212896%_
               (gxc#gsc-link-options__% _%phi?212894%_))
              (_%gsc-cc-opts212897%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?212894%_))
              (_%gsc-ld-opts212898%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?212894%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp214689
                  (let ((__tmp214690
                         (let ((__tmp214691 (cons _%path212893%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp214691
                            _%gsc-link-opts212896%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp214690 _%gsc-ld-opts212898%_))))
             (declare (not safe))
             (__foldr1 cons __tmp214689 _%gsc-cc-opts212897%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx212859%_ _%n212860%_ _%ext212861%_)
        (letrec ((_%module-relative-path212863%_
                  (lambda (_%ctx212891%_)
                    (path-strip-directory
                     (let ((__tmp214692
                            (##structure-ref
                             _%ctx212891%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp214692)))))
                 (_%module-source-directory212864%_
                  (lambda (_%ctx212887%_)
                    (path-directory
                     (let ((_%mpath212889%_
                            (##structure-ref
                             _%ctx212887%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath212889%_)
                           _%mpath212889%_
                           (last _%mpath212889%_))))))
                 (_%section-string212865%_
                  (lambda (_%n212881%_)
                    (if (number? _%n212881%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n212881%_))
                        (if (symbol? _%n212881%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n212881%_))
                            (if (string? _%n212881%_)
                                _%n212881%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n212881%_)))))))
                 (_%file-name212866%_
                  (lambda (_%path212879%_)
                    (if _%n212860%_
                        (string-append
                         _%path212879%_
                         '"~"
                         (_%section-string212865%_ _%n212860%_)
                         _%ext212861%_)
                        (string-append _%path212879%_ _%ext212861%_))))
                 (_%file-path212867%_
                  (lambda ()
                    (let ((_%$e212873%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e212873%_
                          ((lambda (_%outdir212876%_)
                             (path-expand
                              (_%file-name212866%_
                               (let ((__tmp214693
                                      (##structure-ref
                                       _%ctx212859%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp214693)))
                              _%outdir212876%_))
                           _%$e212873%_)
                          (path-expand
                           (_%file-name212866%_
                            (_%module-relative-path212863%_ _%ctx212859%_))
                           (_%module-source-directory212864%_
                            _%ctx212859%_)))))))
          (let ((_%path212869%_ (_%file-path212867%_)))
            (let ((__tmp214694
                   (lambda ()
                     (let ((__tmp214695 (path-directory _%path212869%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp214695)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp214694))
            _%path212869%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx212840%_)
        (letrec ((_%file-name212842%_
                  (lambda (_%id212857%_)
                    (let ((__tmp214696 (gxc#static-module-name _%id212857%_)))
                      (declare (not safe))
                      (##string-append __tmp214696 '".scm"))))
                 (_%file-path212843%_
                  (lambda ()
                    (let* ((_%file212849%_
                            (_%file-name212842%_
                             (##structure-ref
                              _%ctx212840%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e212851%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e212851%_
                          ((lambda (_%outdir212854%_)
                             (path-expand
                              _%file212849%_
                              (path-expand '"static" _%outdir212854%_)))
                           _%$e212851%_)
                          (path-expand _%file212849%_ '"static"))))))
          (let ((_%path212845%_ (_%file-path212843%_)))
            (let ((__tmp214697
                   (lambda ()
                     (let ((__tmp214698 (path-directory _%path212845%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp214698)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp214697))
            _%path212845%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx212833%_ _%opts212834%_)
        (let ((_%$e212836%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts212834%_))))
          (if _%$e212836%_
              _%$e212836%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx212833%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr212823%_)
        (if (string? _%idstr212823%_)
            (let* ((_%str212826%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr212823%_)))
                   (_%strs212828%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str212826%_ '#\/))))
              (declare (not safe))
              (string-join _%strs212828%_ '"__"))
            (if (symbol? _%idstr212823%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr212823%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr212823%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp214699
               (let ((__tmp214700 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp214700 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp214699))))
    (define gxc#invoke__%
      (lambda (_%@@keywords212787%_
               _%stdout-redirection212783212788%_
               _%stderr-redirection212784212790%_
               _%program212792%_
               _%args212793%_)
        (let* ((_%stdout-redirection212795%_
                (if (eq? _%stdout-redirection212783212788%_ absent-value)
                    '#f
                    _%stdout-redirection212783212788%_))
               (_%stderr-redirection212797%_
                (if (eq? _%stderr-redirection212784212790%_ absent-value)
                    '#f
                    _%stderr-redirection212784212790%_)))
          (let ((__tmp214701 (cons _%program212792%_ _%args212793%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp214701))
          (let* ((_%proc212799%_
                  (open-process
                   (cons 'path:
                         (cons _%program212792%_
                               (cons 'arguments:
                                     (cons _%args212793%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection212795%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection212797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output212804%_
                  (if (or _%stdout-redirection212795%_
                          _%stderr-redirection212797%_)
                      (read-line _%proc212799%_ '#f)
                      '#f))
                 (_%status212807%_ (process-status _%proc212799%_)))
            (let () (declare (not safe)) (##close-port _%proc212799%_))
            (if (zero? _%status212807%_)
                '#!void
                (begin
                  (display _%output212804%_)
                  (let ((__tmp214702 (cons _%program212792%_ _%args212793%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp214702
                     _%status212807%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords212812%_ . _%args212813%_)
        (apply gxc#invoke__%
               _%@@keywords212812%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords212812%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords212812%_
                  'stderr-redirection:
                  absent-value))
               _%args212813%_)))
    (define gxc#invoke
      (lambda _%args212785212819%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args212785212819%_)))))
