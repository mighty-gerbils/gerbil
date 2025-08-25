(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1756142927)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp209708 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp209708))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp209709 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp209709))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path209565%_ _%fun209566%_)
        (with-output-to-file
         (cons 'path: (cons _%path209565%_ gxc#scheme-file-settings))
         _%fun209566%_)))
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
      (lambda (_%gerbil-libdir209560%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir209560%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path209558%_)
        (let ((__tmp209710 (object->string _%path209558%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp209710 '")"))))
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
      (lambda (_%dir209556%_) (delete-file-or-directory _%dir209556%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath209500%_ _%opts209501%_)
        (if (string? _%srcpath209500%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath209500%_)))
        (let* ((_%outdir209503%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts209501%_)))
               (_%invoke-gsc?209505%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts209501%_)))
               (_%target209510%_
                (let ((_%$e209507%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts209501%_))))
                  (if _%$e209507%_ _%$e209507%_ 'C)))
               (_%gsc-options209515%_
                (append (cons '"-target"
                              (cons (symbol->string _%target209510%_) '()))
                        (let ((_%$e209512%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts209501%_))))
                          (if _%$e209512%_ _%$e209512%_ '()))))
               (_%keep-scm?209517%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts209501%_)))
               (_%verbosity209519%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts209501%_)))
               (_%optimize209521%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts209501%_)))
               (_%debug209523%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts209501%_)))
               (_%gen-ssxi209525%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts209501%_)))
               (_%parallel?209527%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts209501%_))))
          (if _%outdir209503%_
              (let ((__tmp209711
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir209503%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp209711))
              '#!void)
          (if _%optimize209521%_
              (let ((__tmp209712
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp209712))
              '#!void)
          (let ((__tmp209713
                 (lambda ()
                   (let ((__tmp209714
                          (lambda ()
                            (let ((__tmp209715
                                   (lambda ()
                                     (let ((__tmp209716
                                            (lambda ()
                                              (let ((__tmp209717
                                                     (lambda ()
                                                       (let ((__tmp209718
                                                              (lambda ()
                                                                (let ((__tmp209719
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp209720
                                        (lambda ()
                                          (let ((__tmp209721
                                                 (lambda ()
                                                   (let ((__tmp209723
                                                          (lambda ()
                                                            (let ((__tmp209725
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp209726
                                    (lambda ()
                                      (let ((__tmp209727
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"compile "
                                                  _%srcpath209500%_))
                                               (gxc#compile-top-module
                                                (let ((__tmp209728
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#import-module__0
                                                            _%srcpath209500%_)))))
                                                  (declare (not safe))
                                                  (__with-lock
                                                   gxc#+driver-mutex+
                                                   __tmp209728))))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp209727
                                         gx#current-expander-compiling?
                                         '#t)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp209726
                                gxc#current-compile-parallel
                                _%parallel?209527%_))))
                          (__tmp209724
                           (cons 'compile-module
                                 (cons _%srcpath209500%_ '()))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp209725
                       gxc#current-compile-context
                       __tmp209724))))
                 (__tmp209722 (gxc#compile-timestamp)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp209723
                                                      gxc#current-compile-timestamp
                                                      __tmp209722)))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp209721
                                             gxc#current-compile-generate-ssxi
                                             _%gen-ssxi209525%_)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp209720
                                    gxc#current-compile-debug
                                    _%debug209523%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp209719
                           gxc#current-compile-optimize
                           _%optimize209521%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp209718
                  gxc#current-compile-verbose
                  _%verbosity209519%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp209717
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?209517%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp209716
                                        gxc#current-compile-gsc-options
                                        _%gsc-options209515%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp209715
                               gxc#current-compile-invoke-gsc
                               _%invoke-gsc?209505%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp209714
                      gx#current-compilation-target
                      _%target209510%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp209713
             gxc#current-compile-output-dir
             _%outdir209503%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath209549%_)
        (let ((_%opts209551%_ '()))
          (gxc#compile-module__% _%srcpath209549%_ _%opts209551%_))))
    (define gxc#compile-module
      (lambda _g209729_
        (let ((_g209730_ (let () (declare (not safe)) (##length _g209729_))))
          (cond ((let () (declare (not safe)) (##fx= _g209730_ 1))
                 (apply gxc#compile-module__0 _g209729_))
                ((let () (declare (not safe)) (##fx= _g209730_ 2))
                 (apply gxc#compile-module__% _g209729_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g209729_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath209450%_ _%opts209451%_)
        (if (string? _%srcpath209450%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath209450%_)))
        (let* ((_%outdir209453%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts209451%_)))
               (_%invoke-gsc?209455%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts209451%_)))
               (_%target209460%_
                (let ((_%$e209457%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts209451%_))))
                  (if _%$e209457%_ _%$e209457%_ 'C)))
               (_%gsc-options209465%_
                (append (cons '"-target"
                              (cons (symbol->string _%target209460%_) '()))
                        (let ((_%$e209462%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts209451%_))))
                          (if _%$e209462%_ _%$e209462%_ '()))))
               (_%keep-scm?209467%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts209451%_)))
               (_%verbosity209469%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts209451%_)))
               (_%debug209471%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts209451%_)))
               (_%parallel?209473%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts209451%_))))
          (if _%outdir209453%_
              (let ((__tmp209731
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir209453%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp209731))
              '#!void)
          (let ((__tmp209732
                 (lambda ()
                   (let ((__tmp209733
                          (lambda ()
                            (let ((__tmp209734
                                   (lambda ()
                                     (let ((__tmp209735
                                            (lambda ()
                                              (let ((__tmp209736
                                                     (lambda ()
                                                       (let ((__tmp209737
                                                              (lambda ()
                                                                (let ((__tmp209738
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp209740
                                        (lambda ()
                                          (let ((__tmp209742
                                                 (lambda ()
                                                   (let ((__tmp209743
                                                          (lambda ()
                                                            (let ((__tmp209744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose '"compile exe " _%srcpath209450%_))
                             (gxc#compile-executable-module
                              (let ((__tmp209745
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#import-module__0
                                          _%srcpath209450%_)))))
                                (declare (not safe))
                                (__with-lock gxc#+driver-mutex+ __tmp209745))
                              _%opts209451%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp209744
                       gx#current-expander-compiling?
                       '#t)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp209743
                                                      gxc#current-compile-parallel
                                                      _%parallel?209473%_))))
                                                (__tmp209741
                                                 (cons 'compile-exe
                                                       (cons _%srcpath209450%_
                                                             '()))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp209742
                                             gxc#current-compile-context
                                             __tmp209741))))
                                       (__tmp209739 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp209740
                                    gxc#current-compile-timestamp
                                    __tmp209739)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp209738
                           gxc#current-compile-debug
                           _%debug209471%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp209737
                  gxc#current-compile-verbose
                  _%verbosity209469%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp209736
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?209467%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp209735
                                        gxc#current-compile-gsc-options
                                        _%gsc-options209465%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp209734
                               gx#current-compilation-target
                               _%target209460%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp209733
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?209455%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp209732
             gxc#current-compile-output-dir
             _%outdir209453%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath209492%_)
        (let ((_%opts209494%_ '()))
          (gxc#compile-exe__% _%srcpath209492%_ _%opts209494%_))))
    (define gxc#compile-exe
      (lambda _g209746_
        (let ((_g209747_ (let () (declare (not safe)) (##length _g209746_))))
          (cond ((let () (declare (not safe)) (##fx= _g209747_ 1))
                 (apply gxc#compile-exe__0 _g209746_))
                ((let () (declare (not safe)) (##fx= _g209747_ 2))
                 (apply gxc#compile-exe__% _g209746_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g209746_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx209446%_ _%opts209447%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts209447%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx209446%_
             _%opts209447%_)
            (gxc#compile-executable-module/separate
             _%ctx209446%_
             _%opts209447%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx209246%_ _%opts209247%_)
        (letrec ((_%generate-stub209249%_
                  (lambda (_%builtin-modules209442%_)
                    (let ((_%mod-main209444%_
                           (gxc#find-runtime-symbol _%ctx209246%_ 'main)))
                      (let ((__tmp209748
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules209442%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp209748))
                      (let ((__tmp209749
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main209444%_
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
                        (##write __tmp209749))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts209250%_
                  (lambda (_%gerbil-libdir209440%_)
                    (let ((__tmp209750
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir209440%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp209750 read))))
                 (_%replace-extension209251%_
                  (lambda (_%path209437%_ _%ext209438%_)
                    (string-append
                     (path-strip-extension _%path209437%_)
                     _%ext209438%_)))
                 (_%replace-extension-with-c209252%_
                  (lambda (_%path209435%_)
                    (_%replace-extension209251%_ _%path209435%_ '".c")))
                 (_%replace-extension-with-object209253%_
                  (lambda (_%path209433%_)
                    (_%replace-extension209251%_
                     _%path209433%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?209254%_
                  (lambda (_%ctx209431%_)
                    (if (_%exclude-module?209256%_ _%ctx209431%_)
                        '#f
                        (not (_%libgerbil-module?209255%_ _%ctx209431%_)))))
                 (_%libgerbil-module?209255%_
                  (lambda (_%ctx209424%_)
                    (let ((_%id-str209426%_
                           (symbol->string
                            (##structure-ref
                             _%ctx209424%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?209256%_ _%id-str209426%_)
                          '#f
                          (let ((_%$e209428%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str209426%_))))
                            (if _%$e209428%_
                                _%$e209428%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str209426%_))))))))
                 (_%exclude-module?209256%_
                  (lambda (_%ctx-or-str209420%_)
                    (let ((_%str209422%_
                           (if (string? _%ctx-or-str209420%_)
                               _%ctx-or-str209420%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str209420%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str209422%_))))
                 (_%not-file-empty?209257%_
                  (lambda (_%path209418%_)
                    (not (gxc#file-empty? _%path209418%_))))
                 (_%fold-libgerbil-runtime-scm209258%_
                  (lambda (_%gerbil-staticdir209411%_ _%libgerbil-scm209412%_)
                    (let ((_%gerbil-runtime-scm209416%_
                           (let ((__tmp209751
                                  (lambda (_%rtm209414%_)
                                    (path-expand
                                     (let ((__tmp209752
                                            (let ((__tmp209753
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm209414%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp209753
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp209752 '".scm"))
                                     _%gerbil-staticdir209411%_))))
                             (declare (not safe))
                             (##map __tmp209751 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates209259%_
                       (append _%gerbil-runtime-scm209416%_
                               _%libgerbil-scm209412%_)))))
                 (_%remove-duplicates209259%_
                  (lambda (_%strlst209371%_)
                    (let _%loop209373%_ ((_%rest209375%_ _%strlst209371%_)
                                         (_%result209376%_ '()))
                      (let* ((_%rest209377209385%_ _%rest209375%_)
                             (_%else209379209393%_
                              (lambda () (reverse! _%result209376%_)))
                             (_%K209381209399%_
                              (lambda (_%rest209396%_ _%path209397%_)
                                (if (member _%path209397%_ _%result209376%_)
                                    (_%loop209373%_
                                     _%rest209396%_
                                     _%result209376%_)
                                    (_%loop209373%_
                                     _%rest209396%_
                                     (cons _%path209397%_
                                           _%result209376%_))))))
                        (if (pair? _%rest209377209385%_)
                            (let ((_%hd209382209402%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest209377209385%_)))
                                  (_%tl209383209404%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest209377209385%_))))
                              (let* ((_%path209407%_ _%hd209382209402%_)
                                     (_%rest209409%_ _%tl209383209404%_))
                                (_%K209381209399%_
                                 _%rest209409%_
                                 _%path209407%_)))
                            (_%else209379209393%_))))))
                 (_%compile-stub209260%_
                  (lambda (_%output-scm209267%_ _%output-bin209268%_)
                    (let* ((_%gerbil-home209270%_
                            (let ((__tmp209754
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp209754)))
                           (_%gerbil-libdir209272%_
                            (path-expand '"lib" _%gerbil-home209270%_))
                           (_%gerbil-staticdir209274%_
                            (path-expand '"static" _%gerbil-libdir209272%_))
                           (_%deps209276%_
                            (gxc#find-runtime-module-deps _%ctx209246%_))
                           (_%libgerbil-deps209278%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?209255%_
                               _%deps209276%_)))
                           (_%libgerbil-scm209280%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps209278%_)))
                           (_%libgerbil-scm209282%_
                            (_%fold-libgerbil-runtime-scm209258%_
                             _%gerbil-staticdir209274%_
                             _%libgerbil-scm209280%_))
                           (_%libgerbil-c209284%_
                            (map _%replace-extension-with-c209252%_
                                 _%libgerbil-scm209282%_))
                           (_%libgerbil-o209286%_
                            (map _%replace-extension-with-object209253%_
                                 _%libgerbil-scm209282%_))
                           (_%src-deps209288%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?209254%_
                               _%deps209276%_)))
                           (_%src-deps-scm209290%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps209288%_)))
                           (_%src-deps-scm209292%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?209257%_
                               _%src-deps-scm209290%_)))
                           (_%src-deps-scm209294%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm209292%_)))
                           (_%src-deps-c209296%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c209252%_
                                     _%src-deps-scm209294%_)))
                           (_%src-deps-o209298%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object209253%_
                                     _%src-deps-scm209294%_)))
                           (_%src-bin-scm209300%_
                            (gxc#find-static-module-file _%ctx209246%_))
                           (_%src-bin-scm209302%_
                            (path-expand _%src-bin-scm209300%_))
                           (_%src-bin-c209304%_
                            (_%replace-extension-with-c209252%_
                             _%src-bin-scm209302%_))
                           (_%src-bin-o209306%_
                            (_%replace-extension-with-object209253%_
                             _%src-bin-scm209302%_))
                           (_%output-bin209308%_
                            (path-expand _%output-bin209268%_))
                           (_%output-scm209310%_
                            (path-expand _%output-scm209267%_))
                           (_%output-c209312%_
                            (_%replace-extension-with-c209252%_
                             _%output-scm209310%_))
                           (_%output-o209314%_
                            (_%replace-extension-with-object209253%_
                             _%output-scm209310%_))
                           (_%output_-c209316%_
                            (_%replace-extension209251%_
                             _%output-scm209310%_
                             '"_.c"))
                           (_%output_-o209318%_
                            (_%replace-extension209251%_
                             _%output-scm209310%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts209320%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts209322%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts209324%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir209274%_))
                           (_%output-ld-opts209326%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts209328%_
                            (_%get-libgerbil-ld-opts209250%_
                             _%gerbil-libdir209272%_))
                           (_%rpath209330%_
                            (gxc#gerbil-rpath _%gerbil-libdir209272%_))
                           (_%builtin-modules209334%_
                            (_%remove-duplicates209259%_
                             (let ((__tmp209755
                                    (let ((__tmp209757
                                           (lambda (_%mod209332%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod209332%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp209756
                                           (cons _%ctx209246%_
                                                 _%deps209276%_)))
                                      (declare (not safe))
                                      (##map __tmp209757 __tmp209756))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp209755)))))
                      (letrec ((_%compile-obj209337%_
                                (lambda (_%scm-path209344%_ _%c-path209345%_)
                                  (let* ((_%o-path209347%_
                                          (_%replace-extension209251%_
                                           _%c-path209345%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock209349%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path209347%_
                                             '".lock")))
                                         (_%locked209351%_ '#f)
                                         (_%unlock209354%_
                                          (lambda ()
                                            (close-port _%locked209351%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock209349%_)))))
                                    (let _%retry209357%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock209349%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry209357%_))
                                          (begin
                                            (set! _%locked209351%_
                                                  (let ((__tmp209758
                                                         (lambda ()
                                                           (open-file
                                                            (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%lock209349%_
                                (cons 'create: (cons '#t '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     false
                                                     __tmp209758)))
                                            (if _%locked209351%_
                                                '#!void
                                                (_%retry209357%_)))))
                                    (let ((__tmp209760
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path209347%_)))
                                                     (not _%scm-path209344%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path209344%_
                                                        _%o-path209347%_)))
                                                 (let ((_%gsc-cc-opts209368%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp209761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp209762 (cons _%c-path209345%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp209762
                            _%gsc-static-opts209324%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp209761 _%gsc-cc-opts209368%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp209759
                                           (lambda () (_%unlock209354%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp209760
                                       __tmp209759))))))
                        (let ((__tmp209763
                               (lambda ()
                                 (let ((__tmp209764
                                        (path-directory _%output-bin209308%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp209764)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp209763))
                        (gxc#with-output-to-scheme-file
                         _%output-scm209310%_
                         (lambda ()
                           (_%generate-stub209249%_
                            _%builtin-modules209334%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it209342%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp209765
                                                   (let ((__tmp209766
                                                          (let ((__tmp209767
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm209302%_
                               (cons _%output-scm209310%_ '()))))
                    (declare (not safe))
                    (__foldr1 cons __tmp209767 _%src-deps-scm209294%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      __tmp209766
                                                      _%libgerbil-c209284%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               __tmp209765
                                               _%gsc-link-opts209320%_))))
                                     (for-each
                                      _%compile-obj209337%_
                                      (let ((__tmp209768
                                             (cons _%src-bin-scm209302%_
                                                   (cons _%output-scm209310%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp209768
                                         _%src-deps-scm209294%_))
                                      (let ((__tmp209769
                                             (cons _%src-bin-c209304%_
                                                   (cons _%output-c209312%_
                                                         (cons _%output_-c209316%_
                                                               '())))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp209769
                                         _%src-deps-c209296%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin209308%_
                                                        (let ((__tmp209770
                                                               (cons _%src-bin-o209306%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o209314%_
                                   (cons _%output_-o209318%_
                                         (let ((__tmp209771
                                                (let ((__tmp209772
                                                       (let ((__tmp209774
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir209272%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts209328%_))))
                     (__tmp209773
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath209330%_ '())
                          '())))
                 (declare (not safe))
                 (__foldr1 cons __tmp209774 __tmp209773))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp209772
                                                   _%output-ld-opts209326%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            cons
                                            __tmp209771
                                            _%libgerbil-o209286%_)))))))
                  (declare (not safe))
                  (__foldr1 cons __tmp209770 _%src-deps-o209298%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp209775
                                            (cons _%output-c209312%_
                                                  (cons _%output_-c209316%_
                                                        (cons _%output-o209314%_
                                                              (cons _%output_-o209318%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp209775)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it209342%_))
                                  (_%compile-it209342%_)))
                            '#!void))))))
          (let* ((_%output-bin209262%_
                  (gxc#compile-exe-output-file _%ctx209246%_ _%opts209247%_))
                 (_%output-scm209264%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin209262%_ '"__exe.scm"))))
            (_%compile-stub209260%_
             _%output-scm209264%_
             _%output-bin209262%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx209068%_ _%opts209069%_)
        (letrec ((_%reset-declare209071%_
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
                 (_%generate-stub209072%_
                  (lambda (_%deps209237%_)
                    (let ((_%mod-main209239%_
                           (gxc#find-runtime-symbol _%ctx209068%_ 'main))
                          (_%reset-decl209240%_ (_%reset-declare209071%_))
                          (_%user-decl209241%_ (_%user-declare209073%_)))
                      (for-each
                       (lambda (_%dep209243%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl209240%_))
                         (newline)
                         (if _%user-decl209241%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl209241%_))
                               (newline))
                             '#!void)
                         (let ((__tmp209776
                                (cons 'include (cons _%dep209243%_ '()))))
                           (declare (not safe))
                           (##write __tmp209776))
                         (newline))
                       _%deps209237%_)
                      (let ((__tmp209777
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main209239%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp209777))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare209073%_
                  (lambda ()
                    (let* ((_%gsc-opts209142%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts209069%_)))
                           (_%gsc-prelude209144%_
                            (if _%gsc-opts209142%_
                                (member '"-prelude" _%gsc-opts209142%_)
                                '#f))
                           (_%gsc-prelude209146%_
                            (if _%gsc-prelude209144%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude209144%_)))
                                '#f)))
                      (let _%lp209149%_ ((_%rest209151%_
                                          (cons _%gsc-prelude209146%_ '()))
                                         (_%user-decls209152%_ '()))
                        (let* ((_%rest209153209161%_ _%rest209151%_)
                               (_%else209155209169%_
                                (lambda ()
                                  (if (null? _%user-decls209152%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls209152%_)))))
                               (_%K209157209225%_
                                (lambda (_%rest209172%_ _%expr209173%_)
                                  (let* ((_%expr209174209186%_ _%expr209173%_)
                                         (_%else209177209194%_
                                          (lambda ()
                                            (_%lp209149%_
                                             _%rest209172%_
                                             _%user-decls209152%_))))
                                    (let ((_%K209182209215%_
                                           (lambda (_%decls209213%_)
                                             (_%lp209149%_
                                              _%rest209172%_
                                              (let ()
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 _%user-decls209152%_
                                                 _%decls209213%_)))))
                                          (_%K209179209200%_
                                           (lambda (_%exprs209198%_)
                                             (_%lp209149%_
                                              (append _%exprs209198%_
                                                      _%rest209172%_)
                                              _%user-decls209152%_))))
                                      (if (pair? _%expr209174209186%_)
                                          (let ((_%tl209184209220%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr209174209186%_)))
                                                (_%hd209183209218%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr209174209186%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd209183209218%_
                                                         'declare))
                                                (let ((_%decls209223%_
                                                       _%tl209184209220%_))
                                                  (_%K209182209215%_
                                                   _%decls209223%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd209183209218%_
                                                             'begin))
                                                    (let ((_%exprs209208%_
                                                           _%tl209184209220%_))
                                                      (_%K209179209200%_
                                                       _%exprs209208%_))
                                                    (_%else209177209194%_))))
                                          (_%else209177209194%_)))))))
                          (if (pair? _%rest209153209161%_)
                              (let ((_%hd209158209228%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest209153209161%_)))
                                    (_%tl209159209230%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest209153209161%_))))
                                (let* ((_%expr209233%_ _%hd209158209228%_)
                                       (_%rest209235%_ _%tl209159209230%_))
                                  (_%K209157209225%_
                                   _%rest209235%_
                                   _%expr209233%_)))
                              (_%else209155209169%_)))))))
                 (_%compile-stub209074%_
                  (lambda (_%output-scm209081%_ _%output-bin209082%_)
                    (let* ((_%gerbil-home209084%_
                            (let ((__tmp209778
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp209778)))
                           (_%gerbil-libdir209086%_
                            (path-expand '"lib" _%gerbil-home209084%_))
                           (_%runtime209088%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp209090%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home209084%_))
                           (_%include-gambit-sharp209092%_
                            (gxc#include-source _%gambit-sharp209090%_))
                           (_%bin-scm209094%_
                            (gxc#find-static-module-file _%ctx209068%_))
                           (_%deps209096%_
                            (gxc#find-runtime-module-deps _%ctx209068%_))
                           (_%deps209098%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps209096%_)))
                           (_%deps209103%_
                            (let ((__tmp209779
                                   (lambda (_%$obj209100%_)
                                     (not (gxc#file-empty? _%$obj209100%_)))))
                              (declare (not safe))
                              (##filter __tmp209779 _%deps209098%_)))
                           (_%deps209107%_
                            (let ((__tmp209780
                                   (lambda (_%f209105%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f209105%_
                                             _%runtime209088%_))))))
                              (declare (not safe))
                              (##filter __tmp209780 _%deps209103%_)))
                           (_%output-base209109%_
                            (let ((__tmp209781
                                   (path-strip-extension
                                    _%output-scm209081%_)))
                              (declare (not safe))
                              (##string-append __tmp209781)))
                           (_%output-c209111%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base209109%_ '".c")))
                           (_%output-o209113%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base209109%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_209115%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base209109%_ '"_.c")))
                           (_%output-o_209117%_
                            (let ((__tmp209782
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base209109%_
                               __tmp209782)))
                           (_%gsc-link-opts209119%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts209121%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts209123%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir209086%_)))
                           (_%output-ld-opts209125%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros209127%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp209092%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp209092%_
                                            '()))))
                           (_%gsc-link-opts209129%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts209119%_
                               _%gsc-gx-macros209127%_)))
                           (_%rpath209131%_
                            (gxc#gerbil-rpath _%gerbil-libdir209086%_))
                           (_%default-ld-options209133%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp209783
                             (lambda ()
                               (let ((__tmp209784
                                      (path-directory _%output-bin209082%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp209784)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp209783))
                      (gxc#with-output-to-scheme-file
                       _%output-scm209081%_
                       (lambda ()
                         (_%generate-stub209072%_
                          (let ((__tmp209785
                                 (let ((__tmp209786
                                        (cons _%bin-scm209094%_ '())))
                                   (declare (not safe))
                                   (__foldr1
                                    cons
                                    __tmp209786
                                    _%deps209107%_))))
                            (declare (not safe))
                            (__foldr1 cons __tmp209785 _%runtime209088%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it209139%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_209115%_
                                                      (let ((__tmp209787
                                                             (cons _%output-scm209081%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (__foldr1 cons __tmp209787 _%gsc-link-opts209129%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp209788
                                                 (let ((__tmp209789
                                                        (cons _%output-c209111%_
                                                              (cons _%output-c_209115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    cons
                                                    __tmp209789
                                                    _%gsc-static-opts209123%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp209788
                                             _%gsc-cc-opts209121%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin209082%_
                                                      (cons _%output-o209113%_
                                                            (cons _%output-o_209117%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp209790
                                 (let ((__tmp209792
                                        (cons '"-L"
                                              (cons _%gerbil-libdir209086%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options209133%_))))
                                       (__tmp209791
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath209131%_ '())
                                            '())))
                                   (declare (not safe))
                                   (__foldr1 cons __tmp209792 __tmp209791))))
                            (declare (not safe))
                            (__foldr1
                             cons
                             __tmp209790
                             _%output-ld-opts209125%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it209139%_))
                                (_%compile-it209139%_)))
                          '#!void)))))
          (let* ((_%output-bin209076%_
                  (gxc#compile-exe-output-file _%ctx209068%_ _%opts209069%_))
                 (_%output-scm209078%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin209076%_ '"__exe.scm"))))
            (_%compile-stub209074%_
             _%output-scm209078%_
             _%output-bin209076%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx209017%_ _%id209018%_)
        (let ((_%$e209064%_
               (let ((__tmp209794
                      (lambda (_%e209019209021%_)
                        (let* ((_%g209023209033%_ _%e209019209021%_)
                               (_%else209025209041%_ (lambda () '#f))
                               (_%K209027209045%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%g209023209033%_
                                 'gx#module-export::t))
                              (let* ((_%e209028209048%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g209023209033%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e209029209051%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g209023209033%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e209030209054%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%g209023209033%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e209030209054%_ '0))
                                    (let ((_%e209031209057%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%g209023209033%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if ((lambda (_%g209059209061%_)
                                             (eq? _%g209059209061%_
                                                  _%id209018%_))
                                           _%e209031209057%_)
                                          (_%K209027209045%_)
                                          (_%else209025209041%_)))
                                    (_%else209025209041%_)))
                              (_%else209025209041%_)))))
                     (__tmp209793
                      (##structure-ref
                       _%ctx209017%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp209794 __tmp209793))))
          (if _%$e209064%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e209064%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx209008%_ _%id209009%_)
        (let ((_%$e209011%_
               (gxc#find-export-binding _%ctx209008%_ _%id209009%_)))
          (if _%$e209011%_
              ((lambda (_%bind209014%_)
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of?
                        _%bind209014%_
                        'gx#runtime-binding::t))
                     '#!void
                     (let ()
                       (declare (not safe))
                       (gxc#raise-compile-error
                        '"export is not a runtime binding"
                        _%id209009%_)))
                 (##structure-ref _%bind209014%_ '1 gx#binding::t '#f))
               _%$e209011%_)
              (let ((__tmp209795
                     (##structure-ref
                      _%ctx209008%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp209795
                 _%id209009%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx208874%_)
        (letrec* ((_%ht208876%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template208877%_
                   (lambda (_%in208953%_ _%phi208954%_)
                     (let ((_%iphi208956%_
                            (fx+ _%phi208954%_
                                 (##direct-structure-ref
                                  _%in208953%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports208957%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in208953%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp208959%_ ((_%rest208961%_ _%imports208957%_)
                                          (_%r208962%_ '()))
                         (let* ((_%rest208963208971%_ _%rest208961%_)
                                (_%else208965208979%_ (lambda () _%r208962%_))
                                (_%K208967208996%_
                                 (lambda (_%rest208982%_ _%in208983%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in208983%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi208956%_))
                                           (_%lp208959%_
                                            _%rest208982%_
                                            (cons _%in208983%_ _%r208962%_))
                                           (_%lp208959%_
                                            _%rest208982%_
                                            _%r208962%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in208983%_
                                              'gx#module-import::t))
                                           (let ((_%iphi208987%_
                                                  (fx+ _%phi208954%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in208983%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi208987%_))
                                                 (_%lp208959%_
                                                  _%rest208982%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in208983%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r208962%_))
                                                 (_%lp208959%_
                                                  _%rest208982%_
                                                  _%r208962%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in208983%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi208990%_
                                                      (fx+ _%iphi208956%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in208983%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi208990%_))
                                                     (_%lp208959%_
                                                      _%rest208982%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in208983%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r208962%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi208990%_))
                                                         (_%lp208959%_
                                                          _%rest208982%_
                                                          (let ((__tmp209796
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template208877%_
                          _%in208983%_
                          _%iphi208956%_)))
                    (declare (not safe))
                    (__foldl1 cons _%r208962%_ __tmp209796)))
                 (_%lp208959%_ _%rest208982%_ _%r208962%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp208959%_
                                                _%rest208982%_
                                                _%r208962%_)))))))
                           (if (pair? _%rest208963208971%_)
                               (let ((_%hd208968208999%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest208963208971%_)))
                                     (_%tl208969209001%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest208963208971%_))))
                                 (let* ((_%in209004%_ _%hd208968208999%_)
                                        (_%rest209006%_ _%tl208969209001%_))
                                   (_%K208967208996%_
                                    _%rest209006%_
                                    _%in209004%_)))
                               (_%else208965208979%_)))))))
                  (_%find-deps208878%_
                   (lambda (_%rest208886%_ _%deps208887%_)
                     (let* ((_%rest208888208896%_ _%rest208886%_)
                            (_%else208890208904%_ (lambda () _%deps208887%_))
                            (_%K208892208941%_
                             (lambda (_%rest208907%_ _%hd208908%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd208908%_
                                      'gx#module-context::t))
                                   (let ((_%id208911%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd208908%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports208912%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd208908%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht208876%_
                                            _%id208911%_))
                                         (_%find-deps208878%_
                                          _%rest208907%_
                                          _%deps208887%_)
                                         (let ((_%$e208915%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd208908%_))))
                                           (if _%$e208915%_
                                               ((lambda (_%pre208918%_)
                                                  (let ((_%xdeps208920%_
                                                         (_%find-deps208878%_
                                                          (cons _%pre208918%_
                                                                _%imports208912%_)
                                                          _%deps208887%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__hash-put!
                                                       _%ht208876%_
                                                       _%id208911%_
                                                       _%hd208908%_))
                                                    (_%find-deps208878%_
                                                     _%rest208907%_
                                                     (cons _%hd208908%_
                                                           _%xdeps208920%_))))
                                                _%$e208915%_)
                                               (let ((_%xdeps208923%_
                                                      (_%find-deps208878%_
                                                       _%imports208912%_
                                                       _%deps208887%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht208876%_
                                                    _%id208911%_
                                                    _%hd208908%_))
                                                 (_%find-deps208878%_
                                                  _%rest208907%_
                                                  (cons _%hd208908%_
                                                        _%xdeps208923%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd208908%_
                                          'gx#prelude-context::t))
                                       (let ((_%id208926%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd208908%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht208876%_
                                                _%id208926%_))
                                             (_%find-deps208878%_
                                              _%rest208907%_
                                              _%deps208887%_)
                                             (let ((_%xdeps208930%_
                                                    (_%find-deps208878%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd208908%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps208887%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht208876%_
                                                      _%id208926%_))
                                                   (_%find-deps208878%_
                                                    _%rest208907%_
                                                    _%xdeps208930%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht208876%_
                                                        _%id208926%_
                                                        _%hd208908%_))
                                                     (_%find-deps208878%_
                                                      _%rest208907%_
                                                      (cons _%hd208908%_
                                                            _%xdeps208930%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd208908%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd208908%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps208878%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd208908%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest208907%_)
                                                _%deps208887%_)
                                               (_%find-deps208878%_
                                                _%rest208907%_
                                                _%deps208887%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd208908%_
                                                  'gx#module-export::t))
                                               (_%find-deps208878%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd208908%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest208907%_)
                                                _%deps208887%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd208908%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd208908%_ '2 '#f '#f)))
               (_%find-deps208878%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd208908%_ '1 '#f '#f))
                      _%rest208907%_)
                _%deps208887%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd208908%_ '2 '#f '#f)))
                   (let ((_%xdeps208937%_
                          (_%import-set-template208877%_ _%hd208908%_ '0)))
                     (_%find-deps208878%_
                      (let ()
                        (declare (not safe))
                        (__foldl1 cons _%rest208907%_ _%xdeps208937%_))
                      _%deps208887%_))
                   (_%find-deps208878%_ _%rest208907%_ _%deps208887%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd208908%_))))))))))
                       (if (pair? _%rest208888208896%_)
                           (let ((_%hd208893208944%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest208888208896%_)))
                                 (_%tl208894208946%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest208888208896%_))))
                             (let* ((_%hd208949%_ _%hd208893208944%_)
                                    (_%rest208951%_ _%tl208894208946%_))
                               (_%K208892208941%_
                                _%rest208951%_
                                _%hd208949%_)))
                           (_%else208890208904%_))))))
          (let ((__tmp209797
                 (filter gx#expander-context-id
                         (_%find-deps208878%_
                          (let ((_%$e208880%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx208874%_))))
                            (if _%$e208880%_
                                ((lambda (_%pre208883%_)
                                   (cons _%pre208883%_
                                         (##structure-ref
                                          _%ctx208874%_
                                          '8
                                          gx#module-context::t
                                          '#f)))
                                 _%$e208880%_)
                                (##structure-ref
                                 _%ctx208874%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp209797)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx208804%_)
        (let* ((_%context-id208806%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx208804%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx208804%_ '1 '#f '#f))
                    (string->symbol _%ctx208804%_)))
               (_%scm208808%_
                (let ((__tmp209798
                       (gxc#static-module-name _%context-id208806%_)))
                  (declare (not safe))
                  (##string-append __tmp209798 '".scm")))
               (_%dirs208810%_ (let () (declare (not safe)) (load-path)))
               (_%dirs208816%_
                (let ((_%user-libpath208812%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath208812%_
                      (let ((_%user-libpath208814%_
                             (path-expand '"lib" _%user-libpath208812%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath208814%_ _%dirs208810%_))
                            _%dirs208810%_
                            (cons _%user-libpath208814%_ _%dirs208810%_)))
                      _%dirs208810%_)))
               (_%dirs208826%_
                (let ((_%$e208818%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e208818%_
                      ((lambda (_%g208820208822%_)
                         (cons _%g208820208822%_ _%dirs208816%_))
                       _%$e208818%_)
                      _%dirs208816%_)))
               (_%dirs208832%_
                (let ((__tmp209799
                       (lambda (_%g208827208829%_)
                         (path-expand '"static" _%g208827208829%_))))
                  (declare (not safe))
                  (##map __tmp209799 _%dirs208826%_))))
          (let _%lp208835%_ ((_%rest208837%_ _%dirs208832%_))
            (let* ((_%rest208838208846%_ _%rest208837%_)
                   (_%else208840208854%_
                    (lambda ()
                      (let ((__tmp209800
                             (##structure-ref
                              _%ctx208804%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp209800
                         _%scm208808%_))))
                   (_%K208842208862%_
                    (lambda (_%rest208857%_ _%dir208858%_)
                      (let ((_%path208860%_
                             (path-expand _%scm208808%_ _%dir208858%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path208860%_))
                            _%path208860%_
                            (_%lp208835%_ _%rest208857%_))))))
              (if (pair? _%rest208838208846%_)
                  (let ((_%hd208843208865%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest208838208846%_)))
                        (_%tl208844208867%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest208838208846%_))))
                    (let* ((_%dir208870%_ _%hd208843208865%_)
                           (_%rest208872%_ _%tl208844208867%_))
                      (_%K208842208862%_ _%rest208872%_ _%dir208870%_)))
                  (_%else208840208854%_)))))))
    (define gxc#file-empty?
      (lambda (_%path208802%_)
        (zero? (let ((__tmp209801 (file-info _%path208802%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp209801)))))
    (define gxc#compile-top-module
      (lambda (_%ctx208793%_)
        (let ((__tmp209802
               (lambda ()
                 (let ((__tmp209803
                        (lambda ()
                          (let ((__tmp209804
                                 (lambda ()
                                   (let ((__tmp209806
                                          (lambda ()
                                            (let ((__tmp209808
                                                   (lambda ()
                                                     (let ((__tmp209810
                                                            (lambda ()
                                                              (let ((__tmp209811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx208793%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp209811))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp209812
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx208793%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp209812))
                          '#!void)
                      (gxc#collect-bindings _%ctx208793%_)
                      (gxc#compile-runtime-code _%ctx208793%_)
                      (gxc#compile-meta-code _%ctx208793%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx208793%_)
                          '#!void)))
                   (__tmp209809
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
                __tmp209810
                gxc#current-compile-runtime-names
                __tmp209809))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp209807
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp209808
                                               gxc#current-compile-runtime-sections
                                               __tmp209807))))
                                         (__tmp209805
                                          (let ((__obj209706
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj209706))
                                            __obj209706)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp209806
                                      gxc#current-compile-symbol-table
                                      __tmp209805)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp209804
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp209803
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp209802
           gx#current-expander-context
           _%ctx208793%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx208791%_)
        (let ((__tmp209813
               (##structure-ref _%ctx208791%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp209813))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx208735%_)
        (letrec ((_%compile1208737%_
                  (lambda (_%ctx208780%_)
                    (let* ((_%code208782%_
                            (##structure-ref
                             _%ctx208780%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm208786%_
                            (let ((_%idstr208784%_
                                   (let ((__tmp209814
                                          (##structure-ref
                                           _%ctx208780%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp209814))))
                              (declare (not safe))
                              (##string-append _%idstr208784%_ '"~0")))
                           (_%rtc?208788%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code208782%_))))
                      (if _%rtc?208788%_
                          (let ((__tmp209815
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp209815
                             _%ctx208780%_
                             _%rtm208786%_))
                          '#!void)
                      (_%generate-runtime-code208739%_
                       _%ctx208780%_
                       _%code208782%_
                       (if _%rtc?208788%_ _%rtm208786%_ '#f)))))
                 (_%context-timestamp208738%_
                  (lambda (_%ctx208778%_)
                    (let ((__tmp209816
                           (let ((__tmp209817
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx208778%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp209817 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp209816))))
                 (_%generate-runtime-code208739%_
                  (lambda (_%ctx208746%_ _%code208747%_ _%rtm208748%_)
                    (let* ((_%runtime-code?208750%_ (if _%rtm208748%_ '#t '#f))
                           (_%lifts208752%_ (box '()))
                           (_%runtime-code208759%_
                            (if _%runtime-code?208750%_
                                (let ((__tmp209818
                                       (lambda ()
                                         (let ((__tmp209819
                                                (lambda ()
                                                  (let ((__tmp209820
                                                         (lambda ()
                                                           (let ((__tmp209822
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ((__tmp209824
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-runtime
                                        _%code208747%_))))
                                  (__tmp209823
                                   (let ()
                                     (declare (not safe))
                                     (gxc#make-bound-identifier-table))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp209824
                               gxc#current-compile-identifiers
                               __tmp209823))))
                         (__tmp209821
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp209822
                      gxc#current-compile-marks
                      __tmp209821)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp209820
                                                     gxc#current-compile-lift
                                                     _%lifts208752%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp209819
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp209818
                                   gx#current-expander-context
                                   _%ctx208746%_))
                                '#f))
                           (_%runtime-code208761%_
                            (if _%runtime-code?208750%_
                                (if (null? (unbox _%lifts208752%_))
                                    _%runtime-code208759%_
                                    (cons 'begin
                                          (let ((__tmp209826
                                                 (cons _%runtime-code208759%_
                                                       '()))
                                                (__tmp209825
                                                 (reverse (unbox _%lifts208752%_))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             __tmp209826
                                             __tmp209825))))
                                '#f))
                           (_%runtime-code208763%_
                            (if _%runtime-code?208750%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp208738%_
                                                         _%ctx208746%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code208761%_ '())))
                                '#f))
                           (_%loader-code208766%_
                            (let ((__tmp209827
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code208747%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp209827
                               gx#current-expander-context
                               _%ctx208746%_)))
                           (_%loader-code208768%_
                            (cons 'begin
                                  (cons _%loader-code208766%_
                                        (cons (if _%runtime-code?208750%_
                                                  (cons 'load-module
                                                        (cons _%rtm208748%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0208770%_
                            (gxc#compile-output-file _%ctx208746%_ '0 '".scm"))
                           (_%scmrt208772%_
                            (gxc#compile-output-file
                             _%ctx208746%_
                             '#f
                             '".scm"))
                           (_%scms208774%_
                            (gxc#compile-static-output-file _%ctx208746%_)))
                      (if _%runtime-code?208750%_
                          (gxc#compile-scm-file__0
                           _%scm0208770%_
                           _%runtime-code208763%_)
                          '#!void)
                      (let ((__tmp209828
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt208772%_
                                _%loader-code208768%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp209828
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms208774%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms208774%_))
                          '#!void)
                      (if _%runtime-code?208750%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0208770%_ _%scms208774%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms208774%_ void)))))))
          (let* ((_%all-modules208741%_
                  (cons _%ctx208735%_ (gxc#lift-nested-modules _%ctx208735%_)))
                 (__tmp209829
                  (lambda (_%ctx208743%_)
                    (let ((__tmp209830
                           (lambda () (_%compile1208737%_ _%ctx208743%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp209830
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp209829 _%all-modules208741%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx208634%_)
        (letrec ((_%compile-ssi208636%_
                  (lambda (_%code208703%_)
                    (let* ((_%path208705%_
                            (gxc#compile-output-file
                             _%ctx208634%_
                             '#f
                             '".ssi"))
                           (_%prelude208717%_
                            (let* ((_%super208707%_
                                    (##structure-ref
                                     _%ctx208634%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e208709%_
                                    (##structure-ref
                                     _%super208707%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e208709%_
                                  ((lambda (_%g208711208713%_)
                                     (let ()
                                       (declare (not safe))
                                       (make-symbol__1
                                        '":"
                                        _%g208711208713%_)))
                                   _%$e208709%_)
                                  ':<root>)))
                           (_%ns208719%_
                            (##structure-ref
                             _%ctx208634%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr208721%_
                            (symbol->string
                             (##structure-ref
                              _%ctx208634%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg208729%_
                            (let ((_%$e208723%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr208721%_ '#\/))))
                              (if _%$e208723%_
                                  ((lambda (_%x208726%_)
                                     (let ((__tmp209831
                                            (substring
                                             _%idstr208721%_
                                             '0
                                             _%x208726%_)))
                                       (declare (not safe))
                                       (##string->symbol __tmp209831)))
                                   _%$e208723%_)
                                  '#f)))
                           (_%rt208731%_
                            (let ((__tmp209832
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp209832 _%ctx208634%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path208705%_))
                      (gxc#with-output-to-scheme-file
                       _%path208705%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude208717%_))
                         (if _%pkg208729%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg208729%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns208719%_))
                         (newline)
                         (pretty-print _%code208703%_)
                         (if _%rt208731%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt208731%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi208637%_
                  (lambda (_%part208642%_)
                    (let* ((_%part208643208656%_ _%part208642%_)
                           (_%E208645208660%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part208643208656%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K208646208672%_
                            (lambda (_%code208663%_
                                     _%n208664%_
                                     _%phi208665%_
                                     _%phi-ctx208666%_)
                              (let ((_%code208670%_
                                     (let ((__tmp209833
                                            (lambda ()
                                              (let ((__tmp209834
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code208663%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp209834
                                                 gx#current-expander-phi
                                                 _%phi208665%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp209833
                                        gx#current-expander-context
                                        _%phi-ctx208666%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx208634%_
                                  _%n208664%_
                                  '".scm")
                                 _%code208670%_
                                 '#t)))))
                      (if (pair? _%part208643208656%_)
                          (let ((_%hd208647208675%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part208643208656%_)))
                                (_%tl208648208677%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part208643208656%_))))
                            (let ((_%phi-ctx208680%_ _%hd208647208675%_))
                              (if (pair? _%tl208648208677%_)
                                  (let ((_%hd208649208682%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl208648208677%_)))
                                        (_%tl208650208684%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl208648208677%_))))
                                    (let ((_%phi208687%_ _%hd208649208682%_))
                                      (if (pair? _%tl208650208684%_)
                                          (let ((_%hd208651208689%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl208650208684%_)))
                                                (_%tl208652208691%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl208650208684%_))))
                                            (let ((_%n208694%_
                                                   _%hd208651208689%_))
                                              (if (pair? _%tl208652208691%_)
                                                  (let ((_%hd208653208696%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl208652208691%_)))
                                                        (_%tl208654208698%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl208652208691%_))))
                                                    (let ((_%code208701%_
                                                           _%hd208653208696%_))
                                                      (if (null? _%tl208654208698%_)
                                                          (_%K208646208672%_
                                                           _%code208701%_
                                                           _%n208694%_
                                                           _%phi208687%_
                                                           _%phi-ctx208680%_)
                                                          (_%E208645208660%_))))
                                                  (_%E208645208660%_))))
                                          (_%E208645208660%_))))
                                  (_%E208645208660%_))))
                          (_%E208645208660%_))))))
          (let ((_g209835_ (gxc#generate-meta-code _%ctx208634%_)))
            (begin
              (let ((_g209836_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g209835_)
                           (##values-length _g209835_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g209836_ 2)))
                    (error "Context expects 2 values" _g209836_)))
              (let ((_%ssi-code208639%_
                     (let () (declare (not safe)) (##values-ref _g209835_ 0)))
                    (_%phi-code208640%_
                     (let () (declare (not safe)) (##values-ref _g209835_ 1))))
                (begin
                  (_%compile-ssi208636%_ _%ssi-code208639%_)
                  (for-each _%compile-phi208637%_ _%phi-code208640%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx208616%_)
        (let* ((_%path208618%_
                (gxc#compile-output-file _%ctx208616%_ '#f '".ssxi.ss"))
               (_%code208620%_
                (let ((__tmp209837
                       (##structure-ref
                        _%ctx208616%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp209837)))
               (_%idstr208622%_
                (symbol->string
                 (##structure-ref
                  _%ctx208616%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg208630%_
                (let ((_%$e208624%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr208622%_ '#\/))))
                  (if _%$e208624%_
                      ((lambda (_%x208627%_)
                         (let ((__tmp209838
                                (substring _%idstr208622%_ '0 _%x208627%_)))
                           (declare (not safe))
                           (##string->symbol __tmp209838)))
                       _%$e208624%_)
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path208618%_))
          (gxc#with-output-to-scheme-file
           _%path208618%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg208630%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg208630%_))
                 '#!void)
             (newline)
             (pretty-print _%code208620%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx208609%_)
        (let* ((_%state208611%_
                (let ((__obj209707
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj209707 _%ctx208609%_))
                  __obj209707))
               (_%ssi-code208613%_
                (let ((__tmp209839
                       (##structure-ref
                        _%ctx208609%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state208611%_
                   __tmp209839))))
          (values _%ssi-code208613%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state208611%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx208600%_)
        (let* ((_%lifts208602%_ (box '()))
               (__tmp209840
                (lambda ()
                  (let ((__tmp209842
                         (lambda ()
                           (let ((__tmp209844
                                  (lambda ()
                                    (let ((_%code208607%_
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-generate-runtime-phi
                                              _%stx208600%_))))
                                      (if (null? (unbox _%lifts208602%_))
                                          _%code208607%_
                                          (cons 'begin
                                                (let ((__tmp209846
                                                       (cons _%code208607%_
                                                             '()))
                                                      (__tmp209845
                                                       (reverse (unbox _%lifts208602%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   cons
                                                   __tmp209846
                                                   __tmp209845)))))))
                                 (__tmp209843
                                  (let ()
                                    (declare (not safe))
                                    (gxc#make-bound-identifier-table))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp209844
                              gxc#current-compile-identifiers
                              __tmp209843))))
                        (__tmp209841
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp209842
                     gxc#current-compile-marks
                     __tmp209841)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp209840
           gxc#current-compile-lift
           _%lifts208602%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx208596%_)
        (let ((_%modules208598%_ (box '())))
          (let ((__tmp209847
                 (##structure-ref _%ctx208596%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules208598%_ __tmp209847))
          (reverse (unbox _%modules208598%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path208576%_ _%code208577%_ _%phi?208578%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path208576%_))
        (gxc#with-output-to-scheme-file
         _%path208576%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp209848
                                           (if _%phi?208578%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (__foldr1 cons '() __tmp209848)))))))
           (pretty-print _%code208577%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it208582%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path208576%_ _%phi?208578%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp209849
                         (cons 'compile-file (cons _%path208576%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it208582%_ __tmp209849))
                  (_%compile-it208582%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path208587%_ _%code208588%_)
        (let ((_%phi?208590%_ '#f))
          (gxc#compile-scm-file__%
           _%path208587%_
           _%code208588%_
           _%phi?208590%_))))
    (define gxc#compile-scm-file
      (lambda _g209850_
        (let ((_g209851_ (let () (declare (not safe)) (##length _g209850_))))
          (cond ((let () (declare (not safe)) (##fx= _g209851_ 2))
                 (apply gxc#compile-scm-file__0 _g209850_))
                ((let () (declare (not safe)) (##fx= _g209851_ 3))
                 (apply gxc#compile-scm-file__% _g209850_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g209850_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?208477%_)
        (let _%lp208479%_ ((_%rest208481%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts208482%_ '()))
          (let* ((_%rest208483208503%_ _%rest208481%_)
                 (_%else208487208511%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts208482%_)))
                        (reverse _%opts208482%_)))))
            (let ((_%K208497208554%_
                   (lambda (_%rest208552%_)
                     (_%lp208479%_ _%rest208552%_ _%opts208482%_)))
                  (_%K208492208536%_
                   (lambda (_%rest208534%_)
                     (_%lp208479%_ _%rest208534%_ _%opts208482%_)))
                  (_%K208489208518%_
                   (lambda (_%rest208515%_ _%opt208516%_)
                     (_%lp208479%_
                      _%rest208515%_
                      (cons _%opt208516%_ _%opts208482%_)))))
              (if (pair? _%rest208483208503%_)
                  (let ((_%tl208499208559%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest208483208503%_)))
                        (_%hd208498208557%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest208483208503%_))))
                    (if (equal? _%hd208498208557%_ '"-cc-options")
                        (if (pair? _%tl208499208559%_)
                            (let* ((_%tl208501208562%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl208499208559%_)))
                                   (_%rest208565%_ _%tl208501208562%_))
                              (_%K208497208554%_ _%rest208565%_))
                            (let ((_%opt208526%_ _%hd208498208557%_)
                                  (_%rest208528%_ _%tl208499208559%_))
                              (_%K208489208518%_
                               _%rest208528%_
                               _%opt208526%_)))
                        (if (equal? _%hd208498208557%_ '"-ld-options")
                            (if (pair? _%tl208499208559%_)
                                (let* ((_%tl208496208544%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl208499208559%_)))
                                       (_%rest208547%_ _%tl208496208544%_))
                                  (_%K208492208536%_ _%rest208547%_))
                                (let ((_%opt208526%_ _%hd208498208557%_)
                                      (_%rest208528%_ _%tl208499208559%_))
                                  (_%K208489208518%_
                                   _%rest208528%_
                                   _%opt208526%_)))
                            (let ((_%opt208526%_ _%hd208498208557%_)
                                  (_%rest208528%_ _%tl208499208559%_))
                              (_%K208489208518%_
                               _%rest208528%_
                               _%opt208526%_)))))
                  (_%else208487208511%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?208571%_ '#f)) (gxc#gsc-link-options__% _%phi?208571%_))))
    (define gxc#gsc-link-options
      (lambda _g209852_
        (let ((_g209853_ (let () (declare (not safe)) (##length _g209852_))))
          (cond ((let () (declare (not safe)) (##fx= _g209853_ 0))
                 (apply gxc#gsc-link-options__0 _g209852_))
                ((let () (declare (not safe)) (##fx= _g209853_ 1))
                 (apply gxc#gsc-link-options__% _g209852_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g209852_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords208326%_ _%static?208322208327%_ _%phi?208329%_)
        (let ((_%static?208331%_
               (if (eq? _%static?208322208327%_ absent-value)
                   '#f
                   _%static?208322208327%_)))
          (if _%phi?208329%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp208333%_ ((_%rest208335%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts208336%_ '()))
                (let* ((_%rest208337208363%_ _%rest208335%_)
                       (_%else208342208371%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts208336%_)))
                              (reverse! _%opts208336%_)))))
                  (let ((_%K208357208434%_
                         (lambda (_%rest208431%_ _%opt208432%_)
                           (if _%static?208331%_
                               (_%lp208333%_
                                _%rest208431%_
                                (cons _%opt208432%_
                                      (cons '"-cc-options" _%opts208336%_)))
                               (_%lp208333%_ _%rest208431%_ _%opts208336%_))))
                        (_%K208352208411%_
                         (lambda (_%rest208408%_ _%opt208409%_)
                           (_%lp208333%_
                            _%rest208408%_
                            (cons _%opt208409%_
                                  (cons '"-cc-options" _%opts208336%_)))))
                        (_%K208347208391%_
                         (lambda (_%rest208389%_)
                           (_%lp208333%_ _%rest208389%_ _%opts208336%_)))
                        (_%K208344208377%_
                         (lambda (_%rest208375%_)
                           (_%lp208333%_ _%rest208375%_ _%opts208336%_))))
                    (if (pair? _%rest208337208363%_)
                        (let ((_%tl208359208439%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest208337208363%_)))
                              (_%hd208358208437%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest208337208363%_))))
                          (if (equal? _%hd208358208437%_ '"-cc-options")
                              (if (pair? _%tl208359208439%_)
                                  (let ((_%tl208361208444%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl208359208439%_)))
                                        (_%hd208360208442%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl208359208439%_))))
                                    (if (equal? _%hd208360208442%_ '"-Bstatic")
                                        (let ((_%opt208447%_
                                               _%hd208360208442%_)
                                              (_%rest208449%_
                                               _%tl208361208444%_))
                                          (_%K208357208434%_
                                           _%rest208449%_
                                           _%opt208447%_))
                                        (let ((_%opt208424%_
                                               _%hd208360208442%_)
                                              (_%rest208426%_
                                               _%tl208361208444%_))
                                          (_%K208352208411%_
                                           _%rest208426%_
                                           _%opt208424%_))))
                                  (let ((_%rest208383%_ _%tl208359208439%_))
                                    (_%K208344208377%_ _%rest208383%_)))
                              (if (equal? _%hd208358208437%_ '"-ld-options")
                                  (if (pair? _%tl208359208439%_)
                                      (let* ((_%tl208351208399%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl208359208439%_)))
                                             (_%rest208402%_
                                              _%tl208351208399%_))
                                        (_%K208347208391%_ _%rest208402%_))
                                      (let ((_%rest208383%_
                                             _%tl208359208439%_))
                                        (_%K208344208377%_ _%rest208383%_)))
                                  (let ((_%rest208383%_ _%tl208359208439%_))
                                    (_%K208344208377%_ _%rest208383%_)))))
                        (_%else208342208371%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords208454%_ _%static?208322208455%_)
        (let ((_%phi?208457%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords208454%_
           _%static?208322208455%_
           _%phi?208457%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g209854_
        (let ((_g209855_ (let () (declare (not safe)) (##length _g209854_))))
          (cond ((let () (declare (not safe)) (##fx= _g209855_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g209854_))
                ((let () (declare (not safe)) (##fx= _g209855_ 3))
                 (apply gxc#gsc-cc-options__%__% _g209854_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g209854_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords208466%_ . _%args208467%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords208466%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords208466%_
                  'static:
                  absent-value))
               _%args208467%_)))
    (define gxc#gsc-cc-options
      (lambda _%args208323208473%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args208323208473%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords208171%_ _%static?208167208172%_ _%phi?208174%_)
        (let ((_%static?208176%_
               (if (eq? _%static?208167208172%_ absent-value)
                   '#f
                   _%static?208167208172%_)))
          (if _%phi?208174%_
              '()
              (let _%lp208178%_ ((_%rest208180%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts208181%_ '()))
                (let* ((_%rest208182208208%_ _%rest208180%_)
                       (_%else208187208216%_
                        (lambda () (reverse! _%opts208181%_))))
                  (let ((_%K208202208279%_
                         (lambda (_%rest208276%_ _%opt208277%_)
                           (if _%static?208176%_
                               (_%lp208178%_
                                _%rest208276%_
                                (cons _%opt208277%_
                                      (cons '"-ld-options" _%opts208181%_)))
                               (_%lp208178%_ _%rest208276%_ _%opts208181%_))))
                        (_%K208197208256%_
                         (lambda (_%rest208253%_ _%opt208254%_)
                           (_%lp208178%_
                            _%rest208253%_
                            (cons _%opt208254%_
                                  (cons '"-ld-options" _%opts208181%_)))))
                        (_%K208192208236%_
                         (lambda (_%rest208234%_)
                           (_%lp208178%_ _%rest208234%_ _%opts208181%_)))
                        (_%K208189208222%_
                         (lambda (_%rest208220%_)
                           (_%lp208178%_ _%rest208220%_ _%opts208181%_))))
                    (if (pair? _%rest208182208208%_)
                        (let ((_%tl208204208284%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest208182208208%_)))
                              (_%hd208203208282%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest208182208208%_))))
                          (if (equal? _%hd208203208282%_ '"-ld-options")
                              (if (pair? _%tl208204208284%_)
                                  (let ((_%tl208206208289%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl208204208284%_)))
                                        (_%hd208205208287%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl208204208284%_))))
                                    (if (equal? _%hd208205208287%_ '"-static")
                                        (let ((_%opt208292%_
                                               _%hd208205208287%_)
                                              (_%rest208294%_
                                               _%tl208206208289%_))
                                          (_%K208202208279%_
                                           _%rest208294%_
                                           _%opt208292%_))
                                        (let ((_%opt208269%_
                                               _%hd208205208287%_)
                                              (_%rest208271%_
                                               _%tl208206208289%_))
                                          (_%K208197208256%_
                                           _%rest208271%_
                                           _%opt208269%_))))
                                  (let ((_%rest208228%_ _%tl208204208284%_))
                                    (_%K208189208222%_ _%rest208228%_)))
                              (if (equal? _%hd208203208282%_ '"-cc-options")
                                  (if (pair? _%tl208204208284%_)
                                      (let* ((_%tl208196208244%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl208204208284%_)))
                                             (_%rest208247%_
                                              _%tl208196208244%_))
                                        (_%K208192208236%_ _%rest208247%_))
                                      (let ((_%rest208228%_
                                             _%tl208204208284%_))
                                        (_%K208189208222%_ _%rest208228%_)))
                                  (let ((_%rest208228%_ _%tl208204208284%_))
                                    (_%K208189208222%_ _%rest208228%_)))))
                        (_%else208187208216%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords208299%_ _%static?208167208300%_)
        (let ((_%phi?208302%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords208299%_
           _%static?208167208300%_
           _%phi?208302%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g209856_
        (let ((_g209857_ (let () (declare (not safe)) (##length _g209856_))))
          (cond ((let () (declare (not safe)) (##fx= _g209857_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g209856_))
                ((let () (declare (not safe)) (##fx= _g209857_ 3))
                 (apply gxc#gsc-ld-options__%__% _g209856_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g209856_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords208311%_ . _%args208312%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords208311%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords208311%_
                  'static:
                  absent-value))
               _%args208312%_)))
    (define gxc#gsc-ld-options
      (lambda _%args208168208318%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args208168208318%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir208162%_)
        (let ((_%user-staticdir208164%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir208162%_
                       '" -I "
                       _%user-staticdir208164%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp208074%_ ((_%rest208076%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts208077%_ '()))
          (let* ((_%rest208078208098%_ _%rest208076%_)
                 (_%else208082208106%_ (lambda () _%opts208077%_)))
            (let ((_%K208092208149%_
                   (lambda (_%rest208147%_)
                     (_%lp208074%_ _%rest208147%_ _%opts208077%_)))
                  (_%K208087208127%_
                   (lambda (_%rest208124%_ _%opt208125%_)
                     (_%lp208074%_
                      _%rest208124%_
                      (let ((__tmp209858
                             (let ((__tmp209859
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt208125%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp209859))))
                        (declare (not safe))
                        (##append _%opts208077%_ __tmp209858)))))
                  (_%K208084208112%_
                   (lambda (_%rest208110%_)
                     (_%lp208074%_ _%rest208110%_ _%opts208077%_))))
              (if (pair? _%rest208078208098%_)
                  (let ((_%tl208094208154%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest208078208098%_)))
                        (_%hd208093208152%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest208078208098%_))))
                    (if (equal? _%hd208093208152%_ '"-cc-options")
                        (if (pair? _%tl208094208154%_)
                            (let* ((_%tl208096208157%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl208094208154%_)))
                                   (_%rest208160%_ _%tl208096208157%_))
                              (_%K208092208149%_ _%rest208160%_))
                            (let ((_%rest208118%_ _%tl208094208154%_))
                              (_%K208084208112%_ _%rest208118%_)))
                        (if (equal? _%hd208093208152%_ '"-ld-options")
                            (if (pair? _%tl208094208154%_)
                                (let ((_%tl208091208137%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl208094208154%_)))
                                      (_%hd208090208135%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl208094208154%_))))
                                  (let ((_%opt208140%_ _%hd208090208135%_)
                                        (_%rest208142%_ _%tl208091208137%_))
                                    (_%K208087208127%_
                                     _%rest208142%_
                                     _%opt208140%_)))
                                (let ((_%rest208118%_ _%tl208094208154%_))
                                  (_%K208084208112%_ _%rest208118%_)))
                            (let ((_%rest208118%_ _%tl208094208154%_))
                              (_%K208084208112%_ _%rest208118%_)))))
                  (_%else208082208106%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str208071%_)
        (not (let () (declare (not safe)) (string-empty? _%str208071%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path208064%_ _%phi?208065%_)
        (let ((_%gsc-link-opts208067%_
               (gxc#gsc-link-options__% _%phi?208065%_))
              (_%gsc-cc-opts208068%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?208065%_))
              (_%gsc-ld-opts208069%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?208065%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp209860
                  (let ((__tmp209861
                         (let ((__tmp209862 (cons _%path208064%_ '())))
                           (declare (not safe))
                           (__foldr1
                            cons
                            __tmp209862
                            _%gsc-link-opts208067%_))))
                    (declare (not safe))
                    (__foldr1 cons __tmp209861 _%gsc-ld-opts208069%_))))
             (declare (not safe))
             (__foldr1 cons __tmp209860 _%gsc-cc-opts208068%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx208030%_ _%n208031%_ _%ext208032%_)
        (letrec ((_%module-relative-path208034%_
                  (lambda (_%ctx208062%_)
                    (path-strip-directory
                     (let ((__tmp209863
                            (##structure-ref
                             _%ctx208062%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp209863)))))
                 (_%module-source-directory208035%_
                  (lambda (_%ctx208058%_)
                    (path-directory
                     (let ((_%mpath208060%_
                            (##structure-ref
                             _%ctx208058%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath208060%_)
                           _%mpath208060%_
                           (last _%mpath208060%_))))))
                 (_%section-string208036%_
                  (lambda (_%n208052%_)
                    (if (number? _%n208052%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n208052%_))
                        (if (symbol? _%n208052%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n208052%_))
                            (if (string? _%n208052%_)
                                _%n208052%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n208052%_)))))))
                 (_%file-name208037%_
                  (lambda (_%path208050%_)
                    (if _%n208031%_
                        (string-append
                         _%path208050%_
                         '"~"
                         (_%section-string208036%_ _%n208031%_)
                         _%ext208032%_)
                        (string-append _%path208050%_ _%ext208032%_))))
                 (_%file-path208038%_
                  (lambda ()
                    (let ((_%$e208044%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e208044%_
                          ((lambda (_%outdir208047%_)
                             (path-expand
                              (_%file-name208037%_
                               (let ((__tmp209864
                                      (##structure-ref
                                       _%ctx208030%_
                                       '1
                                       gx#expander-context::t
                                       '#f)))
                                 (declare (not safe))
                                 (gxc#module-id->path-string __tmp209864)))
                              _%outdir208047%_))
                           _%$e208044%_)
                          (path-expand
                           (_%file-name208037%_
                            (_%module-relative-path208034%_ _%ctx208030%_))
                           (_%module-source-directory208035%_
                            _%ctx208030%_)))))))
          (let ((_%path208040%_ (_%file-path208038%_)))
            (let ((__tmp209865
                   (lambda ()
                     (let ((__tmp209866 (path-directory _%path208040%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp209866)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp209865))
            _%path208040%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx208011%_)
        (letrec ((_%file-name208013%_
                  (lambda (_%id208028%_)
                    (let ((__tmp209867 (gxc#static-module-name _%id208028%_)))
                      (declare (not safe))
                      (##string-append __tmp209867 '".scm"))))
                 (_%file-path208014%_
                  (lambda ()
                    (let* ((_%file208020%_
                            (_%file-name208013%_
                             (##structure-ref
                              _%ctx208011%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e208022%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e208022%_
                          ((lambda (_%outdir208025%_)
                             (path-expand
                              _%file208020%_
                              (path-expand '"static" _%outdir208025%_)))
                           _%$e208022%_)
                          (path-expand _%file208020%_ '"static"))))))
          (let ((_%path208016%_ (_%file-path208014%_)))
            (let ((__tmp209868
                   (lambda ()
                     (let ((__tmp209869 (path-directory _%path208016%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp209869)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp209868))
            _%path208016%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx208004%_ _%opts208005%_)
        (let ((_%$e208007%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts208005%_))))
          (if _%$e208007%_
              _%$e208007%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx208004%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr207994%_)
        (if (string? _%idstr207994%_)
            (let* ((_%str207997%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr207994%_)))
                   (_%strs207999%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str207997%_ '#\/))))
              (declare (not safe))
              (string-join _%strs207999%_ '"__"))
            (if (symbol? _%idstr207994%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr207994%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr207994%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp209870
               (let ((__tmp209871 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp209871 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp209870))))
    (define gxc#invoke__%
      (lambda (_%@@keywords207958%_
               _%stdout-redirection207954207959%_
               _%stderr-redirection207955207961%_
               _%program207963%_
               _%args207964%_)
        (let* ((_%stdout-redirection207966%_
                (if (eq? _%stdout-redirection207954207959%_ absent-value)
                    '#f
                    _%stdout-redirection207954207959%_))
               (_%stderr-redirection207968%_
                (if (eq? _%stderr-redirection207955207961%_ absent-value)
                    '#f
                    _%stderr-redirection207955207961%_)))
          (let ((__tmp209872 (cons _%program207963%_ _%args207964%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp209872))
          (let* ((_%proc207970%_
                  (open-process
                   (cons 'path:
                         (cons _%program207963%_
                               (cons 'arguments:
                                     (cons _%args207964%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection207966%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection207968%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output207975%_
                  (if (or _%stdout-redirection207966%_
                          _%stderr-redirection207968%_)
                      (read-line _%proc207970%_ '#f)
                      '#f))
                 (_%status207978%_ (process-status _%proc207970%_)))
            (let () (declare (not safe)) (##close-port _%proc207970%_))
            (if (zero? _%status207978%_)
                '#!void
                (begin
                  (display _%output207975%_)
                  (let ((__tmp209873 (cons _%program207963%_ _%args207964%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp209873
                     _%status207978%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords207983%_ . _%args207984%_)
        (apply gxc#invoke__%
               _%@@keywords207983%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords207983%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords207983%_
                  'stderr-redirection:
                  absent-value))
               _%args207984%_)))
    (define gxc#invoke
      (lambda _%args207956207990%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args207956207990%_)))))
