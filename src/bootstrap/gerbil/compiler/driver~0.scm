(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1769382902)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp214606 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp214606))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp214607 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp214607))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path214463%_ _%fun214464%_)
        (with-output-to-file
         (cons 'path: (cons _%path214463%_ gxc#scheme-file-settings))
         _%fun214464%_)))
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
      (lambda (_%gerbil-libdir214458%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir214458%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path214456%_)
        (let ((__tmp214608 (object->string _%path214456%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp214608 '")"))))
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
      (lambda (_%dir214454%_) (delete-file-or-directory _%dir214454%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath214398%_ _%opts214399%_)
        (if (string? _%srcpath214398%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath214398%_)))
        (let* ((_%outdir214401%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts214399%_)))
               (_%invoke-gsc?214403%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts214399%_)))
               (_%target214408%_
                (let ((_%$e214405%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts214399%_))))
                  (if _%$e214405%_ _%$e214405%_ 'C)))
               (_%gsc-options214413%_
                (append (cons '"-target"
                              (cons (symbol->string _%target214408%_) '()))
                        (let ((_%$e214410%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts214399%_))))
                          (if _%$e214410%_ _%$e214410%_ '()))))
               (_%keep-scm?214415%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts214399%_)))
               (_%verbosity214417%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts214399%_)))
               (_%optimize214419%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts214399%_)))
               (_%debug214421%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts214399%_)))
               (_%gen-ssxi214423%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts214399%_)))
               (_%parallel?214425%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts214399%_))))
          (if _%outdir214401%_
              (let ((__tmp214609
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir214401%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp214609))
              '#!void)
          (if _%optimize214419%_
              (let ((__tmp214610
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp214610))
              '#!void)
          (let ((__tmp214611
                 (lambda ()
                   (let ((__tmp214612
                          (lambda ()
                            (let ((__tmp214613
                                   (lambda ()
                                     (let ((__tmp214614
                                            (lambda ()
                                              (let ((__tmp214615
                                                     (lambda ()
                                                       (let ((__tmp214616
                                                              (lambda ()
                                                                (let ((__tmp214617
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp214618
                                        (lambda ()
                                          (let ((__tmp214619
                                                 (lambda ()
                                                   (let ((__tmp214621
                                                          (lambda ()
                                                            (let ((__tmp214623
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp214624
                                    (lambda ()
                                      (let ((__tmp214625
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"compile "
                                                  _%srcpath214398%_))
                                               (gxc#compile-top-module
                                                (let ((__tmp214626
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#import-module__0
                                                            _%srcpath214398%_)))))
                                                  (declare (not safe))
                                                  (__with-lock
                                                   gxc#+driver-mutex+
                                                   __tmp214626))))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp214625
                                         gx#current-expander-compiling?
                                         '#t)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp214624
                                gxc#current-compile-parallel
                                _%parallel?214425%_))))
                          (__tmp214622
                           (cons (cons 'compile-module
                                       (cons _%srcpath214398%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp214623
                       gxc#current-compile-context
                       __tmp214622))))
                 (__tmp214620 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp214621
                                                      gxc#current-compile-timestamp
                                                      __tmp214620)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp214619
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi214423%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp214618
                                    gxc#current-compile-debug
                                    _%debug214421%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp214617
                           gxc#current-compile-optimize
                           _%optimize214419%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp214616
                  gxc#current-compile-verbose
                  _%verbosity214417%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp214615
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?214415%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp214614
                                        gxc#current-compile-gsc-options
                                        _%gsc-options214413%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp214613
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?214403%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp214612
                      gx#current-compilation-target
                      _%target214408%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp214611
             gxc#current-compile-output-dir
             _%outdir214401%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath214447%_)
        (let ((_%opts214449%_ '()))
          (gxc#compile-module__% _%srcpath214447%_ _%opts214449%_))))
    (define gxc#compile-module
      (lambda _g214627_
        (let ((_g214628_ (let () (declare (not safe)) (##length _g214627_))))
          (cond ((let () (declare (not safe)) (##fx= _g214628_ 1))
                 (apply gxc#compile-module__0 _g214627_))
                ((let () (declare (not safe)) (##fx= _g214628_ 2))
                 (apply gxc#compile-module__% _g214627_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g214627_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath214348%_ _%opts214349%_)
        (if (string? _%srcpath214348%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath214348%_)))
        (let* ((_%outdir214351%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts214349%_)))
               (_%invoke-gsc?214353%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts214349%_)))
               (_%target214358%_
                (let ((_%$e214355%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts214349%_))))
                  (if _%$e214355%_ _%$e214355%_ 'C)))
               (_%gsc-options214363%_
                (append (cons '"-target"
                              (cons (symbol->string _%target214358%_) '()))
                        (let ((_%$e214360%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts214349%_))))
                          (if _%$e214360%_ _%$e214360%_ '()))))
               (_%keep-scm?214365%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts214349%_)))
               (_%verbosity214367%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts214349%_)))
               (_%debug214369%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts214349%_)))
               (_%parallel?214371%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts214349%_))))
          (if _%outdir214351%_
              (let ((__tmp214629
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir214351%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp214629))
              '#!void)
          (let ((__tmp214630
                 (lambda ()
                   (let ((__tmp214631
                          (lambda ()
                            (let ((__tmp214632
                                   (lambda ()
                                     (let ((__tmp214633
                                            (lambda ()
                                              (let ((__tmp214634
                                                     (lambda ()
                                                       (let ((__tmp214635
                                                              (lambda ()
                                                                (let ((__tmp214636
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp214638
                                        (lambda ()
                                          (let ((__tmp214640
                                                 (lambda ()
                                                   (let ((__tmp214641
                                                          (lambda ()
                                                            (let ((__tmp214642
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"compile exe " _%srcpath214348%_))
                             (gxc#compile-executable-module
                              (let ((__tmp214643
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#import-module__0
                                          _%srcpath214348%_)))))
                                (declare (not safe))
                                (__with-lock gxc#+driver-mutex+ __tmp214643))
                              _%opts214349%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp214642
                       gx#current-expander-compiling?
                       '#t)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp214641
                                                      gxc#current-compile-parallel
                                                      _%parallel?214371%_))))
                                                (__tmp214639
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath214348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp214640
                                             gxc#current-compile-context
                                             __tmp214639))))
                                       (__tmp214637 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp214638
                                    gxc#current-compile-timestamp
                                    __tmp214637)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp214636
                           gxc#current-compile-debug
                           _%debug214369%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp214635
                  gxc#current-compile-verbose
                  _%verbosity214367%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp214634
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?214365%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp214633
                                        gxc#current-compile-gsc-options
                                        _%gsc-options214363%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp214632
                               gx#current-compilation-target
                               _%target214358%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp214631
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?214353%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp214630
             gxc#current-compile-output-dir
             _%outdir214351%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath214390%_)
        (let ((_%opts214392%_ '()))
          (gxc#compile-exe__% _%srcpath214390%_ _%opts214392%_))))
    (define gxc#compile-exe
      (lambda _g214644_
        (let ((_g214645_ (let () (declare (not safe)) (##length _g214644_))))
          (cond ((let () (declare (not safe)) (##fx= _g214645_ 1))
                 (apply gxc#compile-exe__0 _g214644_))
                ((let () (declare (not safe)) (##fx= _g214645_ 2))
                 (apply gxc#compile-exe__% _g214644_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g214644_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx214344%_ _%opts214345%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts214345%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx214344%_
             _%opts214345%_)
            (gxc#compile-executable-module/separate
             _%ctx214344%_
             _%opts214345%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx214144%_ _%opts214145%_)
        (letrec ((_%generate-stub214147%_
                  (lambda (_%builtin-modules214340%_)
                    (let ((_%mod-main214342%_
                           (gxc#find-runtime-symbol _%ctx214144%_ 'main)))
                      (let ((__tmp214646
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules214340%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp214646))
                      (let ((__tmp214647
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main214342%_
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
                        (##write __tmp214647))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts214148%_
                  (lambda (_%gerbil-libdir214338%_)
                    (let ((__tmp214648
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir214338%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp214648 read))))
                 (_%replace-extension214149%_
                  (lambda (_%path214335%_ _%ext214336%_)
                    (string-append
                     (path-strip-extension _%path214335%_)
                     _%ext214336%_)))
                 (_%replace-extension-with-c214150%_
                  (lambda (_%path214333%_)
                    (_%replace-extension214149%_ _%path214333%_ '".c")))
                 (_%replace-extension-with-object214151%_
                  (lambda (_%path214331%_)
                    (_%replace-extension214149%_
                     _%path214331%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?214152%_
                  (lambda (_%ctx214329%_)
                    (if (_%exclude-module?214154%_ _%ctx214329%_)
                        '#f
                        (not (_%libgerbil-module?214153%_ _%ctx214329%_)))))
                 (_%libgerbil-module?214153%_
                  (lambda (_%ctx214322%_)
                    (let ((_%id-str214324%_
                           (symbol->string
                            (##structure-ref
                             _%ctx214322%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?214154%_ _%id-str214324%_)
                          '#f
                          (let ((_%$e214326%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str214324%_))))
                            (if _%$e214326%_
                                _%$e214326%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str214324%_))))))))
                 (_%exclude-module?214154%_
                  (lambda (_%ctx-or-str214318%_)
                    (let ((_%str214320%_
                           (if (string? _%ctx-or-str214318%_)
                               _%ctx-or-str214318%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str214318%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str214320%_))))
                 (_%not-file-empty?214155%_
                  (lambda (_%path214316%_)
                    (not (gxc#file-empty? _%path214316%_))))
                 (_%fold-libgerbil-runtime-scm214156%_
                  (lambda (_%gerbil-staticdir214309%_ _%libgerbil-scm214310%_)
                    (let ((_%gerbil-runtime-scm214314%_
                           (let ((__tmp214649
                                  (lambda (_%rtm214312%_)
                                    (path-expand
                                     (let ((__tmp214650
                                            (let ((__tmp214651
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm214312%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp214651
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp214650 '".scm"))
                                     _%gerbil-staticdir214309%_))))
                             (declare (not safe))
                             (##map __tmp214649 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates214157%_
                       (append _%gerbil-runtime-scm214314%_
                               _%libgerbil-scm214310%_)))))
                 (_%remove-duplicates214157%_
                  (lambda (_%strlst214269%_)
                    (let _%loop214271%_ ((_%rest214273%_ _%strlst214269%_)
                                         (_%result214274%_ '()))
                      (let* ((_%rest214275214283%_ _%rest214273%_)
                             (_%else214277214291%_
                              (lambda () (reverse! _%result214274%_)))
                             (_%K214279214297%_
                              (lambda (_%rest214294%_ _%path214295%_)
                                (if (member _%path214295%_ _%result214274%_)
                                    (_%loop214271%_
                                     _%rest214294%_
                                     _%result214274%_)
                                    (_%loop214271%_
                                     _%rest214294%_
                                     (cons _%path214295%_
                                           _%result214274%_))))))
                        (if (pair? _%rest214275214283%_)
                            (let ((_%hd214280214300%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest214275214283%_)))
                                  (_%tl214281214302%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest214275214283%_))))
                              (let* ((_%path214305%_ _%hd214280214300%_)
                                     (_%rest214307%_ _%tl214281214302%_))
                                (_%K214279214297%_
                                 _%rest214307%_
                                 _%path214305%_)))
                            (_%else214277214291%_))))))
                 (_%compile-stub214158%_
                  (lambda (_%output-scm214165%_ _%output-bin214166%_)
                    (let* ((_%gerbil-home214168%_
                            (let ((__tmp214652
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp214652)))
                           (_%gerbil-libdir214170%_
                            (path-expand '"lib" _%gerbil-home214168%_))
                           (_%gerbil-staticdir214172%_
                            (path-expand '"static" _%gerbil-libdir214170%_))
                           (_%deps214174%_
                            (gxc#find-runtime-module-deps _%ctx214144%_))
                           (_%libgerbil-deps214176%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?214153%_
                               _%deps214174%_)))
                           (_%libgerbil-scm214178%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps214176%_)))
                           (_%libgerbil-scm214180%_
                            (_%fold-libgerbil-runtime-scm214156%_
                             _%gerbil-staticdir214172%_
                             _%libgerbil-scm214178%_))
                           (_%libgerbil-c214182%_
                            (map _%replace-extension-with-c214150%_
                                 _%libgerbil-scm214180%_))
                           (_%libgerbil-o214184%_
                            (map _%replace-extension-with-object214151%_
                                 _%libgerbil-scm214180%_))
                           (_%src-deps214186%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?214152%_
                               _%deps214174%_)))
                           (_%src-deps-scm214188%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps214186%_)))
                           (_%src-deps-scm214190%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?214155%_
                               _%src-deps-scm214188%_)))
                           (_%src-deps-scm214192%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm214190%_)))
                           (_%src-deps-c214194%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c214150%_
                                     _%src-deps-scm214192%_)))
                           (_%src-deps-o214196%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object214151%_
                                     _%src-deps-scm214192%_)))
                           (_%src-bin-scm214198%_
                            (gxc#find-static-module-file _%ctx214144%_))
                           (_%src-bin-scm214200%_
                            (path-expand _%src-bin-scm214198%_))
                           (_%src-bin-c214202%_
                            (_%replace-extension-with-c214150%_
                             _%src-bin-scm214200%_))
                           (_%src-bin-o214204%_
                            (_%replace-extension-with-object214151%_
                             _%src-bin-scm214200%_))
                           (_%output-bin214206%_
                            (path-expand _%output-bin214166%_))
                           (_%output-scm214208%_
                            (path-expand _%output-scm214165%_))
                           (_%output-c214210%_
                            (_%replace-extension-with-c214150%_
                             _%output-scm214208%_))
                           (_%output-o214212%_
                            (_%replace-extension-with-object214151%_
                             _%output-scm214208%_))
                           (_%output_-c214214%_
                            (_%replace-extension214149%_
                             _%output-scm214208%_
                             '"_.c"))
                           (_%output_-o214216%_
                            (_%replace-extension214149%_
                             _%output-scm214208%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts214218%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts214220%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts214222%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir214172%_))
                           (_%output-ld-opts214224%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts214226%_
                            (_%get-libgerbil-ld-opts214148%_
                             _%gerbil-libdir214170%_))
                           (_%rpath214228%_
                            (gxc#gerbil-rpath _%gerbil-libdir214170%_))
                           (_%builtin-modules214232%_
                            (_%remove-duplicates214157%_
                             (let ((__tmp214653
                                    (let ((__tmp214655
                                           (lambda (_%mod214230%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod214230%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp214654
                                           (cons _%ctx214144%_
                                                 _%deps214174%_)))
                                      (declare (not safe))
                                      (##map __tmp214655 __tmp214654))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp214653)))))
                      (letrec ((_%compile-obj214235%_
                                (lambda (_%scm-path214242%_ _%c-path214243%_)
                                  (let* ((_%o-path214245%_
                                          (_%replace-extension214149%_
                                           _%c-path214243%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock214247%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path214245%_
                                             '".lock")))
                                         (_%locked214249%_ '#f)
                                         (_%unlock214252%_
                                          (lambda ()
                                            (close-port _%locked214249%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock214247%_)))))
                                    (let _%retry214255%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock214247%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry214255%_))
                                          (begin
                                            (set! _%locked214249%_
                                                  (let ((__tmp214656
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock214247%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp214656)))
                                            (if _%locked214249%_
                                                '#!void
                                                (_%retry214255%_)))))
                                    (let ((__tmp214658
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path214245%_)))
                                                     (not _%scm-path214242%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path214242%_
                                                        _%o-path214245%_)))
                                                 (let ((_%gsc-cc-opts214266%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp214659
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp214660 (cons _%c-path214243%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp214660
                            _%gsc-static-opts214222%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp214659 _%gsc-cc-opts214266%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp214657
                                           (lambda () (_%unlock214252%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp214658
                                       __tmp214657))))))
                        (let ((__tmp214661
                               (lambda ()
                                 (let ((__tmp214662
                                        (path-directory _%output-bin214206%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp214662)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp214661))
                        (gxc#with-output-to-scheme-file
                         _%output-scm214208%_
                         (lambda ()
                           (_%generate-stub214147%_
                            _%builtin-modules214232%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it214240%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp214663
                                                   (let ((__tmp214664
                                                          (let ((__tmp214665
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm214200%_
                               (cons _%output-scm214208%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp214665 _%src-deps-scm214192%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp214664
                                                      _%libgerbil-c214182%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp214663
                                               _%gsc-link-opts214218%_))))
                                     (for-each
                                      _%compile-obj214235%_
                                      (let ((__tmp214666
                                             (cons _%src-bin-scm214200%_
                                                   (cons _%output-scm214208%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp214666
                                         _%src-deps-scm214192%_))
                                      (let ((__tmp214667
                                             (cons _%src-bin-c214202%_
                                                   (cons _%output-c214210%_
                                                         (cons _%output_-c214214%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp214667
                                         _%src-deps-c214194%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin214206%_
                                                        (let ((__tmp214668
                                                               (cons _%src-bin-o214204%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o214212%_
                                   (cons _%output_-o214216%_
                                         (let ((__tmp214669
                                                (let ((__tmp214670
                                                       (let ((__tmp214672
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir214170%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts214226%_))))
                     (__tmp214671
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath214228%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp214672 __tmp214671))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp214670
                                                   _%output-ld-opts214224%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp214669
                                            _%libgerbil-o214184%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp214668 _%src-deps-o214196%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp214673
                                            (cons _%output-c214210%_
                                                  (cons _%output_-c214214%_
                                                        (cons _%output-o214212%_
                                                              (cons _%output_-o214216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp214673)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it214240%_))
                                  (_%compile-it214240%_)))
                            '#!void))))))
          (let* ((_%output-bin214160%_
                  (gxc#compile-exe-output-file _%ctx214144%_ _%opts214145%_))
                 (_%output-scm214162%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin214160%_ '"__exe.scm"))))
            (_%compile-stub214158%_
             _%output-scm214162%_
             _%output-bin214160%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx213966%_ _%opts213967%_)
        (letrec ((_%reset-declare213969%_
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
                 (_%generate-stub213970%_
                  (lambda (_%deps214135%_)
                    (let ((_%mod-main214137%_
                           (gxc#find-runtime-symbol _%ctx213966%_ 'main))
                          (_%reset-decl214138%_ (_%reset-declare213969%_))
                          (_%user-decl214139%_ (_%user-declare213971%_)))
                      (for-each
                       (lambda (_%dep214141%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl214138%_))
                         (newline)
                         (if _%user-decl214139%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl214139%_))
                               (newline))
                             '#!void)
                         (let ((__tmp214674
                                (cons 'include (cons _%dep214141%_ '()))))
                           (declare (not safe))
                           (##write __tmp214674))
                         (newline))
                       _%deps214135%_)
                      (let ((__tmp214675
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main214137%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp214675))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare213971%_
                  (lambda ()
                    (let* ((_%gsc-opts214040%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts213967%_)))
                           (_%gsc-prelude214042%_
                            (if _%gsc-opts214040%_
                                (member '"-prelude" _%gsc-opts214040%_)
                                '#f))
                           (_%gsc-prelude214044%_
                            (if _%gsc-prelude214042%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude214042%_)))
                                '#f)))
                      (let _%lp214047%_ ((_%rest214049%_
                                          (cons _%gsc-prelude214044%_ '()))
                                         (_%user-decls214050%_ '()))
                        (let* ((_%rest214051214059%_ _%rest214049%_)
                               (_%else214053214067%_
                                (lambda ()
                                  (if (null? _%user-decls214050%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls214050%_)))))
                               (_%K214055214123%_
                                (lambda (_%rest214070%_ _%expr214071%_)
                                  (let* ((_%expr214072214084%_ _%expr214071%_)
                                         (_%else214075214092%_
                                          (lambda ()
                                            (_%lp214047%_
                                             _%rest214070%_
                                             _%user-decls214050%_))))
                                    (let ((_%K214080214113%_
                                           (lambda (_%decls214111%_)
                                             (_%lp214047%_
                                              _%rest214070%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls214050%_
                                                 _%decls214111%_)))))
                                          (_%K214077214098%_
                                           (lambda (_%exprs214096%_)
                                             (_%lp214047%_
                                              (append _%exprs214096%_
                                                      _%rest214070%_)
                                              _%user-decls214050%_))))
                                      (if (pair? _%expr214072214084%_)
                                          (let ((_%tl214082214118%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr214072214084%_)))
                                                (_%hd214081214116%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr214072214084%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd214081214116%_
                                                         'declare))
                                                (let ((_%decls214121%_
                                                       _%tl214082214118%_))
                                                  (_%K214080214113%_
                                                   _%decls214121%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd214081214116%_
                                                             'begin))
                                                    (let ((_%exprs214106%_
                                                           _%tl214082214118%_))
                                                      (_%K214077214098%_
                                                       _%exprs214106%_))
                                                    (_%else214075214092%_))))
                                          (_%else214075214092%_)))))))
                          (if (pair? _%rest214051214059%_)
                              (let ((_%hd214056214126%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest214051214059%_)))
                                    (_%tl214057214128%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest214051214059%_))))
                                (let* ((_%expr214131%_ _%hd214056214126%_)
                                       (_%rest214133%_ _%tl214057214128%_))
                                  (_%K214055214123%_
                                   _%rest214133%_
                                   _%expr214131%_)))
                              (_%else214053214067%_)))))))
                 (_%compile-stub213972%_
                  (lambda (_%output-scm213979%_ _%output-bin213980%_)
                    (let* ((_%gerbil-home213982%_
                            (let ((__tmp214676
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp214676)))
                           (_%gerbil-libdir213984%_
                            (path-expand '"lib" _%gerbil-home213982%_))
                           (_%runtime213986%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp213988%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home213982%_))
                           (_%include-gambit-sharp213990%_
                            (gxc#include-source _%gambit-sharp213988%_))
                           (_%bin-scm213992%_
                            (gxc#find-static-module-file _%ctx213966%_))
                           (_%deps213994%_
                            (gxc#find-runtime-module-deps _%ctx213966%_))
                           (_%deps213996%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps213994%_)))
                           (_%deps214001%_
                            (let ((__tmp214677
                                   (lambda (_%$obj213998%_)
                                     (not (gxc#file-empty? _%$obj213998%_)))))
                              (declare (not safe))
                              (##filter __tmp214677 _%deps213996%_)))
                           (_%deps214005%_
                            (let ((__tmp214678
                                   (lambda (_%f214003%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f214003%_
                                             _%runtime213986%_))))))
                              (declare (not safe))
                              (##filter __tmp214678 _%deps214001%_)))
                           (_%output-base214007%_
                            (let ((__tmp214679
                                   (path-strip-extension
                                    _%output-scm213979%_)))
                              (declare (not safe))
                              (##string-append __tmp214679)))
                           (_%output-c214009%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base214007%_ '".c")))
                           (_%output-o214011%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base214007%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_214013%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base214007%_ '"_.c")))
                           (_%output-o_214015%_
                            (let ((__tmp214680
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base214007%_
                               __tmp214680)))
                           (_%gsc-link-opts214017%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts214019%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts214021%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir213984%_)))
                           (_%output-ld-opts214023%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros214025%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp213990%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp213990%_
                                            '()))))
                           (_%gsc-link-opts214027%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts214017%_
                               _%gsc-gx-macros214025%_)))
                           (_%rpath214029%_
                            (gxc#gerbil-rpath _%gerbil-libdir213984%_))
                           (_%default-ld-options214031%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp214681
                             (lambda ()
                               (let ((__tmp214682
                                      (path-directory _%output-bin213980%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp214682)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp214681))
                      (gxc#with-output-to-scheme-file
                       _%output-scm213979%_
                       (lambda ()
                         (_%generate-stub213970%_
                          (let ((__tmp214683
                                 (let ((__tmp214684
                                        (cons _%bin-scm213992%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp214684
                                    _%deps214005%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp214683 _%runtime213986%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it214037%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_214013%_
                                                      (let ((__tmp214685
                                                             (cons _%output-scm213979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp214685 _%gsc-link-opts214027%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp214686
                                                 (let ((__tmp214687
                                                        (cons _%output-c214009%_
                                                              (cons _%output-c_214013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp214687
                                                    _%gsc-static-opts214021%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp214686
                                             _%gsc-cc-opts214019%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin213980%_
                                                      (cons _%output-o214011%_
                                                            (cons _%output-o_214015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp214688
                                 (let ((__tmp214690
                                        (cons '"-L"
                                              (cons _%gerbil-libdir213984%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options214031%_))))
                                       (__tmp214689
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath214029%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp214690 __tmp214689))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp214688
                             _%output-ld-opts214023%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it214037%_))
                                (_%compile-it214037%_)))
                          '#!void)))))
          (let* ((_%output-bin213974%_
                  (gxc#compile-exe-output-file _%ctx213966%_ _%opts213967%_))
                 (_%output-scm213976%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin213974%_ '"__exe.scm"))))
            (_%compile-stub213972%_
             _%output-scm213976%_
             _%output-bin213974%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx213915%_ _%id213916%_)
        (let ((_%$e213962%_
               (let ((__tmp214692
                      (lambda (_%e213917213919%_)
                        (let* ((_%e213917213921213931%_ _%e213917213919%_)
                               (_%else213923213939%_ (lambda () '#f))
                               (_%K213925213943%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e213917213921213931%_
                                 'gx#module-export::t))
                              (let* ((_%e213926213946%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e213917213921213931%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e213927213949%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e213917213921213931%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e213928213952%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e213917213921213931%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e213928213952%_ '0))
                                    (let ((_%e213929213955%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e213917213921213931%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g213957213959%_)
                                             (eq? _%g213957213959%_
                                                  _%id213916%_))
                                           _%e213929213955%_)
                                          (_%K213925213943%_)
                                          (_%else213923213939%_)))
                                    (_%else213923213939%_)))
                              (_%else213923213939%_)))))
                     (__tmp214691
                      (##structure-ref
                       _%ctx213915%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp214692 __tmp214691))))
          (if _%$e213962%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e213962%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx213906%_ _%id213907%_)
        (let ((_%$e213909%_
               (gxc#find-export-binding _%ctx213906%_ _%id213907%_)))
          (if _%$e213909%_
              ((lambda (_%bind213912%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind213912%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id213907%_)))
                 (##structure-ref _%bind213912%_ '1 gx#binding::t '#f))
               _%$e213909%_)
              (let ((__tmp214693
                     (##structure-ref
                      _%ctx213906%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp214693
                 _%id213907%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx213772%_)
        (letrec* ((_%ht213774%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template213775%_
                   (lambda (_%in213851%_ _%phi213852%_)
                     (let ((_%iphi213854%_
                            (fx+ _%phi213852%_
                                 (##direct-structure-ref
                                  _%in213851%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports213855%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in213851%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp213857%_ ((_%rest213859%_ _%imports213855%_)
                                          (_%r213860%_ '()))
                         (let* ((_%rest213861213869%_ _%rest213859%_)
                                (_%else213863213877%_ (lambda () _%r213860%_))
                                (_%K213865213894%_
                                 (lambda (_%rest213880%_ _%in213881%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in213881%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi213854%_))
                                           (_%lp213857%_
                                            _%rest213880%_
                                            (cons _%in213881%_ _%r213860%_))
                                           (_%lp213857%_
                                            _%rest213880%_
                                            _%r213860%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in213881%_
                                              'gx#module-import::t))
                                           (let ((_%iphi213885%_
                                                  (fx+ _%phi213852%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in213881%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi213885%_))
                                                 (_%lp213857%_
                                                  _%rest213880%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in213881%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r213860%_))
                                                 (_%lp213857%_
                                                  _%rest213880%_
                                                  _%r213860%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in213881%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi213888%_
                                                      (fx+ _%iphi213854%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in213881%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi213888%_))
                                                     (_%lp213857%_
                                                      _%rest213880%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in213881%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r213860%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi213888%_))
                                                         (_%lp213857%_
                                                          _%rest213880%_
                                                          (let ((__tmp214694
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template213775%_
                          _%in213881%_
                          _%iphi213854%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r213860%_ __tmp214694)))
                 (_%lp213857%_ _%rest213880%_ _%r213860%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp213857%_
                                                _%rest213880%_
                                                _%r213860%_)))))))
                           (if (pair? _%rest213861213869%_)
                               (let ((_%hd213866213897%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest213861213869%_)))
                                     (_%tl213867213899%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest213861213869%_))))
                                 (let* ((_%in213902%_ _%hd213866213897%_)
                                        (_%rest213904%_ _%tl213867213899%_))
                                   (_%K213865213894%_
                                    _%rest213904%_
                                    _%in213902%_)))
                               (_%else213863213877%_)))))))
                  (_%find-deps213776%_
                   (lambda (_%rest213784%_ _%deps213785%_)
                     (let* ((_%rest213786213794%_ _%rest213784%_)
                            (_%else213788213802%_ (lambda () _%deps213785%_))
                            (_%K213790213839%_
                             (lambda (_%rest213805%_ _%hd213806%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd213806%_
                                      'gx#module-context::t))
                                   (let ((_%id213809%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd213806%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports213810%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd213806%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht213774%_
                                            _%id213809%_))
                                         (_%find-deps213776%_
                                          _%rest213805%_
                                          _%deps213785%_)
                                         (let ((_%$e213813%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd213806%_))))
                                           (if _%$e213813%_
                                               ((lambda (_%pre213816%_)
                                                  (let ((_%xdeps213818%_
                                                         (_%find-deps213776%_
                                                          (cons _%pre213816%_
                                                                _%imports213810%_)
                                                          _%deps213785%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht213774%_
                                                       _%id213809%_
                                                       _%hd213806%_))
                                                    (_%find-deps213776%_
                                                     _%rest213805%_
                                                     (cons _%hd213806%_
                                                           _%xdeps213818%_))))
                                                _%$e213813%_)
                                               (let ((_%xdeps213821%_
                                                      (_%find-deps213776%_
                                                       _%imports213810%_
                                                       _%deps213785%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht213774%_
                                                    _%id213809%_
                                                    _%hd213806%_))
                                                 (_%find-deps213776%_
                                                  _%rest213805%_
                                                  (cons _%hd213806%_
                                                        _%xdeps213821%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd213806%_
                                          'gx#prelude-context::t))
                                       (let ((_%id213824%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd213806%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht213774%_
                                                _%id213824%_))
                                             (_%find-deps213776%_
                                              _%rest213805%_
                                              _%deps213785%_)
                                             (let ((_%xdeps213828%_
                                                    (_%find-deps213776%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd213806%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps213785%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht213774%_
                                                      _%id213824%_))
                                                   (_%find-deps213776%_
                                                    _%rest213805%_
                                                    _%xdeps213828%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht213774%_
                                                        _%id213824%_
                                                        _%hd213806%_))
                                                     (_%find-deps213776%_
                                                      _%rest213805%_
                                                      (cons _%hd213806%_
                                                            _%xdeps213828%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd213806%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd213806%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps213776%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd213806%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest213805%_)
                                                _%deps213785%_)
                                               (_%find-deps213776%_
                                                _%rest213805%_
                                                _%deps213785%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd213806%_
                                                  'gx#module-export::t))
                                               (_%find-deps213776%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd213806%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest213805%_)
                                                _%deps213785%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd213806%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd213806%_ '2 '#f '#f)))
               (_%find-deps213776%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd213806%_ '1 '#f '#f))
                      _%rest213805%_)
                _%deps213785%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd213806%_ '2 '#f '#f)))
                   (let ((_%xdeps213835%_
                          (_%import-set-template213775%_ _%hd213806%_ '0)))
                     (_%find-deps213776%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest213805%_ _%xdeps213835%_))
                      _%deps213785%_))
                   (_%find-deps213776%_ _%rest213805%_ _%deps213785%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd213806%_))))))))))
                       (if (pair? _%rest213786213794%_)
                           (let ((_%hd213791213842%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest213786213794%_)))
                                 (_%tl213792213844%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest213786213794%_))))
                             (let* ((_%hd213847%_ _%hd213791213842%_)
                                    (_%rest213849%_ _%tl213792213844%_))
                               (_%K213790213839%_
                                _%rest213849%_
                                _%hd213847%_)))
                           (_%else213788213802%_))))))
          (let ((__tmp214695
                 (filter gx#expander-context-id
                         (_%find-deps213776%_
                          (let ((_%$e213778%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx213772%_))))
                            (if _%$e213778%_
                                ((lambda (_%pre213781%_)
                                   (cons _%pre213781%_
                                         (##structure-ref
                                          _%ctx213772%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e213778%_)
                                (##structure-ref
                                 _%ctx213772%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp214695)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx213702%_)
        (let* ((_%context-id213704%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx213702%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx213702%_ '1 '#f '#f))
                    (string->symbol _%ctx213702%_)))
               (_%scm213706%_
                (let ((__tmp214696
                       (gxc#static-module-name _%context-id213704%_)))
                  (declare (not safe))
                  (##string-append __tmp214696 '".scm")))
               (_%dirs213708%_ (let () (declare (not safe)) (load-path)))
               (_%dirs213714%_
                (let ((_%user-libpath213710%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath213710%_
                      (let ((_%user-libpath213712%_
                             (path-expand '"lib" _%user-libpath213710%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath213712%_ _%dirs213708%_))
                            _%dirs213708%_
                            (cons _%user-libpath213712%_ _%dirs213708%_)))
                      _%dirs213708%_)))
               (_%dirs213724%_
                (let ((_%$e213716%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e213716%_
                      ((lambda (_%g213718213720%_)
                         (cons _%g213718213720%_ _%dirs213714%_))
                       _%$e213716%_)
                      _%dirs213714%_)))
               (_%dirs213730%_
                (let ((__tmp214697
                       (lambda (_%g213725213727%_)
                         (path-expand '"static" _%g213725213727%_))))
                  (declare (not safe))
                  (##map __tmp214697 _%dirs213724%_))))
          (let _%lp213733%_ ((_%rest213735%_ _%dirs213730%_))
            (let* ((_%rest213736213744%_ _%rest213735%_)
                   (_%else213738213752%_
                    (lambda ()
                      (let ((__tmp214698
                             (##structure-ref
                              _%ctx213702%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp214698
                         _%scm213706%_))))
                   (_%K213740213760%_
                    (lambda (_%rest213755%_ _%dir213756%_)
                      (let ((_%path213758%_
                             (path-expand _%scm213706%_ _%dir213756%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path213758%_))
                            _%path213758%_
                            (_%lp213733%_ _%rest213755%_))))))
              (if (pair? _%rest213736213744%_)
                  (let ((_%hd213741213763%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest213736213744%_)))
                        (_%tl213742213765%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest213736213744%_))))
                    (let* ((_%dir213768%_ _%hd213741213763%_)
                           (_%rest213770%_ _%tl213742213765%_))
                      (_%K213740213760%_ _%rest213770%_ _%dir213768%_)))
                  (_%else213738213752%_)))))))
    (define gxc#file-empty?
      (lambda (_%path213700%_)
        (zero? (let ((__tmp214699 (file-info _%path213700%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp214699)))))
    (define gxc#compile-top-module
      (lambda (_%ctx213691%_)
        (let ((__tmp214700
               (lambda ()
                 (let ((__tmp214701
                        (lambda ()
                          (let ((__tmp214702
                                 (lambda ()
                                   (let ((__tmp214704
                                          (lambda ()
                                            (let ((__tmp214706
                                                   (lambda ()
                                                     (let ((__tmp214708
                                                            (lambda ()
                                                              (let ((__tmp214709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx213691%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp214709))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp214710
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx213691%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp214710))
                          '#!void)
                      (gxc#collect-bindings _%ctx213691%_)
                      (gxc#compile-runtime-code _%ctx213691%_)
                      (gxc#compile-meta-code _%ctx213691%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx213691%_)
                          '#!void)))
                   (__tmp214707
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
                __tmp214708
                gxc#current-compile-runtime-names
                __tmp214707))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp214705
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp214706
                                               gxc#current-compile-runtime-sections
                                               __tmp214705))))
                                         (__tmp214703
                                          (let ((__obj214604
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj214604))
                                            __obj214604)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp214704
                                      gxc#current-compile-symbol-table
                                      __tmp214703)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp214702
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp214701
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp214700
           gx#current-expander-context
           _%ctx213691%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx213689%_)
        (let ((__tmp214711
               (##structure-ref _%ctx213689%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp214711))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx213633%_)
        (letrec ((_%compile1213635%_
                  (lambda (_%ctx213678%_)
                    (let* ((_%code213680%_
                            (##structure-ref
                             _%ctx213678%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm213684%_
                            (let ((_%idstr213682%_
                                   (let ((__tmp214712
                                          (##structure-ref
                                           _%ctx213678%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp214712))))
                              (declare (not safe))
                              (##string-append _%idstr213682%_ '"~0")))
                           (_%rtc?213686%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code213680%_))))
                      (if _%rtc?213686%_
                          (let ((__tmp214713
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp214713
                             _%ctx213678%_
                             _%rtm213684%_))
                          '#!void)
                      (_%generate-runtime-code213637%_
                       _%ctx213678%_
                       _%code213680%_
                       (if _%rtc?213686%_ _%rtm213684%_ '#f)))))
                 (_%context-timestamp213636%_
                  (lambda (_%ctx213676%_)
                    (let ((__tmp214714
                           (let ((__tmp214715
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx213676%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp214715 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp214714))))
                 (_%generate-runtime-code213637%_
                  (lambda (_%ctx213644%_ _%code213645%_ _%rtm213646%_)
                    (let* ((_%runtime-code?213648%_ (if _%rtm213646%_ '#t '#f))
                           (_%lifts213650%_ (box '()))
                           (_%runtime-code213657%_
                            (if _%runtime-code?213648%_
                                (let ((__tmp214716
                                       (lambda ()
                                         (let ((__tmp214717
                                                (lambda ()
                                                  (let ((__tmp214718
                                                         (lambda ()
                                                           (let ((__tmp214720
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ((__tmp214722
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code213645%_))))
                                  (__tmp214721
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp214722
                               gxc#current-compile-identifiers
                               __tmp214721))))
                         (__tmp214719
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp214720
                      gxc#current-compile-marks
                      __tmp214719)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp214718
                                                     gxc#current-compile-lift
                                                     _%lifts213650%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp214717
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp214716
                                   gx#current-expander-context
                                   _%ctx213644%_))
                                '#f))
                           (_%runtime-code213659%_
                            (if _%runtime-code?213648%_
                                (if (null? (unbox _%lifts213650%_))
                                    _%runtime-code213657%_
                                    (cons 'begin
                                          (let ((__tmp214724
                                                 (cons _%runtime-code213657%_
                                                       '()))
                                                (__tmp214723
                                                 (reverse (unbox _%lifts213650%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp214724
                                             __tmp214723))))
                                '#f))
                           (_%runtime-code213661%_
                            (if _%runtime-code?213648%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp213636%_
                                                         _%ctx213644%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code213659%_ '())))
                                '#f))
                           (_%loader-code213664%_
                            (let ((__tmp214725
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code213645%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp214725
                               gx#current-expander-context
                               _%ctx213644%_)))
                           (_%loader-code213666%_
                            (cons 'begin
                                  (cons _%loader-code213664%_
                                        (cons (if _%runtime-code?213648%_
                                                  (cons 'load-module
                                                        (cons _%rtm213646%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0213668%_
                            (gxc#compile-output-file _%ctx213644%_ '0 '".scm"))
                           (_%scmrt213670%_
                            (gxc#compile-output-file
                             _%ctx213644%_
                             '#f
                             '".scm"))
                           (_%scms213672%_
                            (gxc#compile-static-output-file _%ctx213644%_)))
                      (if _%runtime-code?213648%_
                          (gxc#compile-scm-file__0
                           _%scm0213668%_
                           _%runtime-code213661%_)
                          '#!void)
                      (let ((__tmp214726
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt213670%_
                                _%loader-code213666%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp214726
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms213672%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms213672%_))
                          '#!void)
                      (if _%runtime-code?213648%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0213668%_ _%scms213672%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms213672%_ void)))))))
          (let* ((_%all-modules213639%_
                  (cons _%ctx213633%_ (gxc#lift-nested-modules _%ctx213633%_)))
                 (__tmp214727
                  (lambda (_%ctx213641%_)
                    (let ((__tmp214728
                           (lambda () (_%compile1213635%_ _%ctx213641%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp214728
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp214727 _%all-modules213639%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx213532%_)
        (letrec ((_%compile-ssi213534%_
                  (lambda (_%code213601%_)
                    (let* ((_%path213603%_
                            (gxc#compile-output-file
                             _%ctx213532%_
                             '#f
                             '".ssi"))
                           (_%prelude213615%_
                            (let* ((_%super213605%_
                                    (##structure-ref
                                     _%ctx213532%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e213607%_
                                    (##structure-ref
                                     _%super213605%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e213607%_
                                  ((lambda (_%g213609213611%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g213609213611%_)))
                                   _%$e213607%_)
                                  ':<root>)))
                           (_%ns213617%_
                            (##structure-ref
                             _%ctx213532%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr213619%_
                            (symbol->string
                             (##structure-ref
                              _%ctx213532%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg213627%_
                            (let ((_%$e213621%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr213619%_ '#\/))))
                              (if _%$e213621%_
                                  ((lambda (_%x213624%_)
                                     (let ((__tmp214729
                                            (substring
                                             _%idstr213619%_
                                             '0
                                             _%x213624%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp214729)))
                                   _%$e213621%_)
                                  '#f)))
                           (_%rt213629%_
                            (let ((__tmp214730
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp214730 _%ctx213532%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path213603%_))
                      (gxc#with-output-to-scheme-file
                       _%path213603%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude213615%_))
                         (if _%pkg213627%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg213627%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns213617%_))
                         (newline)
                         (pretty-print _%code213601%_)
                         (if _%rt213629%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt213629%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi213535%_
                  (lambda (_%part213540%_)
                    (let* ((_%part213541213554%_ _%part213540%_)
                           (_%E213543213558%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part213541213554%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K213544213570%_
                            (lambda (_%code213561%_
                                     _%n213562%_
                                     _%phi213563%_
                                     _%phi-ctx213564%_)
                              (let ((_%code213568%_
                                     (let ((__tmp214731
                                            (lambda ()
                                              (let ((__tmp214732
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code213561%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp214732
                                                 gx#current-expander-phi
                                                 _%phi213563%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp214731
                                        gx#current-expander-context
                                        _%phi-ctx213564%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx213532%_
                                  _%n213562%_
                                  '".scm")
                                 _%code213568%_
                                 '#t)))))
                      (if (pair? _%part213541213554%_)
                          (let ((_%hd213545213573%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part213541213554%_)))
                                (_%tl213546213575%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part213541213554%_))))
                            (let ((_%phi-ctx213578%_ _%hd213545213573%_))
                              (if (pair? _%tl213546213575%_)
                                  (let ((_%hd213547213580%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl213546213575%_)))
                                        (_%tl213548213582%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl213546213575%_))))
                                    (let ((_%phi213585%_ _%hd213547213580%_))
                                      (if (pair? _%tl213548213582%_)
                                          (let ((_%hd213549213587%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl213548213582%_)))
                                                (_%tl213550213589%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl213548213582%_))))
                                            (let ((_%n213592%_
                                                   _%hd213549213587%_))
                                              (if (pair? _%tl213550213589%_)
                                                  (let ((_%hd213551213594%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl213550213589%_)))
                                                        (_%tl213552213596%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl213550213589%_))))
                                                    (let ((_%code213599%_
                                                           _%hd213551213594%_))
                                                      (if (null? _%tl213552213596%_)
                                                          (_%K213544213570%_
                                                           _%code213599%_
                                                           _%n213592%_
                                                           _%phi213585%_
                                                           _%phi-ctx213578%_)
                                                          (_%E213543213558%_))))
                                                  (_%E213543213558%_))))
                                          (_%E213543213558%_))))
                                  (_%E213543213558%_))))
                          (_%E213543213558%_))))))
          (let ((_g214733_ (gxc#generate-meta-code _%ctx213532%_)))
            (begin
              (let ((_g214734_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g214733_)
                           (##values-length _g214733_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g214734_ 2)))
                    (error "Context expects 2 values" _g214734_)))
              (let ((_%ssi-code213537%_
                     (let () (declare (not safe)) (##values-ref _g214733_ 0)))
                    (_%phi-code213538%_
                     (let () (declare (not safe)) (##values-ref _g214733_ 1))))
                (begin
                  (_%compile-ssi213534%_ _%ssi-code213537%_)
                  (for-each _%compile-phi213535%_ _%phi-code213538%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx213514%_)
        (let* ((_%path213516%_
                (gxc#compile-output-file _%ctx213514%_ '#f '".ssxi.ss"))
               (_%code213518%_
                (let ((__tmp214735
                       (##structure-ref
                        _%ctx213514%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp214735)))
               (_%idstr213520%_
                (symbol->string
                 (##structure-ref
                  _%ctx213514%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg213528%_
                (let ((_%$e213522%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr213520%_ '#\/))))
                  (if _%$e213522%_
                      ((lambda (_%x213525%_)
                         (let ((__tmp214736
                                (substring _%idstr213520%_ '0 _%x213525%_)))
                           (declare (not safe))
                           (##string->symbol __tmp214736)))
                       _%$e213522%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path213516%_))
          (gxc#with-output-to-scheme-file
           _%path213516%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg213528%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg213528%_))
                 '#!void)
             (newline)
             (pretty-print _%code213518%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx213507%_)
        (let* ((_%state213509%_
                (let ((__obj214605
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj214605 _%ctx213507%_))
                  __obj214605))
               (_%ssi-code213511%_
                (let ((__tmp214737
                       (##structure-ref
                        _%ctx213507%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state213509%_
                   __tmp214737))))
          (values _%ssi-code213511%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state213509%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx213498%_)
        (let* ((_%lifts213500%_ (box '()))
               (__tmp214738
                (lambda ()
                  (let ((__tmp214740
                         (lambda ()
                           (let ((__tmp214742
                                  (lambda ()
                                    (let ((_%code213505%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-generate-runtime-phi
                                              _%stx213498%_))))
                                      (if (null? (unbox _%lifts213500%_))
                                          _%code213505%_
                                          (cons 'begin
                                                (let ((__tmp214744
                                                       (cons _%code213505%_
                                                             '()))
                                                      (__tmp214743
                                                       (reverse (unbox _%lifts213500%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp214744
                                                   __tmp214743)))))))
                                 (__tmp214741
                                  (let ()
                                    (declare (not safe))
                                    (gxc#make-bound-identifier-table))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp214742
                              gxc#current-compile-identifiers
                              __tmp214741))))
                        (__tmp214739
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp214740
                     gxc#current-compile-marks
                     __tmp214739)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp214738
           gxc#current-compile-lift
           _%lifts213500%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx213494%_)
        (let ((_%modules213496%_ (box '())))
          (let ((__tmp214745
                 (##structure-ref _%ctx213494%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules213496%_ __tmp214745))
          (reverse (unbox _%modules213496%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path213474%_ _%code213475%_ _%phi?213476%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path213474%_))
        (gxc#with-output-to-scheme-file
         _%path213474%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp214746
                                           (if _%phi?213476%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp214746)))))))
           (pretty-print _%code213475%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it213480%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path213474%_ _%phi?213476%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp214747
                         (cons 'compile-file (cons _%path213474%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it213480%_ __tmp214747))
                  (_%compile-it213480%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path213485%_ _%code213486%_)
        (let ((_%phi?213488%_ '#f))
          (gxc#compile-scm-file__%
           _%path213485%_
           _%code213486%_
           _%phi?213488%_))))
    (define gxc#compile-scm-file
      (lambda _g214748_
        (let ((_g214749_ (let () (declare (not safe)) (##length _g214748_))))
          (cond ((let () (declare (not safe)) (##fx= _g214749_ 2))
                 (apply gxc#compile-scm-file__0 _g214748_))
                ((let () (declare (not safe)) (##fx= _g214749_ 3))
                 (apply gxc#compile-scm-file__% _g214748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g214748_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?213375%_)
        (let _%lp213377%_ ((_%rest213379%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts213380%_ '()))
          (let* ((_%rest213381213401%_ _%rest213379%_)
                 (_%else213385213409%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts213380%_)))
                        (reverse _%opts213380%_)))))
            (let ((_%K213395213452%_
                   (lambda (_%rest213450%_)
                     (_%lp213377%_ _%rest213450%_ _%opts213380%_)))
                  (_%K213390213434%_
                   (lambda (_%rest213432%_)
                     (_%lp213377%_ _%rest213432%_ _%opts213380%_)))
                  (_%K213387213416%_
                   (lambda (_%rest213413%_ _%opt213414%_)
                     (_%lp213377%_
                      _%rest213413%_
                      (cons _%opt213414%_ _%opts213380%_)))))
              (if (pair? _%rest213381213401%_)
                  (let ((_%tl213397213457%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest213381213401%_)))
                        (_%hd213396213455%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest213381213401%_))))
                    (if (equal? _%hd213396213455%_ '"-cc-options")
                        (if (pair? _%tl213397213457%_)
                            (let* ((_%tl213399213460%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl213397213457%_)))
                                   (_%rest213463%_ _%tl213399213460%_))
                              (_%K213395213452%_ _%rest213463%_))
                            (let ((_%opt213424%_ _%hd213396213455%_)
                                  (_%rest213426%_ _%tl213397213457%_))
                              (_%K213387213416%_
                               _%rest213426%_
                               _%opt213424%_)))
                        (if (equal? _%hd213396213455%_ '"-ld-options")
                            (if (pair? _%tl213397213457%_)
                                (let* ((_%tl213394213442%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl213397213457%_)))
                                       (_%rest213445%_ _%tl213394213442%_))
                                  (_%K213390213434%_ _%rest213445%_))
                                (let ((_%opt213424%_ _%hd213396213455%_)
                                      (_%rest213426%_ _%tl213397213457%_))
                                  (_%K213387213416%_
                                   _%rest213426%_
                                   _%opt213424%_)))
                            (let ((_%opt213424%_ _%hd213396213455%_)
                                  (_%rest213426%_ _%tl213397213457%_))
                              (_%K213387213416%_
                               _%rest213426%_
                               _%opt213424%_)))))
                  (_%else213385213409%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?213469%_ '#f)) (gxc#gsc-link-options__% _%phi?213469%_))))
    (define gxc#gsc-link-options
      (lambda _g214750_
        (let ((_g214751_ (let () (declare (not safe)) (##length _g214750_))))
          (cond ((let () (declare (not safe)) (##fx= _g214751_ 0))
                 (apply gxc#gsc-link-options__0 _g214750_))
                ((let () (declare (not safe)) (##fx= _g214751_ 1))
                 (apply gxc#gsc-link-options__% _g214750_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g214750_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords213225%_ _%static?213221213226%_ _%phi?213227%_)
        (let ((_%static?213229%_
               (if (eq? _%static?213221213226%_ absent-value)
                   '#f
                   _%static?213221213226%_)))
          (if _%phi?213227%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp213231%_ ((_%rest213233%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts213234%_ '()))
                (let* ((_%rest213235213261%_ _%rest213233%_)
                       (_%else213240213269%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts213234%_)))
                              (reverse! _%opts213234%_)))))
                  (let ((_%K213255213332%_
                         (lambda (_%rest213329%_ _%opt213330%_)
                           (if _%static?213229%_
                               (_%lp213231%_
                                _%rest213329%_
                                (cons _%opt213330%_
                                      (cons '"-cc-options" _%opts213234%_)))
                               (_%lp213231%_ _%rest213329%_ _%opts213234%_))))
                        (_%K213250213309%_
                         (lambda (_%rest213306%_ _%opt213307%_)
                           (_%lp213231%_
                            _%rest213306%_
                            (cons _%opt213307%_
                                  (cons '"-cc-options" _%opts213234%_)))))
                        (_%K213245213289%_
                         (lambda (_%rest213287%_)
                           (_%lp213231%_ _%rest213287%_ _%opts213234%_)))
                        (_%K213242213275%_
                         (lambda (_%rest213273%_)
                           (_%lp213231%_ _%rest213273%_ _%opts213234%_))))
                    (if (pair? _%rest213235213261%_)
                        (let ((_%tl213257213337%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest213235213261%_)))
                              (_%hd213256213335%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest213235213261%_))))
                          (if (equal? _%hd213256213335%_ '"-cc-options")
                              (if (pair? _%tl213257213337%_)
                                  (let ((_%tl213259213342%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl213257213337%_)))
                                        (_%hd213258213340%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl213257213337%_))))
                                    (if (equal? _%hd213258213340%_ '"-Bstatic")
                                        (let ((_%opt213345%_
                                               _%hd213258213340%_)
                                              (_%rest213347%_
                                               _%tl213259213342%_))
                                          (_%K213255213332%_
                                           _%rest213347%_
                                           _%opt213345%_))
                                        (let ((_%opt213322%_
                                               _%hd213258213340%_)
                                              (_%rest213324%_
                                               _%tl213259213342%_))
                                          (_%K213250213309%_
                                           _%rest213324%_
                                           _%opt213322%_))))
                                  (let ((_%rest213281%_ _%tl213257213337%_))
                                    (_%K213242213275%_ _%rest213281%_)))
                              (if (equal? _%hd213256213335%_ '"-ld-options")
                                  (if (pair? _%tl213257213337%_)
                                      (let* ((_%tl213249213297%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl213257213337%_)))
                                             (_%rest213300%_
                                              _%tl213249213297%_))
                                        (_%K213245213289%_ _%rest213300%_))
                                      (let ((_%rest213281%_
                                             _%tl213257213337%_))
                                        (_%K213242213275%_ _%rest213281%_)))
                                  (let ((_%rest213281%_ _%tl213257213337%_))
                                    (_%K213242213275%_ _%rest213281%_)))))
                        (_%else213240213269%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords213352%_ _%static?213221213353%_)
        (let ((_%phi?213355%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords213352%_
           _%static?213221213353%_
           _%phi?213355%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g214752_
        (let ((_g214753_ (let () (declare (not safe)) (##length _g214752_))))
          (cond ((let () (declare (not safe)) (##fx= _g214753_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g214752_))
                ((let () (declare (not safe)) (##fx= _g214753_ 3))
                 (apply gxc#gsc-cc-options__%__% _g214752_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g214752_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords213364%_ . _%args213365%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords213364%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213364%_
                  'static:
                  absent-value))
               _%args213365%_)))
    (define gxc#gsc-cc-options
      (lambda _%args213222213371%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args213222213371%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords213071%_ _%static?213067213072%_ _%phi?213073%_)
        (let ((_%static?213075%_
               (if (eq? _%static?213067213072%_ absent-value)
                   '#f
                   _%static?213067213072%_)))
          (if _%phi?213073%_
              '()
              (let _%lp213077%_ ((_%rest213079%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts213080%_ '()))
                (let* ((_%rest213081213107%_ _%rest213079%_)
                       (_%else213086213115%_
                        (lambda () (reverse! _%opts213080%_))))
                  (let ((_%K213101213178%_
                         (lambda (_%rest213175%_ _%opt213176%_)
                           (if _%static?213075%_
                               (_%lp213077%_
                                _%rest213175%_
                                (cons _%opt213176%_
                                      (cons '"-ld-options" _%opts213080%_)))
                               (_%lp213077%_ _%rest213175%_ _%opts213080%_))))
                        (_%K213096213155%_
                         (lambda (_%rest213152%_ _%opt213153%_)
                           (_%lp213077%_
                            _%rest213152%_
                            (cons _%opt213153%_
                                  (cons '"-ld-options" _%opts213080%_)))))
                        (_%K213091213135%_
                         (lambda (_%rest213133%_)
                           (_%lp213077%_ _%rest213133%_ _%opts213080%_)))
                        (_%K213088213121%_
                         (lambda (_%rest213119%_)
                           (_%lp213077%_ _%rest213119%_ _%opts213080%_))))
                    (if (pair? _%rest213081213107%_)
                        (let ((_%tl213103213183%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest213081213107%_)))
                              (_%hd213102213181%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest213081213107%_))))
                          (if (equal? _%hd213102213181%_ '"-ld-options")
                              (if (pair? _%tl213103213183%_)
                                  (let ((_%tl213105213188%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl213103213183%_)))
                                        (_%hd213104213186%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl213103213183%_))))
                                    (if (equal? _%hd213104213186%_ '"-static")
                                        (let ((_%opt213191%_
                                               _%hd213104213186%_)
                                              (_%rest213193%_
                                               _%tl213105213188%_))
                                          (_%K213101213178%_
                                           _%rest213193%_
                                           _%opt213191%_))
                                        (let ((_%opt213168%_
                                               _%hd213104213186%_)
                                              (_%rest213170%_
                                               _%tl213105213188%_))
                                          (_%K213096213155%_
                                           _%rest213170%_
                                           _%opt213168%_))))
                                  (let ((_%rest213127%_ _%tl213103213183%_))
                                    (_%K213088213121%_ _%rest213127%_)))
                              (if (equal? _%hd213102213181%_ '"-cc-options")
                                  (if (pair? _%tl213103213183%_)
                                      (let* ((_%tl213095213143%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl213103213183%_)))
                                             (_%rest213146%_
                                              _%tl213095213143%_))
                                        (_%K213091213135%_ _%rest213146%_))
                                      (let ((_%rest213127%_
                                             _%tl213103213183%_))
                                        (_%K213088213121%_ _%rest213127%_)))
                                  (let ((_%rest213127%_ _%tl213103213183%_))
                                    (_%K213088213121%_ _%rest213127%_)))))
                        (_%else213086213115%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords213198%_ _%static?213067213199%_)
        (let ((_%phi?213201%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords213198%_
           _%static?213067213199%_
           _%phi?213201%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g214754_
        (let ((_g214755_ (let () (declare (not safe)) (##length _g214754_))))
          (cond ((let () (declare (not safe)) (##fx= _g214755_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g214754_))
                ((let () (declare (not safe)) (##fx= _g214755_ 3))
                 (apply gxc#gsc-ld-options__%__% _g214754_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g214754_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords213210%_ . _%args213211%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords213210%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213210%_
                  'static:
                  absent-value))
               _%args213211%_)))
    (define gxc#gsc-ld-options
      (lambda _%args213068213217%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args213068213217%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir213062%_)
        (let ((_%user-staticdir213064%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir213062%_
                       '" -I "
                       _%user-staticdir213064%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp212974%_ ((_%rest212976%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts212977%_ '()))
          (let* ((_%rest212978212998%_ _%rest212976%_)
                 (_%else212982213006%_ (lambda () _%opts212977%_)))
            (let ((_%K212992213049%_
                   (lambda (_%rest213047%_)
                     (_%lp212974%_ _%rest213047%_ _%opts212977%_)))
                  (_%K212987213027%_
                   (lambda (_%rest213024%_ _%opt213025%_)
                     (_%lp212974%_
                      _%rest213024%_
                      (let ((__tmp214756
                             (let ((__tmp214757
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt213025%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp214757))))
                        (declare (not safe))
                        (##append _%opts212977%_ __tmp214756)))))
                  (_%K212984213012%_
                   (lambda (_%rest213010%_)
                     (_%lp212974%_ _%rest213010%_ _%opts212977%_))))
              (if (pair? _%rest212978212998%_)
                  (let ((_%tl212994213054%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest212978212998%_)))
                        (_%hd212993213052%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest212978212998%_))))
                    (if (equal? _%hd212993213052%_ '"-cc-options")
                        (if (pair? _%tl212994213054%_)
                            (let* ((_%tl212996213057%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl212994213054%_)))
                                   (_%rest213060%_ _%tl212996213057%_))
                              (_%K212992213049%_ _%rest213060%_))
                            (let ((_%rest213018%_ _%tl212994213054%_))
                              (_%K212984213012%_ _%rest213018%_)))
                        (if (equal? _%hd212993213052%_ '"-ld-options")
                            (if (pair? _%tl212994213054%_)
                                (let ((_%tl212991213037%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl212994213054%_)))
                                      (_%hd212990213035%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl212994213054%_))))
                                  (let ((_%opt213040%_ _%hd212990213035%_)
                                        (_%rest213042%_ _%tl212991213037%_))
                                    (_%K212987213027%_
                                     _%rest213042%_
                                     _%opt213040%_)))
                                (let ((_%rest213018%_ _%tl212994213054%_))
                                  (_%K212984213012%_ _%rest213018%_)))
                            (let ((_%rest213018%_ _%tl212994213054%_))
                              (_%K212984213012%_ _%rest213018%_)))))
                  (_%else212982213006%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str212971%_)
        (not (let () (declare (not safe)) (string-empty? _%str212971%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path212964%_ _%phi?212965%_)
        (let ((_%gsc-link-opts212967%_
               (gxc#gsc-link-options__% _%phi?212965%_))
              (_%gsc-cc-opts212968%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?212965%_))
              (_%gsc-ld-opts212969%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?212965%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp214758
                  (let ((__tmp214759
                         (let ((__tmp214760 (cons _%path212964%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp214760
                            _%gsc-link-opts212967%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp214759 _%gsc-ld-opts212969%_))))
             (declare (not safe))
             (__foldr1 cons __tmp214758 _%gsc-cc-opts212968%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx212930%_ _%n212931%_ _%ext212932%_)
        (letrec ((_%module-relative-path212934%_
                  (lambda (_%ctx212962%_)
                    (path-strip-directory
                     (let ((__tmp214761
                            (##structure-ref
                             _%ctx212962%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp214761)))))
                 (_%module-source-directory212935%_
                  (lambda (_%ctx212958%_)
                    (path-directory
                     (let ((_%mpath212960%_
                            (##structure-ref
                             _%ctx212958%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath212960%_)
                           _%mpath212960%_
                           (last _%mpath212960%_))))))
                 (_%section-string212936%_
                  (lambda (_%n212952%_)
                    (if (number? _%n212952%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n212952%_))
                        (if (symbol? _%n212952%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n212952%_))
                            (if (string? _%n212952%_)
                                _%n212952%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n212952%_)))))))
                 (_%file-name212937%_
                  (lambda (_%path212950%_)
                    (if _%n212931%_
                        (string-append
                         _%path212950%_
                         '"~"
                         (_%section-string212936%_ _%n212931%_)
                         _%ext212932%_)
                        (string-append _%path212950%_ _%ext212932%_))))
                 (_%file-path212938%_
                  (lambda ()
                    (let ((_%$e212944%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e212944%_
                          ((lambda (_%outdir212947%_)
                             (path-expand
                              (_%file-name212937%_
                               (let ((__tmp214762
                                      (##structure-ref
                                       _%ctx212930%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp214762)))
                              _%outdir212947%_))
                           _%$e212944%_)
                          (path-expand
                           (_%file-name212937%_
                            (_%module-relative-path212934%_ _%ctx212930%_))
                           (_%module-source-directory212935%_
                            _%ctx212930%_)))))))
          (let ((_%path212940%_ (_%file-path212938%_)))
            (let ((__tmp214763
                   (lambda ()
                     (let ((__tmp214764 (path-directory _%path212940%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp214764)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp214763))
            _%path212940%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx212911%_)
        (letrec ((_%file-name212913%_
                  (lambda (_%id212928%_)
                    (let ((__tmp214765 (gxc#static-module-name _%id212928%_)))
                      (declare (not safe))
                      (##string-append __tmp214765 '".scm"))))
                 (_%file-path212914%_
                  (lambda ()
                    (let* ((_%file212920%_
                            (_%file-name212913%_
                             (##structure-ref
                              _%ctx212911%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e212922%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e212922%_
                          ((lambda (_%outdir212925%_)
                             (path-expand
                              _%file212920%_
                              (path-expand '"static" _%outdir212925%_)))
                           _%$e212922%_)
                          (path-expand _%file212920%_ '"static"))))))
          (let ((_%path212916%_ (_%file-path212914%_)))
            (let ((__tmp214766
                   (lambda ()
                     (let ((__tmp214767 (path-directory _%path212916%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp214767)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp214766))
            _%path212916%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx212904%_ _%opts212905%_)
        (let ((_%$e212907%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts212905%_))))
          (if _%$e212907%_
              _%$e212907%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx212904%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr212894%_)
        (if (string? _%idstr212894%_)
            (let* ((_%str212897%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr212894%_)))
                   (_%strs212899%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str212897%_ '#\/))))
              (declare (not safe))
              (string-join _%strs212899%_ '"__"))
            (if (symbol? _%idstr212894%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr212894%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr212894%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp214768
               (let ((__tmp214769 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp214769 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp214768))))
    (define gxc#invoke__%
      (lambda (_%@@keywords212860%_
               _%stdout-redirection212856212861%_
               _%stderr-redirection212857212862%_
               _%program212863%_
               _%args212864%_)
        (let* ((_%stdout-redirection212866%_
                (if (eq? _%stdout-redirection212856212861%_ absent-value)
                    '#f
                    _%stdout-redirection212856212861%_))
               (_%stderr-redirection212868%_
                (if (eq? _%stderr-redirection212857212862%_ absent-value)
                    '#f
                    _%stderr-redirection212857212862%_)))
          (let ((__tmp214770 (cons _%program212863%_ _%args212864%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp214770))
          (let* ((_%proc212870%_
                  (open-process
                   (cons 'path:
                         (cons _%program212863%_
                               (cons 'arguments:
                                     (cons _%args212864%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection212866%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection212868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output212875%_
                  (if (or _%stdout-redirection212866%_
                          _%stderr-redirection212868%_)
                      (read-line _%proc212870%_ '#f)
                      '#f))
                 (_%status212878%_ (process-status _%proc212870%_)))
            (let () (declare (not safe)) (##close-port _%proc212870%_))
            (if (zero? _%status212878%_)
                '#!void
                (begin
                  (display _%output212875%_)
                  (let ((__tmp214771 (cons _%program212863%_ _%args212864%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp214771
                     _%status212878%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords212883%_ . _%args212884%_)
        (apply gxc#invoke__%
               _%@@keywords212883%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords212883%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords212883%_
                  'stderr-redirection:
                  absent-value))
               _%args212884%_)))
    (define gxc#invoke
      (lambda _%args212858212890%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args212858212890%_)))))
