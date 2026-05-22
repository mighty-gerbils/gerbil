(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1779435592)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp262718 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp262718))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp262719 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp262719))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path262575%_ _%fun262576%_)
        (with-output-to-file
         (cons 'path: (cons _%path262575%_ gxc#scheme-file-settings))
         _%fun262576%_)))
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
      (lambda (_%gerbil-libdir262570%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir262570%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path262568%_)
        (let ((__tmp262720 (object->string _%path262568%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp262720 '")"))))
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
      (lambda (_%dir262566%_) (delete-file-or-directory _%dir262566%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath262509%_ _%opts262510%_)
        (if (string? _%srcpath262509%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath262509%_)))
        (let* ((_%outdir262512%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts262510%_)))
               (_%invoke-gsc?262514%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts262510%_)))
               (_%target262519%_
                (let ((_%$e262516%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts262510%_))))
                  (if _%$e262516%_ _%$e262516%_ 'C)))
               (_%gsc-options262524%_
                (append (cons '"-target"
                              (cons (symbol->string _%target262519%_) '()))
                        (let ((_%$e262521%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts262510%_))))
                          (if _%$e262521%_ _%$e262521%_ '()))))
               (_%keep-scm?262526%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts262510%_)))
               (_%verbosity262528%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts262510%_)))
               (_%optimize262530%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts262510%_)))
               (_%debug262532%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts262510%_)))
               (_%gen-ssxi262534%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts262510%_)))
               (_%parallel?262536%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts262510%_))))
          (if _%outdir262512%_
              (let ((__tmp262721
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir262512%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp262721))
              '#!void)
          (if _%optimize262530%_
              (let ((__tmp262722
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp262722))
              '#!void)
          (let ((__tmp262723
                 (lambda ()
                   (let ((__tmp262724
                          (lambda ()
                            (let ((__tmp262725
                                   (lambda ()
                                     (let ((__tmp262726
                                            (lambda ()
                                              (let ((__tmp262727
                                                     (lambda ()
                                                       (let ((__tmp262728
                                                              (lambda ()
                                                                (let ((__tmp262729
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp262730
                                        (lambda ()
                                          (let ((__tmp262732
                                                 (lambda ()
                                                   (let ((__tmp262734
                                                          (lambda ()
                                                            (let ((__tmp262736
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp262737
                                    (lambda ()
                                      (let ((__tmp262738
                                             (lambda ()
                                               (let ((__tmp262739
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath262509%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp262740
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath262509%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp262740))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp262739
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp262738
                                         gx#current-compilation-target
                                         _%target262519%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp262737
                                gxc#current-compile-parallel
                                _%parallel?262536%_))))
                          (__tmp262735
                           (let ()
                             (declare (not safe))
                             (gxc#make-bound-identifier-table))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp262736
                       gxc#current-compile-identifiers
                       __tmp262735))))
                 (__tmp262733
                  (cons (cons 'compile-module (cons _%srcpath262509%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp262734
                                                      gxc#current-compile-context
                                                      __tmp262733))))
                                                (__tmp262731
                                                 (gxc#compile-timestamp)))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp262732
                                             gxc#current-compile-timestamp
                                             __tmp262731)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp262730
                                    gxc#current-compile-generate-ssxi
                                    _%gen-ssxi262534%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp262729
                           gxc#current-compile-debug
                           _%debug262532%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp262728
                  gxc#current-compile-optimize
                  _%optimize262530%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp262727
                                                 gxc#current-compile-verbose
                                                 _%verbosity262528%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp262726
                                        gxc#current-compile-keep-scm
                                        _%keep-scm?262526%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp262725
                               gxc#current-compile-gsc-options
                               _%gsc-options262524%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp262724
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?262514%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp262723
             gxc#current-compile-output-dir
             _%outdir262512%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath262559%_)
        (let ((_%opts262561%_ '()))
          (gxc#compile-module__% _%srcpath262559%_ _%opts262561%_))))
    (define gxc#compile-module
      (lambda _g262741_
        (let ((_g262742_ (let () (declare (not safe)) (##length _g262741_))))
          (cond ((let () (declare (not safe)) (##fx= _g262742_ 1))
                 (apply gxc#compile-module__0 _g262741_))
                ((let () (declare (not safe)) (##fx= _g262742_ 2))
                 (apply gxc#compile-module__% _g262741_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g262741_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath262458%_ _%opts262459%_)
        (if (string? _%srcpath262458%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath262458%_)))
        (let* ((_%outdir262461%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts262459%_)))
               (_%invoke-gsc?262463%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts262459%_)))
               (_%target262468%_
                (let ((_%$e262465%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts262459%_))))
                  (if _%$e262465%_ _%$e262465%_ 'C)))
               (_%gsc-options262473%_
                (append (cons '"-target"
                              (cons (symbol->string _%target262468%_) '()))
                        (let ((_%$e262470%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts262459%_))))
                          (if _%$e262470%_ _%$e262470%_ '()))))
               (_%keep-scm?262475%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts262459%_)))
               (_%verbosity262477%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts262459%_)))
               (_%debug262479%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts262459%_)))
               (_%parallel?262481%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts262459%_))))
          (if _%outdir262461%_
              (let ((__tmp262743
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir262461%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp262743))
              '#!void)
          (let ((__tmp262744
                 (lambda ()
                   (let ((__tmp262745
                          (lambda ()
                            (let ((__tmp262746
                                   (lambda ()
                                     (let ((__tmp262747
                                            (lambda ()
                                              (let ((__tmp262748
                                                     (lambda ()
                                                       (let ((__tmp262749
                                                              (lambda ()
                                                                (let ((__tmp262750
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp262752
                                        (lambda ()
                                          (let ((__tmp262754
                                                 (lambda ()
                                                   (let ((__tmp262756
                                                          (lambda ()
                                                            (let ((__tmp262757
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp262758
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath262458%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp262759
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath262458%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp262759))
                                       _%opts262459%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp262758
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp262757
                       gxc#current-compile-parallel
                       _%parallel?262481%_))))
                 (__tmp262755
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp262756
                                                      gxc#current-compile-identifiers
                                                      __tmp262755))))
                                                (__tmp262753
                                                 (cons (cons 'compile-exe
                                                             (cons _%srcpath262458%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp262754
                                             gxc#current-compile-context
                                             __tmp262753))))
                                       (__tmp262751 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp262752
                                    gxc#current-compile-timestamp
                                    __tmp262751)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp262750
                           gxc#current-compile-debug
                           _%debug262479%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp262749
                  gxc#current-compile-verbose
                  _%verbosity262477%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp262748
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?262475%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp262747
                                        gxc#current-compile-gsc-options
                                        _%gsc-options262473%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp262746
                               gx#current-compilation-target
                               _%target262468%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp262745
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?262463%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp262744
             gxc#current-compile-output-dir
             _%outdir262461%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath262501%_)
        (let ((_%opts262503%_ '()))
          (gxc#compile-exe__% _%srcpath262501%_ _%opts262503%_))))
    (define gxc#compile-exe
      (lambda _g262760_
        (let ((_g262761_ (let () (declare (not safe)) (##length _g262760_))))
          (cond ((let () (declare (not safe)) (##fx= _g262761_ 1))
                 (apply gxc#compile-exe__0 _g262760_))
                ((let () (declare (not safe)) (##fx= _g262761_ 2))
                 (apply gxc#compile-exe__% _g262760_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g262760_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx262454%_ _%opts262455%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts262455%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx262454%_
             _%opts262455%_)
            (gxc#compile-executable-module/separate
             _%ctx262454%_
             _%opts262455%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx262180%_ _%opts262181%_)
        (letrec ((_%generate-stub262183%_
                  (lambda (_%builtin-modules262450%_)
                    (let ((_%mod-main262452%_
                           (gxc#find-runtime-symbol _%ctx262180%_ 'main)))
                      (let ((__tmp262762
                             (cons 'define
                                   (cons 'builtin-modules
                                         (cons (cons 'quote
                                                     (cons _%builtin-modules262450%_
                                                           '()))
                                               '())))))
                        (declare (not safe))
                        (##write __tmp262762))
                      (let ((__tmp262763
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'with-unwind-protect
                                                     (cons (cons 'lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '()
                               (cons (cons 'gerbil-runtime-init!
                                           (cons 'builtin-modules '()))
                                     (cons (cons 'apply
                                                 (cons _%mod-main262452%_
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
                        (##write __tmp262763))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts262184%_
                  (lambda (_%gerbil-libdir262448%_)
                    (let ((__tmp262764
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir262448%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp262764 read))))
                 (_%replace-extension262185%_
                  (lambda (_%path262445%_ _%ext262446%_)
                    (string-append
                     (path-strip-extension _%path262445%_)
                     _%ext262446%_)))
                 (_%replace-extension-with-c262186%_
                  (lambda (_%path262443%_)
                    (_%replace-extension262185%_ _%path262443%_ '".c")))
                 (_%replace-extension-with-object262187%_
                  (lambda (_%path262441%_)
                    (_%replace-extension262185%_
                     _%path262441%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?262188%_
                  (lambda (_%ctx262439%_)
                    (if (_%exclude-module?262190%_ _%ctx262439%_)
                        '#f
                        (not (_%libgerbil-module?262189%_ _%ctx262439%_)))))
                 (_%libgerbil-module?262189%_
                  (lambda (_%ctx262432%_)
                    (let ((_%id-str262434%_
                           (symbol->string
                            (##structure-ref
                             _%ctx262432%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?262190%_ _%id-str262434%_)
                          '#f
                          (let ((_%$e262436%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str262434%_))))
                            (if _%$e262436%_
                                _%$e262436%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str262434%_))))))))
                 (_%exclude-module?262190%_
                  (lambda (_%ctx-or-str262428%_)
                    (let ((_%str262430%_
                           (if (string? _%ctx-or-str262428%_)
                               _%ctx-or-str262428%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str262428%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str262430%_))))
                 (_%not-file-empty?262191%_
                  (lambda (_%path262426%_)
                    (not (gxc#file-empty? _%path262426%_))))
                 (_%fold-libgerbil-runtime-scm262192%_
                  (lambda (_%gerbil-staticdir262419%_ _%libgerbil-scm262420%_)
                    (let ((_%gerbil-runtime-scm262424%_
                           (let ((__tmp262765
                                  (lambda (_%rtm262422%_)
                                    (path-expand
                                     (let ((__tmp262766
                                            (let ((__tmp262767
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm262422%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp262767
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp262766 '".scm"))
                                     _%gerbil-staticdir262419%_))))
                             (declare (not safe))
                             (##map __tmp262765 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates262193%_
                       (append _%gerbil-runtime-scm262424%_
                               _%libgerbil-scm262420%_)))))
                 (_%remove-duplicates262193%_
                  (lambda (_%strlst262379%_)
                    (let _%loop262381%_ ((_%rest262383%_ _%strlst262379%_)
                                         (_%result262384%_ '()))
                      (let* ((_%rest262385262393%_ _%rest262383%_)
                             (_%else262387262401%_
                              (lambda () (reverse! _%result262384%_)))
                             (_%K262389262407%_
                              (lambda (_%rest262404%_ _%path262405%_)
                                (if (member _%path262405%_ _%result262384%_)
                                    (_%loop262381%_
                                     _%rest262404%_
                                     _%result262384%_)
                                    (_%loop262381%_
                                     _%rest262404%_
                                     (cons _%path262405%_
                                           _%result262384%_))))))
                        (if (pair? _%rest262385262393%_)
                            (let ((_%hd262390262410%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest262385262393%_)))
                                  (_%tl262391262412%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest262385262393%_))))
                              (let* ((_%path262415%_ _%hd262390262410%_)
                                     (_%rest262417%_ _%tl262391262412%_))
                                (_%K262389262407%_
                                 _%rest262417%_
                                 _%path262415%_)))
                            (_%else262387262401%_))))))
                 (_%compile-stub262194%_
                  (lambda (_%output-scm262201%_ _%output-bin262202%_)
                    (let* ((_%gerbil-home262204%_
                            (let ((__tmp262768
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp262768)))
                           (_%gerbil-libdir262206%_
                            (path-expand '"lib" _%gerbil-home262204%_))
                           (_%gerbil-staticdir262208%_
                            (path-expand '"static" _%gerbil-libdir262206%_))
                           (_%deps262210%_
                            (gxc#find-runtime-module-deps _%ctx262180%_))
                           (_%libgerbil-deps262212%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?262189%_
                               _%deps262210%_)))
                           (_%libgerbil-scm262214%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps262212%_)))
                           (_%libgerbil-scm262216%_
                            (_%fold-libgerbil-runtime-scm262192%_
                             _%gerbil-staticdir262208%_
                             _%libgerbil-scm262214%_))
                           (_%libgerbil-c262218%_
                            (map _%replace-extension-with-c262186%_
                                 _%libgerbil-scm262216%_))
                           (_%libgerbil-o262220%_
                            (map _%replace-extension-with-object262187%_
                                 _%libgerbil-scm262216%_))
                           (_%src-deps262222%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?262188%_
                               _%deps262210%_)))
                           (_%src-deps-scm262224%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps262222%_)))
                           (_%src-deps-scm262226%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?262191%_
                               _%src-deps-scm262224%_)))
                           (_%src-deps-scm262228%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm262226%_)))
                           (_%src-deps-c262230%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c262186%_
                                     _%src-deps-scm262228%_)))
                           (_%src-deps-o262232%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object262187%_
                                     _%src-deps-scm262228%_)))
                           (_%src-bin-scm262234%_
                            (gxc#find-static-module-file _%ctx262180%_))
                           (_%src-bin-scm262236%_
                            (path-expand _%src-bin-scm262234%_))
                           (_%src-bin-c262238%_
                            (_%replace-extension-with-c262186%_
                             _%src-bin-scm262236%_))
                           (_%src-bin-o262240%_
                            (_%replace-extension-with-object262187%_
                             _%src-bin-scm262236%_))
                           (_%output-bin262242%_
                            (path-expand _%output-bin262202%_))
                           (_%output-scm262244%_
                            (path-expand _%output-scm262201%_))
                           (_%output-c262246%_
                            (_%replace-extension-with-c262186%_
                             _%output-scm262244%_))
                           (_%output-o262248%_
                            (_%replace-extension-with-object262187%_
                             _%output-scm262244%_))
                           (_%output_-c262250%_
                            (_%replace-extension262185%_
                             _%output-scm262244%_
                             '"_.c"))
                           (_%output_-o262252%_
                            (_%replace-extension262185%_
                             _%output-scm262244%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts262254%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts262256%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts262258%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir262208%_))
                           (_%output-ld-opts262260%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts262262%_
                            (_%get-libgerbil-ld-opts262184%_
                             _%gerbil-libdir262206%_))
                           (_%rpath262264%_
                            (gxc#gerbil-rpath _%gerbil-libdir262206%_))
                           (_%builtin-modules262268%_
                            (_%remove-duplicates262193%_
                             (let ((__tmp262769
                                    (let ((__tmp262771
                                           (lambda (_%mod262266%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod262266%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp262770
                                           (cons _%ctx262180%_
                                                 _%deps262210%_)))
                                      (declare (not safe))
                                      (##map __tmp262771 __tmp262770))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp262769)))))
                      (letrec ((_%compile-obj262271%_
                                (lambda (_%scm-path262278%_ _%c-path262279%_)
                                  (let* ((_%o-path262281%_
                                          (_%replace-extension262185%_
                                           _%c-path262279%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock262283%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path262281%_
                                             '".lock")))
                                         (_%locked262285%_ '#f)
                                         (_%unlock262288%_
                                          (lambda ()
                                            (close-port _%locked262285%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock262283%_)))))
                                    (let _%retry262291%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock262283%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry262291%_))
                                          (begin
                                            (set! _%locked262285%_
                                                  (let* ((_%handler262294%_
                                                          false)
                                                         (_%thunk262298%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock262283%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler262303%_ _%handler262294%_)
                 (_%thunk262359%_ _%thunk262298%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler262303%_
                                                     _%thunk262359%_)))
                                            (if _%locked262285%_
                                                '#!void
                                                (_%retry262291%_)))))
                                    (let ((__tmp262773
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path262281%_)))
                                                     (not _%scm-path262278%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path262278%_
                                                        _%o-path262281%_)))
                                                 (let ((_%gsc-cc-opts262376%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp262774
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp262775 (cons _%c-path262279%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp262775
                            _%gsc-static-opts262258%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp262774 _%gsc-cc-opts262376%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp262772
                                           (lambda () (_%unlock262288%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp262773
                                       __tmp262772))))))
                        (let ((__tmp262776
                               (lambda ()
                                 (let ((__tmp262777
                                        (path-directory _%output-bin262242%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp262777)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp262776))
                        (gxc#with-output-to-scheme-file
                         _%output-scm262244%_
                         (lambda ()
                           (_%generate-stub262183%_
                            _%builtin-modules262268%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it262276%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp262778
                                                   (let ((__tmp262779
                                                          (let ((__tmp262780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm262236%_
                               (cons _%output-scm262244%_ '()))))
                    (declare (not safe))
                    (foldr__0 cons __tmp262780 _%src-deps-scm262228%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr__0
                                                      cons
                                                      __tmp262779
                                                      _%libgerbil-c262218%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               __tmp262778
                                               _%gsc-link-opts262254%_))))
                                     (for-each
                                      _%compile-obj262271%_
                                      (let ((__tmp262781
                                             (cons _%src-bin-scm262236%_
                                                   (cons _%output-scm262244%_
                                                         (cons '#f '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp262781
                                         _%src-deps-scm262228%_))
                                      (let ((__tmp262782
                                             (cons _%src-bin-c262238%_
                                                   (cons _%output-c262246%_
                                                         (cons _%output_-c262250%_
                                                               '())))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp262782
                                         _%src-deps-c262230%_)))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin262242%_
                                                        (let ((__tmp262783
                                                               (cons _%src-bin-o262240%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o262248%_
                                   (cons _%output_-o262252%_
                                         (let ((__tmp262784
                                                (let ((__tmp262785
                                                       (let ((__tmp262787
                                                              (cons '"-L"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%gerbil-libdir262206%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts262262%_))))
                     (__tmp262786
                      (if (gxc#gerbil-enable-shared?)
                          (cons _%rpath262264%_ '())
                          '())))
                 (declare (not safe))
                 (foldr__0 cons __tmp262787 __tmp262786))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr__0
                                                   cons
                                                   __tmp262785
                                                   _%output-ld-opts262260%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            cons
                                            __tmp262784
                                            _%libgerbil-o262220%_)))))))
                  (declare (not safe))
                  (foldr__0 cons __tmp262783 _%src-deps-o262232%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp262788
                                            (cons _%output-c262246%_
                                                  (cons _%output_-c262250%_
                                                        (cons _%output-o262248%_
                                                              (cons _%output_-o262252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp262788)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it262276%_))
                                  (_%compile-it262276%_)))
                            '#!void))))))
          (let* ((_%output-bin262196%_
                  (gxc#compile-exe-output-file _%ctx262180%_ _%opts262181%_))
                 (_%output-scm262198%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin262196%_ '"__exe.scm"))))
            (_%compile-stub262194%_
             _%output-scm262198%_
             _%output-bin262196%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx262002%_ _%opts262003%_)
        (letrec ((_%reset-declare262005%_
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
                 (_%generate-stub262006%_
                  (lambda (_%deps262171%_)
                    (let ((_%mod-main262173%_
                           (gxc#find-runtime-symbol _%ctx262002%_ 'main))
                          (_%reset-decl262174%_ (_%reset-declare262005%_))
                          (_%user-decl262175%_ (_%user-declare262007%_)))
                      (for-each
                       (lambda (_%dep262177%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl262174%_))
                         (newline)
                         (if _%user-decl262175%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl262175%_))
                               (newline))
                             '#!void)
                         (let ((__tmp262789
                                (cons 'include (cons _%dep262177%_ '()))))
                           (declare (not safe))
                           (##write __tmp262789))
                         (newline))
                       _%deps262171%_)
                      (let ((__tmp262790
                             (cons 'define
                                   (cons (cons 'gerbil-main '())
                                         (cons (cons 'gerbil-runtime-init!
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '() '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons 'apply
                                                           (cons _%mod-main262173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'cdr (cons (cons 'command-line '()) '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                        (declare (not safe))
                        (##write __tmp262790))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare262007%_
                  (lambda ()
                    (let* ((_%gsc-opts262076%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts262003%_)))
                           (_%gsc-prelude262078%_
                            (if _%gsc-opts262076%_
                                (member '"-prelude" _%gsc-opts262076%_)
                                '#f))
                           (_%gsc-prelude262080%_
                            (if _%gsc-prelude262078%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude262078%_)))
                                '#f)))
                      (let _%lp262083%_ ((_%rest262085%_
                                          (cons _%gsc-prelude262080%_ '()))
                                         (_%user-decls262086%_ '()))
                        (let* ((_%rest262087262095%_ _%rest262085%_)
                               (_%else262089262103%_
                                (lambda ()
                                  (if (null? _%user-decls262086%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls262086%_)))))
                               (_%K262091262159%_
                                (lambda (_%rest262106%_ _%expr262107%_)
                                  (let* ((_%expr262108262120%_ _%expr262107%_)
                                         (_%else262111262128%_
                                          (lambda ()
                                            (_%lp262083%_
                                             _%rest262106%_
                                             _%user-decls262086%_))))
                                    (let ((_%K262116262149%_
                                           (lambda (_%decls262147%_)
                                             (_%lp262083%_
                                              _%rest262106%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls262086%_
                                                 _%decls262147%_)))))
                                          (_%K262113262134%_
                                           (lambda (_%exprs262132%_)
                                             (_%lp262083%_
                                              (append _%exprs262132%_
                                                      _%rest262106%_)
                                              _%user-decls262086%_))))
                                      (if (pair? _%expr262108262120%_)
                                          (let ((_%tl262118262154%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%expr262108262120%_)))
                                                (_%hd262117262152%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%expr262108262120%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd262117262152%_
                                                         'declare))
                                                (let ((_%decls262157%_
                                                       _%tl262118262154%_))
                                                  (_%K262116262149%_
                                                   _%decls262157%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd262117262152%_
                                                             'begin))
                                                    (let ((_%exprs262142%_
                                                           _%tl262118262154%_))
                                                      (_%K262113262134%_
                                                       _%exprs262142%_))
                                                    (_%else262111262128%_))))
                                          (_%else262111262128%_)))))))
                          (if (pair? _%rest262087262095%_)
                              (let ((_%hd262092262162%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest262087262095%_)))
                                    (_%tl262093262164%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest262087262095%_))))
                                (let* ((_%expr262167%_ _%hd262092262162%_)
                                       (_%rest262169%_ _%tl262093262164%_))
                                  (_%K262091262159%_
                                   _%rest262169%_
                                   _%expr262167%_)))
                              (_%else262089262103%_)))))))
                 (_%compile-stub262008%_
                  (lambda (_%output-scm262015%_ _%output-bin262016%_)
                    (let* ((_%gerbil-home262018%_
                            (let ((__tmp262791
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp262791)))
                           (_%gerbil-libdir262020%_
                            (path-expand '"lib" _%gerbil-home262018%_))
                           (_%runtime262022%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp262024%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home262018%_))
                           (_%include-gambit-sharp262026%_
                            (gxc#include-source _%gambit-sharp262024%_))
                           (_%bin-scm262028%_
                            (gxc#find-static-module-file _%ctx262002%_))
                           (_%deps262030%_
                            (gxc#find-runtime-module-deps _%ctx262002%_))
                           (_%deps262032%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps262030%_)))
                           (_%deps262037%_
                            (let ((__tmp262792
                                   (lambda (_%$obj262034%_)
                                     (not (gxc#file-empty? _%$obj262034%_)))))
                              (declare (not safe))
                              (##filter __tmp262792 _%deps262032%_)))
                           (_%deps262041%_
                            (let ((__tmp262793
                                   (lambda (_%f262039%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f262039%_
                                             _%runtime262022%_))))))
                              (declare (not safe))
                              (##filter __tmp262793 _%deps262037%_)))
                           (_%output-base262043%_
                            (let ((__tmp262794
                                   (path-strip-extension
                                    _%output-scm262015%_)))
                              (declare (not safe))
                              (##string-append __tmp262794)))
                           (_%output-c262045%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base262043%_ '".c")))
                           (_%output-o262047%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base262043%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_262049%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base262043%_ '"_.c")))
                           (_%output-o_262051%_
                            (let ((__tmp262795
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base262043%_
                               __tmp262795)))
                           (_%gsc-link-opts262053%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts262055%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts262057%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir262020%_)))
                           (_%output-ld-opts262059%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros262061%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp262026%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp262026%_
                                            '()))))
                           (_%gsc-link-opts262063%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts262053%_
                               _%gsc-gx-macros262061%_)))
                           (_%rpath262065%_
                            (gxc#gerbil-rpath _%gerbil-libdir262020%_))
                           (_%default-ld-options262067%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp262796
                             (lambda ()
                               (let ((__tmp262797
                                      (path-directory _%output-bin262016%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp262797)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp262796))
                      (gxc#with-output-to-scheme-file
                       _%output-scm262015%_
                       (lambda ()
                         (_%generate-stub262006%_
                          (let ((__tmp262798
                                 (let ((__tmp262799
                                        (cons _%bin-scm262028%_ '())))
                                   (declare (not safe))
                                   (foldr__0
                                    cons
                                    __tmp262799
                                    _%deps262041%_))))
                            (declare (not safe))
                            (foldr__0 cons __tmp262798 _%runtime262022%_)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it262073%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_262049%_
                                                      (let ((__tmp262800
                                                             (cons _%output-scm262015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (foldr__0 cons __tmp262800 _%gsc-link-opts262063%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp262801
                                                 (let ((__tmp262802
                                                        (cons _%output-c262045%_
                                                              (cons _%output-c_262049%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    cons
                                                    __tmp262802
                                                    _%gsc-static-opts262057%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp262801
                                             _%gsc-cc-opts262055%_))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin262016%_
                                                      (cons _%output-o262047%_
                                                            (cons _%output-o_262051%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp262803
                                 (let ((__tmp262805
                                        (cons '"-L"
                                              (cons _%gerbil-libdir262020%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options262067%_))))
                                       (__tmp262804
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath262065%_ '())
                                            '())))
                                   (declare (not safe))
                                   (foldr__0 cons __tmp262805 __tmp262804))))
                            (declare (not safe))
                            (foldr__0
                             cons
                             __tmp262803
                             _%output-ld-opts262059%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it262073%_))
                                (_%compile-it262073%_)))
                          '#!void)))))
          (let* ((_%output-bin262010%_
                  (gxc#compile-exe-output-file _%ctx262002%_ _%opts262003%_))
                 (_%output-scm262012%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin262010%_ '"__exe.scm"))))
            (_%compile-stub262008%_
             _%output-scm262012%_
             _%output-bin262010%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx261951%_ _%id261952%_)
        (let ((_%$e261998%_
               (let ((__tmp262807
                      (lambda (_%e261953261955%_)
                        (let* ((_%e261953261957261967%_ _%e261953261955%_)
                               (_%else261959261975%_ (lambda () '#f))
                               (_%K261961261979%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%e261953261957261967%_
                                 'gx#module-export::t))
                              (let* ((_%e261962261982%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e261953261957261967%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%e261963261985%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e261953261957261967%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%e261964261988%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%e261953261957261967%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%e261964261988%_ '0))
                                    (let ((_%e261965261991%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%e261953261957261967%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if (eq? _%e261965261991%_ _%id261952%_)
                                          (_%K261961261979%_)
                                          (_%else261959261975%_)))
                                    (_%else261959261975%_)))
                              (_%else261959261975%_)))))
                     (__tmp262806
                      (##structure-ref
                       _%ctx261951%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp262807 __tmp262806))))
          (if _%$e261998%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e261998%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx261942%_ _%id261943%_)
        (let ((_%$e261945%_
               (gxc#find-export-binding _%ctx261942%_ _%id261943%_)))
          (if _%$e261945%_
              (let ()
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%$e261945%_
                       'gx#runtime-binding::t))
                    '#!void
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"export is not a runtime binding"
                       _%id261943%_)))
                (##structure-ref _%$e261945%_ '1 gx#binding::t '#f))
              (let ((__tmp262808
                     (##structure-ref
                      _%ctx261942%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp262808
                 _%id261943%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx261808%_)
        (letrec* ((_%ht261810%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template261811%_
                   (lambda (_%in261887%_ _%phi261888%_)
                     (let ((_%iphi261890%_
                            (fx+ _%phi261888%_
                                 (##direct-structure-ref
                                  _%in261887%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports261891%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in261887%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp261893%_ ((_%rest261895%_ _%imports261891%_)
                                          (_%r261896%_ '()))
                         (let* ((_%rest261897261905%_ _%rest261895%_)
                                (_%else261899261913%_ (lambda () _%r261896%_))
                                (_%K261901261930%_
                                 (lambda (_%rest261916%_ _%in261917%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in261917%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi261890%_))
                                           (_%lp261893%_
                                            _%rest261916%_
                                            (cons _%in261917%_ _%r261896%_))
                                           (_%lp261893%_
                                            _%rest261916%_
                                            _%r261896%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in261917%_
                                              'gx#module-import::t))
                                           (let ((_%iphi261921%_
                                                  (fx+ _%phi261888%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in261917%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi261921%_))
                                                 (_%lp261893%_
                                                  _%rest261916%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in261917%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r261896%_))
                                                 (_%lp261893%_
                                                  _%rest261916%_
                                                  _%r261896%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in261917%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi261924%_
                                                      (fx+ _%iphi261890%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in261917%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi261924%_))
                                                     (_%lp261893%_
                                                      _%rest261916%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in261917%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r261896%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi261924%_))
                                                         (_%lp261893%_
                                                          _%rest261916%_
                                                          (let ((__tmp262809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template261811%_
                          _%in261917%_
                          _%iphi261890%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r261896%_ __tmp262809)))
                 (_%lp261893%_ _%rest261916%_ _%r261896%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp261893%_
                                                _%rest261916%_
                                                _%r261896%_)))))))
                           (if (pair? _%rest261897261905%_)
                               (let ((_%hd261902261933%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%rest261897261905%_)))
                                     (_%tl261903261935%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%rest261897261905%_))))
                                 (let* ((_%in261938%_ _%hd261902261933%_)
                                        (_%rest261940%_ _%tl261903261935%_))
                                   (_%K261901261930%_
                                    _%rest261940%_
                                    _%in261938%_)))
                               (_%else261899261913%_)))))))
                  (_%find-deps261812%_
                   (lambda (_%rest261820%_ _%deps261821%_)
                     (let* ((_%rest261822261830%_ _%rest261820%_)
                            (_%else261824261838%_ (lambda () _%deps261821%_))
                            (_%K261826261875%_
                             (lambda (_%rest261841%_ _%hd261842%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd261842%_
                                      'gx#module-context::t))
                                   (let ((_%id261845%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd261842%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports261846%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd261842%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht261810%_
                                            _%id261845%_))
                                         (_%find-deps261812%_
                                          _%rest261841%_
                                          _%deps261821%_)
                                         (let ((_%$e261849%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd261842%_))))
                                           (if _%$e261849%_
                                               (let ((_%xdeps261854%_
                                                      (_%find-deps261812%_
                                                       (cons _%$e261849%_
                                                             _%imports261846%_)
                                                       _%deps261821%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht261810%_
                                                    _%id261845%_
                                                    _%hd261842%_))
                                                 (_%find-deps261812%_
                                                  _%rest261841%_
                                                  (cons _%hd261842%_
                                                        _%xdeps261854%_)))
                                               (let ((_%xdeps261857%_
                                                      (_%find-deps261812%_
                                                       _%imports261846%_
                                                       _%deps261821%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht261810%_
                                                    _%id261845%_
                                                    _%hd261842%_))
                                                 (_%find-deps261812%_
                                                  _%rest261841%_
                                                  (cons _%hd261842%_
                                                        _%xdeps261857%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd261842%_
                                          'gx#prelude-context::t))
                                       (let ((_%id261860%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd261842%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht261810%_
                                                _%id261860%_))
                                             (_%find-deps261812%_
                                              _%rest261841%_
                                              _%deps261821%_)
                                             (let ((_%xdeps261864%_
                                                    (_%find-deps261812%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd261842%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps261821%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht261810%_
                                                      _%id261860%_))
                                                   (_%find-deps261812%_
                                                    _%rest261841%_
                                                    _%xdeps261864%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht261810%_
                                                        _%id261860%_
                                                        _%hd261842%_))
                                                     (_%find-deps261812%_
                                                      _%rest261841%_
                                                      (cons _%hd261842%_
                                                            _%xdeps261864%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd261842%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd261842%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps261812%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd261842%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest261841%_)
                                                _%deps261821%_)
                                               (_%find-deps261812%_
                                                _%rest261841%_
                                                _%deps261821%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd261842%_
                                                  'gx#module-export::t))
                                               (_%find-deps261812%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd261842%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest261841%_)
                                                _%deps261821%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd261842%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd261842%_ '2 '#f '#f)))
               (_%find-deps261812%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd261842%_ '1 '#f '#f))
                      _%rest261841%_)
                _%deps261821%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd261842%_ '2 '#f '#f)))
                   (let ((_%xdeps261871%_
                          (_%import-set-template261811%_ _%hd261842%_ '0)))
                     (_%find-deps261812%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest261841%_ _%xdeps261871%_))
                      _%deps261821%_))
                   (_%find-deps261812%_ _%rest261841%_ _%deps261821%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd261842%_))))))))))
                       (if (pair? _%rest261822261830%_)
                           (let ((_%hd261827261878%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%rest261822261830%_)))
                                 (_%tl261828261880%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%rest261822261830%_))))
                             (let* ((_%hd261883%_ _%hd261827261878%_)
                                    (_%rest261885%_ _%tl261828261880%_))
                               (_%K261826261875%_
                                _%rest261885%_
                                _%hd261883%_)))
                           (_%else261824261838%_))))))
          (let ((__tmp262810
                 (filter gx#expander-context-id
                         (_%find-deps261812%_
                          (let ((_%$e261814%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx261808%_))))
                            (if _%$e261814%_
                                (cons _%$e261814%_
                                      (##structure-ref
                                       _%ctx261808%_
                                       '8
                                       gx#module-context::t
                                       '#f))
                                (##structure-ref
                                 _%ctx261808%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp262810)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx261738%_)
        (let* ((_%context-id261740%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx261738%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx261738%_ '1 '#f '#f))
                    (string->symbol _%ctx261738%_)))
               (_%scm261742%_
                (let ((__tmp262811
                       (gxc#static-module-name _%context-id261740%_)))
                  (declare (not safe))
                  (##string-append __tmp262811 '".scm")))
               (_%dirs261744%_ (let () (declare (not safe)) (load-path)))
               (_%dirs261750%_
                (let ((_%user-libpath261746%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath261746%_
                      (let ((_%user-libpath261748%_
                             (path-expand '"lib" _%user-libpath261746%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath261748%_ _%dirs261744%_))
                            _%dirs261744%_
                            (cons _%user-libpath261748%_ _%dirs261744%_)))
                      _%dirs261744%_)))
               (_%dirs261760%_
                (let ((_%$e261752%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e261752%_
                      (cons _%$e261752%_ _%dirs261750%_)
                      _%dirs261750%_)))
               (_%dirs261766%_
                (let ((__tmp262812
                       (lambda (_%g261761261763%_)
                         (path-expand '"static" _%g261761261763%_))))
                  (declare (not safe))
                  (##map __tmp262812 _%dirs261760%_))))
          (let _%lp261769%_ ((_%rest261771%_ _%dirs261766%_))
            (let* ((_%rest261772261780%_ _%rest261771%_)
                   (_%else261774261788%_
                    (lambda ()
                      (let ((__tmp262813
                             (##structure-ref
                              _%ctx261738%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp262813
                         _%scm261742%_))))
                   (_%K261776261796%_
                    (lambda (_%rest261791%_ _%dir261792%_)
                      (let ((_%path261794%_
                             (path-expand _%scm261742%_ _%dir261792%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path261794%_))
                            _%path261794%_
                            (_%lp261769%_ _%rest261791%_))))))
              (if (pair? _%rest261772261780%_)
                  (let ((_%hd261777261799%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest261772261780%_)))
                        (_%tl261778261801%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest261772261780%_))))
                    (let* ((_%dir261804%_ _%hd261777261799%_)
                           (_%rest261806%_ _%tl261778261801%_))
                      (_%K261776261796%_ _%rest261806%_ _%dir261804%_)))
                  (_%else261774261788%_)))))))
    (define gxc#file-empty?
      (lambda (_%path261736%_)
        (zero? (let ((__tmp262814 (file-info _%path261736%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp262814)))))
    (define gxc#compile-top-module
      (lambda (_%ctx261727%_)
        (let ((__tmp262815
               (lambda ()
                 (let ((__tmp262816
                        (lambda ()
                          (let ((__tmp262817
                                 (lambda ()
                                   (let ((__tmp262819
                                          (lambda ()
                                            (let ((__tmp262821
                                                   (lambda ()
                                                     (let ((__tmp262823
                                                            (lambda ()
                                                              (let ((__tmp262824
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx261727%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp262824))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp262825
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx261727%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp262825))
                          '#!void)
                      (gxc#collect-bindings _%ctx261727%_)
                      (gxc#compile-runtime-code _%ctx261727%_)
                      (gxc#compile-meta-code _%ctx261727%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx261727%_)
                          '#!void)))
                   (__tmp262822
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
                __tmp262823
                gxc#current-compile-runtime-names
                __tmp262822))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp262820
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp262821
                                               gxc#current-compile-runtime-sections
                                               __tmp262820))))
                                         (__tmp262818
                                          (let ((__obj262716
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj262716))
                                            __obj262716)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp262819
                                      gxc#current-compile-symbol-table
                                      __tmp262818)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp262817
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp262816
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp262815
           gx#current-expander-context
           _%ctx261727%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx261725%_)
        (let ((__tmp262826
               (##structure-ref _%ctx261725%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp262826))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx261670%_)
        (letrec ((_%compile1261672%_
                  (lambda (_%ctx261714%_)
                    (let* ((_%code261716%_
                            (##structure-ref
                             _%ctx261714%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm261720%_
                            (let ((_%idstr261718%_
                                   (let ((__tmp262827
                                          (##structure-ref
                                           _%ctx261714%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp262827))))
                              (declare (not safe))
                              (##string-append _%idstr261718%_ '"~0")))
                           (_%rtc?261722%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code261716%_))))
                      (if _%rtc?261722%_
                          (let ((__tmp262828
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp262828
                             _%ctx261714%_
                             _%rtm261720%_))
                          '#!void)
                      (_%generate-runtime-code261674%_
                       _%ctx261714%_
                       _%code261716%_
                       (if _%rtc?261722%_ _%rtm261720%_ '#f)))))
                 (_%context-timestamp261673%_
                  (lambda (_%ctx261712%_)
                    (let ((__tmp262829
                           (let ((__tmp262830
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx261712%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp262830 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp262829))))
                 (_%generate-runtime-code261674%_
                  (lambda (_%ctx261681%_ _%code261682%_ _%rtm261683%_)
                    (let* ((_%runtime-code?261685%_ (if _%rtm261683%_ '#t '#f))
                           (_%lifts261687%_ (box '()))
                           (_%runtime-code261693%_
                            (if _%runtime-code?261685%_
                                (let ((__tmp262831
                                       (lambda ()
                                         (let ((__tmp262832
                                                (lambda ()
                                                  (let ((__tmp262833
                                                         (lambda ()
                                                           (let ((__tmp262835
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code261682%_))))
                         (__tmp262834
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp262835
                      gxc#current-compile-marks
                      __tmp262834)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp262833
                                                     gxc#current-compile-lift
                                                     _%lifts261687%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp262832
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp262831
                                   gx#current-expander-context
                                   _%ctx261681%_))
                                '#f))
                           (_%runtime-code261695%_
                            (if _%runtime-code?261685%_
                                (if (null? (unbox _%lifts261687%_))
                                    _%runtime-code261693%_
                                    (cons 'begin
                                          (let ((__tmp262837
                                                 (cons _%runtime-code261693%_
                                                       '()))
                                                (__tmp262836
                                                 (reverse (unbox _%lifts261687%_))))
                                            (declare (not safe))
                                            (foldr__0
                                             cons
                                             __tmp262837
                                             __tmp262836))))
                                '#f))
                           (_%runtime-code261697%_
                            (if _%runtime-code?261685%_
                                (cons 'begin
                                      (cons (cons 'define
                                                  (cons (_%context-timestamp261673%_
                                                         _%ctx261681%_)
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#current-compile-timestamp))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _%runtime-code261695%_ '())))
                                '#f))
                           (_%loader-code261700%_
                            (let ((__tmp262838
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code261682%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp262838
                               gx#current-expander-context
                               _%ctx261681%_)))
                           (_%loader-code261702%_
                            (cons 'begin
                                  (cons _%loader-code261700%_
                                        (cons (if _%runtime-code?261685%_
                                                  (cons 'load-module
                                                        (cons _%rtm261683%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0261704%_
                            (gxc#compile-output-file _%ctx261681%_ '0 '".scm"))
                           (_%scmrt261706%_
                            (gxc#compile-output-file
                             _%ctx261681%_
                             '#f
                             '".scm"))
                           (_%scms261708%_
                            (gxc#compile-static-output-file _%ctx261681%_)))
                      (if _%runtime-code?261685%_
                          (gxc#compile-scm-file__0
                           _%scm0261704%_
                           _%runtime-code261697%_)
                          '#!void)
                      (let ((__tmp262839
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt261706%_
                                _%loader-code261702%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp262839
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms261708%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms261708%_))
                          '#!void)
                      (if _%runtime-code?261685%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0261704%_ _%scms261708%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms261708%_ void)))))))
          (let* ((_%all-modules261676%_
                  (cons _%ctx261670%_ (gxc#lift-nested-modules _%ctx261670%_)))
                 (__tmp262840
                  (lambda (_%ctx261678%_)
                    (let ((__tmp262841
                           (lambda () (_%compile1261672%_ _%ctx261678%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp262841
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp262840 _%all-modules261676%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx261569%_)
        (letrec ((_%compile-ssi261571%_
                  (lambda (_%code261638%_)
                    (let* ((_%path261640%_
                            (gxc#compile-output-file
                             _%ctx261569%_
                             '#f
                             '".ssi"))
                           (_%prelude261652%_
                            (let* ((_%super261642%_
                                    (##structure-ref
                                     _%ctx261569%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e261644%_
                                    (##structure-ref
                                     _%super261642%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e261644%_
                                  (let ()
                                    (declare (not safe))
                                    (make-symbol__1 '":" _%$e261644%_))
                                  ':<root>)))
                           (_%ns261654%_
                            (##structure-ref
                             _%ctx261569%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr261656%_
                            (symbol->string
                             (##structure-ref
                              _%ctx261569%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg261664%_
                            (let ((_%$e261658%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr261656%_ '#\/))))
                              (if _%$e261658%_
                                  (let ((__tmp262842
                                         (substring
                                          _%idstr261656%_
                                          '0
                                          _%$e261658%_)))
                                    (declare (not safe))
                                    (##string->symbol __tmp262842))
                                  '#f)))
                           (_%rt261666%_
                            (let ((__tmp262843
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp262843 _%ctx261569%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path261640%_))
                      (gxc#with-output-to-scheme-file
                       _%path261640%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude261652%_))
                         (if _%pkg261664%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg261664%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns261654%_))
                         (newline)
                         (pretty-print _%code261638%_)
                         (if _%rt261666%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt261666%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi261572%_
                  (lambda (_%part261577%_)
                    (let* ((_%part261578261591%_ _%part261577%_)
                           (_%E261580261595%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%part261578261591%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%K261581261607%_
                            (lambda (_%code261598%_
                                     _%n261599%_
                                     _%phi261600%_
                                     _%phi-ctx261601%_)
                              (let ((_%code261605%_
                                     (let ((__tmp262844
                                            (lambda ()
                                              (let ((__tmp262845
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code261598%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp262845
                                                 gx#current-expander-phi
                                                 _%phi261600%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp262844
                                        gx#current-expander-context
                                        _%phi-ctx261601%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx261569%_
                                  _%n261599%_
                                  '".scm")
                                 _%code261605%_
                                 '#t)))))
                      (if (pair? _%part261578261591%_)
                          (let ((_%hd261582261610%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%part261578261591%_)))
                                (_%tl261583261612%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%part261578261591%_))))
                            (let ((_%phi-ctx261615%_ _%hd261582261610%_))
                              (if (pair? _%tl261583261612%_)
                                  (let ((_%hd261584261617%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl261583261612%_)))
                                        (_%tl261585261619%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl261583261612%_))))
                                    (let ((_%phi261622%_ _%hd261584261617%_))
                                      (if (pair? _%tl261585261619%_)
                                          (let ((_%hd261586261624%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl261585261619%_)))
                                                (_%tl261587261626%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl261585261619%_))))
                                            (let ((_%n261629%_
                                                   _%hd261586261624%_))
                                              (if (pair? _%tl261587261626%_)
                                                  (let ((_%hd261588261631%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl261587261626%_)))
                                                        (_%tl261589261633%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl261587261626%_))))
                                                    (let ((_%code261636%_
                                                           _%hd261588261631%_))
                                                      (if (null? _%tl261589261633%_)
                                                          (_%K261581261607%_
                                                           _%code261636%_
                                                           _%n261629%_
                                                           _%phi261622%_
                                                           _%phi-ctx261615%_)
                                                          (_%E261580261595%_))))
                                                  (_%E261580261595%_))))
                                          (_%E261580261595%_))))
                                  (_%E261580261595%_))))
                          (_%E261580261595%_))))))
          (let ((_g262846_ (gxc#generate-meta-code _%ctx261569%_)))
            (begin
              (let ((_g262847_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g262846_)
                           (##values-length _g262846_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g262847_ 2)))
                    (error "Context expects 2 values" _g262847_)))
              (let ((_%ssi-code261574%_
                     (let () (declare (not safe)) (##values-ref _g262846_ 0)))
                    (_%phi-code261575%_
                     (let () (declare (not safe)) (##values-ref _g262846_ 1))))
                (begin
                  (_%compile-ssi261571%_ _%ssi-code261574%_)
                  (for-each _%compile-phi261572%_ _%phi-code261575%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx261551%_)
        (let* ((_%path261553%_
                (gxc#compile-output-file _%ctx261551%_ '#f '".ssxi.ss"))
               (_%code261555%_
                (let ((__tmp262848
                       (##structure-ref
                        _%ctx261551%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp262848)))
               (_%idstr261557%_
                (symbol->string
                 (##structure-ref
                  _%ctx261551%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg261565%_
                (let ((_%$e261559%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr261557%_ '#\/))))
                  (if _%$e261559%_
                      (let ((__tmp262849
                             (substring _%idstr261557%_ '0 _%$e261559%_)))
                        (declare (not safe))
                        (##string->symbol __tmp262849))
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path261553%_))
          (gxc#with-output-to-scheme-file
           _%path261553%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg261565%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg261565%_))
                 '#!void)
             (newline)
             (pretty-print _%code261555%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx261544%_)
        (let* ((_%state261546%_
                (let ((__obj262717
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj262717 _%ctx261544%_))
                  __obj262717))
               (_%ssi-code261548%_
                (let ((__tmp262850
                       (##structure-ref
                        _%ctx261544%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state261546%_
                   __tmp262850))))
          (values _%ssi-code261548%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state261546%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx261536%_)
        (let* ((_%lifts261538%_ (box '()))
               (__tmp262851
                (lambda ()
                  (let ((__tmp262853
                         (lambda ()
                           (let ((_%code261542%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx261536%_))))
                             (if (null? (unbox _%lifts261538%_))
                                 _%code261542%_
                                 (cons 'begin
                                       (let ((__tmp262855
                                              (cons _%code261542%_ '()))
                                             (__tmp262854
                                              (reverse (unbox _%lifts261538%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp262855
                                          __tmp262854)))))))
                        (__tmp262852
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp262853
                     gxc#current-compile-marks
                     __tmp262852)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp262851
           gxc#current-compile-lift
           _%lifts261538%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx261532%_)
        (let ((_%modules261534%_ (box '())))
          (let ((__tmp262856
                 (##structure-ref _%ctx261532%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules261534%_ __tmp262856))
          (reverse (unbox _%modules261534%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path261512%_ _%code261513%_ _%phi?261514%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path261512%_))
        (gxc#with-output-to-scheme-file
         _%path261512%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons (cons 'block '())
                        (cons (cons 'standard-bindings '())
                              (cons (cons 'extended-bindings '())
                                    (let ((__tmp262857
                                           (if _%phi?261514%_
                                               '((inlining-limit 200))
                                               '())))
                                      (declare (not safe))
                                      (foldr__0 cons '() __tmp262857)))))))
           (pretty-print _%code261513%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it261518%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path261512%_ _%phi?261514%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp262858
                         (cons 'compile-file (cons _%path261512%_ '()))))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it261518%_ __tmp262858))
                  (_%compile-it261518%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path261523%_ _%code261524%_)
        (let ((_%phi?261526%_ '#f))
          (gxc#compile-scm-file__%
           _%path261523%_
           _%code261524%_
           _%phi?261526%_))))
    (define gxc#compile-scm-file
      (lambda _g262859_
        (let ((_g262860_ (let () (declare (not safe)) (##length _g262859_))))
          (cond ((let () (declare (not safe)) (##fx= _g262860_ 2))
                 (apply gxc#compile-scm-file__0 _g262859_))
                ((let () (declare (not safe)) (##fx= _g262860_ 3))
                 (apply gxc#compile-scm-file__% _g262859_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g262859_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?261413%_)
        (let _%lp261415%_ ((_%rest261417%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts261418%_ '()))
          (let* ((_%rest261419261439%_ _%rest261417%_)
                 (_%else261423261447%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts261418%_)))
                        (reverse _%opts261418%_)))))
            (let ((_%K261433261490%_
                   (lambda (_%rest261488%_)
                     (_%lp261415%_ _%rest261488%_ _%opts261418%_)))
                  (_%K261428261472%_
                   (lambda (_%rest261470%_)
                     (_%lp261415%_ _%rest261470%_ _%opts261418%_)))
                  (_%K261425261454%_
                   (lambda (_%rest261451%_ _%opt261452%_)
                     (_%lp261415%_
                      _%rest261451%_
                      (cons _%opt261452%_ _%opts261418%_)))))
              (if (pair? _%rest261419261439%_)
                  (let ((_%tl261435261495%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest261419261439%_)))
                        (_%hd261434261493%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest261419261439%_))))
                    (if (equal? _%hd261434261493%_ '"-cc-options")
                        (if (pair? _%tl261435261495%_)
                            (let* ((_%tl261437261498%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl261435261495%_)))
                                   (_%rest261501%_ _%tl261437261498%_))
                              (_%K261433261490%_ _%rest261501%_))
                            (let ((_%opt261462%_ _%hd261434261493%_)
                                  (_%rest261464%_ _%tl261435261495%_))
                              (_%K261425261454%_
                               _%rest261464%_
                               _%opt261462%_)))
                        (if (equal? _%hd261434261493%_ '"-ld-options")
                            (if (pair? _%tl261435261495%_)
                                (let* ((_%tl261432261480%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl261435261495%_)))
                                       (_%rest261483%_ _%tl261432261480%_))
                                  (_%K261428261472%_ _%rest261483%_))
                                (let ((_%opt261462%_ _%hd261434261493%_)
                                      (_%rest261464%_ _%tl261435261495%_))
                                  (_%K261425261454%_
                                   _%rest261464%_
                                   _%opt261462%_)))
                            (let ((_%opt261462%_ _%hd261434261493%_)
                                  (_%rest261464%_ _%tl261435261495%_))
                              (_%K261425261454%_
                               _%rest261464%_
                               _%opt261462%_)))))
                  (_%else261423261447%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?261507%_ '#f)) (gxc#gsc-link-options__% _%phi?261507%_))))
    (define gxc#gsc-link-options
      (lambda _g262861_
        (let ((_g262862_ (let () (declare (not safe)) (##length _g262861_))))
          (cond ((let () (declare (not safe)) (##fx= _g262862_ 0))
                 (apply gxc#gsc-link-options__0 _g262861_))
                ((let () (declare (not safe)) (##fx= _g262862_ 1))
                 (apply gxc#gsc-link-options__% _g262861_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g262861_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords261263%_ _%static?261259261264%_ _%phi?261265%_)
        (let ((_%static?261267%_
               (if (eq? _%static?261259261264%_ absent-value)
                   '#f
                   _%static?261259261264%_)))
          (if _%phi?261265%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp261269%_ ((_%rest261271%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts261272%_ '()))
                (let* ((_%rest261273261299%_ _%rest261271%_)
                       (_%else261278261307%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts261272%_)))
                              (reverse! _%opts261272%_)))))
                  (let ((_%K261293261370%_
                         (lambda (_%rest261367%_ _%opt261368%_)
                           (if _%static?261267%_
                               (_%lp261269%_
                                _%rest261367%_
                                (cons _%opt261368%_
                                      (cons '"-cc-options" _%opts261272%_)))
                               (_%lp261269%_ _%rest261367%_ _%opts261272%_))))
                        (_%K261288261347%_
                         (lambda (_%rest261344%_ _%opt261345%_)
                           (_%lp261269%_
                            _%rest261344%_
                            (cons _%opt261345%_
                                  (cons '"-cc-options" _%opts261272%_)))))
                        (_%K261283261327%_
                         (lambda (_%rest261325%_)
                           (_%lp261269%_ _%rest261325%_ _%opts261272%_)))
                        (_%K261280261313%_
                         (lambda (_%rest261311%_)
                           (_%lp261269%_ _%rest261311%_ _%opts261272%_))))
                    (if (pair? _%rest261273261299%_)
                        (let ((_%tl261295261375%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest261273261299%_)))
                              (_%hd261294261373%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest261273261299%_))))
                          (if (equal? _%hd261294261373%_ '"-cc-options")
                              (if (pair? _%tl261295261375%_)
                                  (let ((_%tl261297261380%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl261295261375%_)))
                                        (_%hd261296261378%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl261295261375%_))))
                                    (if (equal? _%hd261296261378%_ '"-Bstatic")
                                        (let ((_%opt261383%_
                                               _%hd261296261378%_)
                                              (_%rest261385%_
                                               _%tl261297261380%_))
                                          (_%K261293261370%_
                                           _%rest261385%_
                                           _%opt261383%_))
                                        (let ((_%opt261360%_
                                               _%hd261296261378%_)
                                              (_%rest261362%_
                                               _%tl261297261380%_))
                                          (_%K261288261347%_
                                           _%rest261362%_
                                           _%opt261360%_))))
                                  (let ((_%rest261319%_ _%tl261295261375%_))
                                    (_%K261280261313%_ _%rest261319%_)))
                              (if (equal? _%hd261294261373%_ '"-ld-options")
                                  (if (pair? _%tl261295261375%_)
                                      (let* ((_%tl261287261335%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl261295261375%_)))
                                             (_%rest261338%_
                                              _%tl261287261335%_))
                                        (_%K261283261327%_ _%rest261338%_))
                                      (let ((_%rest261319%_
                                             _%tl261295261375%_))
                                        (_%K261280261313%_ _%rest261319%_)))
                                  (let ((_%rest261319%_ _%tl261295261375%_))
                                    (_%K261280261313%_ _%rest261319%_)))))
                        (_%else261278261307%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords261390%_ _%static?261259261391%_)
        (let ((_%phi?261393%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords261390%_
           _%static?261259261391%_
           _%phi?261393%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g262863_
        (let ((_g262864_ (let () (declare (not safe)) (##length _g262863_))))
          (cond ((let () (declare (not safe)) (##fx= _g262864_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g262863_))
                ((let () (declare (not safe)) (##fx= _g262864_ 3))
                 (apply gxc#gsc-cc-options__%__% _g262863_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g262863_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords261402%_ . _%args261403%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords261402%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords261402%_
                  'static:
                  absent-value))
               _%args261403%_)))
    (define gxc#gsc-cc-options
      (lambda _%args261260261409%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%args261260261409%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords261109%_ _%static?261105261110%_ _%phi?261111%_)
        (let ((_%static?261113%_
               (if (eq? _%static?261105261110%_ absent-value)
                   '#f
                   _%static?261105261110%_)))
          (if _%phi?261111%_
              '()
              (let _%lp261115%_ ((_%rest261117%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts261118%_ '()))
                (let* ((_%rest261119261145%_ _%rest261117%_)
                       (_%else261124261153%_
                        (lambda () (reverse! _%opts261118%_))))
                  (let ((_%K261139261216%_
                         (lambda (_%rest261213%_ _%opt261214%_)
                           (if _%static?261113%_
                               (_%lp261115%_
                                _%rest261213%_
                                (cons _%opt261214%_
                                      (cons '"-ld-options" _%opts261118%_)))
                               (_%lp261115%_ _%rest261213%_ _%opts261118%_))))
                        (_%K261134261193%_
                         (lambda (_%rest261190%_ _%opt261191%_)
                           (_%lp261115%_
                            _%rest261190%_
                            (cons _%opt261191%_
                                  (cons '"-ld-options" _%opts261118%_)))))
                        (_%K261129261173%_
                         (lambda (_%rest261171%_)
                           (_%lp261115%_ _%rest261171%_ _%opts261118%_)))
                        (_%K261126261159%_
                         (lambda (_%rest261157%_)
                           (_%lp261115%_ _%rest261157%_ _%opts261118%_))))
                    (if (pair? _%rest261119261145%_)
                        (let ((_%tl261141261221%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest261119261145%_)))
                              (_%hd261140261219%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest261119261145%_))))
                          (if (equal? _%hd261140261219%_ '"-ld-options")
                              (if (pair? _%tl261141261221%_)
                                  (let ((_%tl261143261226%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl261141261221%_)))
                                        (_%hd261142261224%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl261141261221%_))))
                                    (if (equal? _%hd261142261224%_ '"-static")
                                        (let ((_%opt261229%_
                                               _%hd261142261224%_)
                                              (_%rest261231%_
                                               _%tl261143261226%_))
                                          (_%K261139261216%_
                                           _%rest261231%_
                                           _%opt261229%_))
                                        (let ((_%opt261206%_
                                               _%hd261142261224%_)
                                              (_%rest261208%_
                                               _%tl261143261226%_))
                                          (_%K261134261193%_
                                           _%rest261208%_
                                           _%opt261206%_))))
                                  (let ((_%rest261165%_ _%tl261141261221%_))
                                    (_%K261126261159%_ _%rest261165%_)))
                              (if (equal? _%hd261140261219%_ '"-cc-options")
                                  (if (pair? _%tl261141261221%_)
                                      (let* ((_%tl261133261181%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl261141261221%_)))
                                             (_%rest261184%_
                                              _%tl261133261181%_))
                                        (_%K261129261173%_ _%rest261184%_))
                                      (let ((_%rest261165%_
                                             _%tl261141261221%_))
                                        (_%K261126261159%_ _%rest261165%_)))
                                  (let ((_%rest261165%_ _%tl261141261221%_))
                                    (_%K261126261159%_ _%rest261165%_)))))
                        (_%else261124261153%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords261236%_ _%static?261105261237%_)
        (let ((_%phi?261239%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords261236%_
           _%static?261105261237%_
           _%phi?261239%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g262865_
        (let ((_g262866_ (let () (declare (not safe)) (##length _g262865_))))
          (cond ((let () (declare (not safe)) (##fx= _g262866_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g262865_))
                ((let () (declare (not safe)) (##fx= _g262866_ 3))
                 (apply gxc#gsc-ld-options__%__% _g262865_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g262865_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords261248%_ . _%args261249%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords261248%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords261248%_
                  'static:
                  absent-value))
               _%args261249%_)))
    (define gxc#gsc-ld-options
      (lambda _%args261106261255%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%args261106261255%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir261100%_)
        (let ((_%user-staticdir261102%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir261100%_
                       '" -I "
                       _%user-staticdir261102%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp261012%_ ((_%rest261014%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts261015%_ '()))
          (let* ((_%rest261016261036%_ _%rest261014%_)
                 (_%else261020261044%_ (lambda () _%opts261015%_)))
            (let ((_%K261030261087%_
                   (lambda (_%rest261085%_)
                     (_%lp261012%_ _%rest261085%_ _%opts261015%_)))
                  (_%K261025261065%_
                   (lambda (_%rest261062%_ _%opt261063%_)
                     (_%lp261012%_
                      _%rest261062%_
                      (let ((__tmp262867
                             (let ((__tmp262868
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt261063%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp262868))))
                        (declare (not safe))
                        (##append _%opts261015%_ __tmp262867)))))
                  (_%K261022261050%_
                   (lambda (_%rest261048%_)
                     (_%lp261012%_ _%rest261048%_ _%opts261015%_))))
              (if (pair? _%rest261016261036%_)
                  (let ((_%tl261032261092%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest261016261036%_)))
                        (_%hd261031261090%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest261016261036%_))))
                    (if (equal? _%hd261031261090%_ '"-cc-options")
                        (if (pair? _%tl261032261092%_)
                            (let* ((_%tl261034261095%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl261032261092%_)))
                                   (_%rest261098%_ _%tl261034261095%_))
                              (_%K261030261087%_ _%rest261098%_))
                            (let ((_%rest261056%_ _%tl261032261092%_))
                              (_%K261022261050%_ _%rest261056%_)))
                        (if (equal? _%hd261031261090%_ '"-ld-options")
                            (if (pair? _%tl261032261092%_)
                                (let ((_%tl261029261075%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl261032261092%_)))
                                      (_%hd261028261073%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl261032261092%_))))
                                  (let ((_%opt261078%_ _%hd261028261073%_)
                                        (_%rest261080%_ _%tl261029261075%_))
                                    (_%K261025261065%_
                                     _%rest261080%_
                                     _%opt261078%_)))
                                (let ((_%rest261056%_ _%tl261032261092%_))
                                  (_%K261022261050%_ _%rest261056%_)))
                            (let ((_%rest261056%_ _%tl261032261092%_))
                              (_%K261022261050%_ _%rest261056%_)))))
                  (_%else261020261044%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str261009%_)
        (not (let () (declare (not safe)) (string-empty? _%str261009%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path261002%_ _%phi?261003%_)
        (let ((_%gsc-link-opts261005%_
               (gxc#gsc-link-options__% _%phi?261003%_))
              (_%gsc-cc-opts261006%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?261003%_))
              (_%gsc-ld-opts261007%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?261003%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp262869
                  (let ((__tmp262870
                         (let ((__tmp262871 (cons _%path261002%_ '())))
                           (declare (not safe))
                           (foldr__0
                            cons
                            __tmp262871
                            _%gsc-link-opts261005%_))))
                    (declare (not safe))
                    (foldr__0 cons __tmp262870 _%gsc-ld-opts261007%_))))
             (declare (not safe))
             (foldr__0 cons __tmp262869 _%gsc-cc-opts261006%_))))))
    (define gxc#compile-output-file
      (lambda (_%ctx260968%_ _%n260969%_ _%ext260970%_)
        (letrec ((_%module-relative-path260972%_
                  (lambda (_%ctx261000%_)
                    (path-strip-directory
                     (let ((__tmp262872
                            (##structure-ref
                             _%ctx261000%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp262872)))))
                 (_%module-source-directory260973%_
                  (lambda (_%ctx260996%_)
                    (path-directory
                     (let ((_%mpath260998%_
                            (##structure-ref
                             _%ctx260996%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath260998%_)
                           _%mpath260998%_
                           (last _%mpath260998%_))))))
                 (_%section-string260974%_
                  (lambda (_%n260990%_)
                    (if (number? _%n260990%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n260990%_))
                        (if (symbol? _%n260990%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n260990%_))
                            (if (string? _%n260990%_)
                                _%n260990%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n260990%_)))))))
                 (_%file-name260975%_
                  (lambda (_%path260988%_)
                    (if _%n260969%_
                        (string-append
                         _%path260988%_
                         '"~"
                         (_%section-string260974%_ _%n260969%_)
                         _%ext260970%_)
                        (string-append _%path260988%_ _%ext260970%_))))
                 (_%file-path260976%_
                  (lambda ()
                    (let ((_%$e260982%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e260982%_
                          (path-expand
                           (_%file-name260975%_
                            (let ((__tmp262873
                                   (##structure-ref
                                    _%ctx260968%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#module-id->path-string __tmp262873)))
                           _%$e260982%_)
                          (path-expand
                           (_%file-name260975%_
                            (_%module-relative-path260972%_ _%ctx260968%_))
                           (_%module-source-directory260973%_
                            _%ctx260968%_)))))))
          (let ((_%path260978%_ (_%file-path260976%_)))
            (let ((__tmp262874
                   (lambda ()
                     (let ((__tmp262875 (path-directory _%path260978%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp262875)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp262874))
            _%path260978%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx260949%_)
        (letrec ((_%file-name260951%_
                  (lambda (_%id260966%_)
                    (let ((__tmp262876 (gxc#static-module-name _%id260966%_)))
                      (declare (not safe))
                      (##string-append __tmp262876 '".scm"))))
                 (_%file-path260952%_
                  (lambda ()
                    (let* ((_%file260958%_
                            (_%file-name260951%_
                             (##structure-ref
                              _%ctx260949%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e260960%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e260960%_
                          (path-expand
                           _%file260958%_
                           (path-expand '"static" _%$e260960%_))
                          (path-expand _%file260958%_ '"static"))))))
          (let ((_%path260954%_ (_%file-path260952%_)))
            (let ((__tmp262877
                   (lambda ()
                     (let ((__tmp262878 (path-directory _%path260954%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp262878)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp262877))
            _%path260954%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx260942%_ _%opts260943%_)
        (let ((_%$e260945%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts260943%_))))
          (if _%$e260945%_
              _%$e260945%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx260942%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr260932%_)
        (if (string? _%idstr260932%_)
            (let* ((_%str260935%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr260932%_)))
                   (_%strs260937%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str260935%_ '#\/))))
              (declare (not safe))
              (string-join _%strs260937%_ '"__"))
            (if (symbol? _%idstr260932%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr260932%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr260932%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp262879
               (let ((__tmp262880 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp262880 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp262879))))
    (define gxc#invoke__%
      (lambda (_%@@keywords260898%_
               _%stdout-redirection260894260899%_
               _%stderr-redirection260895260900%_
               _%program260901%_
               _%args260902%_)
        (let* ((_%stdout-redirection260904%_
                (if (eq? _%stdout-redirection260894260899%_ absent-value)
                    '#f
                    _%stdout-redirection260894260899%_))
               (_%stderr-redirection260906%_
                (if (eq? _%stderr-redirection260895260900%_ absent-value)
                    '#f
                    _%stderr-redirection260895260900%_)))
          (let ((__tmp262881 (cons _%program260901%_ _%args260902%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp262881))
          (let* ((_%proc260908%_
                  (open-process
                   (cons 'path:
                         (cons _%program260901%_
                               (cons 'arguments:
                                     (cons _%args260902%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection260904%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection260906%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output260913%_
                  (if (or _%stdout-redirection260904%_
                          _%stderr-redirection260906%_)
                      (read-line _%proc260908%_ '#f)
                      '#f))
                 (_%status260916%_ (process-status _%proc260908%_)))
            (let () (declare (not safe)) (##close-port _%proc260908%_))
            (if (zero? _%status260916%_)
                '#!void
                (begin
                  (display _%output260913%_)
                  (let ((__tmp262882 (cons _%program260901%_ _%args260902%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp262882
                     _%status260916%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords260921%_ . _%args260922%_)
        (apply gxc#invoke__%
               _%@@keywords260921%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords260921%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords260921%_
                  'stderr-redirection:
                  absent-value))
               _%args260922%_)))
    (define gxc#invoke
      (lambda _%args260896260928%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%args260896260928%_)))))
