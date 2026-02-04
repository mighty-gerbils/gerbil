(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1770243158)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp224649 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp224649))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp224650 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp224650))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path224506%_ _%fun224507%_)
        (with-output-to-file
         (cons 'path: (cons _%path224506%_ gxc#scheme-file-settings))
         _%fun224507%_)))
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
      (lambda (_%gerbil-libdir224501%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir224501%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path224499%_)
        (let ((__tmp224651 (object->string _%path224499%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp224651 '")"))))
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
      (lambda (_%dir224497%_) (delete-file-or-directory _%dir224497%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath224441%_ _%opts224442%_)
        (if (string? _%srcpath224441%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath224441%_)))
        (let* ((_%outdir224444%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts224442%_)))
               (_%invoke-gsc?224446%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts224442%_)))
               (_%target224451%_
                (let ((_%$e224448%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts224442%_))))
                  (if _%$e224448%_ _%$e224448%_ 'C)))
               (_%gsc-options224456%_
                (append (cons '"-target"
                              (cons (symbol->string _%target224451%_) '()))
                        (let ((_%$e224453%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts224442%_))))
                          (if _%$e224453%_ _%$e224453%_ '()))))
               (_%keep-scm?224458%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts224442%_)))
               (_%verbosity224460%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts224442%_)))
               (_%optimize224462%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts224442%_)))
               (_%debug224464%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts224442%_)))
               (_%gen-ssxi224466%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts224442%_)))
               (_%parallel?224468%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts224442%_))))
          (if _%outdir224444%_
              (let ((__tmp224652
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir224444%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp224652))
              '#!void)
          (if _%optimize224462%_
              (let ((__tmp224653
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp224653))
              '#!void)
          (let ((__tmp224654
                 (lambda ()
                   (let ((__tmp224655
                          (lambda ()
                            (let ((__tmp224656
                                   (lambda ()
                                     (let ((__tmp224657
                                            (lambda ()
                                              (let ((__tmp224658
                                                     (lambda ()
                                                       (let ((__tmp224659
                                                              (lambda ()
                                                                (let ((__tmp224660
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp224661
                                        (lambda ()
                                          (let ((__tmp224662
                                                 (lambda ()
                                                   (let ((__tmp224664
                                                          (lambda ()
                                                            (let ((__tmp224666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp224667
                                    (lambda ()
                                      (let ((__tmp224668
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"compile "
                                                  _%srcpath224441%_))
                                               (gxc#compile-top-module
                                                (let ((__tmp224669
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#import-module__0
                                                            _%srcpath224441%_)))))
                                                  (declare (not safe))
                                                  (__with-lock
                                                   gxc#+driver-mutex+
                                                   __tmp224669))))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp224668
                                         gx#current-expander-compiling?
                                         '#t)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp224667
                                gxc#current-compile-parallel
                                _%parallel?224468%_))))
                          (__tmp224665
                           (cons (cons 'compile-module
                                       (cons _%srcpath224441%_ '()))
                                 '())))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp224666
                       gxc#current-compile-context
                       __tmp224665))))
                 (__tmp224663 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp224664
                                                      gxc#current-compile-timestamp
                                                      __tmp224663)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp224662
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi224466%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp224661
                                    gxc#current-compile-debug
                                    _%debug224464%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp224660
                           gxc#current-compile-optimize
                           _%optimize224462%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp224659
                  gxc#current-compile-verbose
                  _%verbosity224460%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp224658
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?224458%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp224657
                                        gxc#current-compile-gsc-options
                                        _%gsc-options224456%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp224656
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?224446%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp224655
                      gx#current-compilation-target
                      _%target224451%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp224654
             gxc#current-compile-output-dir
             _%outdir224444%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath224490%_)
        (let ((_%opts224492%_ '()))
          (gxc#compile-module__% _%srcpath224490%_ _%opts224492%_))))
    (define gxc#compile-module
      (lambda _g224670_
        (let ((_g224671_ (let () (declare (not safe)) (##length _g224670_))))
          (cond ((let () (declare (not safe)) (##fx= _g224671_ 1))
                 (apply gxc#compile-module__0 _g224670_))
                ((let () (declare (not safe)) (##fx= _g224671_ 2))
                 (apply gxc#compile-module__% _g224670_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g224670_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath224391%_ _%opts224392%_)
        (if (string? _%srcpath224391%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath224391%_)))
        (let* ((_%outdir224394%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts224392%_)))
               (_%invoke-gsc?224396%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts224392%_)))
               (_%target224401%_
                (let ((_%$e224398%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts224392%_))))
                  (if _%$e224398%_ _%$e224398%_ 'C)))
               (_%gsc-options224406%_
                (append (cons '"-target"
                              (cons (symbol->string _%target224401%_) '()))
                        (let ((_%$e224403%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts224392%_))))
                          (if _%$e224403%_ _%$e224403%_ '()))))
               (_%keep-scm?224408%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts224392%_)))
               (_%verbosity224410%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts224392%_)))
               (_%debug224412%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts224392%_)))
               (_%parallel?224414%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts224392%_))))
          (if _%outdir224394%_
              (let ((__tmp224672
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir224394%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp224672))
              '#!void)
          (let ((__tmp224673
                 (lambda ()
                   (let ((__tmp224674
                          (lambda ()
                            (let ((__tmp224675
                                   (lambda ()
                                     (let ((__tmp224676
                                            (lambda ()
                                              (let ((__tmp224677
                                                     (lambda ()
                                                       (let ((__tmp224678
                                                              (lambda ()
                                                                (let ((__tmp224679
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp224681
                                        (lambda ()
                                          (let ((__tmp224683
                                                 (lambda ()
                                                   (let ((__tmp224684
                                                          (lambda ()
                                                            (let ((__tmp224685
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"compile exe " _%srcpath224391%_))
                             (gxc#compile-executable-module
                              (let ((__tmp224686
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#import-module__0
                                          _%srcpath224391%_)))))
                                (declare (not safe))
                                (__with-lock gxc#+driver-mutex+ __tmp224686))
                              _%opts224392%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp224685
                       gx#current-expander-compiling?
                       '#t)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp224684
                                                      gxc#current-compile-parallel
                                                      _%parallel?224414%_))))
                                                (__tmp224682
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath224391%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp224683
                                             gxc#current-compile-context
                                             __tmp224682))))
                                       (__tmp224680 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp224681
                                    gxc#current-compile-timestamp
                                    __tmp224680)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp224679
                           gxc#current-compile-debug
                           _%debug224412%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp224678
                  gxc#current-compile-verbose
                  _%verbosity224410%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp224677
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?224408%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp224676
                                        gxc#current-compile-gsc-options
                                        _%gsc-options224406%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp224675
                               gx#current-compilation-target
                               _%target224401%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp224674
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?224396%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp224673
             gxc#current-compile-output-dir
             _%outdir224394%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath224433%_)
        (let ((_%opts224435%_ '()))
          (gxc#compile-exe__% _%srcpath224433%_ _%opts224435%_))))
    (define gxc#compile-exe
      (lambda _g224687_
        (let ((_g224688_ (let () (declare (not safe)) (##length _g224687_))))
          (cond ((let () (declare (not safe)) (##fx= _g224688_ 1))
                 (apply gxc#compile-exe__0 _g224687_))
                ((let () (declare (not safe)) (##fx= _g224688_ 2))
                 (apply gxc#compile-exe__% _g224687_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g224687_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx224387%_ _%opts224388%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts224388%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx224387%_
             _%opts224388%_)
            (gxc#compile-executable-module/separate
             _%ctx224387%_
             _%opts224388%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx224187%_ _%opts224188%_)
        (letrec ((_%generate-stub224190%_
                  (lambda (_%builtin-modules224383%_)
                    (let ((_%mod-main224385%_
                           (gxc#find-runtime-symbol _%ctx224187%_ 'main)))
                      (let ((__tmp224689
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules224383%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp224689))
                      (let ((__tmp224690
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main224385%_
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
                        (##write __tmp224690))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts224191%_
                  (lambda (_%gerbil-libdir224381%_)
                    (let ((__tmp224691
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir224381%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp224691 read))))
                 (_%replace-extension224192%_
                  (lambda (_%path224378%_ _%ext224379%_)
                    (string-append
                     (path-strip-extension _%path224378%_)
                     _%ext224379%_)))
                 (_%replace-extension-with-c224193%_
                  (lambda (_%path224376%_)
                    (_%replace-extension224192%_ _%path224376%_ '".c")))
                 (_%replace-extension-with-object224194%_
                  (lambda (_%path224374%_)
                    (_%replace-extension224192%_
                     _%path224374%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?224195%_
                  (lambda (_%ctx224372%_)
                    (if (_%exclude-module?224197%_ _%ctx224372%_)
                        '#f
                        (not (_%libgerbil-module?224196%_ _%ctx224372%_)))))
                 (_%libgerbil-module?224196%_
                  (lambda (_%ctx224365%_)
                    (let ((_%id-str224367%_
                           (symbol->string
                            (##structure-ref
                             _%ctx224365%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?224197%_ _%id-str224367%_)
                          '#f
                          (let ((_%$e224369%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str224367%_))))
                            (if _%$e224369%_
                                _%$e224369%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str224367%_))))))))
                 (_%exclude-module?224197%_
                  (lambda (_%ctx-or-str224361%_)
                    (let ((_%str224363%_
                           (if (string? _%ctx-or-str224361%_)
                               _%ctx-or-str224361%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str224361%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str224363%_))))
                 (_%not-file-empty?224198%_
                  (lambda (_%path224359%_)
                    (not (gxc#file-empty? _%path224359%_))))
                 (_%fold-libgerbil-runtime-scm224199%_
                  (lambda (_%gerbil-staticdir224352%_ _%libgerbil-scm224353%_)
                    (let ((_%gerbil-runtime-scm224357%_
                           (let ((__tmp224692
                                  (lambda (_%rtm224355%_)
                                    (path-expand
                                     (let ((__tmp224693
                                            (let ((__tmp224694
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm224355%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp224694
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp224693 '".scm"))
                                     _%gerbil-staticdir224352%_))))
                             (declare (not safe))
                             (##map __tmp224692 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates224200%_
                       (append _%gerbil-runtime-scm224357%_
                               _%libgerbil-scm224353%_)))))
                 (_%remove-duplicates224200%_
                  (lambda (_%strlst224312%_)
                    (let _%loop224314%_ ((_%rest224316%_ _%strlst224312%_)
                                         (_%result224317%_ '()))
                      (let* ((_%rest224318224326%_ _%rest224316%_)
                             (_%else224320224334%_
                              (lambda () (reverse! _%result224317%_)))
                             (_%K224322224340%_
                              (lambda (_%rest224337%_ _%path224338%_)
                                (if (member _%path224338%_ _%result224317%_)
                                    (_%loop224314%_
                                     _%rest224337%_
                                     _%result224317%_)
                                    (_%loop224314%_
                                     _%rest224337%_
                                     (cons _%path224338%_
                                           _%result224317%_))))))
                        (if (pair? _%rest224318224326%_)
                            (let ((_%hd224323224343%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest224318224326%_)))
                                  (_%tl224324224345%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest224318224326%_))))
                              (let* ((_%path224348%_ _%hd224323224343%_)
                                     (_%rest224350%_ _%tl224324224345%_))
                                (_%K224322224340%_
                                 _%rest224350%_
                                 _%path224348%_)))
                            (_%else224320224334%_))))))
                 (_%compile-stub224201%_
                  (lambda (_%output-scm224208%_ _%output-bin224209%_)
                    (let* ((_%gerbil-home224211%_
                            (let ((__tmp224695
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp224695)))
                           (_%gerbil-libdir224213%_
                            (path-expand '"lib" _%gerbil-home224211%_))
                           (_%gerbil-staticdir224215%_
                            (path-expand '"static" _%gerbil-libdir224213%_))
                           (_%deps224217%_
                            (gxc#find-runtime-module-deps _%ctx224187%_))
                           (_%libgerbil-deps224219%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?224196%_
                               _%deps224217%_)))
                           (_%libgerbil-scm224221%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps224219%_)))
                           (_%libgerbil-scm224223%_
                            (_%fold-libgerbil-runtime-scm224199%_
                             _%gerbil-staticdir224215%_
                             _%libgerbil-scm224221%_))
                           (_%libgerbil-c224225%_
                            (map _%replace-extension-with-c224193%_
                                 _%libgerbil-scm224223%_))
                           (_%libgerbil-o224227%_
                            (map _%replace-extension-with-object224194%_
                                 _%libgerbil-scm224223%_))
                           (_%src-deps224229%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?224195%_
                               _%deps224217%_)))
                           (_%src-deps-scm224231%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps224229%_)))
                           (_%src-deps-scm224233%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?224198%_
                               _%src-deps-scm224231%_)))
                           (_%src-deps-scm224235%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm224233%_)))
                           (_%src-deps-c224237%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c224193%_
                                     _%src-deps-scm224235%_)))
                           (_%src-deps-o224239%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object224194%_
                                     _%src-deps-scm224235%_)))
                           (_%src-bin-scm224241%_
                            (gxc#find-static-module-file _%ctx224187%_))
                           (_%src-bin-scm224243%_
                            (path-expand _%src-bin-scm224241%_))
                           (_%src-bin-c224245%_
                            (_%replace-extension-with-c224193%_
                             _%src-bin-scm224243%_))
                           (_%src-bin-o224247%_
                            (_%replace-extension-with-object224194%_
                             _%src-bin-scm224243%_))
                           (_%output-bin224249%_
                            (path-expand _%output-bin224209%_))
                           (_%output-scm224251%_
                            (path-expand _%output-scm224208%_))
                           (_%output-c224253%_
                            (_%replace-extension-with-c224193%_
                             _%output-scm224251%_))
                           (_%output-o224255%_
                            (_%replace-extension-with-object224194%_
                             _%output-scm224251%_))
                           (_%output_-c224257%_
                            (_%replace-extension224192%_
                             _%output-scm224251%_
                             '"_.c"))
                           (_%output_-o224259%_
                            (_%replace-extension224192%_
                             _%output-scm224251%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts224261%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts224263%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts224265%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir224215%_))
                           (_%output-ld-opts224267%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts224269%_
                            (_%get-libgerbil-ld-opts224191%_
                             _%gerbil-libdir224213%_))
                           (_%rpath224271%_
                            (gxc#gerbil-rpath _%gerbil-libdir224213%_))
                           (_%builtin-modules224275%_
                            (_%remove-duplicates224200%_
                             (let ((__tmp224696
                                    (let ((__tmp224698
                                           (lambda (_%mod224273%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod224273%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp224697
                                           (cons _%ctx224187%_
                                                 _%deps224217%_)))
                                      (declare (not safe))
                                      (##map __tmp224698 __tmp224697))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp224696)))))
                      (letrec ((_%compile-obj224278%_
                                (lambda (_%scm-path224285%_ _%c-path224286%_)
                                  (let* ((_%o-path224288%_
                                          (_%replace-extension224192%_
                                           _%c-path224286%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock224290%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path224288%_
                                             '".lock")))
                                         (_%locked224292%_ '#f)
                                         (_%unlock224295%_
                                          (lambda ()
                                            (close-port _%locked224292%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock224290%_)))))
                                    (let _%retry224298%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock224290%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry224298%_))
                                          (begin
                                            (set! _%locked224292%_
                                                  (let ((__tmp224699
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock224290%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp224699)))
                                            (if _%locked224292%_
                                                '#!void
                                                (_%retry224298%_)))))
                                    (let ((__tmp224701
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path224288%_)))
                                                     (not _%scm-path224285%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path224285%_
                                                        _%o-path224288%_)))
                                                 (let ((_%gsc-cc-opts224309%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp224702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp224703 (cons _%c-path224286%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp224703
                            _%gsc-static-opts224265%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp224702 _%gsc-cc-opts224309%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp224700
                                           (lambda () (_%unlock224295%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp224701
                                       __tmp224700))))))
                        (let ((__tmp224704
                               (lambda ()
                                 (let ((__tmp224705
                                        (path-directory _%output-bin224249%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp224705)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp224704))
                        (gxc#with-output-to-scheme-file
                         _%output-scm224251%_
                         (lambda ()
                           (_%generate-stub224190%_
                            _%builtin-modules224275%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it224283%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp224706
                                                   (let ((__tmp224707
                                                          (let ((__tmp224708
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm224243%_
                               (cons _%output-scm224251%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp224708 _%src-deps-scm224235%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp224707
                                                      _%libgerbil-c224225%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp224706
                                               _%gsc-link-opts224261%_))))
                                     (for-each
                                      _%compile-obj224278%_
                                      (let ((__tmp224709
                                             (cons _%src-bin-scm224243%_
                                                   (cons _%output-scm224251%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp224709
                                         _%src-deps-scm224235%_))
                                      (let ((__tmp224710
                                             (cons _%src-bin-c224245%_
                                                   (cons _%output-c224253%_
                                                         (cons _%output_-c224257%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp224710
                                         _%src-deps-c224237%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin224249%_
                                                        (let ((__tmp224711
                                                               (cons _%src-bin-o224247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o224255%_
                                   (cons _%output_-o224259%_
                                         (let ((__tmp224712
                                                (let ((__tmp224713
                                                       (let ((__tmp224715
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir224213%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts224269%_))))
                     (__tmp224714
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath224271%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp224715 __tmp224714))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp224713
                                                   _%output-ld-opts224267%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp224712
                                            _%libgerbil-o224227%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp224711 _%src-deps-o224239%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp224716
                                            (cons _%output-c224253%_
                                                  (cons _%output_-c224257%_
                                                        (cons _%output-o224255%_
                                                              (cons _%output_-o224259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp224716)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it224283%_))
                                  (_%compile-it224283%_)))
                            '#!void))))))
          (let* ((_%output-bin224203%_
                  (gxc#compile-exe-output-file _%ctx224187%_ _%opts224188%_))
                 (_%output-scm224205%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin224203%_ '"__exe.scm"))))
            (_%compile-stub224201%_
             _%output-scm224205%_
             _%output-bin224203%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx224009%_ _%opts224010%_)
        (letrec ((_%reset-declare224012%_
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
                 (_%generate-stub224013%_
                  (lambda (_%deps224178%_)
                    (let ((_%mod-main224180%_
                           (gxc#find-runtime-symbol _%ctx224009%_ 'main))
                          (_%reset-decl224181%_ (_%reset-declare224012%_))
                          (_%user-decl224182%_ (_%user-declare224014%_)))
                      (for-each
                       (lambda (_%dep224184%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl224181%_))
                         (newline)
                         (if _%user-decl224182%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl224182%_))
                               (newline))
                             '#!void)
                         (let ((__tmp224717
                                (cons 'include (cons _%dep224184%_ '()))))
                           (declare (not safe))
                           (##write __tmp224717))
                         (newline))
                       _%deps224178%_)
                      (let ((__tmp224718
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main224180%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp224718))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare224014%_
                  (lambda ()
                    (let* ((_%gsc-opts224083%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts224010%_)))
                           (_%gsc-prelude224085%_
                            (if _%gsc-opts224083%_
                                (member '"-prelude" _%gsc-opts224083%_)
                                '#f))
                           (_%gsc-prelude224087%_
                            (if _%gsc-prelude224085%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude224085%_)))
                                '#f)))
                      (let _%lp224090%_ ((_%rest224092%_
                                          (cons _%gsc-prelude224087%_ '()))
                                         (_%user-decls224093%_ '()))
                        (let* ((_%rest224094224102%_ _%rest224092%_)
                               (_%else224096224110%_
                                (lambda ()
                                  (if (null? _%user-decls224093%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls224093%_)))))
                               (_%K224098224166%_
                                (lambda (_%rest224113%_ _%expr224114%_)
                                  (let* ((_%expr224115224127%_ _%expr224114%_)
                                         (_%else224118224135%_
                                          (lambda ()
                                            (_%lp224090%_
                                             _%rest224113%_
                                             _%user-decls224093%_))))
                                    (let ((_%K224123224156%_
                                           (lambda (_%decls224154%_)
                                             (_%lp224090%_
                                              _%rest224113%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls224093%_
                                                 _%decls224154%_)))))
                                          (_%K224120224141%_
                                           (lambda (_%exprs224139%_)
                                             (_%lp224090%_
                                              (append _%exprs224139%_
                                                      _%rest224113%_)
                                              _%user-decls224093%_))))
                                      (if (pair? _%expr224115224127%_)
                                          (let ((_%tl224125224161%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr224115224127%_)))
                                                (_%hd224124224159%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr224115224127%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd224124224159%_
                                                         'declare))
                                                (let ((_%decls224164%_
                                                       _%tl224125224161%_))
                                                  (_%K224123224156%_
                                                   _%decls224164%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd224124224159%_
                                                             'begin))
                                                    (let ((_%exprs224149%_
                                                           _%tl224125224161%_))
                                                      (_%K224120224141%_
                                                       _%exprs224149%_))
                                                    (_%else224118224135%_))))
                                          (_%else224118224135%_)))))))
                          (if (pair? _%rest224094224102%_)
                              (let ((_%hd224099224169%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest224094224102%_)))
                                    (_%tl224100224171%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest224094224102%_))))
                                (let* ((_%expr224174%_ _%hd224099224169%_)
                                       (_%rest224176%_ _%tl224100224171%_))
                                  (_%K224098224166%_
                                   _%rest224176%_
                                   _%expr224174%_)))
                              (_%else224096224110%_)))))))
                 (_%compile-stub224015%_
                  (lambda (_%output-scm224022%_ _%output-bin224023%_)
                    (let* ((_%gerbil-home224025%_
                            (let ((__tmp224719
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp224719)))
                           (_%gerbil-libdir224027%_
                            (path-expand '"lib" _%gerbil-home224025%_))
                           (_%runtime224029%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp224031%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home224025%_))
                           (_%include-gambit-sharp224033%_
                            (gxc#include-source _%gambit-sharp224031%_))
                           (_%bin-scm224035%_
                            (gxc#find-static-module-file _%ctx224009%_))
                           (_%deps224037%_
                            (gxc#find-runtime-module-deps _%ctx224009%_))
                           (_%deps224039%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps224037%_)))
                           (_%deps224044%_
                            (let ((__tmp224720
                                   (lambda (_%$obj224041%_)
                                     (not (gxc#file-empty? _%$obj224041%_)))))
                              (declare (not safe))
                              (##filter __tmp224720 _%deps224039%_)))
                           (_%deps224048%_
                            (let ((__tmp224721
                                   (lambda (_%f224046%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f224046%_
                                             _%runtime224029%_))))))
                              (declare (not safe))
                              (##filter __tmp224721 _%deps224044%_)))
                           (_%output-base224050%_
                            (let ((__tmp224722
                                   (path-strip-extension
                                    _%output-scm224022%_)))
                              (declare (not safe))
                              (##string-append __tmp224722)))
                           (_%output-c224052%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base224050%_ '".c")))
                           (_%output-o224054%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base224050%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_224056%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base224050%_ '"_.c")))
                           (_%output-o_224058%_
                            (let ((__tmp224723
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base224050%_
                               __tmp224723)))
                           (_%gsc-link-opts224060%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts224062%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts224064%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir224027%_)))
                           (_%output-ld-opts224066%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros224068%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp224033%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp224033%_
                                            '()))))
                           (_%gsc-link-opts224070%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts224060%_
                               _%gsc-gx-macros224068%_)))
                           (_%rpath224072%_
                            (gxc#gerbil-rpath _%gerbil-libdir224027%_))
                           (_%default-ld-options224074%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp224724
                             (lambda ()
                               (let ((__tmp224725
                                      (path-directory _%output-bin224023%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp224725)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp224724))
                      (gxc#with-output-to-scheme-file
                       _%output-scm224022%_
                       (lambda ()
                         (_%generate-stub224013%_
                          (let ((__tmp224726
                                 (let ((__tmp224727
                                        (cons _%bin-scm224035%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp224727
                                    _%deps224048%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp224726 _%runtime224029%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it224080%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_224056%_
                                                      (let ((__tmp224728
                                                             (cons _%output-scm224022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp224728 _%gsc-link-opts224070%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp224729
                                                 (let ((__tmp224730
                                                        (cons _%output-c224052%_
                                                              (cons _%output-c_224056%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp224730
                                                    _%gsc-static-opts224064%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp224729
                                             _%gsc-cc-opts224062%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin224023%_
                                                      (cons _%output-o224054%_
                                                            (cons _%output-o_224058%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp224731
                                 (let ((__tmp224733
                                        (cons '"-L"
                                              (cons _%gerbil-libdir224027%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options224074%_))))
                                       (__tmp224732
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath224072%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp224733 __tmp224732))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp224731
                             _%output-ld-opts224066%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it224080%_))
                                (_%compile-it224080%_)))
                          '#!void)))))
          (let* ((_%output-bin224017%_
                  (gxc#compile-exe-output-file _%ctx224009%_ _%opts224010%_))
                 (_%output-scm224019%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin224017%_ '"__exe.scm"))))
            (_%compile-stub224015%_
             _%output-scm224019%_
             _%output-bin224017%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx223958%_ _%id223959%_)
        (let ((_%$e224005%_
               (let ((__tmp224735
                      (lambda (_%e223960223962%_)
                        (let* ((_%e223960223964223974%_ _%e223960223962%_)
                               (_%else223966223982%_ (lambda () '#f))
                               (_%K223968223986%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e223960223964223974%_
                                 'gx#module-export::t))
                              (let* ((_%e223969223989%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e223960223964223974%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e223970223992%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e223960223964223974%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e223971223995%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e223960223964223974%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e223971223995%_ '0))
                                    (let ((_%e223972223998%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e223960223964223974%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g224000224002%_)
                                             (eq? _%g224000224002%_
                                                  _%id223959%_))
                                           _%e223972223998%_)
                                          (_%K223968223986%_)
                                          (_%else223966223982%_)))
                                    (_%else223966223982%_)))
                              (_%else223966223982%_)))))
                     (__tmp224734
                      (##structure-ref
                       _%ctx223958%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp224735 __tmp224734))))
          (if _%$e224005%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e224005%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx223949%_ _%id223950%_)
        (let ((_%$e223952%_
               (gxc#find-export-binding _%ctx223949%_ _%id223950%_)))
          (if _%$e223952%_
              ((lambda (_%bind223955%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind223955%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id223950%_)))
                 (##structure-ref _%bind223955%_ '1 gx#binding::t '#f))
               _%$e223952%_)
              (let ((__tmp224736
                     (##structure-ref
                      _%ctx223949%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp224736
                 _%id223950%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx223815%_)
        (letrec* ((_%ht223817%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template223818%_
                   (lambda (_%in223894%_ _%phi223895%_)
                     (let ((_%iphi223897%_
                            (fx+ _%phi223895%_
                                 (##direct-structure-ref
                                  _%in223894%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports223898%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in223894%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp223900%_ ((_%rest223902%_ _%imports223898%_)
                                          (_%r223903%_ '()))
                         (let* ((_%rest223904223912%_ _%rest223902%_)
                                (_%else223906223920%_ (lambda () _%r223903%_))
                                (_%K223908223937%_
                                 (lambda (_%rest223923%_ _%in223924%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in223924%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi223897%_))
                                           (_%lp223900%_
                                            _%rest223923%_
                                            (cons _%in223924%_ _%r223903%_))
                                           (_%lp223900%_
                                            _%rest223923%_
                                            _%r223903%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in223924%_
                                              'gx#module-import::t))
                                           (let ((_%iphi223928%_
                                                  (fx+ _%phi223895%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in223924%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi223928%_))
                                                 (_%lp223900%_
                                                  _%rest223923%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in223924%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r223903%_))
                                                 (_%lp223900%_
                                                  _%rest223923%_
                                                  _%r223903%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in223924%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi223931%_
                                                      (fx+ _%iphi223897%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in223924%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi223931%_))
                                                     (_%lp223900%_
                                                      _%rest223923%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in223924%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r223903%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi223931%_))
                                                         (_%lp223900%_
                                                          _%rest223923%_
                                                          (let ((__tmp224737
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template223818%_
                          _%in223924%_
                          _%iphi223897%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r223903%_ __tmp224737)))
                 (_%lp223900%_ _%rest223923%_ _%r223903%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp223900%_
                                                _%rest223923%_
                                                _%r223903%_)))))))
                           (if (pair? _%rest223904223912%_)
                               (let ((_%hd223909223940%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest223904223912%_)))
                                     (_%tl223910223942%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest223904223912%_))))
                                 (let* ((_%in223945%_ _%hd223909223940%_)
                                        (_%rest223947%_ _%tl223910223942%_))
                                   (_%K223908223937%_
                                    _%rest223947%_
                                    _%in223945%_)))
                               (_%else223906223920%_)))))))
                  (_%find-deps223819%_
                   (lambda (_%rest223827%_ _%deps223828%_)
                     (let* ((_%rest223829223837%_ _%rest223827%_)
                            (_%else223831223845%_ (lambda () _%deps223828%_))
                            (_%K223833223882%_
                             (lambda (_%rest223848%_ _%hd223849%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd223849%_
                                      'gx#module-context::t))
                                   (let ((_%id223852%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd223849%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports223853%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd223849%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht223817%_
                                            _%id223852%_))
                                         (_%find-deps223819%_
                                          _%rest223848%_
                                          _%deps223828%_)
                                         (let ((_%$e223856%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd223849%_))))
                                           (if _%$e223856%_
                                               ((lambda (_%pre223859%_)
                                                  (let ((_%xdeps223861%_
                                                         (_%find-deps223819%_
                                                          (cons _%pre223859%_
                                                                _%imports223853%_)
                                                          _%deps223828%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht223817%_
                                                       _%id223852%_
                                                       _%hd223849%_))
                                                    (_%find-deps223819%_
                                                     _%rest223848%_
                                                     (cons _%hd223849%_
                                                           _%xdeps223861%_))))
                                                _%$e223856%_)
                                               (let ((_%xdeps223864%_
                                                      (_%find-deps223819%_
                                                       _%imports223853%_
                                                       _%deps223828%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht223817%_
                                                    _%id223852%_
                                                    _%hd223849%_))
                                                 (_%find-deps223819%_
                                                  _%rest223848%_
                                                  (cons _%hd223849%_
                                                        _%xdeps223864%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd223849%_
                                          'gx#prelude-context::t))
                                       (let ((_%id223867%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd223849%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht223817%_
                                                _%id223867%_))
                                             (_%find-deps223819%_
                                              _%rest223848%_
                                              _%deps223828%_)
                                             (let ((_%xdeps223871%_
                                                    (_%find-deps223819%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd223849%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps223828%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht223817%_
                                                      _%id223867%_))
                                                   (_%find-deps223819%_
                                                    _%rest223848%_
                                                    _%xdeps223871%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht223817%_
                                                        _%id223867%_
                                                        _%hd223849%_))
                                                     (_%find-deps223819%_
                                                      _%rest223848%_
                                                      (cons _%hd223849%_
                                                            _%xdeps223871%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd223849%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd223849%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps223819%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd223849%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest223848%_)
                                                _%deps223828%_)
                                               (_%find-deps223819%_
                                                _%rest223848%_
                                                _%deps223828%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd223849%_
                                                  'gx#module-export::t))
                                               (_%find-deps223819%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd223849%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest223848%_)
                                                _%deps223828%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd223849%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd223849%_ '2 '#f '#f)))
               (_%find-deps223819%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd223849%_ '1 '#f '#f))
                      _%rest223848%_)
                _%deps223828%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd223849%_ '2 '#f '#f)))
                   (let ((_%xdeps223878%_
                          (_%import-set-template223818%_ _%hd223849%_ '0)))
                     (_%find-deps223819%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest223848%_ _%xdeps223878%_))
                      _%deps223828%_))
                   (_%find-deps223819%_ _%rest223848%_ _%deps223828%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd223849%_))))))))))
                       (if (pair? _%rest223829223837%_)
                           (let ((_%hd223834223885%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest223829223837%_)))
                                 (_%tl223835223887%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest223829223837%_))))
                             (let* ((_%hd223890%_ _%hd223834223885%_)
                                    (_%rest223892%_ _%tl223835223887%_))
                               (_%K223833223882%_
                                _%rest223892%_
                                _%hd223890%_)))
                           (_%else223831223845%_))))))
          (let ((__tmp224738
                 (filter gx#expander-context-id
                         (_%find-deps223819%_
                          (let ((_%$e223821%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx223815%_))))
                            (if _%$e223821%_
                                ((lambda (_%pre223824%_)
                                   (cons _%pre223824%_
                                         (##structure-ref
                                          _%ctx223815%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e223821%_)
                                (##structure-ref
                                 _%ctx223815%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp224738)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx223745%_)
        (let* ((_%context-id223747%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx223745%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx223745%_ '1 '#f '#f))
                    (string->symbol _%ctx223745%_)))
               (_%scm223749%_
                (let ((__tmp224739
                       (gxc#static-module-name _%context-id223747%_)))
                  (declare (not safe))
                  (##string-append __tmp224739 '".scm")))
               (_%dirs223751%_ (let () (declare (not safe)) (load-path)))
               (_%dirs223757%_
                (let ((_%user-libpath223753%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath223753%_
                      (let ((_%user-libpath223755%_
                             (path-expand '"lib" _%user-libpath223753%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath223755%_ _%dirs223751%_))
                            _%dirs223751%_
                            (cons _%user-libpath223755%_ _%dirs223751%_)))
                      _%dirs223751%_)))
               (_%dirs223767%_
                (let ((_%$e223759%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e223759%_
                      ((lambda (_%g223761223763%_)
                         (cons _%g223761223763%_ _%dirs223757%_))
                       _%$e223759%_)
                      _%dirs223757%_)))
               (_%dirs223773%_
                (let ((__tmp224740
                       (lambda (_%g223768223770%_)
                         (path-expand '"static" _%g223768223770%_))))
                  (declare (not safe))
                  (##map __tmp224740 _%dirs223767%_))))
          (let _%lp223776%_ ((_%rest223778%_ _%dirs223773%_))
            (let* ((_%rest223779223787%_ _%rest223778%_)
                   (_%else223781223795%_
                    (lambda ()
                      (let ((__tmp224741
                             (##structure-ref
                              _%ctx223745%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp224741
                         _%scm223749%_))))
                   (_%K223783223803%_
                    (lambda (_%rest223798%_ _%dir223799%_)
                      (let ((_%path223801%_
                             (path-expand _%scm223749%_ _%dir223799%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path223801%_))
                            _%path223801%_
                            (_%lp223776%_ _%rest223798%_))))))
              (if (pair? _%rest223779223787%_)
                  (let ((_%hd223784223806%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest223779223787%_)))
                        (_%tl223785223808%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest223779223787%_))))
                    (let* ((_%dir223811%_ _%hd223784223806%_)
                           (_%rest223813%_ _%tl223785223808%_))
                      (_%K223783223803%_ _%rest223813%_ _%dir223811%_)))
                  (_%else223781223795%_)))))))
    (define gxc#file-empty?
      (lambda (_%path223743%_)
        (zero? (let ((__tmp224742 (file-info _%path223743%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp224742)))))
    (define gxc#compile-top-module
      (lambda (_%ctx223734%_)
        (let ((__tmp224743
               (lambda ()
                 (let ((__tmp224744
                        (lambda ()
                          (let ((__tmp224745
                                 (lambda ()
                                   (let ((__tmp224747
                                          (lambda ()
                                            (let ((__tmp224749
                                                   (lambda ()
                                                     (let ((__tmp224751
                                                            (lambda ()
                                                              (let ((__tmp224752
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx223734%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp224752))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp224753
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx223734%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp224753))
                          '#!void)
                      (gxc#collect-bindings _%ctx223734%_)
                      (gxc#compile-runtime-code _%ctx223734%_)
                      (gxc#compile-meta-code _%ctx223734%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx223734%_)
                          '#!void)))
                   (__tmp224750
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
                __tmp224751
                gxc#current-compile-runtime-names
                __tmp224750))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp224748
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp224749
                                               gxc#current-compile-runtime-sections
                                               __tmp224748))))
                                         (__tmp224746
                                          (let ((__obj224647
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj224647))
                                            __obj224647)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp224747
                                      gxc#current-compile-symbol-table
                                      __tmp224746)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp224745
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp224744
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp224743
           gx#current-expander-context
           _%ctx223734%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx223732%_)
        (let ((__tmp224754
               (##structure-ref _%ctx223732%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp224754))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx223676%_)
        (letrec ((_%compile1223678%_
                  (lambda (_%ctx223721%_)
                    (let* ((_%code223723%_
                            (##structure-ref
                             _%ctx223721%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm223727%_
                            (let ((_%idstr223725%_
                                   (let ((__tmp224755
                                          (##structure-ref
                                           _%ctx223721%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp224755))))
                              (declare (not safe))
                              (##string-append _%idstr223725%_ '"~0")))
                           (_%rtc?223729%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code223723%_))))
                      (if _%rtc?223729%_
                          (let ((__tmp224756
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp224756
                             _%ctx223721%_
                             _%rtm223727%_))
                          '#!void)
                      (_%generate-runtime-code223680%_
                       _%ctx223721%_
                       _%code223723%_
                       (if _%rtc?223729%_ _%rtm223727%_ '#f)))))
                 (_%context-timestamp223679%_
                  (lambda (_%ctx223719%_)
                    (let ((__tmp224757
                           (let ((__tmp224758
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx223719%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp224758 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp224757))))
                 (_%generate-runtime-code223680%_
                  (lambda (_%ctx223687%_ _%code223688%_ _%rtm223689%_)
                    (let* ((_%runtime-code?223691%_ (if _%rtm223689%_ '#t '#f))
                           (_%lifts223693%_ (box '()))
                           (_%runtime-code223700%_
                            (if _%runtime-code?223691%_
                                (let ((__tmp224759
                                       (lambda ()
                                         (let ((__tmp224760
                                                (lambda ()
                                                  (let ((__tmp224761
                                                         (lambda ()
                                                           (let ((__tmp224763
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ((__tmp224765
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code223688%_))))
                                  (__tmp224764
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp224765
                               gxc#current-compile-identifiers
                               __tmp224764))))
                         (__tmp224762
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp224763
                      gxc#current-compile-marks
                      __tmp224762)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp224761
                                                     gxc#current-compile-lift
                                                     _%lifts223693%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp224760
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp224759
                                   gx#current-expander-context
                                   _%ctx223687%_))
                                '#f))
                           (_%runtime-code223702%_
                            (if _%runtime-code?223691%_
                                (if (null? (unbox _%lifts223693%_))
                                    _%runtime-code223700%_
                                    (cons 'begin
                                          (let ((__tmp224767
                                                 (cons _%runtime-code223700%_
                                                       '()))
                                                (__tmp224766
                                                 (reverse (unbox _%lifts223693%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp224767
                                             __tmp224766))))
                                '#f))
                           (_%runtime-code223704%_
                            (if _%runtime-code?223691%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp223679%_
                                                         _%ctx223687%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code223702%_ '())))
                                '#f))
                           (_%loader-code223707%_
                            (let ((__tmp224768
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code223688%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp224768
                               gx#current-expander-context
                               _%ctx223687%_)))
                           (_%loader-code223709%_
                            (cons 'begin
                                  (cons _%loader-code223707%_
                                        (cons (if _%runtime-code?223691%_
                                                  (cons 'load-module
                                                        (cons _%rtm223689%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0223711%_
                            (gxc#compile-output-file _%ctx223687%_ '0 '".scm"))
                           (_%scmrt223713%_
                            (gxc#compile-output-file
                             _%ctx223687%_
                             '#f
                             '".scm"))
                           (_%scms223715%_
                            (gxc#compile-static-output-file _%ctx223687%_)))
                      (if _%runtime-code?223691%_
                          (gxc#compile-scm-file__0
                           _%scm0223711%_
                           _%runtime-code223704%_)
                          '#!void)
                      (let ((__tmp224769
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt223713%_
                                _%loader-code223709%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp224769
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms223715%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms223715%_))
                          '#!void)
                      (if _%runtime-code?223691%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0223711%_ _%scms223715%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms223715%_ void)))))))
          (let* ((_%all-modules223682%_
                  (cons _%ctx223676%_ (gxc#lift-nested-modules _%ctx223676%_)))
                 (__tmp224770
                  (lambda (_%ctx223684%_)
                    (let ((__tmp224771
                           (lambda () (_%compile1223678%_ _%ctx223684%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp224771
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp224770 _%all-modules223682%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx223575%_)
        (letrec ((_%compile-ssi223577%_
                  (lambda (_%code223644%_)
                    (let* ((_%path223646%_
                            (gxc#compile-output-file
                             _%ctx223575%_
                             '#f
                             '".ssi"))
                           (_%prelude223658%_
                            (let* ((_%super223648%_
                                    (##structure-ref
                                     _%ctx223575%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e223650%_
                                    (##structure-ref
                                     _%super223648%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e223650%_
                                  ((lambda (_%g223652223654%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g223652223654%_)))
                                   _%$e223650%_)
                                  ':<root>)))
                           (_%ns223660%_
                            (##structure-ref
                             _%ctx223575%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr223662%_
                            (symbol->string
                             (##structure-ref
                              _%ctx223575%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg223670%_
                            (let ((_%$e223664%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr223662%_ '#\/))))
                              (if _%$e223664%_
                                  ((lambda (_%x223667%_)
                                     (let ((__tmp224772
                                            (substring
                                             _%idstr223662%_
                                             '0
                                             _%x223667%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp224772)))
                                   _%$e223664%_)
                                  '#f)))
                           (_%rt223672%_
                            (let ((__tmp224773
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp224773 _%ctx223575%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path223646%_))
                      (gxc#with-output-to-scheme-file
                       _%path223646%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude223658%_))
                         (if _%pkg223670%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg223670%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns223660%_))
                         (newline)
                         (pretty-print _%code223644%_)
                         (if _%rt223672%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt223672%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi223578%_
                  (lambda (_%part223583%_)
                    (let* ((_%part223584223597%_ _%part223583%_)
                           (_%E223586223601%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part223584223597%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K223587223613%_
                            (lambda (_%code223604%_
                                     _%n223605%_
                                     _%phi223606%_
                                     _%phi-ctx223607%_)
                              (let ((_%code223611%_
                                     (let ((__tmp224774
                                            (lambda ()
                                              (let ((__tmp224775
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code223604%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp224775
                                                 gx#current-expander-phi
                                                 _%phi223606%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp224774
                                        gx#current-expander-context
                                        _%phi-ctx223607%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx223575%_
                                  _%n223605%_
                                  '".scm")
                                 _%code223611%_
                                 '#t)))))
                      (if (pair? _%part223584223597%_)
                          (let ((_%hd223588223616%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part223584223597%_)))
                                (_%tl223589223618%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part223584223597%_))))
                            (let ((_%phi-ctx223621%_ _%hd223588223616%_))
                              (if (pair? _%tl223589223618%_)
                                  (let ((_%hd223590223623%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl223589223618%_)))
                                        (_%tl223591223625%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl223589223618%_))))
                                    (let ((_%phi223628%_ _%hd223590223623%_))
                                      (if (pair? _%tl223591223625%_)
                                          (let ((_%hd223592223630%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl223591223625%_)))
                                                (_%tl223593223632%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl223591223625%_))))
                                            (let ((_%n223635%_
                                                   _%hd223592223630%_))
                                              (if (pair? _%tl223593223632%_)
                                                  (let ((_%hd223594223637%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl223593223632%_)))
                                                        (_%tl223595223639%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl223593223632%_))))
                                                    (let ((_%code223642%_
                                                           _%hd223594223637%_))
                                                      (if (null? _%tl223595223639%_)
                                                          (_%K223587223613%_
                                                           _%code223642%_
                                                           _%n223635%_
                                                           _%phi223628%_
                                                           _%phi-ctx223621%_)
                                                          (_%E223586223601%_))))
                                                  (_%E223586223601%_))))
                                          (_%E223586223601%_))))
                                  (_%E223586223601%_))))
                          (_%E223586223601%_))))))
          (let ((_g224776_ (gxc#generate-meta-code _%ctx223575%_)))
            (begin
              (let ((_g224777_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g224776_)
                           (##values-length _g224776_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g224777_ 2)))
                    (error "Context expects 2 values" _g224777_)))
              (let ((_%ssi-code223580%_
                     (let () (declare (not safe)) (##values-ref _g224776_ 0)))
                    (_%phi-code223581%_
                     (let () (declare (not safe)) (##values-ref _g224776_ 1))))
                (begin
                  (_%compile-ssi223577%_ _%ssi-code223580%_)
                  (for-each _%compile-phi223578%_ _%phi-code223581%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx223557%_)
        (let* ((_%path223559%_
                (gxc#compile-output-file _%ctx223557%_ '#f '".ssxi.ss"))
               (_%code223561%_
                (let ((__tmp224778
                       (##structure-ref
                        _%ctx223557%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp224778)))
               (_%idstr223563%_
                (symbol->string
                 (##structure-ref
                  _%ctx223557%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg223571%_
                (let ((_%$e223565%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr223563%_ '#\/))))
                  (if _%$e223565%_
                      ((lambda (_%x223568%_)
                         (let ((__tmp224779
                                (substring _%idstr223563%_ '0 _%x223568%_)))
                           (declare (not safe))
                           (##string->symbol __tmp224779)))
                       _%$e223565%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path223559%_))
          (gxc#with-output-to-scheme-file
           _%path223559%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg223571%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg223571%_))
                 '#!void)
             (newline)
             (pretty-print _%code223561%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx223550%_)
        (let* ((_%state223552%_
                (let ((__obj224648
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj224648 _%ctx223550%_))
                  __obj224648))
               (_%ssi-code223554%_
                (let ((__tmp224780
                       (##structure-ref
                        _%ctx223550%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state223552%_
                   __tmp224780))))
          (values _%ssi-code223554%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state223552%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx223541%_)
        (let* ((_%lifts223543%_ (box '()))
               (__tmp224781
                (lambda ()
                  (let ((__tmp224783
                         (lambda ()
                           (let ((__tmp224785
                                  (lambda ()
                                    (let ((_%code223548%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-generate-runtime-phi
                                              _%stx223541%_))))
                                      (if (null? (unbox _%lifts223543%_))
                                          _%code223548%_
                                          (cons 'begin
                                                (let ((__tmp224787
                                                       (cons _%code223548%_
                                                             '()))
                                                      (__tmp224786
                                                       (reverse (unbox _%lifts223543%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp224787
                                                   __tmp224786)))))))
                                 (__tmp224784
                                  (let ()
                                    (declare (not safe))
                                    (gxc#make-bound-identifier-table))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp224785
                              gxc#current-compile-identifiers
                              __tmp224784))))
                        (__tmp224782
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp224783
                     gxc#current-compile-marks
                     __tmp224782)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp224781
           gxc#current-compile-lift
           _%lifts223543%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx223537%_)
        (let ((_%modules223539%_ (box '())))
          (let ((__tmp224788
                 (##structure-ref _%ctx223537%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules223539%_ __tmp224788))
          (reverse (unbox _%modules223539%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path223517%_ _%code223518%_ _%phi?223519%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path223517%_))
        (gxc#with-output-to-scheme-file
         _%path223517%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp224789
                                           (if _%phi?223519%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp224789)))))))
           (pretty-print _%code223518%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it223523%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path223517%_ _%phi?223519%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp224790
                         (cons 'compile-file (cons _%path223517%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it223523%_ __tmp224790))
                  (_%compile-it223523%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path223528%_ _%code223529%_)
        (let ((_%phi?223531%_ '#f))
          (gxc#compile-scm-file__%
           _%path223528%_
           _%code223529%_
           _%phi?223531%_))))
    (define gxc#compile-scm-file
      (lambda _g224791_
        (let ((_g224792_ (let () (declare (not safe)) (##length _g224791_))))
          (cond ((let () (declare (not safe)) (##fx= _g224792_ 2))
                 (apply gxc#compile-scm-file__0 _g224791_))
                ((let () (declare (not safe)) (##fx= _g224792_ 3))
                 (apply gxc#compile-scm-file__% _g224791_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g224791_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?223418%_)
        (let _%lp223420%_ ((_%rest223422%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts223423%_ '()))
          (let* ((_%rest223424223444%_ _%rest223422%_)
                 (_%else223428223452%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts223423%_)))
                        (reverse _%opts223423%_)))))
            (let ((_%K223438223495%_
                   (lambda (_%rest223493%_)
                     (_%lp223420%_ _%rest223493%_ _%opts223423%_)))
                  (_%K223433223477%_
                   (lambda (_%rest223475%_)
                     (_%lp223420%_ _%rest223475%_ _%opts223423%_)))
                  (_%K223430223459%_
                   (lambda (_%rest223456%_ _%opt223457%_)
                     (_%lp223420%_
                      _%rest223456%_
                      (cons _%opt223457%_ _%opts223423%_)))))
              (if (pair? _%rest223424223444%_)
                  (let ((_%tl223440223500%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest223424223444%_)))
                        (_%hd223439223498%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest223424223444%_))))
                    (if (equal? _%hd223439223498%_ '"-cc-options")
                        (if (pair? _%tl223440223500%_)
                            (let* ((_%tl223442223503%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl223440223500%_)))
                                   (_%rest223506%_ _%tl223442223503%_))
                              (_%K223438223495%_ _%rest223506%_))
                            (let ((_%opt223467%_ _%hd223439223498%_)
                                  (_%rest223469%_ _%tl223440223500%_))
                              (_%K223430223459%_
                               _%rest223469%_
                               _%opt223467%_)))
                        (if (equal? _%hd223439223498%_ '"-ld-options")
                            (if (pair? _%tl223440223500%_)
                                (let* ((_%tl223437223485%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl223440223500%_)))
                                       (_%rest223488%_ _%tl223437223485%_))
                                  (_%K223433223477%_ _%rest223488%_))
                                (let ((_%opt223467%_ _%hd223439223498%_)
                                      (_%rest223469%_ _%tl223440223500%_))
                                  (_%K223430223459%_
                                   _%rest223469%_
                                   _%opt223467%_)))
                            (let ((_%opt223467%_ _%hd223439223498%_)
                                  (_%rest223469%_ _%tl223440223500%_))
                              (_%K223430223459%_
                               _%rest223469%_
                               _%opt223467%_)))))
                  (_%else223428223452%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?223512%_ '#f)) (gxc#gsc-link-options__% _%phi?223512%_))))
    (define gxc#gsc-link-options
      (lambda _g224793_
        (let ((_g224794_ (let () (declare (not safe)) (##length _g224793_))))
          (cond ((let () (declare (not safe)) (##fx= _g224794_ 0))
                 (apply gxc#gsc-link-options__0 _g224793_))
                ((let () (declare (not safe)) (##fx= _g224794_ 1))
                 (apply gxc#gsc-link-options__% _g224793_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g224793_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords223268%_ _%static?223264223269%_ _%phi?223270%_)
        (let ((_%static?223272%_
               (if (eq? _%static?223264223269%_ absent-value)
                   '#f
                   _%static?223264223269%_)))
          (if _%phi?223270%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp223274%_ ((_%rest223276%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts223277%_ '()))
                (let* ((_%rest223278223304%_ _%rest223276%_)
                       (_%else223283223312%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts223277%_)))
                              (reverse! _%opts223277%_)))))
                  (let ((_%K223298223375%_
                         (lambda (_%rest223372%_ _%opt223373%_)
                           (if _%static?223272%_
                               (_%lp223274%_
                                _%rest223372%_
                                (cons _%opt223373%_
                                      (cons '"-cc-options" _%opts223277%_)))
                               (_%lp223274%_ _%rest223372%_ _%opts223277%_))))
                        (_%K223293223352%_
                         (lambda (_%rest223349%_ _%opt223350%_)
                           (_%lp223274%_
                            _%rest223349%_
                            (cons _%opt223350%_
                                  (cons '"-cc-options" _%opts223277%_)))))
                        (_%K223288223332%_
                         (lambda (_%rest223330%_)
                           (_%lp223274%_ _%rest223330%_ _%opts223277%_)))
                        (_%K223285223318%_
                         (lambda (_%rest223316%_)
                           (_%lp223274%_ _%rest223316%_ _%opts223277%_))))
                    (if (pair? _%rest223278223304%_)
                        (let ((_%tl223300223380%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest223278223304%_)))
                              (_%hd223299223378%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest223278223304%_))))
                          (if (equal? _%hd223299223378%_ '"-cc-options")
                              (if (pair? _%tl223300223380%_)
                                  (let ((_%tl223302223385%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl223300223380%_)))
                                        (_%hd223301223383%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl223300223380%_))))
                                    (if (equal? _%hd223301223383%_ '"-Bstatic")
                                        (let ((_%opt223388%_
                                               _%hd223301223383%_)
                                              (_%rest223390%_
                                               _%tl223302223385%_))
                                          (_%K223298223375%_
                                           _%rest223390%_
                                           _%opt223388%_))
                                        (let ((_%opt223365%_
                                               _%hd223301223383%_)
                                              (_%rest223367%_
                                               _%tl223302223385%_))
                                          (_%K223293223352%_
                                           _%rest223367%_
                                           _%opt223365%_))))
                                  (let ((_%rest223324%_ _%tl223300223380%_))
                                    (_%K223285223318%_ _%rest223324%_)))
                              (if (equal? _%hd223299223378%_ '"-ld-options")
                                  (if (pair? _%tl223300223380%_)
                                      (let* ((_%tl223292223340%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl223300223380%_)))
                                             (_%rest223343%_
                                              _%tl223292223340%_))
                                        (_%K223288223332%_ _%rest223343%_))
                                      (let ((_%rest223324%_
                                             _%tl223300223380%_))
                                        (_%K223285223318%_ _%rest223324%_)))
                                  (let ((_%rest223324%_ _%tl223300223380%_))
                                    (_%K223285223318%_ _%rest223324%_)))))
                        (_%else223283223312%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords223395%_ _%static?223264223396%_)
        (let ((_%phi?223398%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords223395%_
           _%static?223264223396%_
           _%phi?223398%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g224795_
        (let ((_g224796_ (let () (declare (not safe)) (##length _g224795_))))
          (cond ((let () (declare (not safe)) (##fx= _g224796_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g224795_))
                ((let () (declare (not safe)) (##fx= _g224796_ 3))
                 (apply gxc#gsc-cc-options__%__% _g224795_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g224795_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords223407%_ . _%args223408%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords223407%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords223407%_
                  'static:
                  absent-value))
               _%args223408%_)))
    (define gxc#gsc-cc-options
      (lambda _%args223265223414%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args223265223414%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords223114%_ _%static?223110223115%_ _%phi?223116%_)
        (let ((_%static?223118%_
               (if (eq? _%static?223110223115%_ absent-value)
                   '#f
                   _%static?223110223115%_)))
          (if _%phi?223116%_
              '()
              (let _%lp223120%_ ((_%rest223122%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts223123%_ '()))
                (let* ((_%rest223124223150%_ _%rest223122%_)
                       (_%else223129223158%_
                        (lambda () (reverse! _%opts223123%_))))
                  (let ((_%K223144223221%_
                         (lambda (_%rest223218%_ _%opt223219%_)
                           (if _%static?223118%_
                               (_%lp223120%_
                                _%rest223218%_
                                (cons _%opt223219%_
                                      (cons '"-ld-options" _%opts223123%_)))
                               (_%lp223120%_ _%rest223218%_ _%opts223123%_))))
                        (_%K223139223198%_
                         (lambda (_%rest223195%_ _%opt223196%_)
                           (_%lp223120%_
                            _%rest223195%_
                            (cons _%opt223196%_
                                  (cons '"-ld-options" _%opts223123%_)))))
                        (_%K223134223178%_
                         (lambda (_%rest223176%_)
                           (_%lp223120%_ _%rest223176%_ _%opts223123%_)))
                        (_%K223131223164%_
                         (lambda (_%rest223162%_)
                           (_%lp223120%_ _%rest223162%_ _%opts223123%_))))
                    (if (pair? _%rest223124223150%_)
                        (let ((_%tl223146223226%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest223124223150%_)))
                              (_%hd223145223224%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest223124223150%_))))
                          (if (equal? _%hd223145223224%_ '"-ld-options")
                              (if (pair? _%tl223146223226%_)
                                  (let ((_%tl223148223231%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl223146223226%_)))
                                        (_%hd223147223229%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl223146223226%_))))
                                    (if (equal? _%hd223147223229%_ '"-static")
                                        (let ((_%opt223234%_
                                               _%hd223147223229%_)
                                              (_%rest223236%_
                                               _%tl223148223231%_))
                                          (_%K223144223221%_
                                           _%rest223236%_
                                           _%opt223234%_))
                                        (let ((_%opt223211%_
                                               _%hd223147223229%_)
                                              (_%rest223213%_
                                               _%tl223148223231%_))
                                          (_%K223139223198%_
                                           _%rest223213%_
                                           _%opt223211%_))))
                                  (let ((_%rest223170%_ _%tl223146223226%_))
                                    (_%K223131223164%_ _%rest223170%_)))
                              (if (equal? _%hd223145223224%_ '"-cc-options")
                                  (if (pair? _%tl223146223226%_)
                                      (let* ((_%tl223138223186%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl223146223226%_)))
                                             (_%rest223189%_
                                              _%tl223138223186%_))
                                        (_%K223134223178%_ _%rest223189%_))
                                      (let ((_%rest223170%_
                                             _%tl223146223226%_))
                                        (_%K223131223164%_ _%rest223170%_)))
                                  (let ((_%rest223170%_ _%tl223146223226%_))
                                    (_%K223131223164%_ _%rest223170%_)))))
                        (_%else223129223158%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords223241%_ _%static?223110223242%_)
        (let ((_%phi?223244%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords223241%_
           _%static?223110223242%_
           _%phi?223244%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g224797_
        (let ((_g224798_ (let () (declare (not safe)) (##length _g224797_))))
          (cond ((let () (declare (not safe)) (##fx= _g224798_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g224797_))
                ((let () (declare (not safe)) (##fx= _g224798_ 3))
                 (apply gxc#gsc-ld-options__%__% _g224797_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g224797_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords223253%_ . _%args223254%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords223253%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords223253%_
                  'static:
                  absent-value))
               _%args223254%_)))
    (define gxc#gsc-ld-options
      (lambda _%args223111223260%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args223111223260%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir223105%_)
        (let ((_%user-staticdir223107%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir223105%_
                       '" -I "
                       _%user-staticdir223107%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp223017%_ ((_%rest223019%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts223020%_ '()))
          (let* ((_%rest223021223041%_ _%rest223019%_)
                 (_%else223025223049%_ (lambda () _%opts223020%_)))
            (let ((_%K223035223092%_
                   (lambda (_%rest223090%_)
                     (_%lp223017%_ _%rest223090%_ _%opts223020%_)))
                  (_%K223030223070%_
                   (lambda (_%rest223067%_ _%opt223068%_)
                     (_%lp223017%_
                      _%rest223067%_
                      (let ((__tmp224799
                             (let ((__tmp224800
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt223068%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp224800))))
                        (declare (not safe))
                        (##append _%opts223020%_ __tmp224799)))))
                  (_%K223027223055%_
                   (lambda (_%rest223053%_)
                     (_%lp223017%_ _%rest223053%_ _%opts223020%_))))
              (if (pair? _%rest223021223041%_)
                  (let ((_%tl223037223097%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest223021223041%_)))
                        (_%hd223036223095%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest223021223041%_))))
                    (if (equal? _%hd223036223095%_ '"-cc-options")
                        (if (pair? _%tl223037223097%_)
                            (let* ((_%tl223039223100%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl223037223097%_)))
                                   (_%rest223103%_ _%tl223039223100%_))
                              (_%K223035223092%_ _%rest223103%_))
                            (let ((_%rest223061%_ _%tl223037223097%_))
                              (_%K223027223055%_ _%rest223061%_)))
                        (if (equal? _%hd223036223095%_ '"-ld-options")
                            (if (pair? _%tl223037223097%_)
                                (let ((_%tl223034223080%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl223037223097%_)))
                                      (_%hd223033223078%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl223037223097%_))))
                                  (let ((_%opt223083%_ _%hd223033223078%_)
                                        (_%rest223085%_ _%tl223034223080%_))
                                    (_%K223030223070%_
                                     _%rest223085%_
                                     _%opt223083%_)))
                                (let ((_%rest223061%_ _%tl223037223097%_))
                                  (_%K223027223055%_ _%rest223061%_)))
                            (let ((_%rest223061%_ _%tl223037223097%_))
                              (_%K223027223055%_ _%rest223061%_)))))
                  (_%else223025223049%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str223014%_)
        (not (let () (declare (not safe)) (string-empty? _%str223014%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path223007%_ _%phi?223008%_)
        (let ((_%gsc-link-opts223010%_
               (gxc#gsc-link-options__% _%phi?223008%_))
              (_%gsc-cc-opts223011%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?223008%_))
              (_%gsc-ld-opts223012%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?223008%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp224801
                  (let ((__tmp224802
                         (let ((__tmp224803 (cons _%path223007%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp224803
                            _%gsc-link-opts223010%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp224802 _%gsc-ld-opts223012%_))))
             (declare (not safe))
             (__foldr1 cons __tmp224801 _%gsc-cc-opts223011%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx222973%_ _%n222974%_ _%ext222975%_)
        (letrec ((_%module-relative-path222977%_
                  (lambda (_%ctx223005%_)
                    (path-strip-directory
                     (let ((__tmp224804
                            (##structure-ref
                             _%ctx223005%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp224804)))))
                 (_%module-source-directory222978%_
                  (lambda (_%ctx223001%_)
                    (path-directory
                     (let ((_%mpath223003%_
                            (##structure-ref
                             _%ctx223001%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath223003%_)
                           _%mpath223003%_
                           (last _%mpath223003%_))))))
                 (_%section-string222979%_
                  (lambda (_%n222995%_)
                    (if (number? _%n222995%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n222995%_))
                        (if (symbol? _%n222995%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n222995%_))
                            (if (string? _%n222995%_)
                                _%n222995%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n222995%_)))))))
                 (_%file-name222980%_
                  (lambda (_%path222993%_)
                    (if _%n222974%_
                        (string-append
                         _%path222993%_
                         '"~"
                         (_%section-string222979%_ _%n222974%_)
                         _%ext222975%_)
                        (string-append _%path222993%_ _%ext222975%_))))
                 (_%file-path222981%_
                  (lambda ()
                    (let ((_%$e222987%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e222987%_
                          ((lambda (_%outdir222990%_)
                             (path-expand
                              (_%file-name222980%_
                               (let ((__tmp224805
                                      (##structure-ref
                                       _%ctx222973%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp224805)))
                              _%outdir222990%_))
                           _%$e222987%_)
                          (path-expand
                           (_%file-name222980%_
                            (_%module-relative-path222977%_ _%ctx222973%_))
                           (_%module-source-directory222978%_
                            _%ctx222973%_)))))))
          (let ((_%path222983%_ (_%file-path222981%_)))
            (let ((__tmp224806
                   (lambda ()
                     (let ((__tmp224807 (path-directory _%path222983%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp224807)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp224806))
            _%path222983%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx222954%_)
        (letrec ((_%file-name222956%_
                  (lambda (_%id222971%_)
                    (let ((__tmp224808 (gxc#static-module-name _%id222971%_)))
                      (declare (not safe))
                      (##string-append __tmp224808 '".scm"))))
                 (_%file-path222957%_
                  (lambda ()
                    (let* ((_%file222963%_
                            (_%file-name222956%_
                             (##structure-ref
                              _%ctx222954%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e222965%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e222965%_
                          ((lambda (_%outdir222968%_)
                             (path-expand
                              _%file222963%_
                              (path-expand '"static" _%outdir222968%_)))
                           _%$e222965%_)
                          (path-expand _%file222963%_ '"static"))))))
          (let ((_%path222959%_ (_%file-path222957%_)))
            (let ((__tmp224809
                   (lambda ()
                     (let ((__tmp224810 (path-directory _%path222959%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp224810)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp224809))
            _%path222959%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx222947%_ _%opts222948%_)
        (let ((_%$e222950%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts222948%_))))
          (if _%$e222950%_
              _%$e222950%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx222947%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr222937%_)
        (if (string? _%idstr222937%_)
            (let* ((_%str222940%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr222937%_)))
                   (_%strs222942%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str222940%_ '#\/))))
              (declare (not safe))
              (string-join _%strs222942%_ '"__"))
            (if (symbol? _%idstr222937%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr222937%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr222937%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp224811
               (let ((__tmp224812 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp224812 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp224811))))
    (define gxc#invoke__%
      (lambda (_%@@keywords222903%_
               _%stdout-redirection222899222904%_
               _%stderr-redirection222900222905%_
               _%program222906%_
               _%args222907%_)
        (let* ((_%stdout-redirection222909%_
                (if (eq? _%stdout-redirection222899222904%_ absent-value)
                    '#f
                    _%stdout-redirection222899222904%_))
               (_%stderr-redirection222911%_
                (if (eq? _%stderr-redirection222900222905%_ absent-value)
                    '#f
                    _%stderr-redirection222900222905%_)))
          (let ((__tmp224813 (cons _%program222906%_ _%args222907%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp224813))
          (let* ((_%proc222913%_
                  (open-process
                   (cons 'path:
                         (cons _%program222906%_
                               (cons 'arguments:
                                     (cons _%args222907%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection222909%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection222911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output222918%_
                  (if (or _%stdout-redirection222909%_
                          _%stderr-redirection222911%_)
                      (read-line _%proc222913%_ '#f)
                      '#f))
                 (_%status222921%_ (process-status _%proc222913%_)))
            (let () (declare (not safe)) (##close-port _%proc222913%_))
            (if (zero? _%status222921%_)
                '#!void
                (begin
                  (display _%output222918%_)
                  (let ((__tmp224814 (cons _%program222906%_ _%args222907%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp224814
                     _%status222921%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords222926%_ . _%args222927%_)
        (apply gxc#invoke__%
               _%@@keywords222926%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords222926%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords222926%_
                  'stderr-redirection:
                  absent-value))
               _%args222927%_)))
    (define gxc#invoke
      (lambda _%args222901222933%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args222901222933%_)))))
