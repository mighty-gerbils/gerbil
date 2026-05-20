(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1779289651)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp262716 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp262716))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp262717 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp262717))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path262573%_ _%fun262574%_)
        (with-output-to-file
         (cons 'path: (cons _%path262573%_ gxc#scheme-file-settings))
         _%fun262574%_)))
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
      (lambda (_%gerbil-libdir262568%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir262568%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path262566%_)
        (let ((__tmp262718 (object->string _%path262566%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp262718 '")"))))
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
      (lambda (_%dir262564%_) (delete-file-or-directory _%dir262564%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath262507%_ _%opts262508%_)
        (if (string? _%srcpath262507%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath262507%_)))
        (let* ((_%outdir262510%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts262508%_)))
               (_%invoke-gsc?262512%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts262508%_)))
               (_%target262517%_
                (let ((_%$e262514%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts262508%_))))
                  (if _%$e262514%_ _%$e262514%_ 'C)))
               (_%gsc-options262522%_
                (append (cons '"-target"
                              (cons (symbol->string _%target262517%_) '()))
                        (let ((_%$e262519%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts262508%_))))
                          (if _%$e262519%_ _%$e262519%_ '()))))
               (_%keep-scm?262524%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts262508%_)))
               (_%verbosity262526%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts262508%_)))
               (_%optimize262528%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts262508%_)))
               (_%debug262530%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts262508%_)))
               (_%gen-ssxi262532%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts262508%_)))
               (_%parallel?262534%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts262508%_))))
          (if _%outdir262510%_
              (let ((__tmp262719
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir262510%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp262719))
              '#!void)
          (if _%optimize262528%_
              (let ((__tmp262720
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp262720))
              '#!void)
          (let ((__tmp262721
                 (lambda ()
                   (let ((__tmp262722
                          (lambda ()
                            (let ((__tmp262723
                                   (lambda ()
                                     (let ((__tmp262724
                                            (lambda ()
                                              (let ((__tmp262725
                                                     (lambda ()
                                                       (let ((__tmp262726
                                                              (lambda ()
                                                                (let ((__tmp262727
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp262728
                                        (lambda ()
                                          (let ((__tmp262730
                                                 (lambda ()
                                                   (let ((__tmp262732
                                                          (lambda ()
                                                            (let ((__tmp262734
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp262735
                                    (lambda ()
                                      (let ((__tmp262736
                                             (lambda ()
                                               (let ((__tmp262737
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath262507%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp262738
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath262507%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp262738))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp262737
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp262736
                                         gx#current-compilation-target
                                         _%target262517%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp262735
                                gxc#current-compile-parallel
                                _%parallel?262534%_))))
                          (__tmp262733
                           (let ()
                             (declare (not safe))
                             (gxc#make-bound-identifier-table))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp262734
                       gxc#current-compile-identifiers
                       __tmp262733))))
                 (__tmp262731
                  (cons (cons 'compile-module (cons _%srcpath262507%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp262732
                                                      gxc#current-compile-context
                                                      __tmp262731))))
                                                (__tmp262729
                                                 (gxc#compile-timestamp)))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp262730
                                             gxc#current-compile-timestamp
                                             __tmp262729)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp262728
                                    gxc#current-compile-generate-ssxi
                                    _%gen-ssxi262532%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp262727
                           gxc#current-compile-debug
                           _%debug262530%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp262726
                  gxc#current-compile-optimize
                  _%optimize262528%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp262725
                                                 gxc#current-compile-verbose
                                                 _%verbosity262526%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp262724
                                        gxc#current-compile-keep-scm
                                        _%keep-scm?262524%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp262723
                               gxc#current-compile-gsc-options
                               _%gsc-options262522%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp262722
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?262512%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp262721
             gxc#current-compile-output-dir
             _%outdir262510%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath262557%_)
        (let ((_%opts262559%_ '()))
          (gxc#compile-module__% _%srcpath262557%_ _%opts262559%_))))
    (define gxc#compile-module
      (lambda _g262739_
        (let ((_g262740_ (let () (declare (not safe)) (##length _g262739_))))
          (cond ((let () (declare (not safe)) (##fx= _g262740_ 1))
                 (apply gxc#compile-module__0 _g262739_))
                ((let () (declare (not safe)) (##fx= _g262740_ 2))
                 (apply gxc#compile-module__% _g262739_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g262739_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath262456%_ _%opts262457%_)
        (if (string? _%srcpath262456%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath262456%_)))
        (let* ((_%outdir262459%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts262457%_)))
               (_%invoke-gsc?262461%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts262457%_)))
               (_%target262466%_
                (let ((_%$e262463%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts262457%_))))
                  (if _%$e262463%_ _%$e262463%_ 'C)))
               (_%gsc-options262471%_
                (append (cons '"-target"
                              (cons (symbol->string _%target262466%_) '()))
                        (let ((_%$e262468%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts262457%_))))
                          (if _%$e262468%_ _%$e262468%_ '()))))
               (_%keep-scm?262473%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts262457%_)))
               (_%verbosity262475%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts262457%_)))
               (_%debug262477%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts262457%_)))
               (_%parallel?262479%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts262457%_))))
          (if _%outdir262459%_
              (let ((__tmp262741
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir262459%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp262741))
              '#!void)
          (let ((__tmp262742
                 (lambda ()
                   (let ((__tmp262743
                          (lambda ()
                            (let ((__tmp262744
                                   (lambda ()
                                     (let ((__tmp262745
                                            (lambda ()
                                              (let ((__tmp262746
                                                     (lambda ()
                                                       (let ((__tmp262747
                                                              (lambda ()
                                                                (let ((__tmp262748
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp262750
                                        (lambda ()
                                          (let ((__tmp262752
                                                 (lambda ()
                                                   (let ((__tmp262754
                                                          (lambda ()
                                                            (let ((__tmp262755
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp262756
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath262456%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp262757
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath262456%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp262757))
                                       _%opts262457%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp262756
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp262755
                       gxc#current-compile-parallel
                       _%parallel?262479%_))))
                 (__tmp262753
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp262754
                                                      gxc#current-compile-identifiers
                                                      __tmp262753))))
                                                (__tmp262751
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath262456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp262752
                                             gxc#current-compile-context
                                             __tmp262751))))
                                       (__tmp262749 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp262750
                                    gxc#current-compile-timestamp
                                    __tmp262749)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp262748
                           gxc#current-compile-debug
                           _%debug262477%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp262747
                  gxc#current-compile-verbose
                  _%verbosity262475%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp262746
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?262473%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp262745
                                        gxc#current-compile-gsc-options
                                        _%gsc-options262471%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp262744
                               gx#current-compilation-target
                               _%target262466%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp262743
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?262461%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp262742
             gxc#current-compile-output-dir
             _%outdir262459%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath262499%_)
        (let ((_%opts262501%_ '()))
          (gxc#compile-exe__% _%srcpath262499%_ _%opts262501%_))))
    (define gxc#compile-exe
      (lambda _g262758_
        (let ((_g262759_ (let () (declare (not safe)) (##length _g262758_))))
          (cond ((let () (declare (not safe)) (##fx= _g262759_ 1))
                 (apply gxc#compile-exe__0 _g262758_))
                ((let () (declare (not safe)) (##fx= _g262759_ 2))
                 (apply gxc#compile-exe__% _g262758_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g262758_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx262452%_ _%opts262453%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts262453%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx262452%_
             _%opts262453%_)
            (gxc#compile-executable-module/separate
             _%ctx262452%_
             _%opts262453%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx262178%_ _%opts262179%_)
        (letrec ((_%generate-stub262181%_
                  (lambda (_%builtin-modules262448%_)
                    (let ((_%mod-main262450%_
                           (gxc#find-runtime-symbol _%ctx262178%_ 'main)))
                      (let ((__tmp262760
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules262448%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp262760))
                      (let ((__tmp262761
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main262450%_
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
                        (##write __tmp262761))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts262182%_
                  (lambda (_%gerbil-libdir262446%_)
                    (let ((__tmp262762
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir262446%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp262762 read))))
                 (_%replace-extension262183%_
                  (lambda (_%path262443%_ _%ext262444%_)
                    (string-append
                     (path-strip-extension _%path262443%_)
                     _%ext262444%_)))
                 (_%replace-extension-with-c262184%_
                  (lambda (_%path262441%_)
                    (_%replace-extension262183%_ _%path262441%_ '".c")))
                 (_%replace-extension-with-object262185%_
                  (lambda (_%path262439%_)
                    (_%replace-extension262183%_
                     _%path262439%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?262186%_
                  (lambda (_%ctx262437%_)
                    (if (_%exclude-module?262188%_ _%ctx262437%_)
                        '#f
                        (not (_%libgerbil-module?262187%_ _%ctx262437%_)))))
                 (_%libgerbil-module?262187%_
                  (lambda (_%ctx262430%_)
                    (let ((_%id-str262432%_
                           (symbol->string
                            (##structure-ref
                             _%ctx262430%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?262188%_ _%id-str262432%_)
                          '#f
                          (let ((_%$e262434%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str262432%_))))
                            (if _%$e262434%_
                                _%$e262434%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str262432%_))))))))
                 (_%exclude-module?262188%_
                  (lambda (_%ctx-or-str262426%_)
                    (let ((_%str262428%_
                           (if (string? _%ctx-or-str262426%_)
                               _%ctx-or-str262426%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str262426%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str262428%_))))
                 (_%not-file-empty?262189%_
                  (lambda (_%path262424%_)
                    (not (gxc#file-empty? _%path262424%_))))
                 (_%fold-libgerbil-runtime-scm262190%_
                  (lambda (_%gerbil-staticdir262417%_ _%libgerbil-scm262418%_)
                    (let ((_%gerbil-runtime-scm262422%_
                           (let ((__tmp262763
                                  (lambda (_%rtm262420%_)
                                    (path-expand
                                     (let ((__tmp262764
                                            (let ((__tmp262765
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm262420%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp262765
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp262764 '".scm"))
                                     _%gerbil-staticdir262417%_))))
                             (declare (not safe))
                             (##map __tmp262763 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates262191%_
                       (append _%gerbil-runtime-scm262422%_
                               _%libgerbil-scm262418%_)))))
                 (_%remove-duplicates262191%_
                  (lambda (_%strlst262377%_)
                    (let _%loop262379%_ ((_%rest262381%_ _%strlst262377%_)
                                         (_%result262382%_ '()))
                      (let* ((_%rest262383262391%_ _%rest262381%_)
                             (_%else262385262399%_
                              (lambda () (reverse! _%result262382%_)))
                             (_%K262387262405%_
                              (lambda (_%rest262402%_ _%path262403%_)
                                (if (member _%path262403%_ _%result262382%_)
                                    (_%loop262379%_
                                     _%rest262402%_
                                     _%result262382%_)
                                    (_%loop262379%_
                                     _%rest262402%_
                                     (cons _%path262403%_
                                           _%result262382%_))))))
                        (if (pair? _%rest262383262391%_)
                            (let ((_%hd262388262408%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest262383262391%_)))
                                  (_%tl262389262410%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest262383262391%_))))
                              (let* ((_%path262413%_ _%hd262388262408%_)
                                     (_%rest262415%_ _%tl262389262410%_))
                                (_%K262387262405%_
                                 _%rest262415%_
                                 _%path262413%_)))
                            (_%else262385262399%_))))))
                 (_%compile-stub262192%_
                  (lambda (_%output-scm262199%_ _%output-bin262200%_)
                    (let* ((_%gerbil-home262202%_
                            (let ((__tmp262766
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp262766)))
                           (_%gerbil-libdir262204%_
                            (path-expand '"lib" _%gerbil-home262202%_))
                           (_%gerbil-staticdir262206%_
                            (path-expand '"static" _%gerbil-libdir262204%_))
                           (_%deps262208%_
                            (gxc#find-runtime-module-deps _%ctx262178%_))
                           (_%libgerbil-deps262210%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?262187%_
                               _%deps262208%_)))
                           (_%libgerbil-scm262212%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps262210%_)))
                           (_%libgerbil-scm262214%_
                            (_%fold-libgerbil-runtime-scm262190%_
                             _%gerbil-staticdir262206%_
                             _%libgerbil-scm262212%_))
                           (_%libgerbil-c262216%_
                            (map _%replace-extension-with-c262184%_
                                 _%libgerbil-scm262214%_))
                           (_%libgerbil-o262218%_
                            (map _%replace-extension-with-object262185%_
                                 _%libgerbil-scm262214%_))
                           (_%src-deps262220%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?262186%_
                               _%deps262208%_)))
                           (_%src-deps-scm262222%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps262220%_)))
                           (_%src-deps-scm262224%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?262189%_
                               _%src-deps-scm262222%_)))
                           (_%src-deps-scm262226%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm262224%_)))
                           (_%src-deps-c262228%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c262184%_
                                     _%src-deps-scm262226%_)))
                           (_%src-deps-o262230%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object262185%_
                                     _%src-deps-scm262226%_)))
                           (_%src-bin-scm262232%_
                            (gxc#find-static-module-file _%ctx262178%_))
                           (_%src-bin-scm262234%_
                            (path-expand _%src-bin-scm262232%_))
                           (_%src-bin-c262236%_
                            (_%replace-extension-with-c262184%_
                             _%src-bin-scm262234%_))
                           (_%src-bin-o262238%_
                            (_%replace-extension-with-object262185%_
                             _%src-bin-scm262234%_))
                           (_%output-bin262240%_
                            (path-expand _%output-bin262200%_))
                           (_%output-scm262242%_
                            (path-expand _%output-scm262199%_))
                           (_%output-c262244%_
                            (_%replace-extension-with-c262184%_
                             _%output-scm262242%_))
                           (_%output-o262246%_
                            (_%replace-extension-with-object262185%_
                             _%output-scm262242%_))
                           (_%output_-c262248%_
                            (_%replace-extension262183%_
                             _%output-scm262242%_
                             '"_.c"))
                           (_%output_-o262250%_
                            (_%replace-extension262183%_
                             _%output-scm262242%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts262252%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts262254%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts262256%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir262206%_))
                           (_%output-ld-opts262258%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts262260%_
                            (_%get-libgerbil-ld-opts262182%_
                             _%gerbil-libdir262204%_))
                           (_%rpath262262%_
                            (gxc#gerbil-rpath _%gerbil-libdir262204%_))
                           (_%builtin-modules262266%_
                            (_%remove-duplicates262191%_
                             (let ((__tmp262767
                                    (let ((__tmp262769
                                           (lambda (_%mod262264%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod262264%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp262768
                                           (cons _%ctx262178%_
                                                 _%deps262208%_)))
                                      (declare (not safe))
                                      (##map __tmp262769 __tmp262768))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp262767)))))
                      (letrec ((_%compile-obj262269%_
                                (lambda (_%scm-path262276%_ _%c-path262277%_)
                                  (let* ((_%o-path262279%_
                                          (_%replace-extension262183%_
                                           _%c-path262277%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock262281%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path262279%_
                                             '".lock")))
                                         (_%locked262283%_ '#f)
                                         (_%unlock262286%_
                                          (lambda ()
                                            (close-port _%locked262283%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock262281%_)))))
                                    (let _%retry262289%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock262281%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry262289%_))
                                          (begin
                                            (set! _%locked262283%_
                                                  (let* ((_%handler262292%_
                                                          false)
                                                         (_%thunk262296%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock262281%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler262301%_ _%handler262292%_)
                 (_%thunk262357%_ _%thunk262296%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler262301%_
                                                     _%thunk262357%_)))
                                            (if _%locked262283%_
                                                '#!void
                                                (_%retry262289%_)))))
                                    (let ((__tmp262771
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path262279%_)))
                                                     (not _%scm-path262276%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path262276%_
                                                        _%o-path262279%_)))
                                                 (let ((_%gsc-cc-opts262374%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp262772
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp262773 (cons _%c-path262277%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp262773
                            _%gsc-static-opts262256%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp262772 _%gsc-cc-opts262374%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp262770
                                           (lambda () (_%unlock262286%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp262771
                                       __tmp262770))))))
                        (let ((__tmp262774
                               (lambda ()
                                 (let ((__tmp262775
                                        (path-directory _%output-bin262240%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp262775)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp262774))
                        (gxc#with-output-to-scheme-file
                         _%output-scm262242%_
                         (lambda ()
                           (_%generate-stub262181%_
                            _%builtin-modules262266%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it262274%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp262776
                                                   (let ((__tmp262777
                                                          (let ((__tmp262778
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm262234%_
                               (cons _%output-scm262242%_ '()))))
                    (declare (not safe))
                    (foldr__0 cons __tmp262778 _%src-deps-scm262226%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr__0
                                                      cons
                                                      __tmp262777
                                                      _%libgerbil-c262216%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               __tmp262776
                                               _%gsc-link-opts262252%_))))
                                     (for-each
                                      _%compile-obj262269%_
                                      (let ((__tmp262779
                                             (cons _%src-bin-scm262234%_
                                                   (cons _%output-scm262242%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp262779
                                         _%src-deps-scm262226%_))
                                      (let ((__tmp262780
                                             (cons _%src-bin-c262236%_
                                                   (cons _%output-c262244%_
                                                         (cons _%output_-c262248%_
                                                               '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp262780
                                         _%src-deps-c262228%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin262240%_
                                                        (let ((__tmp262781
                                                               (cons _%src-bin-o262238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o262246%_
                                   (cons _%output_-o262250%_
                                         (let ((__tmp262782
                                                (let ((__tmp262783
                                                       (let ((__tmp262785
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir262204%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts262260%_))))
                     (__tmp262784
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath262262%_ '())
                          '())))
                 (declare (not safe))
                 (foldr__0 cons __tmp262785 __tmp262784))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr__0
                                                   cons
                                                   __tmp262783
                                                   _%output-ld-opts262258%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            cons
                                            __tmp262782
                                            _%libgerbil-o262218%_)))))))
                  (declare (not safe))
                  (foldr__0 cons __tmp262781 _%src-deps-o262230%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp262786
                                            (cons _%output-c262244%_
                                                  (cons _%output_-c262248%_
                                                        (cons _%output-o262246%_
                                                              (cons _%output_-o262250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp262786)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it262274%_))
                                  (_%compile-it262274%_)))
                            '#!void))))))
          (let* ((_%output-bin262194%_
                  (gxc#compile-exe-output-file _%ctx262178%_ _%opts262179%_))
                 (_%output-scm262196%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin262194%_ '"__exe.scm"))))
            (_%compile-stub262192%_
             _%output-scm262196%_
             _%output-bin262194%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx262000%_ _%opts262001%_)
        (letrec ((_%reset-declare262003%_
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
                 (_%generate-stub262004%_
                  (lambda (_%deps262169%_)
                    (let ((_%mod-main262171%_
                           (gxc#find-runtime-symbol _%ctx262000%_ 'main))
                          (_%reset-decl262172%_ (_%reset-declare262003%_))
                          (_%user-decl262173%_ (_%user-declare262005%_)))
                      (for-each
                       (lambda (_%dep262175%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl262172%_))
                         (newline)
                         (if _%user-decl262173%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl262173%_))
                               (newline))
                             '#!void)
                         (let ((__tmp262787
                                (cons 'include (cons _%dep262175%_ '()))))
                           (declare (not safe))
                           (##write __tmp262787))
                         (newline))
                       _%deps262169%_)
                      (let ((__tmp262788
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main262171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp262788))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare262005%_
                  (lambda ()
                    (let* ((_%gsc-opts262074%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts262001%_)))
                           (_%gsc-prelude262076%_
                            (if _%gsc-opts262074%_
                                (member '"-prelude" _%gsc-opts262074%_)
                                '#f))
                           (_%gsc-prelude262078%_
                            (if _%gsc-prelude262076%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude262076%_)))
                                '#f)))
                      (let _%lp262081%_ ((_%rest262083%_
                                          (cons _%gsc-prelude262078%_ '()))
                                         (_%user-decls262084%_ '()))
                        (let* ((_%rest262085262093%_ _%rest262083%_)
                               (_%else262087262101%_
                                (lambda ()
                                  (if (null? _%user-decls262084%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls262084%_)))))
                               (_%K262089262157%_
                                (lambda (_%rest262104%_ _%expr262105%_)
                                  (let* ((_%expr262106262118%_ _%expr262105%_)
                                         (_%else262109262126%_
                                          (lambda ()
                                            (_%lp262081%_
                                             _%rest262104%_
                                             _%user-decls262084%_))))
                                    (let ((_%K262114262147%_
                                           (lambda (_%decls262145%_)
                                             (_%lp262081%_
                                              _%rest262104%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls262084%_
                                                 _%decls262145%_)))))
                                          (_%K262111262132%_
                                           (lambda (_%exprs262130%_)
                                             (_%lp262081%_
                                              (append _%exprs262130%_
                                                      _%rest262104%_)
                                              _%user-decls262084%_))))
                                      (if (pair? _%expr262106262118%_)
                                          (let ((_%tl262116262152%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr262106262118%_)))
                                                (_%hd262115262150%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr262106262118%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd262115262150%_
                                                         'declare))
                                                (let ((_%decls262155%_
                                                       _%tl262116262152%_))
                                                  (_%K262114262147%_
                                                   _%decls262155%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd262115262150%_
                                                             'begin))
                                                    (let ((_%exprs262140%_
                                                           _%tl262116262152%_))
                                                      (_%K262111262132%_
                                                       _%exprs262140%_))
                                                    (_%else262109262126%_))))
                                          (_%else262109262126%_)))))))
                          (if (pair? _%rest262085262093%_)
                              (let ((_%hd262090262160%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest262085262093%_)))
                                    (_%tl262091262162%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest262085262093%_))))
                                (let* ((_%expr262165%_ _%hd262090262160%_)
                                       (_%rest262167%_ _%tl262091262162%_))
                                  (_%K262089262157%_
                                   _%rest262167%_
                                   _%expr262165%_)))
                              (_%else262087262101%_)))))))
                 (_%compile-stub262006%_
                  (lambda (_%output-scm262013%_ _%output-bin262014%_)
                    (let* ((_%gerbil-home262016%_
                            (let ((__tmp262789
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp262789)))
                           (_%gerbil-libdir262018%_
                            (path-expand '"lib" _%gerbil-home262016%_))
                           (_%runtime262020%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp262022%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home262016%_))
                           (_%include-gambit-sharp262024%_
                            (gxc#include-source _%gambit-sharp262022%_))
                           (_%bin-scm262026%_
                            (gxc#find-static-module-file _%ctx262000%_))
                           (_%deps262028%_
                            (gxc#find-runtime-module-deps _%ctx262000%_))
                           (_%deps262030%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps262028%_)))
                           (_%deps262035%_
                            (let ((__tmp262790
                                   (lambda (_%$obj262032%_)
                                     (not (gxc#file-empty? _%$obj262032%_)))))
                              (declare (not safe))
                              (##filter __tmp262790 _%deps262030%_)))
                           (_%deps262039%_
                            (let ((__tmp262791
                                   (lambda (_%f262037%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f262037%_
                                             _%runtime262020%_))))))
                              (declare (not safe))
                              (##filter __tmp262791 _%deps262035%_)))
                           (_%output-base262041%_
                            (let ((__tmp262792
                                   (path-strip-extension
                                    _%output-scm262013%_)))
                              (declare (not safe))
                              (##string-append __tmp262792)))
                           (_%output-c262043%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base262041%_ '".c")))
                           (_%output-o262045%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base262041%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_262047%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base262041%_ '"_.c")))
                           (_%output-o_262049%_
                            (let ((__tmp262793
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base262041%_
                               __tmp262793)))
                           (_%gsc-link-opts262051%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts262053%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts262055%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir262018%_)))
                           (_%output-ld-opts262057%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros262059%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp262024%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp262024%_
                                            '()))))
                           (_%gsc-link-opts262061%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts262051%_
                               _%gsc-gx-macros262059%_)))
                           (_%rpath262063%_
                            (gxc#gerbil-rpath _%gerbil-libdir262018%_))
                           (_%default-ld-options262065%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp262794
                             (lambda ()
                               (let ((__tmp262795
                                      (path-directory _%output-bin262014%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp262795)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp262794))
                      (gxc#with-output-to-scheme-file
                       _%output-scm262013%_
                       (lambda ()
                         (_%generate-stub262004%_
                          (let ((__tmp262796
                                 (let ((__tmp262797
                                        (cons _%bin-scm262026%_ '())))
                                   (declare (not safe))
                                   (foldr__0
                                    cons
                                    __tmp262797
                                    _%deps262039%_))))
                            (declare (not safe))
                            (foldr__0 cons __tmp262796 _%runtime262020%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it262071%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_262047%_
                                                      (let ((__tmp262798
                                                             (cons _%output-scm262013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp262798 _%gsc-link-opts262061%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp262799
                                                 (let ((__tmp262800
                                                        (cons _%output-c262043%_
                                                              (cons _%output-c_262047%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    cons
                                                    __tmp262800
                                                    _%gsc-static-opts262055%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp262799
                                             _%gsc-cc-opts262053%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin262014%_
                                                      (cons _%output-o262045%_
                                                            (cons _%output-o_262049%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp262801
                                 (let ((__tmp262803
                                        (cons '"-L"
                                              (cons _%gerbil-libdir262018%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options262065%_))))
                                       (__tmp262802
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath262063%_ '())
                                            '())))
                                   (declare (not safe))
                                   (foldr__0 cons __tmp262803 __tmp262802))))
                            (declare (not safe))
                            (foldr__0
                             cons
                             __tmp262801
                             _%output-ld-opts262057%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it262071%_))
                                (_%compile-it262071%_)))
                          '#!void)))))
          (let* ((_%output-bin262008%_
                  (gxc#compile-exe-output-file _%ctx262000%_ _%opts262001%_))
                 (_%output-scm262010%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin262008%_ '"__exe.scm"))))
            (_%compile-stub262006%_
             _%output-scm262010%_
             _%output-bin262008%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx261949%_ _%id261950%_)
        (let ((_%$e261996%_
               (let ((__tmp262805
                      (lambda (_%e261951261953%_)
                        (let* ((_%e261951261955261965%_ _%e261951261953%_)
                               (_%else261957261973%_ (lambda () '#f))
                               (_%K261959261977%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e261951261955261965%_
                                 'gx#module-export::t))
                              (let* ((_%e261960261980%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e261951261955261965%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e261961261983%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e261951261955261965%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e261962261986%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e261951261955261965%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e261962261986%_ '0))
                                    (let ((_%e261963261989%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e261951261955261965%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if (eq? _%e261963261989%_ _%id261950%_)
                                          (_%K261959261977%_)
                                          (_%else261957261973%_)))
                                    (_%else261957261973%_)))
                              (_%else261957261973%_)))))
                     (__tmp262804
                      (##structure-ref
                       _%ctx261949%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp262805 __tmp262804))))
          (if _%$e261996%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e261996%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx261940%_ _%id261941%_)
        (let ((_%$e261943%_
               (gxc#find-export-binding _%ctx261940%_ _%id261941%_)))
          (if _%$e261943%_
              (let ()
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%$e261943%_
                       'gx#runtime-binding::t))
                    '#!void
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"export is not a runtime binding"
                       _%id261941%_)))
                (##structure-ref _%$e261943%_ '1 gx#binding::t '#f))
              (let ((__tmp262806
                     (##structure-ref
                      _%ctx261940%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp262806
                 _%id261941%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx261806%_)
        (letrec* ((_%ht261808%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template261809%_
                   (lambda (_%in261885%_ _%phi261886%_)
                     (let ((_%iphi261888%_
                            (fx+ _%phi261886%_
                                 (##direct-structure-ref
                                  _%in261885%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports261889%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in261885%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp261891%_ ((_%rest261893%_ _%imports261889%_)
                                          (_%r261894%_ '()))
                         (let* ((_%rest261895261903%_ _%rest261893%_)
                                (_%else261897261911%_ (lambda () _%r261894%_))
                                (_%K261899261928%_
                                 (lambda (_%rest261914%_ _%in261915%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in261915%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi261888%_))
                                           (_%lp261891%_
                                            _%rest261914%_
                                            (cons _%in261915%_ _%r261894%_))
                                           (_%lp261891%_
                                            _%rest261914%_
                                            _%r261894%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in261915%_
                                              'gx#module-import::t))
                                           (let ((_%iphi261919%_
                                                  (fx+ _%phi261886%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in261915%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi261919%_))
                                                 (_%lp261891%_
                                                  _%rest261914%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in261915%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r261894%_))
                                                 (_%lp261891%_
                                                  _%rest261914%_
                                                  _%r261894%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in261915%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi261922%_
                                                      (fx+ _%iphi261888%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in261915%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi261922%_))
                                                     (_%lp261891%_
                                                      _%rest261914%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in261915%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r261894%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi261922%_))
                                                         (_%lp261891%_
                                                          _%rest261914%_
                                                          (let ((__tmp262807
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template261809%_
                          _%in261915%_
                          _%iphi261888%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r261894%_ __tmp262807)))
                 (_%lp261891%_ _%rest261914%_ _%r261894%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp261891%_
                                                _%rest261914%_
                                                _%r261894%_)))))))
                           (if (pair? _%rest261895261903%_)
                               (let ((_%hd261900261931%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest261895261903%_)))
                                     (_%tl261901261933%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest261895261903%_))))
                                 (let* ((_%in261936%_ _%hd261900261931%_)
                                        (_%rest261938%_ _%tl261901261933%_))
                                   (_%K261899261928%_
                                    _%rest261938%_
                                    _%in261936%_)))
                               (_%else261897261911%_)))))))
                  (_%find-deps261810%_
                   (lambda (_%rest261818%_ _%deps261819%_)
                     (let* ((_%rest261820261828%_ _%rest261818%_)
                            (_%else261822261836%_ (lambda () _%deps261819%_))
                            (_%K261824261873%_
                             (lambda (_%rest261839%_ _%hd261840%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd261840%_
                                      'gx#module-context::t))
                                   (let ((_%id261843%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd261840%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports261844%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd261840%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht261808%_
                                            _%id261843%_))
                                         (_%find-deps261810%_
                                          _%rest261839%_
                                          _%deps261819%_)
                                         (let ((_%$e261847%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd261840%_))))
                                           (if _%$e261847%_
                                               (let ((_%xdeps261852%_
                                                      (_%find-deps261810%_
                                                       (cons _%$e261847%_
                                                             _%imports261844%_)
                                                       _%deps261819%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht261808%_
                                                    _%id261843%_
                                                    _%hd261840%_))
                                                 (_%find-deps261810%_
                                                  _%rest261839%_
                                                  (cons _%hd261840%_
                                                        _%xdeps261852%_)))
                                               (let ((_%xdeps261855%_
                                                      (_%find-deps261810%_
                                                       _%imports261844%_
                                                       _%deps261819%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht261808%_
                                                    _%id261843%_
                                                    _%hd261840%_))
                                                 (_%find-deps261810%_
                                                  _%rest261839%_
                                                  (cons _%hd261840%_
                                                        _%xdeps261855%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd261840%_
                                          'gx#prelude-context::t))
                                       (let ((_%id261858%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd261840%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht261808%_
                                                _%id261858%_))
                                             (_%find-deps261810%_
                                              _%rest261839%_
                                              _%deps261819%_)
                                             (let ((_%xdeps261862%_
                                                    (_%find-deps261810%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd261840%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps261819%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht261808%_
                                                      _%id261858%_))
                                                   (_%find-deps261810%_
                                                    _%rest261839%_
                                                    _%xdeps261862%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht261808%_
                                                        _%id261858%_
                                                        _%hd261840%_))
                                                     (_%find-deps261810%_
                                                      _%rest261839%_
                                                      (cons _%hd261840%_
                                                            _%xdeps261862%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd261840%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd261840%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps261810%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd261840%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest261839%_)
                                                _%deps261819%_)
                                               (_%find-deps261810%_
                                                _%rest261839%_
                                                _%deps261819%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd261840%_
                                                  'gx#module-export::t))
                                               (_%find-deps261810%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd261840%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest261839%_)
                                                _%deps261819%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd261840%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd261840%_ '2 '#f '#f)))
               (_%find-deps261810%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd261840%_ '1 '#f '#f))
                      _%rest261839%_)
                _%deps261819%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd261840%_ '2 '#f '#f)))
                   (let ((_%xdeps261869%_
                          (_%import-set-template261809%_ _%hd261840%_ '0)))
                     (_%find-deps261810%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest261839%_ _%xdeps261869%_))
                      _%deps261819%_))
                   (_%find-deps261810%_ _%rest261839%_ _%deps261819%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd261840%_))))))))))
                       (if (pair? _%rest261820261828%_)
                           (let ((_%hd261825261876%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest261820261828%_)))
                                 (_%tl261826261878%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest261820261828%_))))
                             (let* ((_%hd261881%_ _%hd261825261876%_)
                                    (_%rest261883%_ _%tl261826261878%_))
                               (_%K261824261873%_
                                _%rest261883%_
                                _%hd261881%_)))
                           (_%else261822261836%_))))))
          (let ((__tmp262808
                 (filter gx#expander-context-id
                         (_%find-deps261810%_
                          (let ((_%$e261812%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx261806%_))))
                            (if _%$e261812%_
                                (cons _%$e261812%_
                                      (##structure-ref
                                       _%ctx261806%_
                                       '8
                                       gx#module-context::t
                                       '#f))
                                (##structure-ref
                                 _%ctx261806%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp262808)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx261736%_)
        (let* ((_%context-id261738%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx261736%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx261736%_ '1 '#f '#f))
                    (string->symbol _%ctx261736%_)))
               (_%scm261740%_
                (let ((__tmp262809
                       (gxc#static-module-name _%context-id261738%_)))
                  (declare (not safe))
                  (##string-append __tmp262809 '".scm")))
               (_%dirs261742%_ (let () (declare (not safe)) (load-path)))
               (_%dirs261748%_
                (let ((_%user-libpath261744%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath261744%_
                      (let ((_%user-libpath261746%_
                             (path-expand '"lib" _%user-libpath261744%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath261746%_ _%dirs261742%_))
                            _%dirs261742%_
                            (cons _%user-libpath261746%_ _%dirs261742%_)))
                      _%dirs261742%_)))
               (_%dirs261758%_
                (let ((_%$e261750%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e261750%_
                      (cons _%$e261750%_ _%dirs261748%_)
                      _%dirs261748%_)))
               (_%dirs261764%_
                (let ((__tmp262810
                       (lambda (_%g261759261761%_)
                         (path-expand '"static" _%g261759261761%_))))
                  (declare (not safe))
                  (##map __tmp262810 _%dirs261758%_))))
          (let _%lp261767%_ ((_%rest261769%_ _%dirs261764%_))
            (let* ((_%rest261770261778%_ _%rest261769%_)
                   (_%else261772261786%_
                    (lambda ()
                      (let ((__tmp262811
                             (##structure-ref
                              _%ctx261736%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp262811
                         _%scm261740%_))))
                   (_%K261774261794%_
                    (lambda (_%rest261789%_ _%dir261790%_)
                      (let ((_%path261792%_
                             (path-expand _%scm261740%_ _%dir261790%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path261792%_))
                            _%path261792%_
                            (_%lp261767%_ _%rest261789%_))))))
              (if (pair? _%rest261770261778%_)
                  (let ((_%hd261775261797%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest261770261778%_)))
                        (_%tl261776261799%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest261770261778%_))))
                    (let* ((_%dir261802%_ _%hd261775261797%_)
                           (_%rest261804%_ _%tl261776261799%_))
                      (_%K261774261794%_ _%rest261804%_ _%dir261802%_)))
                  (_%else261772261786%_)))))))
    (define gxc#file-empty?
      (lambda (_%path261734%_)
        (zero? (let ((__tmp262812 (file-info _%path261734%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp262812)))))
    (define gxc#compile-top-module
      (lambda (_%ctx261725%_)
        (let ((__tmp262813
               (lambda ()
                 (let ((__tmp262814
                        (lambda ()
                          (let ((__tmp262815
                                 (lambda ()
                                   (let ((__tmp262817
                                          (lambda ()
                                            (let ((__tmp262819
                                                   (lambda ()
                                                     (let ((__tmp262821
                                                            (lambda ()
                                                              (let ((__tmp262822
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx261725%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp262822))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp262823
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx261725%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp262823))
                          '#!void)
                      (gxc#collect-bindings _%ctx261725%_)
                      (gxc#compile-runtime-code _%ctx261725%_)
                      (gxc#compile-meta-code _%ctx261725%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx261725%_)
                          '#!void)))
                   (__tmp262820
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
                __tmp262821
                gxc#current-compile-runtime-names
                __tmp262820))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp262818
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp262819
                                               gxc#current-compile-runtime-sections
                                               __tmp262818))))
                                         (__tmp262816
                                          (let ((__obj262714
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj262714))
                                            __obj262714)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp262817
                                      gxc#current-compile-symbol-table
                                      __tmp262816)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp262815
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp262814
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp262813
           gx#current-expander-context
           _%ctx261725%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx261723%_)
        (let ((__tmp262824
               (##structure-ref _%ctx261723%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp262824))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx261668%_)
        (letrec ((_%compile1261670%_
                  (lambda (_%ctx261712%_)
                    (let* ((_%code261714%_
                            (##structure-ref
                             _%ctx261712%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm261718%_
                            (let ((_%idstr261716%_
                                   (let ((__tmp262825
                                          (##structure-ref
                                           _%ctx261712%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp262825))))
                              (declare (not safe))
                              (##string-append _%idstr261716%_ '"~0")))
                           (_%rtc?261720%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code261714%_))))
                      (if _%rtc?261720%_
                          (let ((__tmp262826
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp262826
                             _%ctx261712%_
                             _%rtm261718%_))
                          '#!void)
                      (_%generate-runtime-code261672%_
                       _%ctx261712%_
                       _%code261714%_
                       (if _%rtc?261720%_ _%rtm261718%_ '#f)))))
                 (_%context-timestamp261671%_
                  (lambda (_%ctx261710%_)
                    (let ((__tmp262827
                           (let ((__tmp262828
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx261710%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp262828 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp262827))))
                 (_%generate-runtime-code261672%_
                  (lambda (_%ctx261679%_ _%code261680%_ _%rtm261681%_)
                    (let* ((_%runtime-code?261683%_ (if _%rtm261681%_ '#t '#f))
                           (_%lifts261685%_ (box '()))
                           (_%runtime-code261691%_
                            (if _%runtime-code?261683%_
                                (let ((__tmp262829
                                       (lambda ()
                                         (let ((__tmp262830
                                                (lambda ()
                                                  (let ((__tmp262831
                                                         (lambda ()
                                                           (let ((__tmp262833
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code261680%_))))
                         (__tmp262832
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp262833
                      gxc#current-compile-marks
                      __tmp262832)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp262831
                                                     gxc#current-compile-lift
                                                     _%lifts261685%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp262830
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp262829
                                   gx#current-expander-context
                                   _%ctx261679%_))
                                '#f))
                           (_%runtime-code261693%_
                            (if _%runtime-code?261683%_
                                (if (null? (unbox _%lifts261685%_))
                                    _%runtime-code261691%_
                                    (cons 'begin
                                          (let ((__tmp262835
                                                 (cons _%runtime-code261691%_
                                                       '()))
                                                (__tmp262834
                                                 (reverse (unbox _%lifts261685%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp262835
                                             __tmp262834))))
                                '#f))
                           (_%runtime-code261695%_
                            (if _%runtime-code?261683%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp261671%_
                                                         _%ctx261679%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code261693%_ '())))
                                '#f))
                           (_%loader-code261698%_
                            (let ((__tmp262836
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code261680%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp262836
                               gx#current-expander-context
                               _%ctx261679%_)))
                           (_%loader-code261700%_
                            (cons 'begin
                                  (cons _%loader-code261698%_
                                        (cons (if _%runtime-code?261683%_
                                                  (cons 'load-module
                                                        (cons _%rtm261681%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0261702%_
                            (gxc#compile-output-file _%ctx261679%_ '0 '".scm"))
                           (_%scmrt261704%_
                            (gxc#compile-output-file
                             _%ctx261679%_
                             '#f
                             '".scm"))
                           (_%scms261706%_
                            (gxc#compile-static-output-file _%ctx261679%_)))
                      (if _%runtime-code?261683%_
                          (gxc#compile-scm-file__0
                           _%scm0261702%_
                           _%runtime-code261695%_)
                          '#!void)
                      (let ((__tmp262837
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt261704%_
                                _%loader-code261700%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp262837
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms261706%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms261706%_))
                          '#!void)
                      (if _%runtime-code?261683%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0261702%_ _%scms261706%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms261706%_ void)))))))
          (let* ((_%all-modules261674%_
                  (cons _%ctx261668%_ (gxc#lift-nested-modules _%ctx261668%_)))
                 (__tmp262838
                  (lambda (_%ctx261676%_)
                    (let ((__tmp262839
                           (lambda () (_%compile1261670%_ _%ctx261676%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp262839
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp262838 _%all-modules261674%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx261567%_)
        (letrec ((_%compile-ssi261569%_
                  (lambda (_%code261636%_)
                    (let* ((_%path261638%_
                            (gxc#compile-output-file
                             _%ctx261567%_
                             '#f
                             '".ssi"))
                           (_%prelude261650%_
                            (let* ((_%super261640%_
                                    (##structure-ref
                                     _%ctx261567%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e261642%_
                                    (##structure-ref
                                     _%super261640%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e261642%_
                                  (let ()
                                    (declare (not safe))
                                    (make-symbol__1 '":" _%$e261642%_))
                                  ':<root>)))
                           (_%ns261652%_
                            (##structure-ref
                             _%ctx261567%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr261654%_
                            (symbol->string
                             (##structure-ref
                              _%ctx261567%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg261662%_
                            (let ((_%$e261656%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr261654%_ '#\/))))
                              (if _%$e261656%_
                                  (let ((__tmp262840
                                         (substring
                                          _%idstr261654%_
                                          '0
                                          _%$e261656%_)))
                                    (declare (not safe))
                                    (##string->symbol __tmp262840))
                                  '#f)))
                           (_%rt261664%_
                            (let ((__tmp262841
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp262841 _%ctx261567%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path261638%_))
                      (gxc#with-output-to-scheme-file
                       _%path261638%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude261650%_))
                         (if _%pkg261662%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg261662%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns261652%_))
                         (newline)
                         (pretty-print _%code261636%_)
                         (if _%rt261664%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt261664%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi261570%_
                  (lambda (_%part261575%_)
                    (let* ((_%part261576261589%_ _%part261575%_)
                           (_%E261578261593%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part261576261589%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K261579261605%_
                            (lambda (_%code261596%_
                                     _%n261597%_
                                     _%phi261598%_
                                     _%phi-ctx261599%_)
                              (let ((_%code261603%_
                                     (let ((__tmp262842
                                            (lambda ()
                                              (let ((__tmp262843
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code261596%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp262843
                                                 gx#current-expander-phi
                                                 _%phi261598%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp262842
                                        gx#current-expander-context
                                        _%phi-ctx261599%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx261567%_
                                  _%n261597%_
                                  '".scm")
                                 _%code261603%_
                                 '#t)))))
                      (if (pair? _%part261576261589%_)
                          (let ((_%hd261580261608%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part261576261589%_)))
                                (_%tl261581261610%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part261576261589%_))))
                            (let ((_%phi-ctx261613%_ _%hd261580261608%_))
                              (if (pair? _%tl261581261610%_)
                                  (let ((_%hd261582261615%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl261581261610%_)))
                                        (_%tl261583261617%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl261581261610%_))))
                                    (let ((_%phi261620%_ _%hd261582261615%_))
                                      (if (pair? _%tl261583261617%_)
                                          (let ((_%hd261584261622%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl261583261617%_)))
                                                (_%tl261585261624%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl261583261617%_))))
                                            (let ((_%n261627%_
                                                   _%hd261584261622%_))
                                              (if (pair? _%tl261585261624%_)
                                                  (let ((_%hd261586261629%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl261585261624%_)))
                                                        (_%tl261587261631%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl261585261624%_))))
                                                    (let ((_%code261634%_
                                                           _%hd261586261629%_))
                                                      (if (null? _%tl261587261631%_)
                                                          (_%K261579261605%_
                                                           _%code261634%_
                                                           _%n261627%_
                                                           _%phi261620%_
                                                           _%phi-ctx261613%_)
                                                          (_%E261578261593%_))))
                                                  (_%E261578261593%_))))
                                          (_%E261578261593%_))))
                                  (_%E261578261593%_))))
                          (_%E261578261593%_))))))
          (let ((_g262844_ (gxc#generate-meta-code _%ctx261567%_)))
            (begin
              (let ((_g262845_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g262844_)
                           (##values-length _g262844_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g262845_ 2)))
                    (error "Context expects 2 values" _g262845_)))
              (let ((_%ssi-code261572%_
                     (let () (declare (not safe)) (##values-ref _g262844_ 0)))
                    (_%phi-code261573%_
                     (let () (declare (not safe)) (##values-ref _g262844_ 1))))
                (begin
                  (_%compile-ssi261569%_ _%ssi-code261572%_)
                  (for-each _%compile-phi261570%_ _%phi-code261573%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx261549%_)
        (let* ((_%path261551%_
                (gxc#compile-output-file _%ctx261549%_ '#f '".ssxi.ss"))
               (_%code261553%_
                (let ((__tmp262846
                       (##structure-ref
                        _%ctx261549%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp262846)))
               (_%idstr261555%_
                (symbol->string
                 (##structure-ref
                  _%ctx261549%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg261563%_
                (let ((_%$e261557%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr261555%_ '#\/))))
                  (if _%$e261557%_
                      (let ((__tmp262847
                             (substring _%idstr261555%_ '0 _%$e261557%_)))
                        (declare (not safe))
                        (##string->symbol __tmp262847))
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path261551%_))
          (gxc#with-output-to-scheme-file
           _%path261551%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg261563%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg261563%_))
                 '#!void)
             (newline)
             (pretty-print _%code261553%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx261542%_)
        (let* ((_%state261544%_
                (let ((__obj262715
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj262715 _%ctx261542%_))
                  __obj262715))
               (_%ssi-code261546%_
                (let ((__tmp262848
                       (##structure-ref
                        _%ctx261542%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state261544%_
                   __tmp262848))))
          (values _%ssi-code261546%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state261544%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx261534%_)
        (let* ((_%lifts261536%_ (box '()))
               (__tmp262849
                (lambda ()
                  (let ((__tmp262851
                         (lambda ()
                           (let ((_%code261540%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx261534%_))))
                             (if (null? (unbox _%lifts261536%_))
                                 _%code261540%_
                                 (cons 'begin
                                       (let ((__tmp262853
                                              (cons _%code261540%_ '()))
                                             (__tmp262852
                                              (reverse (unbox _%lifts261536%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp262853
                                          __tmp262852)))))))
                        (__tmp262850
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp262851
                     gxc#current-compile-marks
                     __tmp262850)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp262849
           gxc#current-compile-lift
           _%lifts261536%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx261530%_)
        (let ((_%modules261532%_ (box '())))
          (let ((__tmp262854
                 (##structure-ref _%ctx261530%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules261532%_ __tmp262854))
          (reverse (unbox _%modules261532%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path261510%_ _%code261511%_ _%phi?261512%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path261510%_))
        (gxc#with-output-to-scheme-file
         _%path261510%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp262855
                                           (if _%phi?261512%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (foldr__0 cons '() __tmp262855)))))))
           (pretty-print _%code261511%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it261516%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path261510%_ _%phi?261512%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp262856
                         (cons 'compile-file (cons _%path261510%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it261516%_ __tmp262856))
                  (_%compile-it261516%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path261521%_ _%code261522%_)
        (let ((_%phi?261524%_ '#f))
          (gxc#compile-scm-file__%
           _%path261521%_
           _%code261522%_
           _%phi?261524%_))))
    (define gxc#compile-scm-file
      (lambda _g262857_
        (let ((_g262858_ (let () (declare (not safe)) (##length _g262857_))))
          (cond ((let () (declare (not safe)) (##fx= _g262858_ 2))
                 (apply gxc#compile-scm-file__0 _g262857_))
                ((let () (declare (not safe)) (##fx= _g262858_ 3))
                 (apply gxc#compile-scm-file__% _g262857_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g262857_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?261411%_)
        (let _%lp261413%_ ((_%rest261415%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts261416%_ '()))
          (let* ((_%rest261417261437%_ _%rest261415%_)
                 (_%else261421261445%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts261416%_)))
                        (reverse _%opts261416%_)))))
            (let ((_%K261431261488%_
                   (lambda (_%rest261486%_)
                     (_%lp261413%_ _%rest261486%_ _%opts261416%_)))
                  (_%K261426261470%_
                   (lambda (_%rest261468%_)
                     (_%lp261413%_ _%rest261468%_ _%opts261416%_)))
                  (_%K261423261452%_
                   (lambda (_%rest261449%_ _%opt261450%_)
                     (_%lp261413%_
                      _%rest261449%_
                      (cons _%opt261450%_ _%opts261416%_)))))
              (if (pair? _%rest261417261437%_)
                  (let ((_%tl261433261493%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest261417261437%_)))
                        (_%hd261432261491%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest261417261437%_))))
                    (if (equal? _%hd261432261491%_ '"-cc-options")
                        (if (pair? _%tl261433261493%_)
                            (let* ((_%tl261435261496%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl261433261493%_)))
                                   (_%rest261499%_ _%tl261435261496%_))
                              (_%K261431261488%_ _%rest261499%_))
                            (let ((_%opt261460%_ _%hd261432261491%_)
                                  (_%rest261462%_ _%tl261433261493%_))
                              (_%K261423261452%_
                               _%rest261462%_
                               _%opt261460%_)))
                        (if (equal? _%hd261432261491%_ '"-ld-options")
                            (if (pair? _%tl261433261493%_)
                                (let* ((_%tl261430261478%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl261433261493%_)))
                                       (_%rest261481%_ _%tl261430261478%_))
                                  (_%K261426261470%_ _%rest261481%_))
                                (let ((_%opt261460%_ _%hd261432261491%_)
                                      (_%rest261462%_ _%tl261433261493%_))
                                  (_%K261423261452%_
                                   _%rest261462%_
                                   _%opt261460%_)))
                            (let ((_%opt261460%_ _%hd261432261491%_)
                                  (_%rest261462%_ _%tl261433261493%_))
                              (_%K261423261452%_
                               _%rest261462%_
                               _%opt261460%_)))))
                  (_%else261421261445%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?261505%_ '#f)) (gxc#gsc-link-options__% _%phi?261505%_))))
    (define gxc#gsc-link-options
      (lambda _g262859_
        (let ((_g262860_ (let () (declare (not safe)) (##length _g262859_))))
          (cond ((let () (declare (not safe)) (##fx= _g262860_ 0))
                 (apply gxc#gsc-link-options__0 _g262859_))
                ((let () (declare (not safe)) (##fx= _g262860_ 1))
                 (apply gxc#gsc-link-options__% _g262859_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g262859_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords261261%_ _%static?261257261262%_ _%phi?261263%_)
        (let ((_%static?261265%_
               (if (eq? _%static?261257261262%_ absent-value)
                   '#f
                   _%static?261257261262%_)))
          (if _%phi?261263%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp261267%_ ((_%rest261269%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts261270%_ '()))
                (let* ((_%rest261271261297%_ _%rest261269%_)
                       (_%else261276261305%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts261270%_)))
                              (reverse! _%opts261270%_)))))
                  (let ((_%K261291261368%_
                         (lambda (_%rest261365%_ _%opt261366%_)
                           (if _%static?261265%_
                               (_%lp261267%_
                                _%rest261365%_
                                (cons _%opt261366%_
                                      (cons '"-cc-options" _%opts261270%_)))
                               (_%lp261267%_ _%rest261365%_ _%opts261270%_))))
                        (_%K261286261345%_
                         (lambda (_%rest261342%_ _%opt261343%_)
                           (_%lp261267%_
                            _%rest261342%_
                            (cons _%opt261343%_
                                  (cons '"-cc-options" _%opts261270%_)))))
                        (_%K261281261325%_
                         (lambda (_%rest261323%_)
                           (_%lp261267%_ _%rest261323%_ _%opts261270%_)))
                        (_%K261278261311%_
                         (lambda (_%rest261309%_)
                           (_%lp261267%_ _%rest261309%_ _%opts261270%_))))
                    (if (pair? _%rest261271261297%_)
                        (let ((_%tl261293261373%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest261271261297%_)))
                              (_%hd261292261371%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest261271261297%_))))
                          (if (equal? _%hd261292261371%_ '"-cc-options")
                              (if (pair? _%tl261293261373%_)
                                  (let ((_%tl261295261378%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl261293261373%_)))
                                        (_%hd261294261376%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl261293261373%_))))
                                    (if (equal? _%hd261294261376%_ '"-Bstatic")
                                        (let ((_%opt261381%_
                                               _%hd261294261376%_)
                                              (_%rest261383%_
                                               _%tl261295261378%_))
                                          (_%K261291261368%_
                                           _%rest261383%_
                                           _%opt261381%_))
                                        (let ((_%opt261358%_
                                               _%hd261294261376%_)
                                              (_%rest261360%_
                                               _%tl261295261378%_))
                                          (_%K261286261345%_
                                           _%rest261360%_
                                           _%opt261358%_))))
                                  (let ((_%rest261317%_ _%tl261293261373%_))
                                    (_%K261278261311%_ _%rest261317%_)))
                              (if (equal? _%hd261292261371%_ '"-ld-options")
                                  (if (pair? _%tl261293261373%_)
                                      (let* ((_%tl261285261333%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl261293261373%_)))
                                             (_%rest261336%_
                                              _%tl261285261333%_))
                                        (_%K261281261325%_ _%rest261336%_))
                                      (let ((_%rest261317%_
                                             _%tl261293261373%_))
                                        (_%K261278261311%_ _%rest261317%_)))
                                  (let ((_%rest261317%_ _%tl261293261373%_))
                                    (_%K261278261311%_ _%rest261317%_)))))
                        (_%else261276261305%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords261388%_ _%static?261257261389%_)
        (let ((_%phi?261391%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords261388%_
           _%static?261257261389%_
           _%phi?261391%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g262861_
        (let ((_g262862_ (let () (declare (not safe)) (##length _g262861_))))
          (cond ((let () (declare (not safe)) (##fx= _g262862_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g262861_))
                ((let () (declare (not safe)) (##fx= _g262862_ 3))
                 (apply gxc#gsc-cc-options__%__% _g262861_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g262861_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords261400%_ . _%args261401%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords261400%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords261400%_
                  'static:
                  absent-value))
               _%args261401%_)))
    (define gxc#gsc-cc-options
      (lambda _%args261258261407%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args261258261407%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords261107%_ _%static?261103261108%_ _%phi?261109%_)
        (let ((_%static?261111%_
               (if (eq? _%static?261103261108%_ absent-value)
                   '#f
                   _%static?261103261108%_)))
          (if _%phi?261109%_
              '()
              (let _%lp261113%_ ((_%rest261115%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts261116%_ '()))
                (let* ((_%rest261117261143%_ _%rest261115%_)
                       (_%else261122261151%_
                        (lambda () (reverse! _%opts261116%_))))
                  (let ((_%K261137261214%_
                         (lambda (_%rest261211%_ _%opt261212%_)
                           (if _%static?261111%_
                               (_%lp261113%_
                                _%rest261211%_
                                (cons _%opt261212%_
                                      (cons '"-ld-options" _%opts261116%_)))
                               (_%lp261113%_ _%rest261211%_ _%opts261116%_))))
                        (_%K261132261191%_
                         (lambda (_%rest261188%_ _%opt261189%_)
                           (_%lp261113%_
                            _%rest261188%_
                            (cons _%opt261189%_
                                  (cons '"-ld-options" _%opts261116%_)))))
                        (_%K261127261171%_
                         (lambda (_%rest261169%_)
                           (_%lp261113%_ _%rest261169%_ _%opts261116%_)))
                        (_%K261124261157%_
                         (lambda (_%rest261155%_)
                           (_%lp261113%_ _%rest261155%_ _%opts261116%_))))
                    (if (pair? _%rest261117261143%_)
                        (let ((_%tl261139261219%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest261117261143%_)))
                              (_%hd261138261217%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest261117261143%_))))
                          (if (equal? _%hd261138261217%_ '"-ld-options")
                              (if (pair? _%tl261139261219%_)
                                  (let ((_%tl261141261224%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl261139261219%_)))
                                        (_%hd261140261222%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl261139261219%_))))
                                    (if (equal? _%hd261140261222%_ '"-static")
                                        (let ((_%opt261227%_
                                               _%hd261140261222%_)
                                              (_%rest261229%_
                                               _%tl261141261224%_))
                                          (_%K261137261214%_
                                           _%rest261229%_
                                           _%opt261227%_))
                                        (let ((_%opt261204%_
                                               _%hd261140261222%_)
                                              (_%rest261206%_
                                               _%tl261141261224%_))
                                          (_%K261132261191%_
                                           _%rest261206%_
                                           _%opt261204%_))))
                                  (let ((_%rest261163%_ _%tl261139261219%_))
                                    (_%K261124261157%_ _%rest261163%_)))
                              (if (equal? _%hd261138261217%_ '"-cc-options")
                                  (if (pair? _%tl261139261219%_)
                                      (let* ((_%tl261131261179%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl261139261219%_)))
                                             (_%rest261182%_
                                              _%tl261131261179%_))
                                        (_%K261127261171%_ _%rest261182%_))
                                      (let ((_%rest261163%_
                                             _%tl261139261219%_))
                                        (_%K261124261157%_ _%rest261163%_)))
                                  (let ((_%rest261163%_ _%tl261139261219%_))
                                    (_%K261124261157%_ _%rest261163%_)))))
                        (_%else261122261151%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords261234%_ _%static?261103261235%_)
        (let ((_%phi?261237%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords261234%_
           _%static?261103261235%_
           _%phi?261237%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g262863_
        (let ((_g262864_ (let () (declare (not safe)) (##length _g262863_))))
          (cond ((let () (declare (not safe)) (##fx= _g262864_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g262863_))
                ((let () (declare (not safe)) (##fx= _g262864_ 3))
                 (apply gxc#gsc-ld-options__%__% _g262863_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g262863_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords261246%_ . _%args261247%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords261246%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords261246%_
                  'static:
                  absent-value))
               _%args261247%_)))
    (define gxc#gsc-ld-options
      (lambda _%args261104261253%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args261104261253%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir261098%_)
        (let ((_%user-staticdir261100%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir261098%_
                       '" -I "
                       _%user-staticdir261100%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp261010%_ ((_%rest261012%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts261013%_ '()))
          (let* ((_%rest261014261034%_ _%rest261012%_)
                 (_%else261018261042%_ (lambda () _%opts261013%_)))
            (let ((_%K261028261085%_
                   (lambda (_%rest261083%_)
                     (_%lp261010%_ _%rest261083%_ _%opts261013%_)))
                  (_%K261023261063%_
                   (lambda (_%rest261060%_ _%opt261061%_)
                     (_%lp261010%_
                      _%rest261060%_
                      (let ((__tmp262865
                             (let ((__tmp262866
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt261061%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp262866))))
                        (declare (not safe))
                        (##append _%opts261013%_ __tmp262865)))))
                  (_%K261020261048%_
                   (lambda (_%rest261046%_)
                     (_%lp261010%_ _%rest261046%_ _%opts261013%_))))
              (if (pair? _%rest261014261034%_)
                  (let ((_%tl261030261090%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest261014261034%_)))
                        (_%hd261029261088%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest261014261034%_))))
                    (if (equal? _%hd261029261088%_ '"-cc-options")
                        (if (pair? _%tl261030261090%_)
                            (let* ((_%tl261032261093%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl261030261090%_)))
                                   (_%rest261096%_ _%tl261032261093%_))
                              (_%K261028261085%_ _%rest261096%_))
                            (let ((_%rest261054%_ _%tl261030261090%_))
                              (_%K261020261048%_ _%rest261054%_)))
                        (if (equal? _%hd261029261088%_ '"-ld-options")
                            (if (pair? _%tl261030261090%_)
                                (let ((_%tl261027261073%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl261030261090%_)))
                                      (_%hd261026261071%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl261030261090%_))))
                                  (let ((_%opt261076%_ _%hd261026261071%_)
                                        (_%rest261078%_ _%tl261027261073%_))
                                    (_%K261023261063%_
                                     _%rest261078%_
                                     _%opt261076%_)))
                                (let ((_%rest261054%_ _%tl261030261090%_))
                                  (_%K261020261048%_ _%rest261054%_)))
                            (let ((_%rest261054%_ _%tl261030261090%_))
                              (_%K261020261048%_ _%rest261054%_)))))
                  (_%else261018261042%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str261007%_)
        (not (let () (declare (not safe)) (string-empty? _%str261007%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path261000%_ _%phi?261001%_)
        (let ((_%gsc-link-opts261003%_
               (gxc#gsc-link-options__% _%phi?261001%_))
              (_%gsc-cc-opts261004%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?261001%_))
              (_%gsc-ld-opts261005%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?261001%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp262867
                  (let ((__tmp262868
                         (let ((__tmp262869 (cons _%path261000%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp262869
                            _%gsc-link-opts261003%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp262868 _%gsc-ld-opts261005%_))))
             (declare (not safe))
             (foldr__0 cons __tmp262867 _%gsc-cc-opts261004%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx260966%_ _%n260967%_ _%ext260968%_)
        (letrec ((_%module-relative-path260970%_
                  (lambda (_%ctx260998%_)
                    (path-strip-directory
                     (let ((__tmp262870
                            (##structure-ref
                             _%ctx260998%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp262870)))))
                 (_%module-source-directory260971%_
                  (lambda (_%ctx260994%_)
                    (path-directory
                     (let ((_%mpath260996%_
                            (##structure-ref
                             _%ctx260994%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath260996%_)
                           _%mpath260996%_
                           (last _%mpath260996%_))))))
                 (_%section-string260972%_
                  (lambda (_%n260988%_)
                    (if (number? _%n260988%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n260988%_))
                        (if (symbol? _%n260988%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n260988%_))
                            (if (string? _%n260988%_)
                                _%n260988%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n260988%_)))))))
                 (_%file-name260973%_
                  (lambda (_%path260986%_)
                    (if _%n260967%_
                        (string-append
                         _%path260986%_
                         '"~"
                         (_%section-string260972%_ _%n260967%_)
                         _%ext260968%_)
                        (string-append _%path260986%_ _%ext260968%_))))
                 (_%file-path260974%_
                  (lambda ()
                    (let ((_%$e260980%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e260980%_
                          (path-expand
                           (_%file-name260973%_
                            (let ((__tmp262871
                                   (##structure-ref
                                    _%ctx260966%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#module-id->path-string __tmp262871)))
                           _%$e260980%_)
                          (path-expand
                           (_%file-name260973%_
                            (_%module-relative-path260970%_ _%ctx260966%_))
                           (_%module-source-directory260971%_
                            _%ctx260966%_)))))))
          (let ((_%path260976%_ (_%file-path260974%_)))
            (let ((__tmp262872
                   (lambda ()
                     (let ((__tmp262873 (path-directory _%path260976%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp262873)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp262872))
            _%path260976%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx260947%_)
        (letrec ((_%file-name260949%_
                  (lambda (_%id260964%_)
                    (let ((__tmp262874 (gxc#static-module-name _%id260964%_)))
                      (declare (not safe))
                      (##string-append __tmp262874 '".scm"))))
                 (_%file-path260950%_
                  (lambda ()
                    (let* ((_%file260956%_
                            (_%file-name260949%_
                             (##structure-ref
                              _%ctx260947%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e260958%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e260958%_
                          (path-expand
                           _%file260956%_
                           (path-expand '"static" _%$e260958%_))
                          (path-expand _%file260956%_ '"static"))))))
          (let ((_%path260952%_ (_%file-path260950%_)))
            (let ((__tmp262875
                   (lambda ()
                     (let ((__tmp262876 (path-directory _%path260952%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp262876)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp262875))
            _%path260952%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx260940%_ _%opts260941%_)
        (let ((_%$e260943%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts260941%_))))
          (if _%$e260943%_
              _%$e260943%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx260940%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr260930%_)
        (if (string? _%idstr260930%_)
            (let* ((_%str260933%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr260930%_)))
                   (_%strs260935%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str260933%_ '#\/))))
              (declare (not safe))
              (string-join _%strs260935%_ '"__"))
            (if (symbol? _%idstr260930%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr260930%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr260930%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp262877
               (let ((__tmp262878 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp262878 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp262877))))
    (define gxc#invoke__%
      (lambda (_%@@keywords260896%_
               _%stdout-redirection260892260897%_
               _%stderr-redirection260893260898%_
               _%program260899%_
               _%args260900%_)
        (let* ((_%stdout-redirection260902%_
                (if (eq? _%stdout-redirection260892260897%_ absent-value)
                    '#f
                    _%stdout-redirection260892260897%_))
               (_%stderr-redirection260904%_
                (if (eq? _%stderr-redirection260893260898%_ absent-value)
                    '#f
                    _%stderr-redirection260893260898%_)))
          (let ((__tmp262879 (cons _%program260899%_ _%args260900%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp262879))
          (let* ((_%proc260906%_
                  (open-process
                   (cons 'path:
                         (cons _%program260899%_
                               (cons 'arguments:
                                     (cons _%args260900%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection260902%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection260904%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output260911%_
                  (if (or _%stdout-redirection260902%_
                          _%stderr-redirection260904%_)
                      (read-line _%proc260906%_ '#f)
                      '#f))
                 (_%status260914%_ (process-status _%proc260906%_)))
            (let () (declare (not safe)) (##close-port _%proc260906%_))
            (if (zero? _%status260914%_)
                '#!void
                (begin
                  (display _%output260911%_)
                  (let ((__tmp262880 (cons _%program260899%_ _%args260900%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp262880
                     _%status260914%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords260919%_ . _%args260920%_)
        (apply gxc#invoke__%
               _%@@keywords260919%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords260919%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords260919%_
                  'stderr-redirection:
                  absent-value))
               _%args260920%_)))
    (define gxc#invoke
      (lambda _%args260894260926%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args260894260926%_)))))
